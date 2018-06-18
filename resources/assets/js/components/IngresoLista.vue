<template>
    <v-container fluid grid-list-md text-xs-center>
        
        <v-layout row justify-center>
            <v-flex xs11>
                <v-card>
                  
                    <v-card-title  class="blue accent-1 white--text">
                        <h3>Ingresos</h3>
                        <v-spacer></v-spacer>
                        

                        <v-btn fab @click="insIngreso" dark small color="green">
                            <v-icon dark>add</v-icon>
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
                            label="Tipo Ingreso"
                            :items="['PDVSA', 'VENTA DE ORO', 'PRESTAMO DE PAÍS','PRESTAMOS DE ORGANISMOS MULTILATERAL']"
                            v-model="buscar"
                        ></v-select>
                        </v-flex>
                        </v-layout>
                        
                        <v-flex xs12>

                        <v-data-table
                        :headers="headers"
                        :items  ="ingresos"
                        :search ="buscar"
                        item-key="id_ingreso"
                        >
                        <template slot="items" slot-scope="ingreso">
                            
                            <td class="text-xs-left" @click="ingreso.expanded = !ingreso.expanded" >{{ ingreso.item.tipo_ingreso.nb_tipo_ingreso }}</td>
                            <td class="text-xs-left">{{ ingreso.item.ente.nb_ente }}</td>
                            <td class="text-xs-left">{{ ingreso.item.banco.nb_banco }}</td>
                            <td class="text-xs-left">{{ ingreso.item.moneda.nb_moneda }}</td>
                            <td class="text-xs-right">{{ ingreso.item.mo_ingreso }}</td>
                            <td class="text-xs-right">{{ ingreso.item.mo_tasa }}</td>
                            <td class="text-xs-left">{{ ingreso.item.fe_ingreso| formDate }}</td>
                            <!--acciones-->
                            <td class="justify-center layout px-0">
                                <v-btn icon @click="updIngreso(ingreso.item )" >
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

                        <template slot="expand" slot-scope="ingreso">
                            <v-card flat>
                                <v-card-text>Detalle Ingreso  {{ingreso.item}}</v-card-text>
                            </v-card>
                        </template>

                        <template slot="pageText" slot-scope="ingreso">
                         Pagina {{ ingreso.pageStart }} - {{ ingreso.pageStop }} de {{ ingreso.itemsLength }}
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

              <ingreso-form :accion="accion" :ingreso="ingreso" @cerrarModal="cerrarModal"></ingreso-form>
            
          </v-card-text>
          
        </v-card>

      </v-dialog>


    </v-container>

</template>

<script>

Vue.use(require('vue-moment'));

export default {
    created() {

        this.ingresos  = this.list();
    },
    filters: {

        formDate: function (value) {

            if (!value) return ''
            value = value.toString();
            return value.substr(6, 2)+'/'+value.substr(4, 2)+'/'+value.substr(0, 4);
        }

    },
    data () {
    return {
        modal:     false,
        ingresos:  false,
        buscar:    '',
        busTipIng: '',
        accion:    '',
        ingreso:   false,
        nb_accion: false,
        headers: [
        { text: 'Tipo Ingreso',  value: 'tipo_ingreso.nb_tipo_ingreso' },
        { text: 'Ente Receptor', value: 'ente.nb_ente' },
        { text: 'Banco Receptor',value: 'banco.nb_banco' },
        { text: 'Moneda',        value: 'moneda.nb_moneda' },
        { text: 'Monto',         value: 'mo_ingreso' },
        { text: 'Tasa',          value: 'mo_tasa' },
        { text: 'Fecha',         value: 'fe_ingreso' },
        { text: 'Acciones',      value: 'id_status'  },
        ]
    }
    },
    props:['notitle'],
    methods:
    {
        customFilter(items, search, filter) {
e
            console.log(items )
            console.log(search )
            console.log(filter )
            //search = search.toString().toLowerCase()
            return items.filter(row => filter(row["tipo_ingreso.nb_tipo_ingreso"], search));
        },
        cerrarModal(){

            this.modal = false;
            this.ingreso = '';

        },
        list () {

            axios.get('/api/v1/ingreso')
            .then(respuesta => {
                console.log(respuesta.data)
                    this.ingresos = respuesta.data;
            })
            .catch(error => {
                    
            })
        },
        updIngreso (ingreso) {
            
            this.nb_accion  = 'Editar Ingreso: ' + ingreso.tipo_ingreso.nb_tipo_ingreso;
            this.accion     = 'upd';
            this.modal      = true;
            this.ingreso    = ingreso;
        },
        insIngreso () {

            this.nb_accion  = 'Agregar Ingreso:';
            this.accion     = 'ins';
            this.modal      = true;
            
        },
        delIngreso (ingreso) {

            console.log('eliminar Ingreso')
            
        }
    }
}

</script>

<style>

</style>
