<template>
    <v-container fluid grid-list-md text-xs-center>
        <v-layout row justify-center>
            <v-flex xs12>
                <v-card>
                  
                    <v-card-title class="red white--text">
                        <h3>Ejecucion de Pago</h3>
                        <v-spacer></v-spacer>
    
                    </v-card-title>

                    <v-card-text>
                        
                        <v-flex xs12>

                        <v-data-table
                        :headers="headers"
                        :items  ="ejecucions"
                        hide-actions
                        item-key="id_ejecucion"
                        >

                        <template slot="items" slot-scope="ejecucion">
                            

                            <td class="text-xs-left">{{ ejecucion.item.etapa_envio.nb_etapa_envio }}</td>
                            <td class="text-xs-right">{{ ejecucion.item.banco.nb_banco }}</td>
                            <td class="text-xs-left">{{ ejecucion.item.fe_envio_inst }}</td>
                            <td class="text-xs-left">{{ ejecucion.item.status.nb_status }}</td>
                            <!--acciones-->
                            <td class="justify-center layout px-0">
                                <v-btn icon @click="updEjecucion(ejecucion.item )" >
                                    <v-icon color="orange">edit</v-icon>
                                </v-btn>
                                <v-btn icon @click="true" >
                                    <v-icon color="red">delete</v-icon>
                                </v-btn>
                            </td>

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
        
        this.ejecucions  = this.list(this.idPago);
    },
    data () {
    return {
        modal: false,
        ejecucions: '',
        accion: '',
        ejecucion:  '',
        nb_accion: '',
        headers: [

        { text: 'Etapa',    value: 'etapa_envio.nb_etapa_envio' },
        { text: 'Banco',    value: 'banco.nb_banco' },
        { text: 'Fecha',    value: 'fe_envio_inst' },
        { text: 'Status',   value: 'id_status'  },
        { text: 'Acciones', value: 'id_status'  },
        ]
    }
    },
    props:['idPago'],
    methods:
    {
        cerrarModal(){
            this.modal = false;
            this.ejecucion = '';
            this.list();
        },
        list (id_pago) {

            axios.get('/api/v1/ejecucionPago/pago/'+id_pago)
            .then(respuesta => {
                    this.ejecucions = respuesta.data;
            })
            .catch(error => {
                    
            })
        },
        updEjecucion (ejecucion) {

            this.nb_accion  = 'Editar Ejecucion: ' + ejecucion.nb_ejecucion;
            this.accion     = 'upd';
            this.modal      = true;
            this.ejecucion      = ejecucion;
        },
        insEjecucion () {

            this.nb_accion  = 'Agregar Ejecucion:';
            this.accion     = 'ins';
            this.modal      = true;
            
        },
        delEjecucion (ejecucion) {

            console.log('eliminar Ejecucion')
            
        }
    }
}

</script>

<style>

</style>
