<template>
    <v-container fluid grid-list-md text-xs-center>

        <v-layout row justify-center>
            <v-flex xs11>
                <v-form ref="form" v-model="valido" lazy-validation>
                <v-card>
                    
                    <v-card-title class="red accent-1 white--text">
                        <h2>Banco</h2>
                    </v-card-title>
                    
                    <v-card-text>
                    <v-layout wrap>
                    
                        <v-flex xs12 >
                        <v-text-field
                            :rules="rules.nb_banco"
                            v-model="form.nb_banco"
                            label="Nombre del Banco"
                            placeholder="Indique Nombre"
                            required
                        ></v-text-field>
                        </v-flex>

                        <v-flex xs12 sm6>
                            <v-select
                            :items="listas.tipoBanco"
                            item-text="nb_tipo_banco"
                            item-value="id_tipo_banco"
                            v-model="form.id_tipo_banco"
                            label="Tipo Banco"
                            autocomplete
                            required
                            ></v-select>
                        </v-flex>

                        <v-flex xs12 sm6>
                            <v-select
                            :items="listas.grupoBanco"
                            item-text="nb_grupo_banco"
                            item-value="id_grupo_banco"
                            v-model="form.id_grupo_banco"
                            label="Grupo Banco"
                            autocomplete
                            required
                            ></v-select>
                        </v-flex>

                        <v-flex xs12>  
                            <v-select
                            :items="listas.status"
                            item-text="nb_status"
                            item-value="id_status"
                            v-model="form.id_status"
                            label="Status del Banco"
                            autocomplete
                            required
                            ></v-select>
                        </v-flex>

                        <v-flex xs12 >
                            <v-text-field
                                :rules="rules.tx_observaciones"
                                v-model="form.tx_observaciones"
                                label="Observaciones"
                                placeholder="Indique Observaciones"
                            ></v-text-field>
                        </v-flex>
                            
                    </v-layout>
                    </v-card-text>
                    
                    <v-card-actions>

                        <div v-if="btnAccion=='upd'">

                            <v-tooltip bottom>
                                <v-btn slot="activator" fab small @click="update" :disabled="!valido"  class="warning">
                                    <v-icon>edit</v-icon>
                                </v-btn>
                            <span>Editar</span>
                            </v-tooltip>
   
                        </div>

                        <div v-else>
                            <v-tooltip bottom>
                                <v-btn slot="activator" fab small @click="store" :disabled="!valido"  class="success">
                                    <v-icon>save_alt</v-icon>
                                </v-btn>
                            <span>Guardar</span>
                            </v-tooltip>


                            <v-tooltip bottom>
                                <v-btn  slot="activator" fab small @click="clear"  class="info">
                                    <v-icon>refresh</v-icon>
                                </v-btn>
                            <span>Limpiar</span>
                            </v-tooltip>
                        </div>

                        <v-tooltip bottom>
                            <v-btn slot="activator" fab small @click="cancel"  class="error">
                                <v-icon>close</v-icon>
                            </v-btn>
                        <span>Cancelar</span>
                        </v-tooltip>

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
            tabla: 'banco',
            form:{
                id_banco: '',
                nb_banco: '',
                id_tipo_banco: '',
                id_grupo_banco: '',
                id_status: '',
                tx_observaciones: '',
                id_usuario:''
            },
            listas:{
                tipoBanco:  [],
                grupoBanco: [],
                status:     ['/grupo/1']
            },
            rules:{
                nb_banco: [
                    v => !!v || 'Campo Requerido',
                    v => !!v  && v.length >= 3 || 'Nombre del Banco debe tener almenos 3 caracteres',
                    ],
                tx_observaciones: [
                    () => true
                    ], 
            }
            
        }
    },

    methods:{
        
        update(){
                       
            axios.put(this.basePath + this.form.id_banco, this.form)
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
