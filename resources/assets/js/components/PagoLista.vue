<template>
    <v-container fluid grid-list-md text-xs-center>
        
        <v-layout row justify-center>
            <v-flex xs12>
                <v-card>
                  
                    <v-toolbar class="light-blue darken-3 white--text">
                        <h3>Intrucciones / Pagos</h3>
                        <v-spacer></v-spacer>
                    </v-toolbar>

                    <v-card-text>
                    <v-layout wrap>
                    <v-flex xs12 sm6>
                    <v-text-field
                        v-model="buscar"
                        append-icon="search"
                        label="Buscar"
                        single-line
                        hide-details
                        clearable
                    ></v-text-field>
                    </v-flex>
                    
                    <v-flex xs12 sm6>
                    <v-select
                        :items="listas.categoria"
                        item-text="nb_categoria"
                        item-value="nb_categoria"
                        label="Categoria"
                        v-model="buscar"
                        single-line
                        hide-details
                        clearable
                    ></v-select>
                    </v-flex>
                    </v-layout>
                    
                    <v-flex xs12>

                    <v-data-table
                    :headers="headers"
                    :items  ="items"
                    :search ="buscar"
                    v-model ="selected"
                    item-key="id_instruccion"
                    rows-per-page-text="Res. x Pag"
                    :loading="IsLoading"
                    disable-initial-sort
                    >
                    <template slot="items" slot-scope="item">
                        
                        <td class="text-xs-left" @click="item.expanded = !item.expanded" >
                            <v-btn flat icon color="primary">
                                <v-icon>touch_app</v-icon>
                            </v-btn>
                            {{ item.item.solicitud.categoria.nb_categoria }}
                        </td>
                        <td class="text-xs-left">{{ item.item.solicitud.ente.nb_ente }}</td>
                        <td class="text-xs-left">{{ item.item.solicitud.tx_concepto  }}</td>
                        <td class="text-xs-right">{{ item.item.mo_instruccion | formatNumber }}</td>
                        <td class="text-xs-left">{{ item.item.fe_instruccion | formDate  }}</td>
                        <td class="text-xs-center">{{ item.item.esquema.nb_esquema }}</td>
                        <!--status-->
                        <td class="text-xs-left">
                            
                            <v-tooltip bottom v-if="getMontos(item.item).pendiente == 0 || acreditado">
                            <v-btn slot="activator" fab small color="success" @click.native="dsolicitud = true" >
                                <v-icon >thumb_up</v-icon>
                            </v-btn>
                            <span>Pagado</span>
                            </v-tooltip>

                            <v-tooltip bottom v-else>
                                <v-btn slot="activator" fab small color="warning" @click.native="dsolicitud = true" >
                                    <v-icon >notification_important</v-icon>
                                </v-btn>
                                <span>Pendiente {{getMontos(item.item).pendiente | formatNumber}}</span>
                            </v-tooltip>
                            
                        </td>
                        
                    </template>

                    <template slot="expand" slot-scope="item">
                        
                        <v-card flat>
                            <v-card-text>
                                <pago-det :instruccion="item.item" @acreditado="acreditado=true"></pago-det>
                            </v-card-text>
                        </v-card>
                    </template>

                    <template slot="pageText" slot-scope="instruccion">
                        Pagina {{ item.pageStart }} - {{ item.pageStop }} de {{ instruccion.itemsLength }}
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

    </v-container>

</template>

<script>

import withSnackbar from '../components/mixins/withSnackbar';
import listHelper from '../components/mixins/listHelper';

export default {
    mixins:[ listHelper, withSnackbar ],
    data () {
    return {
        acreditado: false,
        headers: [
        { text: 'Categoria',    value: 'solicitud.categoria.nb_categoria' },
        { text: 'Ente',         value: 'instruccion.ente.nb_ente' },
        { text: 'Concepto',     value: 'solicitud.tx_concepto' },
        { text: 'Monto',        value: 'mo_instruccion' },
        { text: 'Fecha',        value: 'fe_instruccion' },
        { text: 'Esq. Pago',    value: 'esquema.nb_esquema' },
        { text: 'Sta. Pago',    value: 'id_status' },
        ],
        listas:{
            categoria: []
        }
    }
    },
    methods:
    {
        list () {

            axios.get('/api/v1/instruccion')
            .then(respuesta => {
                this.IsLoading = false
                this.items = respuesta.data;
            })
            .catch(error => {
                this.IsLoading = false
                this.showError(error)
            })

            axios.get('/api/v1/categoria')
            .then(respuesta => {
                this.listas.categoria = respuesta.data;
            })
            .catch(error => {
                this.showError(error)
            })
        },
        getMontos(item){
            
            let monto = {
                            instruido : Number(item.mo_instruccion),
                            pendiente : Number(item.mo_instruccion),
                            pagado    : 0
                        }

            if(item.pago.length > 0)
            {
               
               item.pago.forEach(function(item) 
               {
                    if(item.id_status == 31)
                    {
                        monto.pagado += Number(item.mo_final_pago);
                    }
                    
                });
            }
            monto.pendiente = monto.instruido - monto.pagado;
            return monto;
        }
    }
}

</script>

<style>

</style>
