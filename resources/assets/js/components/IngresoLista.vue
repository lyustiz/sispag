<template>
    <v-container fluid grid-list-md text-xs-center>
        
    <v-layout row justify-center>
    <v-flex xs12>
    <v-card>
        
        <v-toolbar class="light-blue darken-3 white--text">
            <h3>Ingresos</h3>
            <v-spacer></v-spacer>
            <v-btn fab @click="insItem" dark small absolute right bottom class="success">
                <v-icon dark>add</v-icon>
            </v-btn>
        </v-toolbar>

        <v-card-text>
        <v-layout row wrap>
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
            :items="listas.tipoIngreso"
            item-text="nb_tipo_ingreso"
            item-value="nb_tipo_ingreso"
            label="Tipo de Ingreso"
            v-model="buscar"
            single-line
            hide-details
            clearable
        ></v-select>
        </v-flex>
        </v-layout> 
        
        <v-data-table
        :headers="headers"
        :items  ="items"
        :search ="buscar"
        v-model ="selected"
        item-key="id_ingreso"
        rows-per-page-text="Res. x Pag"
        :loading="IsLoading"
        disable-initial-sort
        >
        <template slot="items" slot-scope="item">
            
            <td class="text-xs-left" @click="item.expanded = !item.expanded" >{{ item.item.tipo_ingreso.nb_tipo_ingreso }}</td>
            <td class="text-xs-left"> {{ item.item.ente.nb_ente }}</td>
            <td class="text-xs-left"> {{ item.item.banco.nb_banco }}</td>
            <td class="text-xs-left"> {{ item.item.moneda.nb_moneda }}</td>
            <td class="text-xs-right">{{ item.item.mo_ingreso | formatNumber }}</td>
            <td class="text-xs-right">{{ item.item.mo_tasa | formatTasa }}</td>
            <td class="text-xs-right">{{ item.item.mo_dolares | formatNumber }}</td>
            <td class="text-xs-left"> {{ item.item.fe_ingreso | formDate }}</td>
            <!--acciones | formDate-->
            <td class="text-xs-center" v-if="item.item.id_status != 1">
                <list-buttons @editar="updItem(item.item)" @eliminar="delForm(item.item)">
                </list-buttons>
            </td>
            <td class="text-xs-center" v-else>

                <list-buttons icono="lock" color="green" :del="false" :upd="false">
                    <v-tooltip top>
                        <v-btn slot="activator" fab dark small color="error" @click="reversarIngreso(item.item)">
                            <v-icon>reply_all</v-icon>
                        </v-btn>
                        <span>Reversar Ingreso</span>
                   </v-tooltip>
                </list-buttons>

            </td>
            
        </template>

        <template slot="expand" slot-scope="item">
            <v-layout wrap>
            <v-flex xs5 sm4>
            <list-data 
                titulo="Detalle Ingreso" 
                :items="{ 
                        'Tipo de Ingreso' : item.item.tipo_ingreso.nb_tipo_ingreso,
                        'Origen Ingreso'  : item.item.ente.nb_ente, 
                        'Banco Receptor'  : item.item.banco.nb_banco,
                        'Moneda'          : item.item.moneda.nb_moneda,
                        'Mto Ingreso'     : formatNumber(item.item.mo_ingreso),
                        'Tasa '           : formatTasa(item.item.mo_tasa),
                        'Mto Dolares '    : formatNumber(item.item.mo_dolares),
                        'F. Ingreso'      : formatDate(item.item.fe_ingreso),
                        'Status'          : item.item.status.nb_status,
                        'Obs. Solicitud'  : item.item.tx_observaciones,
                        }" 
                :visible="true"
                @cerrar="item.expanded = !item.expanded">
            </list-data >
            </v-flex>
            </v-layout>
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

    <form-container :nb-accion="nb_accion" :modal="modal" @cerrarModal="cerrarModal">
        <ingreso-form :accion="accion" :item="item" @cerrarModal="cerrarModal"></ingreso-form>
    </form-container>

    <dialogo 
        :dialogo="dialogo" 
        :mensaje="'Desea Eliminar el Ingreso'"
        @delItem="delItem"
        @delCancel="delCancel"
    >
    </dialogo>
        
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
        { text: 'Tipo Ingreso',  value: 'tipo_ingreso.nb_tipo_ingreso' },
        { text: 'Origen Ingreso', value: 'ente.nb_ente' },
        { text: 'Banco Receptor',value: 'banco.nb_banco' },
        { text: 'Moneda',        value: 'moneda.nb_moneda' },
        { text: 'Monto',         value: 'mo_ingreso' },
        { text: 'Tasa',          value: 'mo_tasa' },
        { text: 'Mto Dolares',   value: 'mo_dolares' },
        { text: 'Fecha',         value: 'fe_ingreso' },
        { text: 'Acciones',      value: 'id_status'  },
        ],
        listas:{
            tipoIngreso: []
        }
    }
    },
    props:['notitle'],
    methods:
    {
        list () {

            axios.get('/api/v1/ingreso')
            .then(respuesta => {
                this.IsLoading = false
                this.items = respuesta.data;
            })
            .catch(error => {
                this.IsLoading = false
                this.showError(error)
            })

            axios.get('/api/v1/tipoIngreso')
            .then(respuesta => {
                this.listas.tipoIngreso = respuesta.data;
            })
            .catch(error => {
                this.showError(error)
            })
        },
        delItem(){
            axios.delete('/api/v1/ingreso/'+this.item.id_ingreso)
            .then(respuesta => 
            {
                this.showMessage(respuesta.data.msj)
                this.list();
                this.item = '';
                this.dialogo = false; 
            })
            .catch(error => {
                this.showError(error)    
            })
        },
        reversarIngreso(item)
        {
            if(confirm('Desea reversar el Ingreso Seleccionado'))
            {
                item.id_status  = 2;
                item.id_usuario = this.id_usuario;
                axios.put('/api/v1/ingreso/'+ item.id_ingreso, item)
                .then(respuesta => {

                    this.showMessage(respuesta.data.msj)
                    this.list();
                    this.item = '';
                    this.dialogo = false;
                })
                .catch(error => {
                    this.showError(error)    
                })
            }

        }
        
    }
}

</script>

<style>

</style>
