<template>
    <v-container fluid grid-list-md text-xs-center>
    <v-layout row justify-center>
    <v-flex xs12>
        <v-form ref="form" v-model="valido" lazy-validation>
        <v-card>
            
            <v-card-title class="light-blue darken-3 white--text">
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
                :rules="rules.pagoTotal"
                label="Tipo de Pago"
                autocomplete
                required
                @input="tipoPago"
                ></v-select>
            </v-flex>

            <v-flex xs12 sm6>  
                <v-select
                :items="listas.banco"
                item-text="tx_switf_nombre"
                item-value="id_banco"
                v-model="form.id_banco"
                :rules="rules.select"
                label="Banco Corresponsal"
                autocomplete
                required
                ></v-select>
            </v-flex>

            <v-flex xs12 sm6>  
                <v-select
                :items="listas.ente"
                item-text="nb_ente"
                item-value="id_ente"
                v-model="form.id_ente"
                :rules="rules.select"
                label="Proveedor"
                autocomplete
                required
                ></v-select>
            </v-flex>

            <v-flex xs12 sm3>
            <v-menu
                v-model="pickers.fe_pago"
                :ref="pickers.fe_pago"
                full-width
                min-width="290px"
            >
                <v-text-field
                slot="activator"
                v-model="dates.fe_pago"
                :rules="rules.fecha"
                label="Fecha de Pago"
                prepend-icon="event"
                readonly
                required
                ></v-text-field>
                <v-date-picker 
                    v-model="form.fe_pago" 
                    locale="es"
                    @input="dates.fe_pago = formatDate( form.fe_pago )"
                ></v-date-picker>

            </v-menu>
            </v-flex>

            <v-flex xs12 sm3>
                <v-text-field
                :value="fe_liq_bcv"
                :rules="rules.fecha"
                label="Fecha liquidacion BCV"
                prepend-icon="event"
                disabled
                required
                ></v-text-field>
            </v-flex>

            <v-flex xs12 sm3>
                <currency-field
                ref="mo_final_pago"
                v-model.number="form.mo_final_pago"
                label="Monto del Pago"
                placeholder="Ingrese Monto"
                :hint="`Pendiente de pago: ${ formatNumber(moPendiente) }`"
                :rules="rules.montoPago"
                :decimales="2"
                required
                :readonly="pagoTotal"
                >
               </currency-field>
            </v-flex>

            <v-flex xs12 sm3>
                <v-select
                :items="listas.moneda"
                item-text="nb_moneda"
                item-value="id_moneda"
                v-model="form.id_moneda"
                :rules="rules.select"
                label="Moneda"
                @input="setTasa"
                autocomplete
                required
                ></v-select>
            </v-flex>

            <v-flex xs12 sm3>
                <currency-field
                ref="mo_tasa"
                v-model.number="form.mo_tasa"
                :rules="rules.monto"
                label="Tasa de Cambio"
                placeholder="Ingrese Tasa"
                hint="Ej 1,43333"
                :disabled="tasaReadOnly"
                :decimales="5"
                ></currency-field>
            </v-flex>

            <v-flex xs12 sm3>
                <v-text-field
                :value="mo_total_pago"
                label="Monto Total del Pago"
                placeholder="Ingrese monto/moneda/tasa"
                prepend-icon="attach_money"
                disabled
                ></v-text-field>
            </v-flex>

            <!--
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
            -->
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
    <!--<pre>{{$data}}</pre>-->
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
            pagoTotal: false,
            pickers: {
                fe_pago:    false
            },
            tasaReadOnly: false,
            esquema: 'Solicitud',
            form:{
                id_instruccion:  '',
                fe_liq_bcv:      '',
                id_banco:        '',
                fe_pago:         '',
                id_moneda:       '',
                mo_tasa:         '',
                mo_final_pago:   '',
                id_tipo_pago:    '',
                id_ente:         '',
                tx_observaciones:'',
                id_usuario:      '',
                id_status:       '',
            },
            listas:{
                banco:    ['/tipo/2'],
                moneda:   [],
                tipoPago: [],
                ente:     ['/grupo/6']
                //status:   ['/grupo/3'],
            },
            rules:{
                montoPago: [
                    v => !!v || 'Indique Monto',
                    v => (Number(v) > this.moPendiente) 
                         ? `Monto mayor al disponible ${this.moPendiente}` 
                         : true
                   ],
                pagoTotal: [
                    v => !!v || 'Seleccione una Opcion (Campo Requerido)',
                    v => (Number(v) == 1 && this.montos.pagado > 0 && this.montos.pagado && this.item.id_tipo_pago != 1) 
                         ? 'Ya existe pagos parciales'
                         : true
                   ],
            },
            
            
        }
    },
    computed:
    {
        moPendiente()
        {
           return (this.accion == 'ins') 
                  ? this.montos.pendiente 
                  : this.montos.pendiente + Number(this.item.mo_final_pago)
        },
        fe_liq_bcv()
        {
            return this.formatDate(this.instruccion.fe_instruccion);
        },
        mo_total_pago()
        {
            return this.formatNumber(this.form.mo_final_pago * this.form.mo_tasa);
        }

    },
    watch:
    {
        accion(accion)
        {
            if(accion == 'ins')
            {
                this.form.fe_liq_bcv = this.instruccion.fe_instruccion
            }
        }
    },
    props:['instruccion', 'montos'],
    methods:{
        setTasa(val)
        {
           if(this.form.id_moneda == this.instruccion.id_moneda)
            {
                this.form.mo_tasa        = 1;
                this.$refs.mo_tasa.model = 1;
                this.tasaReadOnly        = true;
            }
            else
            {
                this.form.mo_tasa        = null;
                this.$refs.mo_tasa.model = null
                this.tasaReadOnly        = false;
            }
        },
        tipoPago()
        {
            if(this.form.id_tipo_pago == 1){ //pago total

                this.pagoTotal = true;
                this.form.mo_final_pago = this.moPendiente;
            }
            else{                           //pagoparcial
                
                if(this.accion == 'ins')
                {
                    this.form.mo_final_pago = null;
                    this.$refs.mo_final_pago.model = null
                }
                this.pagoTotal = false;
            }
        },
        update()
        {
            if (this.$refs.form.validate()) 
            {               
                this.form.id_instruccion = this.instruccion.id_instruccion               
                this.form.fe_liq_bcv     = this.instruccion.fe_instruccion;

                axios.put(this.basePath + '/' + this.item.id_pago, this.form)
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
                this.form.id_instruccion = this.instruccion.id_instruccion;
                this.form.id_status      = 27;  //en transito
                this.form.fe_liq_bcv     = this.instruccion.fe_instruccion;

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
