<template>
    <v-container fluid grid-list-md text-xs-center>

        <v-layout row justify-center>
            <v-flex xs11>
                <v-form ref="form" v-model="valido" lazy-validation>
                <v-card>
                    
                    <v-card-title class="red accent-1 white--text">
                        <h2>Ingreso</h2>
                    </v-card-title>
                    
                    <v-card-text>
                    <v-layout wrap>
                    
                        <input v-model="form.id_ingreso" required type="hidden">
                        <input v-model="form.id_usuario" required type="hidden">

                        <v-flex xs12 sm6>
                            <v-select
                            :items="listas.tipoIngreso"
                            item-text="nb_tipo_ingreso"
                            item-value="id_tipo_ingreso"
                            v-model="form.id_tipo_ingreso"
                            label="Tipo Ingreso"
                            autocomplete
                            required
                            ></v-select>
                        </v-flex>

                        <v-flex xs12 sm6>  
                            <v-select
                            :items="listas.entes"
                            item-text="nb_ente"
                            item-value="id_ente"
                            v-model="form.id_ente"
                            label="Ente Receptor"
                            autocomplete
                            required
                            ></v-select>
                        </v-flex>

                        <v-flex xs12>  
                            <v-select
                            :items="listas.bancos"
                            item-text="nb_banco"
                            item-value="id_banco"
                            v-model="form.id_banco"
                            label="Banco Receptor"
                            autocomplete
                            required
                            ></v-select>
                        </v-flex>

                        <v-flex xs12 sm4>
                            <v-text-field
                            v-model="form.mo_ingreso"
                            :rules="rules.mo_ingreso"
                            label="Monto Ingreso"
                            placeholder="Ingrese monto"
                            hint="Ej 845.456,12"
                            required
                            ></v-text-field>
                        </v-flex>

                        <v-flex xs12 sm4>
                            <v-select
                            :items="listas.monedas"
                            item-text="nb_moneda"
                            item-value="id_moneda"
                            v-model="form.id_moneda"
                            label="Moneda"
                            autocomplete
                            required
                            ></v-select>
                        </v-flex>

                        <v-flex xs12 sm4>
                            <v-text-field
                            v-model="form.mo_tasa"
                            :rules="rules.mo_tasa"
                            label="Tasa de Cambio"
                            placeholder="Ingrese Tasa"
                            hint="Ej 107,02"
                            ></v-text-field>
                        </v-flex>

                        <v-flex xs12 sm6>
                        <v-menu
                            ref="menu1"
                            :close-on-content-click="false"
                            v-model="menu1"
                            :nudge-right="40"
                            :return-value.sync="date"
                            lazy
                            transition="scale-transition"
                            offset-y
                            full-width
                            locale="es"
                            min-width="290px"
                        >
                            <v-text-field
                            slot="activator"
                            v-model="form.fe_ingreso"
                            :rules="rules.fe_ingreso"
                            label="Seleccione Fecha"
                            prepend-icon="event"
                            readonly
                            required
                            ></v-text-field>
                            <v-date-picker v-model="form.fe_ingreso" @input="$refs.menu1.save(date)"></v-date-picker>

                        </v-menu>
                        </v-flex>
                        <v-flex xs12 sm6>  
                            <v-select
                            :items="[{'id_status': 1, 'nb_status' :'Confirmado'}, {'id_status': 2, 'nb_status' :'Pendiente'}]"
                            item-text="nb_status"
                            item-value="id_status"
                            v-model="form.id_status"
                            label="Status del Ingreso"
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
                            <v-btn @click="store" :disabled="!valido" color="green">
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
       this.listEntes(); 
       this.listTipoIngreso(); 
       this.listBancos(); 
       this.listMonedas(); 
    },
    data () {
        return {
            valido: false,
            btnAccion: '',
            date: '',
            dateFormatted: '',
            menu1: false,
            form:{
                id_ingreso: '',
                id_tipo_ingreso: '',
                id_ente: '',
                id_moneda: '',
                mo_ingreso: '',
                mo_tasa: '',
                fe_ingreso: '',
                id_banco: '',
                tx_observaciones: '',
                id_usuario: '',
                id_status: ''
            },
            listas:{
                entes: [],
                tipoIngreso: [],
                bancos: [],
                monedas: [],
            },
            rules:{
               mo_ingreso: [
                    v => !!v || 'Campo Requerido',
                    ],
                mo_tasa: [
                    v => !!v || 'Campo Requerido',
                    () => true
                    ], 
                fe_ingreso: [
                    v => !!v || 'Campo Requerido',
                    () => true
                    ], 
            }
            
        }
    },
    props: ['accion','ingreso'],
    computed: {
      computedDateFormatted () {
        return this.formatDate(this.date)
      }
    },
    watch: {
        date (val) {
            this.dateFormatted = this.formatDate(this.date)
        },
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
        formatDate (date) {

            if (!date) return null
            const [year, month, day] = date.split('-')
            return `${month}/${day}/${year}`

        },
        parseDate (date) {

            if (!date) return null
            const [month, day, year] = date.split('/')
            return `${year}-${month.padStart(2, '0')}-${day.padStart(2, '0')}`

        },
        cancel(){

            this.clear();
            this.$emit('cerrarModal');

        },
        mapForm(){

            if(this.ingreso)
            {
                for(var key in this.ingreso) {

                    if(this.form.hasOwnProperty(key)) {
                        this.form[key] = this.ingreso[key];
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
           
            axios.put('/api/v1/ingreso/'+ this.ingreso.id_ingreso, this.form)
            .then(respuesta => {
                    this.showMessage(respuesta.data.msj)
            })
            .catch(error => {
                    this.showError(error);
            })
        },
        store(){
            
            this.form.id_usuario = this.$store.getters.user.id
            
            axios.post('/api/v1/ingreso', this.form)
            .then(respuesta => {
                    this.showMessage(respuesta.data.msj)
                    this.$emit('cerrarModal');
            })
            .catch(error => {
                console.log(error);
                    this.showError(error);
            })
        },
        listEntes(){
             axios.get('/api/v1/ente/grupo/4')
            .then(respuesta => {
                this.listas.entes = respuesta.data;
            })
            .catch(error => {
                this.showError(error)    
            })
        },
        listTipoIngreso(){
             axios.get('/api/v1/tipoIngreso')
            .then(respuesta => {
                this.listas.tipoIngreso = respuesta.data;
                
            })
            .catch(error => {
                this.showError(error)    
            })
        },
        listBancos(){
             axios.get('/api/v1/banco/grupo/1')
            .then(respuesta => {
                this.listas.bancos = respuesta.data;
            })
            .catch(error => {
                this.showError(error)    
            })
        },
        listMonedas(){
             axios.get('/api/v1/moneda')
            .then(respuesta => {
                this.listas.monedas = respuesta.data;
            })
            .catch(error => {
                this.showError(error)    
            })
        }
    }
    
}

</script>
