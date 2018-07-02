<template>
    <v-container fluid grid-list-md text-xs-center>
    <v-layout row justify-center>
    <v-flex xs11>
        <v-form ref="form" v-model="valido" lazy-validation>
        <v-card>
            
        <v-card-title class="red accent-1 white--text">
            <h2>Esquema de Pago</h2>
        </v-card-title>
        
        <v-card-text>
        <v-layout wrap>
        
            <v-flex xs12 >
            <v-text-field
                v-model="form.nb_esquema"
                :rules="rules.nb_esquema"
                label="Nombre del Esquema"
                placeholder="Indique Nombre"
                required
            ></v-text-field>
            </v-flex>

            <v-flex xs12 sm6>
            <v-text-field
                v-model="form.nb_esquema"
                :rules="rules.nb_esquema"
                label="Tipo de requerimiento"
                placeholder="Indique tipo de requerimiento Ej: Nro. VOI, Nro Oficio"
            ></v-text-field>
            </v-flex>

            <v-flex xs12 sm6>
                <v-select
                :items="listas.esquema"
                item-text="nb_esquema"
                item-value="id_esquema"
                v-model="form.id_esquema_padre"
                :rules="rules.select"
                label="Esquema Padre"
                autocomplete
                ></v-select>
            </v-flex>

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
            tabla: 'esquema',
            form:{
                id_esquema: '',
                nb_esquema: '',
                tx_requerimiento: '',
                id_esquema_padre: '',
                id_status: '',
                tx_observaciones: '',
                id_usuario:''
            },
            listas:{
                esquema: ['/padre'],
                status:  ['/grupo/1']
            },
            rules:{
               nb_esquema: [
                    v => !!v || 'Campo Requerido',
                    v => !!v  && v.length >= 3 || 'Nombre del Esquema debe tener almenos 3 caracteres',
                    ],
                select: [
                    v => !!v || 'Seleccione una Opcion (Opcion Requerida)',
                    ], 
            }
            
        }
    },
    methods:{
        update(){
                       
            axios.put(this.basePath + this.form.id_esquema, this.form)
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
