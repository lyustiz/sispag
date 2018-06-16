<template>
        <v-container fluid grid-list-md text-xs-center>
        <v-layout row justify-center>
            <v-flex xs11>
                <v-card>
                  

                    <v-card-text>
                        
                        <v-flex xs6>
                        <v-text-field
                            v-model="buscar"
                            append-icon="search"
                            label="Buscar"
                            hide-details
                        ></v-text-field>
                        </v-flex>
                        
                        <v-flex xs12>

                        <v-data-table
                        :headers="headers"
                        :items  ="lista"
                        :search ="buscar"
                        v-model="selected"
                        light
                        item-key="id_banco"
                        rows-per-page-text="Res x Pag"

                        >

                        <template slot="items" slot-scope="banco">
                            
                            <tr :active="banco.selected" @click="banco.selected = !banco.selected">
                            <td>
                                <v-checkbox
                                :input-value="banco.selected"
                                primary
                                hide-details
                                ></v-checkbox>
                            </td>
                  

                            <td v-for="encabezado in encabezados" 
                                :key="encabezado.text" 
                                class="text-xs-left"
                                >
                                {{ banco.item[encabezado.value] }}
                            </td>

                            </tr>

                        </template>

                        <v-alert slot="no-results" :value="true" color="info" icon="info">
                           Busqueda de: "{{ buscar }}" Sin resultados
                        </v-alert>

                        <template slot="pageText" slot-scope="item">
                             {{item.pageStart}} - {{item.pageStop}} de {{item.itemsLength}}
                        </template>

                        </v-data-table>
                        </v-flex>
                    </v-card-text>

                    <v-card-actions>
                        <v-btn
                        absolute
                        dark
                        fab
                        bottom
                        right
                        color="pink"
                        >
                        <v-icon>add</v-icon>
                        </v-btn>
                    </v-card-actions>
               
                </v-card>
            </v-flex>
        </v-layout>


    


    </v-container>
</template>

<script>
export default {
created() {
        
        this.lista  = this.list();
    },
    data () {
    return {
        selected: [],
        lista: '',
        buscar: '',
        item:  '',
        headers: this.encabezados
    }
    },
    props: ['tabla', 'encabezados', 'items'],
    methods:
    {
        list () {

            axios.get('/api/v1/'+this.tabla)
            .then(respuesta => {
                console.log(respuesta.data)
                    this.lista = respuesta.data;
            })
            .catch(error => {
                    
            })
        }
    }
}
</script>

<style>

</style>
