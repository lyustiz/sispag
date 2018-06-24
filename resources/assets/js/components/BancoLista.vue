<template>
    <v-container fluid grid-list-md text-xs-center>
        <v-layout row justify-center>
            <v-flex xs11>
                <v-card>
                  
                    <v-card-title class="blue accent-1 white--text">
                        <h3>Bancos</h3>
                        <v-spacer></v-spacer>
                        
                        <v-btn fab @click="insItem" dark small class="success">
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
                        :items  ="items"
                        :search ="buscar"
                        v-model ="selected"
                        item-key="id_banco"
                        rows-per-page-text="Res. x Pag"
                        >

                        <template slot="items" slot-scope="item">
                            
                            <td class="text-xs-left">{{ item.item.nb_banco }}</td>
                            <td class="text-xs-left">{{ item.item.tipo_banco.nb_tipo_banco }}</td>
                            <td class="text-xs-left">{{ item.item.grupo_banco.nb_grupo_banco }}</td>
                            <td class="text-xs-center"> 
                                <v-switch 
                                v-model="item.item.id_status">
                                </v-switch> 
                            </td>
                            <!--acciones-->
                            <td class="text-xs-left">
                                <v-btn fab small class="warning" @click="updItem(item.item )">
                                <v-icon >edit</v-icon>
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

              <banco-form :accion="accion" :item="item" @cerrarModal="cerrarModal"></banco-form>
            
          </v-card-text>
          
        </v-card>

      </v-dialog>


    </v-container>

</template>

<script>

import withSnackbar from '../components/mixins/withSnackbar';
import listHelper from '../components/mixins/listHelper';

export default {
    mixins:[ listHelper, withSnackbar ],
    data () {
    return {
       
        headers: [
        { text: 'Nombre',   value: 'nb_banco' },
        { text: 'Tipo',     value: 'tipo_banco.nb_tipo_banco' },
        { text: 'Grupo',    value: 'grupo_banco.nb_grupo_banco' },
        { text: 'Status',   value: 'id_status'  },
        { text: 'Acciones', value: 'id_status'  },
        ]
    }
    },
    methods:
    {
        list () {

            axios.get('/api/v1/banco')
            .then(respuesta => {
                
                this.items = respuesta.data;
            })
            .catch(error => {
                this.showError(error)
            })
        },
    }
}

</script>

<style>

</style>
