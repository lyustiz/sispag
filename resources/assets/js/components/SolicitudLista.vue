<template>
    <v-container fluid grid-list-md text-xs-center>
        
        <v-layout row justify-center>
            <v-flex xs11>
                <v-card>
                  
                    <v-card-title class="blue accent-1 white--text">
                        <h3>Solicitudes</h3>
                        <v-spacer></v-spacer>
                        <v-btn @click="insSolicitud" color="green" dark>
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
                            label="Categoria Solicitud"
                            :items="['ALIMENTOS', 'CLAP', 'FANB']"
                            v-model="buscar"
                        ></v-select>
                        </v-flex>
                        </v-layout>
                        
                        <v-flex xs12>

                        <v-data-table
                        :headers="headers"
                        :items  ="solicitudes"
                        :search ="buscar"
                        item-key="id_solicitud"
                        >
                        <template slot="items" slot-scope="solicitud">
                            
                            <td class="text-xs-left" @click="solicitud.expanded = !solicitud.expanded" >{{ solicitud.item.ente.nb_ente }}</td>
                            <td class="text-xs-left">{{ solicitud.item.mo_solicitud }}</td>
                            <td class="text-xs-left">{{ solicitud.item.tx_concepto }}</td>
                            <td class="text-xs-left">{{ solicitud.item.categoria.nb_categoria }}</td>
                            <td class="text-xs-right">{{ solicitud.item.fe_solicitud | formDate}}</td>
                            <td class="text-xs-right">{{ solicitud.item.status.nb_status }}</td>
                            <!--acciones-->
                            <td class="justify-center layout px-0">
                                <v-btn icon @click="updSolicitud(solicitud.item )" >
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

                        <template slot="expand" slot-scope="solicitud">
                            <v-card flat>
                                <v-card-text>Detalle Solicitud  {{solicitud.item}}</v-card-text>
                            </v-card>
                        </template>

                        <template slot="pageText" slot-scope="solicitud">
                         Pagina {{ solicitud.pageStart }} - {{ solicitud.pageStop }} de {{ solicitud.itemsLength }}
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

              <solicitud-form :accion="accion" :solicitud="solicitud" @cerrarModal="cerrarModal"></solicitud-form>
            
          </v-card-text>
          
        </v-card>

      </v-dialog>


    </v-container>

</template>

<script>

Vue.use(require('vue-moment'));

export default {
    created() {

        this.solicitudes  = this.list();
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
        solicitudes:  false,
        buscar:    '',
        busTipIng: '',
        accion:    '',
        solicitud:   false,
        nb_accion: false,
        headers: [

        { text: 'Ente Solic.', value: 'ente.nb_ente' },
        { text: 'Monto',       value: 'mo_solicitud' },
        { text: 'Concepto',    value: 'tx_concepto' },
        { text: 'Categoria',   value: 'categoria.nb_categoria' },
        { text: 'Fecha',       value: 'fe_solicitud' },
        { text: 'Estatus',     value: 'status.nb_status' },
        { text: 'Acciones',    value: 'id_status'  },
        ]
    }
    },
    methods:
    {
        customFilter(items, search, filter) {

            return items.filter(row => filter(row["categoria.nb_categoria"], search));
        },
        cerrarModal(){

            this.modal = false;
            this.solicitud = '';

        },
        list () {
            
            axios.get('/api/v1/solicitud')
            .then(respuesta => {
                console.log(respuesta.data);
                    this.solicitudes = respuesta.data;
            })
            .catch(error => {
                    
            })
        },
        updSolicitud (solicitud) {
            
            this.nb_accion  = 'Editar Solicitud: ' + solicitud.ente.nb_ente;
            this.accion     = 'upd';
            this.modal      = true;
            this.solicitud  = solicitud;
        },
        insSolicitud () {

            this.nb_accion  = 'Agregar Solicitud:';
            this.accion     = 'ins';
            this.modal      = true;
            
        },
        delSolicitud (solicitud) {

            console.log('eliminar Solicitud')
            
        }
    }
}

</script>

<style>

</style>
