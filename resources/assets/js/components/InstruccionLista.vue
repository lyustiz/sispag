<template>
    <v-container fluid grid-list-md text-xs-center>
    <v-layout row justify-center>
    <v-flex xs12>
    <v-card>
                  
        <v-toolbar class="blue accent-1 white--text">
            <h3>Instrucciones</h3>
            <v-spacer></v-spacer>
            <v-btn fab @click="insItem" dark small absolute right bottom class="success">
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
                
                <td class="text-xs-left" @click="item.expanded = !item.expanded" >{{ item.item.solicitud.categoria.nb_categoria }}</td>
                <td class="text-xs-left">{{ item.item.solicitud.ente.nb_ente }}</td>
                <td class="text-xs-left">{{ item.item.solicitud.tx_concepto  }}</td>
                <td class="text-xs-left">{{ item.item.mo_instruccion }}</td>
                <td class="text-xs-left">{{ item.item.fe_instruccion | formDate }}</td>
                <td class="text-xs-left">{{ item.item.esquema.nb_esquema }}</td>
                <!--acciones-->
                <td class="text-xs-left">
                    <list-buttons @editar="updItem(item.item)" @eliminar="delForm(item.item)">
                    </list-buttons>
                </td>
                
            </template>

            <template slot="expand" slot-scope="item">
                <v-card flat>
                    <v-card-text>Detalle Instruccion  {{item.item}}</v-card-text>
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
        { text: 'Categoria',    value: 'solicitud.categoria.nb_categoria' },
        { text: 'Ente',         value: 'instruccion.ente.nb_ente' },
        { text: 'Concepto',     value: 'instruccion.tx_concepto' },
        { text: 'Monto',        value: 'mo_instruccion' },
        { text: 'Fecha',        value: 'fe_instruccion' },
        { text: 'Esquema Pago', value: 'esquema.nb_esquema' },
        { text: 'Acciones',     value: 'id_status'  },
        ],
        listas:{
            categoria: []
        }
    }
    },
    methods:
    {
        customFilter(items, search, filter) {

            return items.filter(row => filter(row["solicitud.categoria.nb_categoria"], search));
        },
        list () {

            axios.get('/api/v1/instruccion')
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
