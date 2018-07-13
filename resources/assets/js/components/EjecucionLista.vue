<template>
    <v-container fluid grid-list-md text-xs-center>
    <v-layout row justify-center>
    <v-flex xs12>
    <v-card>
        
        <v-toolbar class="light-blue darken-3 white--text">
            <h3>Ejecucion del Pago</h3>

            <v-spacer></v-spacer>
            <v-btn v-if="etapa!= 3 || !acreditado" fab @click="insItem" dark small absolute right bottom class="success">
                <v-icon dark>add</v-icon>
            </v-btn>
        </v-toolbar>

        <v-card-text>
            
        <v-flex xs12>
        <v-data-table
        :headers="headers"
        :items  ="items"
        hide-actions
        item-key="id_ejecucion"
        disable-initial-sort 
        >

        <template slot="items" slot-scope="item">
            

            <td class="text-xs-left">{{ item.item.etapa_envio.nb_etapa_envio }}</td>
            <td class="text-xs-left">{{ item.item.banco.nb_banco }}</td>
            <td class="text-xs-left">{{ item.item.fe_envio_inst | formDate }}</td>
            <td class="text-xs-left">{{ item.item.status.nb_status }}</td>
            <!--acciones-->
            <td class="text-xs-left" v-if="!acreditado">
                <list-buttons @editar="updItem(item.item)" @eliminar="delForm(item.item)">
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

        </v-data-table>
        </v-flex>
        </v-card-text>
    
    </v-card>
    </v-flex>
    </v-layout>

    <form-container :nb-accion="nb_accion" :modal="modal" @cerrarModal="cerrarModal">
        <ejecucion-form :accion="accion" :etapa="etapa" :pago="pago" :item="item" @cerrarModal="cerrarModal"></ejecucion-form>
    </form-container>

    <dialogo 
        :dialogo="dialogo" 
        :mensaje="'Desea Eliminar la Ejejcucion de Pago? ' "
        @delItem="delItem"
        @delCancel="delCancel"
    >
    </dialogo>

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
        { text: 'Banco',    value: 'banco.nb_banco' },
        { text: 'Fecha',    value: 'fe_envio_inst' },
        { text: 'Status',   value: 'id_status'  },
        { text: 'Acciones', value: 'id_status'  },
        ]
    }
    },
    props:['pago'],
    watch:{
        items: function(items){
            let  etapa      = 0
            let  acreditado = false;

            if (!items) 
            {
                this.etapa = 0

            }else
            {
                items.forEach(function(item) 
                {
                    etapa = ( Number(item.id_etapa_envio) > etapa) 
                            ? Number(item.id_etapa_envio)
                            : etapa
                    
                    if(item.id_etapa_envio ==3 && item.id_status ==31) //proceso completado
                    {
                        acreditado = true;
                    }

                });
                this.etapa      = etapa;
                this.acreditado = acreditado;
            }
        },
        acreditado: function(val)
        {
            if(val) { this.$emit('acreditado') } 
        }
    },
    methods:
    {
        list () {

            axios.get('/api/v1/ejecucionPago/pago/'+this.pago.id_pago)
            .then(respuesta => {
                this.items = respuesta.data;
            })
            .catch(error => {
                this.showError(error);        
            })
        },
         delItem(){
            axios.delete('/api/v1/ejecucionPAgo/'+this.item.id_ejecucion_pago)
            .then(respuesta => {

                this.showMessage(respuesta.data.msj)
                this.list();
                this.item = '';
                this.dialogo = false;
                
            })
            .catch(error => {
                this.showError(error)    
            })

        }
       
    }
}

</script>

<style>

</style>
