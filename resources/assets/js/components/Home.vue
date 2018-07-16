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
                <v-list-tile-content>
                  <v-list-tile-title>Ingreso Euros</v-list-tile-title>
                  <v-list-tile-sub-title>3.000.543,00</v-list-tile-sub-title>
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
                <v-list-tile-content>
                  <v-list-tile-title>Ingreso Dolar</v-list-tile-title>
                  <v-list-tile-sub-title>3.000.543,00</v-list-tile-sub-title>
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
                <v-list-tile-content>
                  <v-list-tile-title>Otros Ingresos</v-list-tile-title>
                  <v-list-tile-sub-title>3.000.543,00</v-list-tile-sub-title>
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
                <v-list-tile-content>
                  <v-list-tile-title>Total Ingresos</v-list-tile-title>
                  <v-list-tile-sub-title>3.000.543,00</v-list-tile-sub-title>
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
              <line-chart :data="chartData1.data" :colors="chartData1.colors" :download="true"></line-chart>
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
              <column-chart :data="chartData2.data" :colors="chartData2.colors" :download="true"></column-chart>
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
              <pie-chart :data="chartData3.data" :colors="chartData3.colors" :download="true"></pie-chart>
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
        chartData1: {
          data: [
            {name: 'Ingresos', data: {'2017-01-01': 3, '2017-01-02': 11, '2017-01-03': 5}},
            {name: 'Pagos', data: {'2017-01-01': 8, '2017-01-02': 6, '2017-01-03': 12}},
            {name: 'Instrucciones', data: {'2017-01-01': 5, '2017-01-02': 7, '2017-01-03': 1}},
            {name: 'Solicitudes', data: {'2017-01-01': 2, '2017-01-02': 8, '2017-01-03': 5}}
          ],
 
        },
        chartData2: {
          data: [['Venta Oro', 44], ['Pres. Pais', 23], ['Pdvsa', 25], ['Pres. OM', 3],['Retiro CC', 54], ['Div OP', 34], ['Div. DICOM', 12], ['Ing. Prop', 5]],
    
        },
        chartData3: {
          data: [['Alimentos', 2345], ['Billetes', 1234], ['Clap', 6789],['Deuda', 4568],['FANB', 1234],['Medicam.', 1222]],
        }
      
      }
    },
    created: function () {

    },
    methods:{

    },

}

</script>
