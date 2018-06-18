<template>
    <v-container fluid grid-list-md text-xs-center>

        <v-layout row justify-center>
            <v-flex xs11>
                <v-form ref="form" v-model="valido" lazy-validation>
                <v-card>
                    
                    <v-card-title class="red accent-1 white--text">
                        <h2>Esquema</h2>
                    </v-card-title>
                    
                    <v-card-text>
                    <v-layout wrap>
                    
                        <input
                            v-model="form.id_esquema"
                            required
                            type="hidden"
                        >
                        <input
                            v-model="form.id_usuario"
                            required
                            type="hidden"
                        >

                        <v-flex xs12 >
                        <v-text-field
                            :rules="rules.nb_esquema"
                            v-model="form.nb_esquema"
                            label="Nombre del Esquema"
                            placeholder="Indique Nombre"
                            required
                        ></v-text-field>
                        </v-flex>

                        <v-flex xs12 sm6>
                            <v-select
                            :items="listas.tipoEsquema"
                            item-text="nb_tipo_esquema"
                            item-value="id_tipo_esquema"
                            v-model="form.id_tipo_esquema"
                            label="Tipo Esquema"
                            autocomplete
                            required
                            ></v-select>
                        </v-flex>

                        <v-flex xs12 sm6>
                            <v-select
                            :items="listas.grupoEsquema"
                            item-text="nb_grupo_esquema"
                            item-value="id_grupo_esquema"
                            v-model="form.id_grupo_esquema"
                            label="Grupo Esquema"
                            autocomplete
                            required
                            ></v-select>
                        </v-flex>

                        <v-flex xs12>  
                            <v-select
                            :items="[{'id_status': 1, 'nb_status' :'Activo'}, {'id_status': 2, 'nb_status' :'Inactivo'}]"
                            item-text="nb_status"
                            item-value="id_status"
                            v-model="form.id_status"
                            label="Status del Esquema"
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
                            <v-btn @click="update" :disabled="!valido" dark class="amber">
                                <v-icon>edit</v-icon>
                                Editar
                            </v-btn>
                        </div>
                        <div v-else>
                            <v-btn @click="store" :disabled="!valido" dark color="green">
                                <v-icon>save_alt</v-icon>
                                Guardar
                            </v-btn>
                            <v-btn @click="clear" dark class="info">
                                <v-icon>refresh</v-icon>
                                Limpiar
                            </v-btn>
                        </div>
                        <v-btn @click="cancel" dark class="red">
                            <v-icon>close</v-icon>
                            Cerrar
                        </v-btn>

                    </v-card-actions>
                                       
                </v-card>
                </v-form>
            </v-flex>
        </v-layout>
    </v-container>
</template>

<script>
import withSnackbar from '../components/mixins/withSnackbar';

export default {
    mixins: [ withSnackbar ],
    data () {
        return {
            valido: false,
            btnAccion: '',
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
                tipoEsquema: [],
                grupoEsquema: []
            },
            rules:{
               nb_esquema: [
                    v => !!v || 'Campo Requerido',
                    v => !!v  && v.length >= 3 || 'Nombre del Esquema debe tener almenos 3 caracteres',
                    ],
                tx_observaciones: [
                    () => true
                    ], 
            }
            
        }
    },
    props: ['accion','esquema'],
    watch: {
        accion: function (val) {
            this.btnAccion = val;
            if(val=='upd')
            {
                this.mapForm()
            }else{
                this.clear();
            }
            
        },
        esquema: function (val) {
            this.mapForm()
        }
    },
    methods:{
        cancel(){

            this.clear();
            this.$emit('cerrarModal');

        },
        mapForm(){

            if(this.esquema)
            {
                for(var key in this.esquema) {

                    if(this.form.hasOwnProperty(key)) {
                        this.form[key] = this.esquema[key];
                    }
                }
            }else{
                
                this.rstForm
            }
            
        },
        rstForm(){

            for(var key in this.form) {

                    this.form[key] = '';
            }
        },
        clear () {

            this.$refs.form.reset()

        },
        update(){
            
            this.form.id_usuario = this.$store.getters.user.id
           
            axios.put('/api/v1/esquema/'+ this.esquema.id_esquema, this.form)
            .then(respuesta => {
                    this.showMessage(respuesta.data.msj)
            })
            .catch(error => {
                    this.showError(error);
            })
        },
        store(){
            
            this.form.id_usuario = this.$store.getters.user.id
            
            axios.post('/api/v1/esquema', this.form)
            .then(respuesta => {
                    this.showMessage(respuesta)
            })
            .catch(error => {
                
                    this.showError(error);
            })
        },
    }
    
}

</script>
