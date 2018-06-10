<template>
    <v-container fluid grid-list-md text-xs-center>
        <v-layout row justify-center>
            <v-flex xs11>
                <v-card>
                  
                    <v-card-title class="blue accent-1 white--text">
                        <h3>Ingreso</h3>
                        <v-spacer></v-spacer>
                        <v-btn @click="insIngreso" color="green" dark>
                        <v-icon>add</v-icon>
                            agregar        
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
                        :items  ="bancos"
                        :search ="buscar"
                        >

                        <template slot="items" slot-scope="Ingreso">
                            
                            <td class="text-xs-left">{{ Ingreso.item.nb_banco }}</td>
                            <td class="text-xs-left">{{ Ingreso.item.tipo_banco.nb_tipo_banco }}</td>
                            <td class="text-xs-left">{{ Ingreso.item.status.nb_status }}</td>
                            <!--acciones-->
                            <td class="justify-center layout px-0">
                                <v-btn icon @click="updBanco(Ingreso.item )" >
                                    <v-icon color="orange">edit</v-icon>
                                </v-btn>
                                <v-btn icon @click="updBanco" >
                                    <v-icon color="red">delete</v-icon>
                                </v-btn>
                            </td>

                        </template>

                        <v-alert slot="no-results" :value="true" color="info" icon="info">
                           La busqueda "{{ buscar }}" Sin resultados
                        </v-alert>

                        </v-data-table>
                        </v-flex>
                    </v-card-text>

                    <v-card-actions>
                        
                    </v-card-actions>
               
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

              <Ingreso-form :accion="accion" :Ingreso="Ingreso" @cerrarModal="cerrarModal"></Ingreso-form>
            
          </v-card-text>
          
        </v-card>

      </v-dialog>


    </v-container>

</template>

<script>



export default {
    created() {
        
        this.bancos  = this.list();
    },
    data () {
    return {
        modal: false,
        bancos: '',
        buscar: '',
        nro:     1,
        accion: '',
        Ingreso:  '',
        nb_accion: '',
        headers: [
        { text: 'Nombre',   value: 'nb_banco' },
        { text: 'Tipo',     value: 'id_tipo_banco' },
        { text: 'Status',   value: 'id_status' },
        { text: 'Acciones', value: 'id_status'  },
        ]
    }
    },
    methods:
    {
        cerrarModal(){
            this.modal = false;
            this.Ingreso = '';
        },
        list () {

            axios.get('/api/v1/Ingreso')
            .then(respuesta => {
                    this.bancos = respuesta.data;
            })
            .catch(error => {
                    
            })
        },
        updBanco (Ingreso) {

            this.nb_accion  = 'Editar Ingreso: ' + Ingreso.nb_banco;
            this.accion     = 'upd';
            this.modal      = true;
            this.Ingreso      = Ingreso;
        },
        insBanco () {

            this.nb_accion  = 'Agregar Ingreso:';
            this.accion     = 'ins';
            this.modal      = true;
            
        },
        delBanco (Ingreso) {

            console.log('eliminar Ingreso')
            
        }
    }
}

</script>

<style>

</style>
