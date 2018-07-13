<template>
    <v-container fluid grid-list-md text-xs-center>
        <v-layout row justify-center>
        <v-flex xs12>
        <v-card>
            
            <v-card-text>
            <div class="text-sm-left">
                <v-chip>
                <v-avatar class="teal"><v-icon>import_export</v-icon></v-avatar>
                    <h3>Movimientos {{ moneda.nb_moneda}} {{ moneda.tx_signo}}</h3>  
                </v-chip>
            </div>
                

            <v-data-table
            :headers="headers"
            :items  ="items"
            v-model ="selected"
            item-key="id_movimiento"
            rows-per-page-text="Res. x Pag"
            disable-initial-sort
            >

            <template slot="items" slot-scope="item">
                <td class="text-xs-center">{{ item.item.nu_movimiento }}</td>
                <td class="text-xs-left">{{ item.item.nb_modulo  }}</td>
                <td class="text-xs-left">{{ item.item.tx_tipomov }}</td>
                <td class="text-xs-right">{{ item.item.mo_movimiento  | formatNumber}}</td>
                <td class="text-xs-left">{{ item.item.fe_movimiento}}</td>
            </template>

            <template slot="expand" slot-scope="item">
                <v-card flat>
                    <v-card-text>
                       {{item.item}}
                    </v-card-text>
                </v-card>
            </template>

            <v-alert slot="no-results" :value="true" color="info" icon="info">
                La busqueda "{{ buscar }}" Sin resultados
            </v-alert>

            <template slot="pageText" slot-scope="item">
                {{item.pageStart}} - {{item.pageStop}} de {{item.itemsLength}}
            </template>

            </v-data-table>
            </v-card-text>

        </v-card>
        </v-flex>
        </v-layout>

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
        { text: 'Numero',      value: 'nu_movimiento' },
        { text: 'Modulo',      value: 'nb_modulo' },
        { text: 'Tipo Mov',    value: 'tx_tipomov' },
        { text: 'Monto',       value: 'mo_movimiento' },
        { text: 'Fecha',       value: 'fe_movimiento' },
        ]
    }
    },
    props: ['moneda'],
    methods:
    {
        list () {

            axios.get('/api/v1/movimiento/moneda/'+this.moneda.id_moneda)
            .then(respuesta => {
                this.items = respuesta.data;
            })
            .catch(error => {
                this.showError(error)
            })
        }
    }
}

</script>

<style>

</style>
