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
          <v-card dark color="orange">
            <v-card-text class="text-xs-center">
              <line-chart :data="chartData1.data" :colors="chartData1.colors"></line-chart>
            </v-card-text>
          </v-card>
        </v-flex>
        <v-flex flat xs12>
          <v-card color="">
            <v-card-text>
              <v-list-tile>
                <v-list-tile-content>
                  <v-list-tile-title>Ventas Diarias</v-list-tile-title>
                  <v-list-tile-sub-title>55% de imcremento</v-list-tile-sub-title>
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
          <v-card dark color="light-green">
            <v-card-text class="text-xs-center">
              <column-chart :data="chartData2.data" :colors="chartData2.colors"></column-chart>
            </v-card-text>
          </v-card>
        </v-flex>
        <v-flex flat xs12>
          <v-card color="">
            <v-card-text>
              <v-list-tile>
                <v-list-tile-content>
                  <v-list-tile-title>Quien es el mejor Programador?</v-list-tile-title>
                  <v-list-tile-sub-title>Alucinaras!!!</v-list-tile-sub-title>
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
          <v-card dark color="red lighten-1">
            <v-card-text class="text-xs-center">
              <bar-chart :data="chartData3.data" :colors="chartData3.colors"></bar-chart>
            </v-card-text>
          </v-card>
        </v-flex>
        <v-flex flat xs12>
          <v-card color="">
            <v-card-text>
              <v-list-tile>
                <v-list-tile-content>
                  <v-list-tile-title>Quien es el mejor COD?</v-list-tile-title>
                  <v-list-tile-sub-title>Alucinaras!!!</v-list-tile-sub-title>
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
import formHelper from '../components/mixins/formHelper';

import VueChartkick from 'vue-chartkick';
import Chart from 'chart.js';

Vue.use(VueChartkick, {adapter: Chart})

export default {
    mixins: [ formHelper, withSnackbar ],
    data () {
      return {
        chartData1: {
          data: [["2017-01-01", 4],["2017-01-02", 11], ["2017-01-03", 12]],
          colors: ['#fff', '#000']
        },
        chartData2: {
          data: [['David', 44], ['Yustiz', 23], ['Dayana', 25], ['Lesly', -5], ['Deibys', 1]],
          colors: ['#fff']
        },
        chartData3: {
          data: [['David', 44], ['Yustiz', 23], ['Chacal', -10]],
          colors: ['#fff']
        }
      }
    },
    created: function () {

    },
    methods:{

    },
    mounted () {


    }

}

</script>
