<template>
    <v-container fluid grid-list-md text-xs-center>
        <v-layout row justify-center>
            <v-flex xs12>
                <v-card>
                  
                    <v-card-title class="blue accent-1 white--text">
                        <h3>Pagos</h3>
                        <v-spacer></v-spacer>
    
                    </v-card-title>

                    <v-card-text>
                        
                        <v-flex xs12>

                        <v-data-table
                        :headers="headers"
                        :items  ="pagos"
                        hide-actions
                        item-key="id_pago"
                        >

                        <template slot="items" slot-scope="pago">
                               
                            <td class="text-xs-left" @click="pago.expanded = !pago.expanded">{{ pago.item.tipo_pago.nb_tipo_pago }}</td>
                            <td class="text-xs-right">{{ pago.item.mo_final_pago }}</td>
                            <td class="text-xs-left">{{ pago.item.moneda.nb_moneda }}</td>
                            <td class="text-xs-left">{{ pago.item.fe_pago  }}</td>
                            <td class="text-xs-left">{{ pago.item.status.nb_status }}</td>
                            <!--acciones-->
                            <td class="justify-center layout px-0">
                                <v-btn icon @click="updPago(pago.item )" >
                                    <v-icon color="orange">edit</v-icon>
                                </v-btn>
                                <v-btn icon @click="true" >
                                    <v-icon color="red">delete</v-icon>
                                </v-btn>
                            </td>

                        </template>

                        <template slot="expand" slot-scope="pago">
             
                            <v-card flat>
                                <v-card-text>

                                        <ejecucion-lista :id-pago="pago.item.id_pago"></ejecucion-lista>

                                </v-card-text>
                            </v-card>
                        </template>

                        </v-data-table>
                        </v-flex>
                    </v-card-text>
               
                </v-card>
            </v-flex>
        </v-layout>

      <v-dialog v-model="modal" fullscreen hide-overlay transition="dialog-bottom-transition">
        
        <v-card>
         
          <v-toolbar dark color="blue accent-1 white--text">

            <v-btn icon dark @click.native="cerrarModal">
              <v-icon>close</v-icon>
            </v-btn>

            <v-toolbar-title>{{ nb_accion }}</v-toolbar-title>
      
          </v-toolbar>

          <v-card-text> 

            
          </v-card-text>
          
        </v-card>

      </v-dialog>


    </v-container>

</template>

<script>



export default {
    created() {
        
        this.pagos  = this.list(this.idInstruccion);
    },
    data () {
    return {
        modal: false,
        pagos: '',
        accion: '',
        pago:  '',
        nb_accion: '',
        headers: [
        { text: 'Tipo Pago', value: 'tipo_pago.nb_tipo_pago' },
        { text: 'Monto',     value: 'mo_final_pago' },
        { text: 'Moneda',    value: 'moneda.nb_moneda' },
        { text: 'Fecha',    value: 'fe_pago' },
        { text: 'Status',  value: 'id_status'  },
        { text: 'Acciones',  value: 'id_status'  },
        ]
    }
    },
    props:['idInstruccion'],
    methods:
    {
        cerrarModal(){
            this.modal = false;
            this.pago = '';
            this.list();
        },
        list (id_instruccion) {

            axios.get('/api/v1/pago/instruccion/'+id_instruccion)
            .then(respuesta => {
                    this.pagos = respuesta.data;
            })
            .catch(error => {
                    
            })
        },
        updPago (pago) {

            this.nb_accion  = 'Editar Pago: ' + pago.nb_pago;
            this.accion     = 'upd';
            this.modal      = true;
            this.pago      = pago;
        },
        insPago () {

            this.nb_accion  = 'Agregar Pago:';
            this.accion     = 'ins';
            this.modal      = true;
            
        },
        delPago (pago) {

            console.log('eliminar Pago')
            
        }
    }
}

</script>

<style>

</style>
