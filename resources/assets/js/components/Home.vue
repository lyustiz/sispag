<style scoped>
  .separador {
    height:50px;
  }
</style>

<template>
  <v-layout row justify-center wrap>
    <v-flex xs12 sm6 md3>
      <v-card>
        <v-flex flat xs12>
          <v-card dark color="blue">
            <v-card-text class="text-xs-center">
              <v-icon x-large>euro_symbol</v-icon>
            </v-card-text>
          </v-card>
        </v-flex>
        <v-flex flat xs12>
          <v-card color="">
            <v-card-text>
              <v-list-tile>
                <v-list-tile-content class="blue--text">
                  <v-list-tile-title>Ingreso Euros</v-list-tile-title>
                  <v-list-tile-sub-title>{{ montos.euro | formatNumber}}</v-list-tile-sub-title>
                </v-list-tile-content>
              </v-list-tile>
            </v-card-text>
          </v-card>
        </v-flex>
      </v-card>
    </v-flex>
    <v-flex xs12 sm6 md3>
      <v-card>
        <v-flex flat xs12>
          <v-card dark color="red">
            <v-card-text class="text-xs-center">
              <v-icon x-large>attach_money</v-icon>
            </v-card-text>
          </v-card>
        </v-flex>
        <v-flex flat xs12>
          <v-card color="">
            <v-card-text>
              <v-list-tile>
                <v-list-tile-content class="red--text">
                  <v-list-tile-title>Ingreso Dolar</v-list-tile-title>
                  <v-list-tile-sub-title>{{ montos.dolar | formatNumber}}</v-list-tile-sub-title>
                </v-list-tile-content>
              </v-list-tile>
            </v-card-text>
          </v-card>
        </v-flex>
      </v-card>
    </v-flex>
    <v-flex xs12 sm6 md3>
      <v-card>
        <v-flex flat xs12>
          <v-card dark color="green">
            <v-card-text class="text-xs-center">
              <v-icon x-large>shop_two</v-icon>
            </v-card-text>
          </v-card>
        </v-flex>
        <v-flex flat xs12>
          <v-card color="">
            <v-card-text>
              <v-list-tile>
                <v-list-tile-content class="green--text">
                  <v-list-tile-title>Otros Ingresos</v-list-tile-title>
                  <v-list-tile-sub-title>{{ montos.otros | formatNumber}}</v-list-tile-sub-title>
                </v-list-tile-content>
              </v-list-tile>
            </v-card-text>
          </v-card>
        </v-flex>
      </v-card>
    </v-flex>
    <v-flex xs12 sm6 md3>
      <v-card>
        <v-flex flat xs12>
          <v-card dark color="orange">
            <v-card-text class="text-xs-center">
              <v-icon x-large>account_balance</v-icon>
            </v-card-text>
          </v-card>
        </v-flex>
        <v-flex flat xs12>
          <v-card color="">
            <v-card-text>
              <v-list-tile>
                <v-list-tile-content class="orange--text">
                  <v-list-tile-title>Total Ingresos</v-list-tile-title>
                  <v-list-tile-sub-title>{{ montos.total | formatNumber}}</v-list-tile-sub-title>
                </v-list-tile-content>
              </v-list-tile>
            </v-card-text>
          </v-card>
        </v-flex>
      </v-card>
    </v-flex>
    <v-flex xs12 class="separador"></v-flex>
    <v-flex xs12 md6>
      <v-card>
        <v-flex flat xs12>
          <v-card  >
            <v-card-text class="text-xs-center">
              <line-chart :data="chartProcesos.data"  :download="true"></line-chart>
            </v-card-text>
          </v-card>
        </v-flex>
        <v-flex flat xs12>
          <v-card color="">
            <v-card-text>
              <v-list-tile>
                <v-list-tile-content>
                  <v-list-tile-title><h3>Procesos</h3></v-list-tile-title>
                  <v-list-tile-sub-title>Ingresos / Solicitudes / Intruciones / Pagos </v-list-tile-sub-title>
                </v-list-tile-content>
              </v-list-tile>
            </v-card-text>
          </v-card>
        </v-flex>
      </v-card>
    </v-flex>
    <v-flex xs12 md6>
      <v-card>
        <v-flex flat xs12>
          <v-card >
            <v-card-text class="text-xs-center">
              <column-chart :data="chartIngresos.data" :colors="chartIngresos.colors" :download="true"></column-chart>
            </v-card-text>
          </v-card>
        </v-flex>
        <v-flex flat xs12>
          <v-card color="">
            <v-card-text>
              <v-list-tile>
                <v-list-tile-content>
                  <v-list-tile-title><h3>Ingresos</h3></v-list-tile-title>
                  <v-list-tile-sub-title>Segun Tipo</v-list-tile-sub-title>
                </v-list-tile-content>
              </v-list-tile>
            </v-card-text>
          </v-card>
        </v-flex>
      </v-card>
    </v-flex>
    <v-flex xs12 class="separador"></v-flex>
    <v-flex xs12 md6>
      <v-card>
        <v-flex flat xs12>
          <v-card  color="">
            <v-card-text class="text-xs-center">
              <pie-chart :data="chartInstrucciones.data" :colors="chartInstrucciones.colors" :download="true"></pie-chart>
            </v-card-text>
          </v-card>
        </v-flex>
        <v-flex flat xs12>
          <v-card color="">
            <v-card-text>
              <v-list-tile>
                <v-list-tile-content>
                  <v-list-tile-title><h3>Intrucciones</h3></v-list-tile-title>
                  <v-list-tile-sub-title>Segun Categorias</v-list-tile-sub-title>
                </v-list-tile-content>
              </v-list-tile>
            </v-card-text>
          </v-card>
        </v-flex>
      </v-card>
    </v-flex>

  </v-layout>
  
</template>

<script>

import withSnackbar from '../components/mixins/withSnackbar';
import VueChartkick from 'vue-chartkick';
import Chart from 'chart.js';

Vue.use(VueChartkick, {adapter: Chart})

export default {
    mixins: [ withSnackbar ],
    data () {
      return {
         
        items:    [],
        cuenta:   [],
        ingreso:  [],
        instruccion:[],
        procesos: [],
        montos: {
              dolar: 0,
              euro : 0,
              otros: 0,
              total: 0
        },
        chartProcesos:      {},
        chartIngresos:      {},
        chartInstrucciones: {}
      }
    },
    created() {

      this.list();

    },
     filters: {

        formatNumber: function (value) 
        {
            let val = (value/1).toFixed(2).replace('.', ',')
            return val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".")
        }

    },
    methods:{

      list()
      {
          axios.get('/api/v1/home/totales')
            .then(respuesta => {
                this.cuenta      = respuesta.data.cuenta
                this.ingreso     = respuesta.data.ingreso
                this.instruccion = respuesta.data.instruccion
                this.procesos    = respuesta.data.procesos
                this.setCuenta()
                this.setProcesos()
                this.setIngresos()
                this.setInstruccion()

            })
            .catch(error => {
                this.showError(error)
            })

      },
       setCuenta()
        {
            this.montos.otros = 0;
            this.montos.total = 0;

            this.cuenta.forEach(function(item, index) 
            {
               switch (item.nb_moneda) {
                case 'Dolar':
                    this.montos.dolar = Number(item.mo_total)
                  break;
                case 'Euro':
                    this.montos.euro = Number(item.mo_total)
                  break;
                default:
                    this.montos.otros += Number(item.mo_total)
                  break;
              }
               this.montos.total += Number(item.mo_total);
            }, this);
        },
        setProcesos()
        {
          let ingreso     = new Object();
          let solicitud   = new Object();
          let instruccion = new Object();
          let pago        = new Object();

          this.procesos.forEach(function(item, index) 
            {
               switch (item.tipo) {
                case 'ingreso':
                  ingreso[item.fecha]     = item.cantidad;
                  break;
                case 'solicitud':
                  solicitud[item.fecha]   = item.cantidad;
                  break;
                case 'instruccion':
                  instruccion[item.fecha] = item.cantidad;
                  break;
                case 'pago':
                  pago[item.fecha]        = item.cantidad;
                  break;
              }
            }, this);
            
            this.chartProcesos = 
                                {
                                  data: 
                                        [
                                          {name: 'Ingresos',    data: ingreso},
                                          {name: 'solicitud',   data: solicitud},
                                          {name: 'instruccion', data: instruccion},
                                          {name: 'pago',        data: pago}
                                        ] 
                                } ;

        },
        setIngresos()
        {
            let ingresos = [];

            this.ingreso.forEach(function(item, index) 
            {
              ingresos[index] = [item.nb_tipo_ingreso, item.mo_ingreso];
            }, this);

            this.chartIngresos =  { data : ingresos } 
                        
        },
        setInstruccion()
        {
            let instrucciones = [];

            this.instruccion.forEach(function(item, index) 
            {
              instrucciones[index] = [item.nb_categoria, item.mo_instruccion];
            }, this);

            this.chartInstrucciones =  { data : instrucciones } 

        }
    },

}

</script>
