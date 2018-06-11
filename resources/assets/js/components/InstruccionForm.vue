<template>
    <v-container fluid grid-list-md text-xs-center>

        <v-layout row justify-center>
            <v-flex xs11>
                <v-form ref="form" v-model="valido" lazy-validation>
                <v-card>
                    
                    <v-card-title class="red accent-1 white--text">
                        <h2>Instrucciones</h2>
                    </v-card-title>
                    
                    <v-card-text>
                    <v-layout wrap>
                    
                        <input v-model="form.id_instruccion" required type="hidden">
                        <input v-model="form.id_usuario" required type="hidden">

                        <v-flex xs12 sm6>
                            <v-select
                            :items="['VOI', 'CENCOEX']"
                            v-model="form.id_tipo_instruccion"
                            label="Esquema de Pago"
                            autocomplete
                            required
                            ></v-select>
                        </v-flex>

                        <v-flex xs12 sm6>
                            <v-text-field
                            v-model="form.mo_tasa"
                            :rules="rules.mo_tasa"
                            label="Nro "
                            placeholder="Ingrese Nro esquema de Pago "
                            ></v-text-field>
                        </v-flex>

                        <v-flex xs12 sm6>
                            <v-text-field
                            v-model="form.mo_tasa"
                            :rules="rules.mo_tasa"
                            label="Oficio de Cuenta Mandante "
                            placeholder="Ingrese Nro esquema "
                            ></v-text-field>
                        </v-flex>
                        
                        <v-flex xs12 sm6>  
                            <v-select
                            :items="['Venezuela', 'BVC']"
                            v-model="form.id_banco"
                            label="Banco Receptor"
                            autocomplete
                            required
                            ></v-select>
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
                            :rules="rules.fe_instruccion"
                            label="Fecha Instruccion"
                            prepend-icon="event"
                            readonly
                            required
                            ></v-text-field>
                            <v-date-picker v-model="date" @input="$refs.menu1.save(date)"></v-date-picker>

                        </v-menu>
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
                            :rules="rules.fe_instruccion"
                            label="Fecha Liquidacion"
                            prepend-icon="event"
                            readonly
                            required
                            ></v-text-field>
                            <v-date-picker v-model="date" @input="$refs.menu1.save(date)"></v-date-picker>

                        </v-menu>
                        </v-flex>

                        <v-flex xs12 sm6>  
                            <v-select
                            :items="[{'id_status': 1, 'nb_status' :'Confirmado'}, {'id_status': 2, 'nb_status' :'Pendiente'}]"
                            item-text="nb_status"
                            item-value="id_status"
                            v-model="form.id_status"
                            label="Status del Instruccion"
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
            esquema: 'Solicitud',
            form:{
                id_instruccion: '',
                id_tipo_instruccion: '',
                id_ente: '',
                id_moneda: '',
                mo_instruccion: '',
                mo_tasa: '',
                fe_instruccion: '',
                id_banco: '',
                tx_observaciones: '',
                id_usuario: '',
                id_status: ''
            },
            rules:{
               mo_instruccion: [
                    v => !!v || 'Campo Requerido',
                    ],
                mo_tasa: [
                    v => !!v || 'Campo Requerido',
                    () => true
                    ], 
                fe_instruccion: [
                    v => !!v || 'Campo Requerido',
                    () => true
                    ], 
            }
            
        }
    },
    props: ['accion','instruccion'],
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

            if(this.instruccion)
            {
                for(var key in this.instruccion) {

                    if(this.form.hasOwnProperty(key)) {
                        this.form[key] = this.instruccion[key];
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
           
            axios.put('/api/v1/instruccion/'+ this.instruccion.id_instruccion, this.form)
            .then(respuesta => {
                    this.showMessage(respuesta)
            })
            .catch(error => {
                    this.showError(error);
            })
        },
        store(){
            
            this.form.id_usuario = this.$store.getters.user.id
            
            axios.post('/api/v1/instruccion', this.form)
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
