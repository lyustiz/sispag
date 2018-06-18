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
                    
                        <input
                            v-model="form.id_banco"
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
                            :items="[{'id_status': 1, 'nb_status' :'Activo'}, {'id_status': 2, 'nb_status' :'Inactivo'}]"
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
                id_banco: '',
                nb_banco: '',
                id_tipo_banco: '',
                id_grupo_banco: '',
                id_status: '',
                tx_observaciones: '',
                id_usuario:''
            },
            listas:{
                tipoBanco: [],
                grupoBanco: []
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
    props: ['accion','banco'],
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
        banco: function (val) {
            this.mapForm()
        }
    },
    methods:{
        cancel(){

            this.clear();
            this.$emit('cerrarModal');

        },
        mapForm(){

            if(this.banco)
            {
                for(var key in this.banco) {

                    if(this.form.hasOwnProperty(key)) {
                        this.form[key] = this.banco[key];
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
           
            axios.put('/api/v1/banco/'+ this.banco.id_banco, this.form)
            .then(respuesta => {
                    this.showMessage(respuesta.data.msj)
            })
            .catch(error => {
                    this.showError(error);
            })
        },
        store(){
            
            this.form.id_usuario = this.$store.getters.user.id
            
            axios.post('/api/v1/banco', this.form)
            .then(respuesta => {
                    this.showMessage(respuesta)
            })
            .catch(error => {
                
                    this.showError(error);
            })
        },
        listTipos(){
             axios.get('/api/v1/tipoBanco')
            .then(respuesta => {
                this.listas.tipoBanco = respuesta.data;
            })
            .catch(error => {
                this.showError(error)    
            })
        },
        listGrupos(){
             axios.get('/api/v1/grupoBanco')
            .then(respuesta => {
                this.listas.grupoBanco = respuesta.data;
            })
            .catch(error => {
                this.showError(error)    
            })
        }
    }
    
}

</script>
