<template>
    <v-container fluid grid-list-md text-xs-center>
        <v-layout row justify-center>
            <v-flex xs11>
                <v-card>
                  
                    <v-card-title class="blue accent-1 white--text">
                        <h3>Entes</h3>
                        <v-spacer></v-spacer>
                        
                        <v-btn fab @click="insEnte" dark small color="green">
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
                        :items  ="entes"
                        :search ="buscar"
                        rows-per-page-text="Res. x Pag"
                        >

                        <template slot="items" slot-scope="ente">
                            
                            <td class="text-xs-left">{{ ente.item.nb_ente }}</td>
                            <td class="text-xs-left">{{ ente.item.tipo_ente.nb_tipo_ente }}</td>
                            <td class="text-xs-left">{{ ente.item.grupo_ente.nb_grupo_ente }}</td>
                            <td class="text-xs-left">{{ ente.item.status.nb_status }}</td>
                            <!--acciones-->
                            <td class="justify-center layout px-0">
                                <v-btn icon @click="updEnte(ente.item )" >
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

              <ente-form :accion="accion" :ente="ente" @cerrarModal="cerrarModal"></ente-form>
            
          </v-card-text>
          
        </v-card>

      </v-dialog>


    </v-container>

</template>

<script>



export default {
    created() {
        
        this.entes  = this.list();
    },
    data () {
    return {
        modal: false,
        entes: '',
        buscar: '',
        nro:     1,
        accion: '',
        ente:  '',
        nb_accion: '',
        headers: [
        { text: 'Nombre',   value: 'nb_ente' },
        { text: 'Tipo',     value: 'tipo_ente.nb_tipo_ente' },
        { text: 'Grupo',    value: 'grupo_ente.nb_grupo_ente' },
        { text: 'Status',   value: 'id_status' },
        { text: 'Acciones', value: 'id_status'  },
        ]
    }
    },
    methods:
    {
        cerrarModal(){
            this.modal = false;
            this.ente = '';
            this.list();
        },
        list () {

            axios.get('/api/v1/ente')
            .then(respuesta => {
                console.log(respuesta.data)
                this.entes = respuesta.data;
            })
            .catch(error => {
                    
            })
        },
        updEnte (ente) {

            this.nb_accion  = 'Editar Ente: ' + ente.nb_ente;
            this.accion     = 'upd';
            this.modal      = true;
            this.ente      = ente;
        },
        insEnte () {

            this.nb_accion  = 'Agregar Ente:';
            this.accion     = 'ins';
            this.modal      = true;
            
        },
        delEnte (ente) {

            console.log('eliminar Ente')
            
        }
    }
}

</script>

<style>

</style>
