<template>
    <v-container fluid grid-list-md text-xs-center>

        <v-layout row justify-center>
            <v-flex xs11>
                <v-form ref="form" v-model="valido" lazy-validation>
                <v-card>
                    
                    <v-card-title class="red accent-1 white--text">
                        <h2>Solicitud</h2>
                    </v-card-title>
                    
                    <v-card-text>
                    <v-layout wrap>
                    
                        <input v-model="form.id_solicitud" required type="hidden">
                        <input v-model="form.id_usuario" required type="hidden">

                        <v-flex xs12>  
                            <v-select
                            :items="['CUSPA', 'MPP DEFENSA', 'GOBERNACION ARAGUA']"
                            v-model="form.id_ente"
                            label="Ente Solicitante"
                            autocomplete
                            required
                            ></v-select>
                        </v-flex>

                        <v-flex xs12 sm6>
                            <v-text-field
                            v-model="form.nu_solicitud"
                            :rules="rules.nu_solicitud"
                            label="Numero Solicitud"
                            placeholder="Ingrese Numero de la Solicitud"
                            hint="Ej MPPEF-01-2018"
                            required
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
                            v-model="date"
                            :rules="rules.fe_solicitud"
                            label="Fecha de la Solicitud"
                            prepend-icon="event"
                            readonly
                            required
                            ></v-text-field>
                            <v-date-picker v-model="date" @input="$refs.menu1.save(date)"></v-date-picker>
                        </v-menu>
                        </v-flex>
                        
                        <v-flex xs12>
                            <v-text-field
                            v-model="form.tx_concepto"
                            :rules="rules.tx_concepto"
                            label="Concepto de la Solicitud"
                            placeholder="Ingrese Descripcion"
                            required
                            ></v-text-field>
                        </v-flex>
                        
                        <v-flex xs12 sm6>
                            <v-text-field
                            v-model="form.mo_solicitud"
                            :rules="rules.mo_solicitud"
                            label="Monto Solicitud"
                            placeholder="Ingrese monto"
                            hint="Ej 845.456,12"
                            required
                            ></v-text-field>
                        </v-flex>

                        <v-flex xs12 sm6>
                            <v-select
                            :items="['EURO', 'DOLARES']"
                            v-model="form.id_moneda"
                            label="Moneda"
                            autocomplete
                            required
                            ></v-select>
                        </v-flex>
                        
                        <v-flex xs12 sm6>  
                            <v-select
                            :items="[{'id_status': 1, 'nb_status' :'Confirmado'}, {'id_status': 2, 'nb_status' :'Pendiente'}]"
                            item-text="nb_status"
                            item-value="id_status"
                            v-model="form.id_status"
                            label="Status de la Solicitud"
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
    data () {
        return {
            valido: false,
            btnAccion: '',
            date: '',
            dateFormatted: '',
            menu1: false,
            form:{
                id_solicitud: '',
                nu_solicitud: '',
                tx_concepto: '',
                mo_solicitud: '',
                fe_solicitud: '',
                id_ente: '',
                id_moneda: '',
                id_categoria: '',
                tx_observaciones: '',
                id_usuario: '',
                id_status: ''
            },
            rules:{
                mo_solicitud: [
                    v => !!v || 'Campo Requerido',
                    ],
                nu_solicitud: [
                    v => !!v || 'Campo Requerido',
                    () => true
                    ], 
                fe_solicitud: [
                    v => !!v || 'Campo Requerido',
                    () => true
                    ], 
                tx_concepto: [
                    v => !!v || 'Campo Requerido',
                    () => true
                    ], 
            }
            
        }
    },
    props: ['accion','solicitud'],
    mixins: [ withSnackbar ],
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

            if(this.solicitud)
            {
                for(var key in this.solicitud) {

                    if(this.form.hasOwnProperty(key)) {
                        this.form[key] = this.solicitud[key];
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
           
            axios.put('/api/v1/solicitud/'+ this.solicitud.id_solicitud, this.form)
            .then(respuesta => {
                    this.showMessage(respuesta)
            })
            .catch(error => {
                    this.showError(error);
            })
        },
        store(){
            
            this.form.id_usuario = this.$store.getters.user.id
            
            axios.post('/api/v1/solicitud', this.form)
            .then(respuesta => {
                    this.showMessage(respuesta)
            })
            .catch(error => {
                console.log(error);
                    this.showError(error);
            })
        }
    }
    
}

</script>
