<template>
    <v-container fluid grid-list-md text-xs-center>
        <v-layout row justify-center>
        <v-flex xs12>
        <v-card>
            
            <v-toolbar class="blue accent-1 white--text">
            <h3>Cuenta</h3>
                <v-spacer></v-spacer>
            </v-toolbar>

            <v-card-text>
                
            <v-flex xs12 xs6>
            <v-text-field
                v-model="buscar"
                append-icon="search"
                label="Buscar"
                single-line
                hide-details
                clearable
            ></v-text-field>
            </v-flex>
            
            <v-data-table
            :headers="headers"
            :items  ="items"
            :search ="buscar"
            v-model ="selected"
            item-key="id_cuenta"
            rows-per-page-text="Res. x Pag"
            disable-initial-sort
            >

            <template slot="items" slot-scope="item">
                <td class="text-xs-left" @click="item.expanded = !item.expanded" >
                            <v-btn flat icon color="primary">
                                <v-icon>import_export</v-icon>
                            </v-btn>
                            {{ item.item.moneda.nb_moneda }}
                </td>
                <td class="text-xs-right">{{ item.item.mo_total | formatNumber}}</td>
                <td class="text-xs-right">{{ item.item.mo_disponible | formatNumber }}</td>
                <td class="text-xs-right">{{ item.item.mo_instruido | formatNumber}}</td>
                <td class="text-xs-right">{{ item.item.mo_aprobado  | formatNumber}}</td>
                <td class="text-xs-left">{{ (item.item.fe_actualizado) ? item.item.fe_actualizado : item.item.fe_creado }}</td>

            </template>

            <template slot="expand" slot-scope="item">
                <v-card flat>
                    <v-card-text>
                        <movimiento-lista :moneda="item.item.id_moneda"></movimiento-lista>
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
        { text: 'Moneda',           value: 'moneda.nb_moneda' },
        { text: 'Total',            value: 'mo_total' },
        { text: 'Disponible',       value: 'mo_disponible' },
        { text: 'Instruido',        value: 'mo_instruido' },
        { text: 'Aprobado',         value: 'mo_aprobado'  },
        { text: 'Ult Movimiento',   value: 'fe_actualizado'  },
        ]
    }
    },
    methods:
    {
        list () {

            axios.get('/api/v1/cuenta')
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
