<template>
    <v-container fluid grid-list-md text-xs-center>

        <v-layout row justify-center>
            <v-flex xs12>
                <v-form ref="form" v-model="valido" lazy-validation>
                <v-card>
                    
                    <v-card-title class="light-blue darken-3 white--text">
                        <h2>Ente</h2>
                    </v-card-title>
                    
                    <v-card-text>
                    <v-layout wrap>
                    
                        <v-flex xs12 >
                        <v-text-field
                            :rules="rules.requerido"
                            v-model="form.nb_ente"
                            label="Nombre del Ente"
                            placeholder="Indique Nombre"
                            required
                        ></v-text-field>
                        </v-flex>

                        <v-flex xs12 sm6>
                            <v-select
                            :items="listas.tipoEnte"
                            item-text="nb_tipo_ente"
                            item-value="id_tipo_ente"
                            v-model="form.id_tipo_ente"
                            :rules="rules.select"
                            label="Tipo Ente"
                            autocompletes
                            required
                            ></v-select>
                        </v-flex>

                        <v-flex xs12 sm6>
                            <v-select
                            :items="listas.grupoEnte"
                            item-text="nb_grupo_ente"
                            item-value="id_grupo_ente"
                            v-model="form.id_grupo_ente"
                            :rules="rules.select"
                            label="Grupo Ente"
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
                            :rules="rules.select"
                            label="Status del Ente"
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
            tabla: 'ente',
            form:{
                id_ente: '',
                nb_ente: '',
                id_tipo_ente: '',
                id_grupo_ente: '',
                id_status: '',
                tx_observaciones: '',
                id_usuario:''
            },
            listas:{
                grupoEnte:  [],
                tipoEnte:   [],
                status:     ['/grupo/5']
            },            
        }
    },
    methods:{
        update()
        {
            if (this.$refs.form.validate()) 
            {           
                axios.put('/api/v1/ente/'+ this.form.id_ente, this.form)
                .then(respuesta => {
                    this.showMessage(respuesta.data.msj)
                    this.$emit('cerrarModal');
                })
                .catch(error => {
                    this.showError(error);
                })
            }
        },
        store()
        {
            if (this.$refs.form.validate()) 
            {            
                axios.post('/api/v1/ente', this.form)
                .then(respuesta => {
                    this.showMessage(respuesta.data.msj)
                    this.$emit('cerrarModal');
                })
                .catch(error => {
                    
                    this.showError(error);
                })
            }
        },

    }
}

</script>
