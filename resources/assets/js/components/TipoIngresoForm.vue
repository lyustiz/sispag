<template>
    <v-container fluid grid-list-md text-xs-center>
    <v-layout row justify-center>
    <v-flex xs12>
        <v-form ref="form" v-model="valido" lazy-validation>
        <v-card>
            
        <v-card-title class="red accent-1 white--text">
            <h2>Banco</h2>
        </v-card-title>
        
        <v-card-text>
        <v-layout wrap>
        
            <v-flex xs12 >
            <v-text-field
                v-model="form.nb_tipo_ingreso"
                :rules="rules.nb_tipo_ingreso"
                label="Nombre del Tipo de Ingreso"
                placeholder="Indique Nombre"
                required
            ></v-text-field>
            </v-flex>
t>
            <v-flex xs12>  
                <v-select
                :items="listas.status"
                item-text="nb_status"
                item-value="id_status"
                v-model="form.id_status"
                :rules="rules.select"
                label="Status del Banco"
                autocomplete
                required
                ></v-select>
            </v-flex>

            <v-flex xs12 >
                <v-text-field
                    v-model="form.tx_observaciones"
                    label="Observaciones"
                    placeholder="Indique Observaciones"
                ></v-text-field>
            </v-flex>
                    
            </v-layout>
            </v-card-text>
            
            <v-card-actions>

                <form-buttons
                    @update="update"
                    @store="store"
                    @clear="clear"
                    @cancel="cancel"
                    :btnAccion="btnAccion"
                    :valido="valido"
                ></form-buttons>   

            </v-card-actions>
                                
        </v-card>
        </v-form>
    </v-flex>
    </v-layout>
    </v-container>
    
</template>

<script>

import withSnackbar from '../components/mixins/withSnackbar';
import formHelper from '../components/mixins/formHelper';

export default {
    mixins: [ formHelper, withSnackbar ],
    data () {
        return {
            tabla: 'tipoIngreso',
            form:{
                id_tipo_ingreso: '',
                nb_tipo_ingreso: '',
                id_status: '',
                tx_observaciones: '',
                id_usuario:''
            },
            listas:{
                status:     ['/grupo/1']
            },
            rules:{
                nb_tipo_ingreso: [
                    v => !!v || 'Campo Requerido',
                    v => !!v  && v.length >= 3 || 'Nombre del Tipo Ingreso debe tener almenos 3 caracteres',
                    ],
                select: [
                    v => !!v || 'Seleccione una Opcion (Opcion Requerida)',
                    ],  
            }
        }
    },
    methods:{
        
        update(){
                       
            axios.put(this.basePath + this.form.id_tipo_ingreso, this.form)
            .then(respuesta => {
                this.showMessage(respuesta.data.msj)
            })
            .catch(error => {
                this.showError(error);
            })
        },
        store(){
            
            axios.post(this.basePath, this.form)
            .then(respuesta => {
                this.showMessage(respuesta.data.msj)
            })
            .catch(error => {
                this.showError(error);
            })
        }
    }
    
}

</script>
