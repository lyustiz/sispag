<template>
    <v-container fluid grid-list-md text-xs-center>
    <v-layout row justify-center>
    <v-flex xs12>
    <v-card>
        
        <v-toolbar class="light-blue darken-3 white--text">
            <h3>Ejecucion del Pago</h3>

            <v-spacer></v-spacer>
            <v-btn v-if="etapa == 0" fab @click="insItem" dark small absolute right bottom class="success">
                <v-icon dark>add</v-icon>
            </v-btn>
        </v-toolbar>

        <v-card-text>
            
        <v-flex xs12>
        <v-data-table
        :headers="headers"
        :items  ="itemsFiltrados"
        hide-actions
        :loading="IsLoading"
        item-key="id_ejecucion_pago"
        disable-initial-sort 
        >

        <template slot="items" slot-scope="item">
            
            <td class="text-xs-left">{{ item.item.etapa_envio.nb_etapa_envio }}</td>
            <td class="text-xs-left">{{ item.item.banco.nb_banco }}</td>
            <td class="text-xs-left">{{ item.item.fe_envio_inst | formDate }}</td>
            <td class="text-xs-left">{{ item.item.status.nb_status }}</td>
            <!--acciones-->
            <td class="text-xs-left" v-if="!acreditado">
                <list-buttons @editar="updItem(item)" :del="false">
                </list-buttons>
            </td>
            <td class="text-xs-center" v-else>
                <v-tooltip bottom>
                    <v-btn slot="activator" fab small color="success" @click.native="dsolicitud = true" >
                        <v-icon >thumb_up</v-icon>
                    </v-btn>
                    <span>Acreditado</span>
                </v-tooltip>
            </td>

        </template>

        <template slot="expand" slot-scope="item">
            <v-card flat>
                <v-card-text>
                  <pre>{{items}}</pre> 
                </v-card-text>
            </v-card>
        </template>

        </v-data-table>
        </v-flex>
        </v-card-text>
    </v-card>
    </v-flex>
    </v-layout>

    <form-container :nb-accion="nb_accion" :modal="modal" @cerrarModal="cerrarModal">
        <ejecucion-form :accion="accion" :etapa="etapa" :pago="pago" :item="items" @cerrarModal="cerrarModal"></ejecucion-form>
    </form-container>

    </v-container>

</template>

<script>

import withSnackbar from '../components/mixins/withSnackbar';
import listHelper from '../components/mixins/listHelper';

export default {
    mixins:[ listHelper, withSnackbar ],
    data () {
    return {
        etapa: 0,
        acreditado: false,
        headers: [
        { text: 'Etapa',    value: 'etapa_envio.nb_etapa_envio' },
        { text: 'Banco',    value: 'banco' },
        { text: 'Fecha',    value: 'fe_envio_inst' },
        { text: 'Status',   value: 'id_status'  },
        { text: 'Acciones', value: 'id_status'  },
        ]
    }
    },
    props:['pago'],
    computed:{
        itemsFiltrados: function()
        {
           if(this.items)
           {
               if(this.items.length > 0)
               {
                    this.items.forEach(function(item, index) 
                    {
                        this.etapa = (this.etapa > item.id_etapa_envio) ? this.etapa : Number(item.id_etapa_envio);
                        
                    }, this);
                            
                    return this.items.filter(item => Number(item.id_etapa_envio) == this.etapa);
               }
           }
            this.etapa = 0;        
        }

    },
    watch:{
        items: function(items){

            if (items) 
            {
                items.forEach(function(item) 
                {
                    if(item.id_etapa_envio == 3 && item.id_status == 31) 
                    {
                        this.acreditado = true;
                    }

                }, this);
            }
        },
        acreditado: function(acreditado)
        {
            if(acreditado) { this.$emit('acreditado') } 
        }
    },
    methods:
    {
        list () {

            axios.get('/api/v1/ejecucionPago/pago/'+this.pago.id_pago)
            .then(respuesta => {
                this.IsLoading = false
                
                this.items = respuesta.data;
                this.item = this.items;
      
            })
            .catch(error => {
                this.IsLoading = false
                this.showError(error);        
            })
        },
       
    }
}

</script>

<style>

</style>
