<template>
    <v-container fluid grid-list-md text-xs-center>

        <v-layout row justify-center>
            <v-flex xs11>
                <v-form ref="form" v-model="valido" lazy-validation>
                <v-card>
                    
                    <v-card-title class="red accent-1 white--text">
                        <h2>Ente</h2>
                    </v-card-title>
                    
                    <v-card-text>
                    <v-layout wrap>
                    
                        <input
                            v-model="form.id_ente"
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
                            :rules="rules.nb_ente"
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
                            label="Tipo Ente"
                            autocomplete
                            required
                            ></v-select>
                        </v-flex>

                        <v-flex xs12 sm6>
                            <v-select
                            :items="listas.grupoEnte"
                            item-text="nb_grupo_ente"
                            item-value="id_grupo_ente"
                            v-model="form.id_grupo_ente"
                            label="Grupo Ente"
                            autocomplete
                            required
                            ></v-select>
                        </v-flex>
                        {{listas.grupoEnte}}
                        <v-flex xs12>  
                            <v-select
                            :items="[{'id_status': 1, 'nb_status' :'Activo'}, {'id_status': 2, 'nb_status' :'Inactivo'}]"
                            item-text="nb_status"
                            item-value="id_status"
                            v-model="form.id_status"
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
     created() {
       this.listTipos(); 
       this.listGrupos();
       
    },
    data () {
        return {
            valido: false,
            btnAccion: '',
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
                tipoEnte: [],
                grupoEnte: []
            },
            rules:{
               nb_ente: [
                    v => !!v || 'Campo Requerido',
                    v => !!v  && v.length >= 3 || 'Nombre del Ente debe tener almenos 3 caracteres',
                    ],
                tx_observaciones: [
                    () => true
                    ], 
            }
            
        }
    },
    props: ['accion','ente'],
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
        ente: function (val) {
            this.mapForm()
        }
    },
    methods:{
        cancel(){

            this.clear();
            this.$emit('cerrarModal');

        },
        mapForm(){

            if(this.ente)
            {
                for(var key in this.ente) {

                    if(this.form.hasOwnProperty(key)) {
                        this.form[key] = this.ente[key];
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
           
            axios.put('/api/v1/ente/'+ this.ente.id_ente, this.form)
            .then(respuesta => {
                    this.showMessage(respuesta.data.msj)
            })
            .catch(error => {
                    this.showError(error);
            })
        },
        store(){
            
            this.form.id_usuario = this.$store.getters.user.id
            
            axios.post('/api/v1/ente', this.form)
            .then(respuesta => {
                    this.showMessage(respuesta)
            })
            .catch(error => {
                
                    this.showError(error);
            })
        },
        listTipos(){
             axios.get('/api/v1/tipoEnte')
            .then(respuesta => {
                this.listas.tipoEnte = respuesta.data;
            })
            .catch(error => {
                this.showError(error)    
            })
        },
        listGrupos(){
             axios.get('/api/v1/grupoEnte')
            .then(respuesta => {
                this.listas.grupoEnte = respuesta.data;
            })
            .catch(error => {
                this.showError(error)    
            })
        }
    }
    
}

</script>
