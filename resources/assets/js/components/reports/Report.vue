<template>
    <v-container fluid grid-list-md text-xs-center>
        <v-layout row justify-center>
        <v-flex xs12>
        <v-card>
            
            <v-toolbar class="blue accent-1 white--text">
            <h3>Reporte</h3>
                <v-spacer></v-spacer>
               
                <v-tooltip top>
                <v-btn slot="activator" fab small @click="clear" class="warning">
                    <v-icon>refresh</v-icon>
                </v-btn>
                <span>Limpiar</span>
                </v-tooltip>

                <v-tooltip top>
                <v-btn slot="activator" fab small @click="getReporte" class="info">
                    <v-icon>web</v-icon>
                </v-btn>
                <span>Reporte Web</span>
                </v-tooltip>
                
                <v-tooltip top>
                    <v-btn slot="activator" fab small  class="success">
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
            <v-expansion-panel expand>
            <v-expansion-panel-content ripple>
                <div slot="header" >Filtros</div>
                <v-card>
                <v-card-text>
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
                    clearable
                ></v-select>
                </v-card-text>
                </v-card>
            </v-expansion-panel-content>   
            </v-expansion-panel> 
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
        <div v-if="items">
        <report-data :items="items" :headers="headers"></report-data> 
        </div>
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
            valido:   false,
            campos:   false,
            filtros:  false,
            dateSets: false,
            items:    false,
            headers:  false,
            menu:     [],
            form:{
                campos:   [],
                filtros:  [],
                dateSets: [],
                tabla: this.tabla
            },
            rules:{
                select: [],
            }

        }
    },
    props:['tabla'],
    methods:
    {
        list()
        {
            axios.get('/api/v1/reports/'+this.tabla)
            .then(respuesta => 
            {
                let items      = respuesta.data;

                this.campos     = items.campos;

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
            
            this.items = false; 
            axios.post('/api/v1/reports', this.form)
            .then(respuesta => 
            {
                this.items   = respuesta.data.data;
                this.headers = respuesta.data.headers;
            })
            .catch(error =>  
            {
               this.showError(error);
            })

        },
        clear()
        {
            this.$refs.form.reset();
            this.items = false;
        }

    }
}

</script>

<style>

</style>
