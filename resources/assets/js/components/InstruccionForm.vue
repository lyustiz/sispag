<template>

    <v-container fluid grid-list-md text-xs-center >
    <v-layout row justify-center>
    <v-flex xs12>   
        <v-form ref="form" v-model="valido" lazy-validation>
        <v-card>
       
            <v-card-title class="light-blue darken-3 white--text">
                <h2>Instruccion</h2>
            </v-card-title>

            <v-card-text>    
            <v-layout row wrap>

                <v-flex xs12 sm6 >
                <v-select
                    label="Categoria"
                    v-model="form.id_categoria"
                    :items="listas.categoria"
                    item-value="id_categoria"
                    item-text="nb_categoria"
                    :rules="rules.select"
                    autocomplete
                    required
                ></v-select>
                </v-flex>

                <v-flex xs12 sm6 >
                <v-select
                    label="Ente Beneficiario"
                    v-model="form.id_ente"
                    :items="listas.ente"
                    item-value="id_ente"
                    item-text="nb_ente"
                    :rules="rules.select"
                    autocomplete
                    required
                ></v-select>
                </v-flex>

                <v-flex xs12 sm4 >
                <v-text-field
                    label="Concepto"
                    v-model="form.tx_concepto"
                    placeholder="Concepto de la Instrucion"
                    :rules="rules.requerido"
                    required
                ></v-text-field>
                </v-flex>

                <v-flex xs12 sm4 >
                <v-select
                    label="Esquema de Pago"
                    v-model="form.id_esquema"
                    :items="listas.esquema"
                    item-value="id_esquema"
                    item-text="nb_esquema"
                    :rules="rules.select"
                    autocomplete
                    required
                ></v-select>
                </v-flex>

                <v-flex xs12 sm4 >
                <v-text-field
                    label="Numero Esquema de Pago"
                    v-model="form.nu_esquema"
                    placeholder="Nro segun el esquema de pago"
                    :rules="rules.requerido"
                ></v-text-field>
                </v-flex>


                <v-flex xs12 sm3>
                <currency-field
                    label="Monto Instruccion"
                    v-model.number="form.mo_instruccion"
                    placeholder="Ingrese Monto"
                    ref="mo_instruccion"
                    :rules="rules.monto"
                    hint="Ej 845.456,12"
                    :decimales="2"
                    required
                ></currency-field>
                </v-flex>

                <v-flex xs12 sm3>
                <v-select
                    :items="listas.cuenta"
                    item-text="moneda.nb_moneda"
                    item-value="moneda.id_moneda"
                    v-model="form.id_moneda"
                    :rules="rules.select"
                    label="Moneda"
                    :hint="'Diponible: '+ moDisponible"
                    @input="setDisponible()"
                    autocomplete
                ></v-select>
                </v-flex>

                <v-flex xs12 sm3>
                <currency-field
                    ref="mo_tasa"
                    v-model="form.mo_tasa"
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
                    label="Monto Total de Instruccion"
                    v-model="form.mo_total"
                    :value="mo_total"
                    placeholder="Ingrese monto/moneda/tasa"
                    prepend-icon="attach_money"
                    disabled
                ></v-text-field>
                </v-flex>

                <v-flex xs12 sm4 >
                <v-text-field
                    label="Oficio de Cta. Mandante"
                    v-model="form.tx_ofi_cta_mte"
                    :rules="rules.requerido"
                ></v-text-field>
                </v-flex>

                <v-flex xs12 sm4>
                <v-menu
                    ref="picker"
                    v-model="picker"
                    full-width
                    min-width="290px"
                >
                    <v-text-field
                        slot="activator"
                        v-model="dates.fe_instruccion"
                        :rules="rules.fecha"
                        label="Fecha de la Instruccion"
                        prepend-icon="event"
                        readonly
                        required
                    ></v-text-field>
                    <v-date-picker 
                        v-model="form.fe_instruccion" 
                        locale="es" 
                        @input="dates.fe_instruccion = formatDate( form.fe_instruccion )">
                    </v-date-picker>
                </v-menu>
                </v-flex>

                

                <v-flex xs12 sm4>  
                <v-select
                    :items="listas.status"
                    item-text="nb_status"
                    item-value="id_status"
                    v-model="form.id_status"
                    :rules="rules.select"
                    label="Status de la Instruccion"
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
            tabla:          'instruccion',
            moDisponible:   0,
            tasaReadOnly:   false,
            form:{
                id_categoria:       '',
                id_ente:            '',
                tx_concepto:        '',
                id_esquema:         '',
                nu_esquema:         '',
                tx_ofi_cta_mte:     '',
                bo_ofi_cta_mte:     0,
                fe_instruccion:     '',
                mo_instruccion:     '',
                id_moneda:          '',
                mo_tasa:            '',
                mo_total:           '',
                tx_observaciones:   '',
                id_usuario:         '',
                id_status:          '',
            },

            /*
        
        */
            rules:{
                montoInstruccion: [
                    v => !!v || 'Indique Monto',
                    v => (Number(v) > Number(this.ingreso.mo_disponible)) ? 'Monto mayor al disponible' : true
                   ],
            },
            listas: {
                categoria:  [],
                ente:       ['/grupo/5'],
                cuenta:     [],
                esquema:    [],
                status:     ['/grupo/1']
            }
        }
    },
    computed:
    {
        mo_total()
        {
            return this.formatNumber(this.form.mo_instruccion * this.form.mo_tasa);
        }
    },
    watch:{
        tx_ofi_cta_mte: function (val) 
        {
            this.form.bo_ofi_cta_mte =  (val = '') ? 0 : 1;
        },
    },
    methods:
    {
        setDisponible()
        {
            let cuenta =  this.listas.cuenta.filter( item => item.id_moneda == this.form.id_moneda)
            this.moDisponible = this.formatNumber(cuenta[0].mo_disponible || 0 )
            this.setTasa()
        },
        setTasa()
        {
           if(this.form.id_moneda == 1)
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
        update()
        {
            if (this.$refs.form.validate()) 
            {
                
                axios.put(this.basePath + '/' + this.item.id_instruccion, this.form)
                .then(respuesta => {
                    this.showMessage(respuesta.data.msj)
                    this.cancel();
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

<style>

</style>

