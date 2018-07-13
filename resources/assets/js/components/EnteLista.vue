<template>
    <v-container fluid grid-list-md text-xs-center>
        <v-layout row justify-center>
        <v-flex xs12>
        <v-card>

            <v-toolbar class="light-blue darken-3 white--text">
            <h3>Entes</h3> 
                <v-spacer></v-spacer>
                <v-btn fab @click="insItem" dark small absolute right bottom class="success">
                        <v-icon dark>add</v-icon>
                </v-btn>
            </v-toolbar>
            
            <v-card-text>
                
            <v-flex xs6>
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
                rows-per-page-text="Res. x Pag"
            >

            <template slot="items" slot-scope="item">
                
                <td class="text-xs-left">{{ item.item.nb_ente }}</td>
                <td class="text-xs-left">{{ item.item.tipo_ente.nb_tipo_ente }}</td>
                <td class="text-xs-left">{{ item.item.grupo_ente.nb_grupo_ente }}</td>
                <td class="text-xs-left">{{ item.item.status.nb_status }}</td>
                <!--acciones-->
                <td class="text-xs-left">

                    <list-buttons @editar="updItem(item.item)" :del="false">
                    </list-buttons>
                        
                </td>

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
        <ente-form :accion="accion" :item="item" @cerrarModal="cerrarModal"></ente-form>
    </form-container>

    <dialogo 
        :dialogo="dialogo" 
        :mensaje="'Desea Eliminar el Ente: ' + item.nb_ente "
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
        fab: false,
        headers: [
        { text: 'Nombre',   value: 'nb_ente' },
        { text: 'Tipo',     value: 'tipo_ente.nb_tipo_ente' },
        { text: 'Grupo',    value: 'grupo_ente.nb_grupo_ente' },
        { text: 'Status',   value: 'id_status' },
        { text: 'Acciones', value: 'id_status'  },
        ]
    }
    },
    methods:
    {
        list () {

            axios.get('/api/v1/ente')
            .then(respuesta => {
                this.items = respuesta.data;
            })
            .catch(error => {
                this.showError(error)    
            })
        },
        delItem(){
            axios.delete('/api/v1/ente/'+this.item.id_ente)
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
