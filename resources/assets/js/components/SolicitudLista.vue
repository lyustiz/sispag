<template>
    <v-container fluid grid-list-md text-xs-center>
    <v-layout row justify-center>
    <v-flex xs12>
    <v-card>
        
        <v-toolbar class="light-blue darken-3 white--text">
            <h3>Solicitudes</h3>
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
            :items="listas.categoria"
            item-text="nb_categoria"
            item-value="nb_categoria"
            label="Categoria Solicitud"
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
            item-key="id_solicitud"
            rows-per-page-text="Res. x Pag"
        >
        <template slot="items" slot-scope="item">
            
            <td class="text-xs-left" @click="item.expanded = !item.expanded" >{{ item.item.ente.nb_ente }}</td>
            <td class="text-xs-left">{{ item.item.nu_solicitud }}</td>
            <td class="text-xs-right">{{ item.item.mo_solicitud | formatNumber }}</td>
            <td class="text-xs-left">{{ item.item.tx_concepto }}</td>
            <td class="text-xs-left">{{ item.item.categoria.nb_categoria }}</td>
            <td class="text-xs-center">{{ item.item.fe_solicitud | formDate}}</td>
            <td class="text-xs-center">{{ item.item.status.nb_status }}</td>
            <!--acciones-->
            <td class="text-xs-left" v-if="!item.item.instruccion">
                <list-buttons  class="text-center" @editar="updItem(item.item)" @eliminar="delForm(item.item)">
                </list-buttons>
            </td>
            <td class="text-xs-center" v-else>
                <v-tooltip bottom>
                    <v-btn slot="activator" fab small color="success" @click.native="dsolicitud = true" >
                        <v-icon >playlist_add_check</v-icon>
                    </v-btn>
                    <span>Instruccion Asignada</span>
                </v-tooltip>
            </td>
            
        </template>

        <template slot="expand" slot-scope="item">
            <v-flex xs5 sm4>
                <list-data 
                    titulo="Detalle Solicitud" 
                    :items="{ 
                            'Categoria'       : item.item.categoria.nb_categoria,
                            'Ente'            : item.item.ente.nb_ente,
                            'Concepto'        : item.item.tx_concepto,
                            'Monto Solicitado': formatNumber(item.item.mo_solicitud),
                            'Nro Solicitud'   : item.item.nu_solicitud,
                            'Fech. Solicitud' : formatDate(item.item.fe_solicitud),
                            'Status Solicitud': item.item.status.nb_status,
                            'Obs. Solicitud'  : item.item.tx_observaciones,
                            }" 
                    :visible="true"
                    @cerrar="item.expanded = !item.expanded">
                </list-data >
                </v-flex>
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
        <solicitud-form :accion="accion" :item="item" @cerrarModal="cerrarModal"></solicitud-form>
    </form-container>

    <dialogo 
        :dialogo="dialogo" 
        :mensaje="'Desea Eliminar la Solicitud? ' "
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
        { text: 'Ente Solic.', value: 'ente.nb_ente' },
        { text: 'Nro. Solic.', value: 'nu_solicitud' },
        { text: 'Monto',       value: 'mo_solicitud' },
        { text: 'Concepto',    value: 'tx_concepto' },
        { text: 'Categoria',   value: 'categoria.nb_categoria' },
        { text: 'Fecha',       value: 'fe_solicitud' },
        { text: 'Estatus',     value: 'status.nb_status' },
        { text: 'Acciones',    value: 'id_status'  },
        ],
        listas:{
            categoria: []
        }
    }
    },
    methods:
    {
        list () {
            
            axios.get('/api/v1/solicitud')
            .then(respuesta => {
                this.items = respuesta.data;
            })
            .catch(error => {
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
        delItem(){
            axios.delete('/api/v1/solicitud/'+this.item.id_solicitud)
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

</script>

<style>

</style>
