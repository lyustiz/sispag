<template>
    <v-container fluid grid-list-md text-xs-center>
    <v-layout row justify-center>
    <v-flex xs12>
    <v-card>
        
        <v-toolbar class="light-blue darken-3 white--text">
            <h3>Pagos: </h3> 
            <v-chip color="info  white--text"  >
                Instruido: {{montos.instruido | formatNumber}}
            </v-chip>
            <v-chip color="error  white--text"  >
               Pendiente: {{montos.pendiente | formatNumber}}
            </v-chip>
            <v-chip color="green  white--text"  >
                Pagado: {{montos.pagado | formatNumber}}
            </v-chip>
            
            <v-spacer></v-spacer>
            <v-btn v-if="montos.pendiente > 0" fab @click="insItem" dark small absolute right bottom class="success">
                <v-icon dark>add</v-icon>
            </v-btn>
        </v-toolbar>

        <v-card-text>

        <v-flex xs12>
        <v-data-table
        :headers="headers"
        :items  ="items"
        hide-actions
        item-key="id_pago"
        :loading="IsLoading"
        >

        <template slot="items" slot-scope="item">
                
            <td class="text-xs-left"  @click="item.expanded = !item.expanded">
                <v-btn flat icon color="primary">
                    <v-icon>touch_app</v-icon>
                </v-btn>
               {{ item.item.tipo_pago.nb_tipo_pago }}
            </td>
            <td class="text-xs-left">{{ item.item.ente.nb_ente }}</td>
            <td class="text-xs-right">{{ item.item.mo_final_pago | formatNumber }}</td>
            <td class="text-xs-left"> {{ item.item.moneda.nb_moneda }}</td>
            <td class="text-xs-left"> {{ item.item.fe_pago | formDate  }}</td>
            <td class="text-xs-left"> {{ item.item.status.nb_status }}</td>
            <!--acciones-->
            <td class="text-xs-left" v-if="item.item.id_status == 10 && !acreditado ">
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

        <template slot="expand" slot-scope="item">
            <v-card flat>
                <v-card-text>
                    <ejecucion-lista :pago="item.item" @acreditado="acreditado=true"></ejecucion-lista>
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
        <pago-form :accion="accion" :montos="montos" :instruccion="instruccion" :item="item" @cerrarModal="cerrarModal"></pago-form>
    </form-container>

    <dialogo 
        :dialogo="dialogo" 
        :mensaje="'Desea Eliminar el Pago? ' "
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
        montos:{
            instruido:  Number(this.instruccion.mo_instruccion),
            pendiente:  0,
            pagado:     0,
        },
        acreditado: false,
        headers: [
        { text: 'Tipo Pago',value: 'tipo_pago.nb_tipo_pago' },
        { text: 'Proveedor',value: 'ente.nb_ente' },
        { text: 'Monto',    value: 'mo_final_pago' },
        { text: 'Moneda',   value: 'moneda.nb_moneda' },
        { text: 'Fecha',    value: 'fe_pago' },
        { text: 'Status',   value: 'id_status'  },
        { text: 'Acciones', value: 'id_status'  },
        ],
    }
    },
    props:['instruccion'],
    watch:{
        items: function(val){
            let moPagado = 0
            if (!val) 
            {
                this.montos.pagado = 0

            }else
            {
                val.forEach(function(item) {
                    moPagado += Number(item.mo_final_pago)
                });
            }
            this.montos.pagado    = moPagado;
            this.montos.pendiente = this.montos.instruido - moPagado;
        },
        acreditado: function(val)
        {
            if(val) { this.$emit('acreditado') } 
        }
    },
    methods:
    {
        list () {

            axios.get('/api/v1/pago/instruccion/'+this.instruccion.id_instruccion)
            .then(respuesta => {
                this.IsLoading = false
                this.items = respuesta.data;
            })
            .catch(error => {
                this.IsLoading = false
                this.showError(error);   
            })
        },
        delItem(){
            axios.delete('/api/v1/instruccion/'+this.item.id_intruccion)
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
