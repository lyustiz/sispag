<template>
    <v-container fluid grid-list-md text-xs-center>
        <v-layout row justify-center>
            <v-flex xs11>
                <v-card>
                  
                    <v-card-title class="blue accent-1 white--text">
                        <h3>Monedas</h3>
                        <v-spacer></v-spacer>
                        
                        <v-btn fab @click="insMoneda" dark small color="green">
                            <v-icon dark>add</v-icon>
                        </v-btn>
                    </v-card-title>

                    <v-card-text>
                        
                        <v-flex xs6>
                        <v-text-field
                            v-model="buscar"
                            append-icon="search"
                            label="Buscar"
                            single-line
                            hide-details
                        ></v-text-field>
                        </v-flex>
                        
                        <v-flex xs12>

                        <v-data-table
                        :headers="headers"
                        :items  ="monedas"
                        :search ="buscar"
                        rows-per-page-text="Res. x Pag"
                        >

                        <template slot="items" slot-scope="moneda">
                            
                            <td class="text-xs-left">{{ moneda.item.nb_moneda }}</td>
                            <td class="text-xs-left">{{ moneda.item.co_moneda }}</td>
                            <td class="text-xs-left">{{ moneda.item.tx_signo }}</td>
                            <td class="text-xs-left">{{ moneda.item.status.nb_status }}</td>
                            <!--acciones-->
                            <td class="justify-center layout px-0">
                                <v-btn icon @click="updMoneda(moneda.item )" >
                                    <v-icon color="orange">edit</v-icon>
                                </v-btn>
                                <v-btn icon @click="true" >
                                    <v-icon color="red">delete</v-icon>
                                </v-btn>
                            </td>

                        </template>

                        <v-alert slot="no-results" :value="true" color="info" icon="info">
                           La busqueda "{{ buscar }}" Sin resultados
                        </v-alert>

                        <template slot="pageText" slot-scope="item">
                            {{item.pageStart}} - {{item.pageStop}} de {{item.itemsLength}}
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

              <moneda-form :accion="accion" :moneda="moneda" @cerrarModal="cerrarModal"></moneda-form>
            
          </v-card-text>
          
        </v-card>

      </v-dialog>


    </v-container>

</template>

<script>



export default {
    created() {
        
        this.monedas  = this.list();
    },
    data () {
    return {
        modal: false,
        monedas: '',
        buscar: '',
        nro:     1,
        accion: '',
        moneda:  '',
        nb_accion: '',
        headers: [
        { text: 'Nombre',   value: 'nb_moneda' },
        { text: 'Codigo',     value: 'co_moneda' },
        { text: 'Signo',    value: 'tx_signo' },
        { text: 'Status',   value: 'id_status' },
        { text: 'Acciones', value: 'id_status'  },
        ]
    }
    },
    methods:
    {
        cerrarModal(){
            this.modal = false;
            this.moneda = '';
            this.list();
        },
        list () {

            axios.get('/api/v1/moneda')
            .then(respuesta => {
                    this.monedas = respuesta.data;
            })
            .catch(error => {
                    
            })
        },
        updMoneda (moneda) {

            this.nb_accion  = 'Editar Moneda: ' + moneda.nb_moneda;
            this.accion     = 'upd';
            this.modal      = true;
            this.moneda      = moneda;
        },
        insMoneda () {

            this.nb_accion  = 'Agregar Moneda:';
            this.accion     = 'ins';
            this.modal      = true;
            
        },
        delMoneda (moneda) {

            console.log('eliminar Moneda')
            
        }
    }
}

</script>

<style>

</style>
