<template>
    <v-container fluid grid-list-md text-xs-center>
        <v-layout row justify-center>
            <v-flex xs11>
                <v-card>
                  
                    <v-card-title class="blue accent-1 white--text">
                        <h3>Categorias de Pago</h3>
                        <v-spacer></v-spacer>
                        
                        <v-btn fab @click="insCategoria" dark small color="green">
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
                        :items  ="categorias"
                        :search ="buscar"
                        rows-per-page-text="Res. x Pag"
                        >

                        <template slot="items" slot-scope="categoria">
                            
                            <td class="text-xs-left">{{ categoria.item.nb_categoria }}</td>
                            <td class="text-xs-left">{{ categoria.item.status.nb_status }}</td>
                            <!--acciones-->
                            <td class="justify-center layout px-0">
                                <v-btn icon @click="updCategoria(categoria.item )" >
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

              <categoria-form :accion="accion" :categoria="categoria" @cerrarModal="cerrarModal"></categoria-form>
            
          </v-card-text>
          
        </v-card>

      </v-dialog>


    </v-container>

</template>

<script>



export default {
    created() {
        
        this.categorias  = this.list();
    },
    data () {
    return {
        modal: false,
        categorias: '',
        buscar: '',
        nro:     1,
        accion: '',
        categoria:  '',
        nb_accion: '',
        headers: [
        { text: 'Nombre',   value: 'nb_categoria' },
        { text: 'Status',   value: 'id_status' },
        { text: 'Acciones', value: 'id_status'  },
        ]
    }
    },
    methods:
    {
        cerrarModal(){
            this.modal = false;
            this.categoria = '';
            this.list();
        },
        list () {

            axios.get('/api/v1/categoria')
            .then(respuesta => {
                    this.categorias = respuesta.data;
            })
            .catch(error => {
                    
            })
        },
        updCategoria (categoria) {

            this.nb_accion  = 'Editar Categoria: ' + categoria.nb_categoria;
            this.accion     = 'upd';
            this.modal      = true;
            this.categoria      = categoria;
        },
        insCategoria () {

            this.nb_accion  = 'Agregar Categoria:';
            this.accion     = 'ins';
            this.modal      = true;
            
        },
        delCategoria (categoria) {

            console.log('eliminar Categoria')
            
        }
    }
}

</script>

<style>

</style>
