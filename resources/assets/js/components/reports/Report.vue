<template>
    <v-container fluid grid-list-md text-xs-center>
        <v-layout row justify-center>
        <v-flex xs12>
        <v-card>
            
            <v-toolbar class="blue accent-1 white--text">
            <h3>Reporte</h3>
                <v-spacer></v-spacer>
               
                <v-tooltip top>
                <v-btn slot="activator" fab small :disabled="valido"  class="primary">
                    <v-icon>filter_list</v-icon>
                </v-btn>
                <span>Mostrar/Ocultar Filtros</span>
                </v-tooltip>

                <v-tooltip top>
                <v-btn slot="activator" fab small :disabled="valido"  class="warning">
                    <v-icon>refresh</v-icon>
                </v-btn>
                <span>Limpiar</span>
                </v-tooltip>

                <v-tooltip top>
                <v-btn slot="activator" fab small @click="getReporte"  class="info">
                    <v-icon>web</v-icon>
                </v-btn>
                <span>Reporte Web</span>
                </v-tooltip>
                
                <v-tooltip top>
                    <v-btn slot="activator" fab small :disabled="valido"  class="success">
                        <v-icon>grid_on</v-icon>
                    </v-btn>
                <span>Excel</span>
                </v-tooltip>

            </v-toolbar>

            <v-form ref="form" v-model="valido" lazy-validation>
            <v-card-text>
            
            <!--  campos  -->
            <v-layout row wrap v-if="campos">
                <v-flex xs12 >
                <v-select
                    :items="campos"
                    v-model="form.campos"
                    item-text="nombre"
                    item-value="valor"
                    :rules="rules.select"
                    label="Campos a Mostrar"
                    autocomplete
                    chips
                    deletable-chips
                    required
                    multiple
                    clearable
                ></v-select>
                </v-flex>
            </v-layout>

            <!--  filtros  -->
            <v-layout row wrap v-if="filtros">
                <v-flex xs12 >
                <v-select
                    v-for="(filtro, index) in filtros"
                    :key="index"
                    :items="filtro.items"
                    v-model="form.filtros[index][filtro.campoid]"
                    item-text="nombre"
                    item-value="valor"
                    :rules="rules.select"
                    :label="filtro.etiqueta"
                    autocomplete
                ></v-select>
                </v-flex>
            </v-layout>

            <!--  date selector  aun no implementado (oculto por defecto)-->
            <v-layout row wrap v-if="false">
                <v-flex xs12 sm6>
                <v-menu
                    v-for="(dateSet, index) in dateSets"
                    :key="index"
                    :ref="menu[index][dateSet.valor]"
                    v-model="menu[index][dateSet.valor]"
                >
                <v-text-field
                slot="activator"
                v-model="form.dateSets[index][dateSet.valor]"
                :rules="rules.fecha"
                :label="`Fecha ${ dateSet.nombre.toLowerCase() }`"
                prepend-icon="event"
                readonly
                ></v-text-field>
                <v-date-picker v-model="form.dateSets[index][dateSet.valor]" locale="es-ES" ></v-date-picker>
            </v-menu>
                </v-flex>
            </v-layout>

            </v-card-text>
            </v-form>

        </v-card>
        </v-flex> 
        </v-layout>
        <pre>{{$data}}</pre>
    </v-container>  
            

</template>

<script>

import withSnackbar from '../../components/mixins/withSnackbar';

export default {
    mixins:[ withSnackbar ],
    created()
    {
        this.list();
    } ,
    data () {
        return {
            tabla:      'vw_banco',
            valido:     false,
            items:      false,
            campos:     false,
            filtros:    false,
            dateSets:   false,
            dates:      '',
            date: '',
            menu: [],
            form:{
                campos:   [],
                filtros:  [],
                dateSets: [],
                tabla: ''
            },
            rules:{
                select: [],
            }

        }
    },
    methods:
    {
        list()
        {
            axios.get('/api/v1/reports/vw_banco')
            .then(respuesta => 
            {
                let items       = respuesta.data;

                this.campos     = items.campos;

                this.form.tabla = items.tabla;

                this.mapFiltros(items.filtros);

                this.mapDateSets(items.dateset);

            })
            .catch(error => 
            {
               console.log(error);
               this.showError(error);
            })

        },
        mapFiltros(filtros){

            
            for(var keys in filtros)
            {
                let setFilters = {};

                setFilters[ filtros[keys].campoid ]= '';

                this.form.filtros.push(setFilters);
            }

            this.filtros = filtros;

        },
        mapDateSets(datefields){
           
            
            for(var keys in datefields)
            {
                let setDateField = {};
                let setDateMenu = {};

                setDateField[ datefields[keys].valor ] = '';
                setDateMenu[ datefields[keys].valor ] = false;

                this.form.dateSets.push(setDateField);

                this.menu.push(setDateMenu);
            }
         
            this.dateSets = datefields;
        },
        getReporte(){
            
            axios.post('/api/v1/reports', this.form)
            .then(respuesta => 
            {
                    console.log(error);
            })
            .catch(error => 
            {
               console.log(error);
               this.showError(error);
            })

        }

    }
}

</script>

<style>

</style>
