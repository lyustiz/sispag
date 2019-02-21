<template>
    <v-container fluid grid-list-md text-xs-center>
    <v-layout row justify-center>
    <v-flex xs12>
    <v-card>
                  
        <v-toolbar class="light-blue darken-3 white--text">
            <h3>Instrucciones</h3>
            <v-spacer></v-spacer>
            <v-btn fab  @click="insItem" dark small absolute right bottom class="success">
                <v-icon dark>add</v-icon>
            </v-btn>
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
                label="Categoria Instruccion"
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
                item-key="id_instruccion"
                :loading="IsLoading"
                rows-per-page-text="Res. x Pag"
            >
            <template slot="items" slot-scope="item">
                
                <td class="text-sm-left" @click="item.expanded = !item.expanded" >{{ item.item.categoria.nb_categoria }}</td>
                <td class="text-sm-left"> {{ item.item.ente.nb_ente }}</td>
                <td class="text-sm-left"> {{ item.item.tx_concepto  }}</td>
                <td class="text-sm-rigth">{{ item.item.mo_instruccion | formatNumber }}</td>
                <td class="text-sm-rigth">{{ item.item.moneda.nb_moneda }}</td>
                <td class="text-sm-rigth">{{ item.item.mo_tasa | formatTasa }}</td>
                <td class="text-sm-rigth">{{ item.item.mo_total | formatNumber }}</td>
                <td class="text-sm-left"> {{ item.item.fe_instruccion | formDate }}</td>
                <td class="text-sm-left"> {{ item.item.esquema.nb_esquema }}</td>
                <!--acciones-->
                <td class="text-xs-left" v-if="item.item.pago.length < 1 ">
                    <list-buttons  @editar="updItem(item.item)" @eliminar="delForm(item.item)">
                    </list-buttons>
                </td>
                <td class="text-xs-center" v-else>
                <v-tooltip bottom>
                    <v-btn slot="activator" fab small color="success" @click.native="dsolicitud = true" >
                        <v-icon >assignment_returned</v-icon>
                    </v-btn>
                    <span>Proceso de Pago</span>
                </v-tooltip>
            </td>
                
            </template>

            <template slot="expand" slot-scope="item">
                <v-layout wrap>
          

                <v-flex xs12 sm12>
                <list-data 
                    titulo="Detalle Instruccion" 
                    :items="{ 
                            'Categoria'       : item.item.categoria.nb_categoria,
                            'Ente'            : item.item.ente.nb_ente,
                            'Concepto'        : item.item.tx_concepto,       
                            'Moneda'          : item.item.moneda.nb_moneda,                    
                            'Monto Instruido' : formatNumber(item.item.mo_instruccion),
                            'F. Instruccion'  : formatDate(item.item.fe_instruccion),
                            'Esquema de Pago' : item.item.esquema.nb_esquema,
                            'Nro. Esq. Pago'  : item.item.nu_esquema,
                            'Oficio Cta. Mdte': item.item.tx_ofi_cta_mte,
                            'Estatus'         : item.item.status.nb_status,
                            'Obs. Instruccion': item.item.tx_observaciones,
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
           <instruccion-form :accion="accion" :item="item" @cerrarModal="cerrarModal"></instruccion-form>
        </form-container>

    <dialogo 
        :dialogo="dialogo" 
        :mensaje="'Desea Eliminar la Instruccion? ' "
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
        { text: 'Categoria',    value: 'categoria.nb_categoria' },
        { text: 'Ente',         value: 'ente.nb_ente' },
        { text: 'Concepto',     value: 'tx_concepto' },
        { text: 'Monto',        value: 'mo_instruccion' },
        { text: 'Moneda',       value: 'moneda.nb_moneda' },
        { text: 'Tasa',         value: 'mo_tasa' },
        { text: 'Monto Total',  value: 'mo_total' },
        { text: 'Fecha',        value: 'fe_instruccion' },
        { text: 'Esquema Pago', value: 'esquema.nb_esquema' },
        { text: 'Acciones',     value: 'id_status'  },
        
        /*
        'id_categoria',
        'id_ente',
        'tx_concepto',
        'id_esquema',
        'nu_esquema',
        'tx_ofi_cta_mte',
        'bo_ofi_cta_mte',
        'fe_instruccion',
        'mo_instruccion',
        'id_moneda',
        'mo_tasa',
        'mo_total',
        'tx_observaciones',
        'id_usuario',
        'id_status',
        'fe_creado',
        'fe_actualizado',
        */
        
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
        delItem(){
            axios.delete('/api/v1/instruccion/'+this.item.id_instruccion)
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
