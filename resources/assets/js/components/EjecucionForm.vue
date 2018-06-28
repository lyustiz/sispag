<template>
    <v-container fluid grid-list-md text-xs-center>
    <v-layout row justify-center>
    <v-flex xs12>
        <v-form ref="form" v-model="valido" lazy-validation>
        <v-card>
            
            <v-card-title class="red accent-1 white--text">
                <h2>Ejecucion de Pago</h2>
            </v-card-title>
            
            <v-card-text>
            <v-layout wrap>
            
            <v-flex xs12 sm6>  
                <v-select
                :items="listas.etapaEnvio"
                item-text="nb_etapa_envio"
                item-value="id_etapa_envio"
                v-model="form.id_etapa_envioo"
                :rules="rules.select"
                label="Etapa de Ejecucion de Pago"
                autocomplete
                required
                ></v-select>
            </v-flex>

            <v-flex xs12 sm6>  
                <v-select
                :items="listas.banco"
                item-text="nb_banco"
                item-value="id_banco"
                v-model="form.id_banco"
                :rules="rules.select"
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
                v-model="form.fe_liq_bcv"
                :rules="rules.fe_liq_bcv"
                label="Fecha Envio del Pago"
                prepend-icon="event"
                readonly
                required
                ></v-text-field>
                <v-date-picker v-model="form.fe_liq_bcv" @input="$refs.menu1.save(date)"></v-date-picker>

            </v-menu>
            </v-flex>

            <v-flex xs12 sm6>  
                <v-select
                :items="listas.status"
                item-text="nb_status"
                item-value="id_status"
                v-model="form.id_status"
                :rules="rules.select"
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
            tabla: 'ejecucionPago',
            date: '',
            dateFormatted: '',
            menu1: false,
            form:{
                id_pago :        this.pago.id_pago,
                id_banco:        '',
                fe_envio_inst:   '',
                id_etapa_envio:  '',
                tx_observacion:  '',
                id_usuario:      '',
                id_status:       '',
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
                select: [
                    v => !!v || 'Seleccione una Opcion (Opcion Requerida)',
                    ], 
            },
            listas:{
                banco:      ['/grupo/1'],
                etapaEnvio: [],
                status:     ['/grupo/1'],
            },
            
        }
    },
    props:['pago'],
    watch: {
        date (val) {
            this.dateFormatted = this.formatDate(this.date)
        },
    },
    methods:{
        update(){
                       
            axios.put(this.basePath + this.item.id_pago, this.form)
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
                this.$emit('cerrarModal');
            })
            .catch(error => {
                this.showError(error);
            })
        }
    }
    
}

</script>

