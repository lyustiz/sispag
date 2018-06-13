<template>
    <v-container fluid grid-list-md text-xs-center>
        
        <v-layout row justify-center>
            <v-flex xs11>
                <v-card>
                  
                    <v-card-title class="blue accent-1 white--text">
                        <h3>Instruccion</h3>
                        <v-spacer></v-spacer>
                        <v-btn @click="insIngreso" color="green" dark>
                        <v-icon>add</v-icon>
                            agregar        
                        </v-btn> 
                    </v-card-title>

                    <v-card-text>
                        
                        <v-layout wrap>
                        <v-flex xs12 sm6>
                        <v-text-field
                            v-model="buscar"
                            append-icon="search"
                            label="Buscar"
                            single-line
                            hide-details
                        ></v-text-field>
                        </v-flex>
                        
                        <v-flex xs12 sm6>
                        <v-select
                            label="Esquema de Pago"
                            :items="['CENCOEX', 'VOI']"
                            v-model="buscar"
                        ></v-select>
                        </v-flex>
                        </v-layout>
                        
                        <v-flex xs12>

                        <v-data-table
                        :headers="headers"
                        :items  ="instrucciones"
                        :search ="buscar"
                        item-key="id_instruccion"
                        >
                        <template slot="items" slot-scope="instruccion">
                            
                            <td class="text-xs-left" @click="instruccion.expanded = !instruccion.expanded" >{{ instruccion.item.solicitud.categoria.nb_categoria }}</td>
                            <td class="text-xs-right">{{ instruccion.item.solicitud.ente.nb_ente }}</td>
                            <td class="text-xs-right">{{ instruccion.item.solicitud.tx_concepto  }}</td>
                            <td class="text-xs-left">{{ instruccion.item.mo_instruccion }}</td>
                            <td class="text-xs-left">{{ instruccion.item.fe_instruccion | formDate }}</td>
                            <td class="text-xs-left">{{ instruccion.item.esquema.nb_esquema }}</td>
                            
                            <!--acciones-->
                            <td class="justify-center layout px-0">
                                <v-btn icon @click="updIngreso(instruccion.item )" >
                                    <v-icon color="orange">edit</v-icon>
                                </v-btn>
                                <v-btn icon >
                                    <v-icon color="info">search</v-icon>
                                </v-btn>
                                <v-btn icon >
                                    <v-icon color="red">delete</v-icon>
                                </v-btn>
                            </td>
                            
                        </template>

                        <template slot="expand" slot-scope="instruccion">
                            <v-card flat>
                                <v-card-text>Detalle Ingreso  {{instruccion.item}}</v-card-text>
                            </v-card>
                        </template>

                        <template slot="pageText" slot-scope="instruccion">
                         Pagina {{ instruccion.pageStart }} - {{ instruccion.pageStop }} de {{ instruccion.itemsLength }}
                        </template>

                        <v-alert slot="no-results" :value="true" color="info" icon="info">
                           La busqueda "{{ buscar }}" Sin resultados
                        </v-alert>

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

              <instruccion-form :accion="accion" :instruccion="instruccion" @cerrarModal="cerrarModal"></instruccion-form>
            
          </v-card-text>
          
        </v-card>

      </v-dialog>


    </v-container>

</template>

<script>

Vue.use(require('vue-moment'));

export default {
    created() {

        this.instrucciones  = this.list();
    },
    filters: {

        formDate: function (value) {

            if (!value) return ''
            value = value.toString();
            return value.substr(8, 2)+'/'+value.substr(5, 2)+'/'+value.substr(0, 4);
        }

    },
    data () {
    return {
        modal:     false,
        instrucciones:  false,
        buscar:    '',
        busTipIng: '',
        accion:    '',
        instruccion:   false,
        nb_accion: false,
        headers: [
        { text: 'Categoria',     value: 'solicitud.categoria.nb_categoria' },
        { text: 'Ente',    value: 'instruccion.ente.nb_ente' },
        { text: 'Concepto', value: 'instruccion.tx_concepto' },
        { text: 'Monto',  value: 'mo_instruccion' },
        { text: 'Fecha',  value: 'fe_instruccion' },
        { text: 'Esquema Pago', value: 'esquema.nb_esquema' },
        { text: 'Acciones',     value: 'id_status'  },
        ]
    }
    },
    methods:
    {
        customFilter(items, search, filter) {

            return items.filter(row => filter(row["solicitud.categoria.nb_categoria"], search));
        },
        cerrarModal(){

            this.modal = false;
            this.instruccion = '';

        },
        list () {

            axios.get('/api/v1/instruccion')
            .then(respuesta => {
                console.log(respuesta.data);
                    this.instrucciones = respuesta.data;
            })
            .catch(error => {
                    
            })

            
        },
        updIngreso (instruccion) {
            
            this.nb_accion  = 'Editar Instruccion: ' + instruccion.esquema.nb_esquema;
            this.accion     = 'upd';
            this.modal      = true;
            this.instruccion    = instruccion;
        },
        insIngreso () {

            this.nb_accion  = 'Agregar Instruccion:';
            this.accion     = 'ins';
            this.modal      = true;
            
        },
        delIngreso (instruccion) {

            console.log('eliminar Ingreso')
            
        }
    }
}

</script>

<style>

</style>
