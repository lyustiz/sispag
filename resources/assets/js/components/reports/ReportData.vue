<template>
    <v-card>

        <v-card-text>
            
            <v-flex xs6>
            <v-text-field
                v-model="buscar"
                append-icon="search"
                label="Buscar"
                hide-details
                clearable
            ></v-text-field>
            </v-flex>
            
            <v-flex xs12>

            <v-data-table
            :headers="headers"
            :items  ="lista"
            :search ="buscar"
            item-key="id_banco"
            rows-per-page-text="Res x Pag"
            >
                
            <template slot="items" slot-scope="items">
                <tr >
                    <td v-for="(valor, campo) in items.item" :key="campo" class="text-xs-left">
                            {{ formatValue(valor, campo) }}   
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
    </v-card>

</template>
<script>

import format from '../mixins/formatHelper'

export default {
    mixins: [ format ],
    data () {
    return {
        buscar: '',
        lista: this.items,
    }
    },
    props: ['headers', 'items'],
    methods:
    {
        formatValue(value, campo)
        {
            let tipo =  campo.substr(0,2)
            
            return this.formatTipo(value, tipo)
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
        }
    }

}
</script>
