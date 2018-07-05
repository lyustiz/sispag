<template>
    <v-container fluid grid-list-md text-xs-center>
    <v-layout row justify-center>
    <v-flex xs12>
        <v-form ref="form" v-model="valido" lazy-validation>
        <v-card>
            
            <v-card-title class="red accent-1 white--text">
                <h2>Pago</h2>
            </v-card-title>
            
            <v-card-text>
            <v-layout wrap>
            
            <v-flex xs12 sm6>  
                <v-select
                :items="listas.tipoPago"
                item-text="nb_tipo_pago"
                item-value="id_tipo_pago"
                v-model="form.id_tipo_pago"
                :rules="rules.select"
                label="Tipo de Pago"
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
                v-model="pickers.fe_liq_bcv"
                :ref="pickers.fe_liq_bcv"
                full-width
                min-width="290px"
            >
                <v-text-field
                slot="activator"
                v-model="form.fe_liq_bcv"
                :rules="rules.fecha"
                label="Fecha liquidacion BCV"
                prepend-icon="event"
                readonly
                required
                ></v-text-field>
                <v-date-picker v-model="form.fe_liq_bcv" locale="es"></v-date-picker>
            </v-menu>
            </v-flex>

            <v-flex xs12 sm6>
            <v-menu
                v-model="pickers.fe_pago"
                :ref="pickers.fe_pago"
                full-width
                min-width="290px"
            >
                <v-text-field
                slot="activator"
                v-model="form.fe_pago"
                :rules="rules.fecha"
                label="Fecha de Pago"
                prepend-icon="event"
                readonly
                required
                ></v-text-field>
                <v-date-picker v-model="form.fe_pago" locale="es"></v-date-picker>

            </v-menu>
            </v-flex>

            <v-flex xs12 sm4>
                <v-text-field
                v-model="form.mo_final_pago"
                :rules="rules.monto"
                label="Monto del Pago"
                placeholder="Monto del Pago"
                hint="Ej 845.456,12"
                required
                ></v-text-field>
            </v-flex>

            <v-flex xs12 sm4>
                <v-select
                :items="listas.moneda"
                item-text="nb_moneda"
                item-value="id_moneda"
                v-model="form.id_moneda"
                :rules="rules.select"
                label="Moneda"
                autocomplete
                required
                ></v-select>
            </v-flex>

            <v-flex xs12 sm4>
                <v-text-field
                v-model="form.mo_tasa"
                :rules="rules.montoNR"
                label="Tasa de Cambio"
                placeholder="Ingrese Tasa"
                hint="Ej 107,02"
                ></v-text-field>
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
            tabla: 'pago',
            pickers: {
                fe_liq_bcv: false,
                fe_pago:    false
            },
            esquema: 'Solicitud',
            form:{
                id_instruccion: this.instruccion.id_instruccion,
                fe_liq_bcv:      '',
                id_banco:        '',
                fe_pago:         '',
                id_moneda:       '',
                mo_tasa:         '',
                mo_final_pago:   '',
                id_tipo_pago:    '',
                tx_observaciones:'',
                id_usuario:      '',
                id_status:       '',
            },
            listas:{
                banco:    ['/grupo/1'],
                moneda:   [],
                tipoPago: [],
                status:   ['/grupo/3'],
            },
            
        }
    },
    props:['instruccion'],
    methods:{
        update()
        {
            if (this.$refs.form.validate()) 
            {               
                axios.put(this.basePath + this.item.id_pago, this.form)
                .then(respuesta => {
                    this.showMessage(respuesta.data.msj)
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
    
}

</script>
