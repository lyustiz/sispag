<template>
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
                        v-model ="selected"
                        item-key="id_banco"
                        >
                            

                            <template slot="items" slot-scope="items">
                                
                                <tr >

                                    <td v-for="(linea, index) in items.item" :key="index" class="text-xs-left">
                                        
                                         {{linea}}   

                                    </td>

                                </tr>

                            </template>

                            <v-alert slot="no-results" :value="true" color="info" icon="info">
                            Busqueda de: "{{ buscar }}" Sin resultados
                            </v-alert>

                        </v-data-table>

                        </v-flex>
                        
                    </v-card-text>
                </v-card>



</template>
<script>

import withSnackbar from '../../components/mixins/withSnackbar'

export default {
mixins: [withSnackbar],
   created(){
      //console.log(this.lista)
      //console.log(this.headers)
   },
    data () {
    return {
        buscar: '',
        selected: [],
        lista: this.items,
    }
    },
    props: ['headers', 'items'],
    methods:
    {
        getItemText(item, key){
             console.log(item);
           /* if(key.indexOf(".") > -1)
            {
                let subKey = key.split('.');
                return item[subKey[0]][subKey[1]]

            }else{
                return item[key];
            }*/
            return 1;
            
        },
    }
}
</script>
