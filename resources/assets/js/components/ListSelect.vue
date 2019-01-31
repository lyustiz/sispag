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
                        hide-actions
                        >

                            <template slot="items" slot-scope="linea">
                                
                                <tr @click="$emit('seleccion', linea.item)">

                                    <td v-for="(encabezado, key) in encabezados" 
                                        :key="encabezado.text" 
                                        class="text-xs-left"
                                        >
                                        <v-btn flat icon color="primary" v-if="key==0">
                                        <v-icon>touch_app</v-icon>
                                        </v-btn>
                                        
                                        {{ getItemText(linea.item, encabezado.value) }}
                                    </td>

                                </tr>

                            </template>

                            <v-alert slot="no-results" :value="true" color="info" icon="info">
                            Busqueda de: "{{ buscar }}" Sin resultados
                            </v-alert>

                        </v-data-table>
                         <pre>{{$data}}</pre>
                        </v-flex>
                        
                    </v-card-text>

                </v-card>

</template>

<script>

import withSnackbar from './mixins/withSnackbar'

export default {
mixins: [withSnackbar],
created() {
        this.lista  = this.list();
    },
    data () {
    return {
        selected: [],
        lista: '',
        buscar: '',
        headers: this.encabezados,
    }
    },
    props: ['tabla', 'encabezados', 'items'],
    computed:
    {
        idTabla()
        {
           return 'id_' + this.tabla;
        }

    },
    watch:{
        tabla: function(val)  
        {
            this.list();
        }
    },
    methods:
    {
        list() {

            axios.get('/api/v1/'+this.tabla)
            .then(respuesta => 
            {
                    this.lista = respuesta.data;
            })
            .catch(error => 
            {
                this.showError(error)    
            })
        },
        getItemText(item, key)
        {
            let itemText = null;
            let tipo     = 'tx';

            if(key.indexOf(".") > -1)
            {
                let subKey = key.split('.');
                tipo     = this.getTipoDato(subKey);
                itemText = item[subKey[0]][subKey[1]]
            }
            else
            {
                tipo     = this.getTipoDato(key);
                itemText = item[key];
            }

            return formatTipo(itemText, tipo);
        },
        getTipoDato(campo)
        {
            codTipo = substr(campo, 0, 2);
        },
        formatTipo(value, tipo)
        {
            let valorFinal = '';
            
            switch (tipo) 
            {
                case 'fe':
                    
                    valorFinal = this.formatDate(value);
                    break;

                case 'mo':

                    valorFinal = this.formatNumber(value);
                    break;
            
                default:

                    valorFinal = value;
                    break;
            }

            return  valorFinal
        },
        formatDate (date) 
        { 
            if (!date) return null
    
            const [year, month, day] = date.split('-')
            return `${day}/${month}/${year}`
        },
        formatNumber: function (value) 
        {
            let val = (value/1).toFixed(2).replace('.', ',')
            return val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".")
        }


    }
}
</script>

<style>

</style>
