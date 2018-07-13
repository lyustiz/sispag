<template>
    <v-container fluid grid-list-md text-xs-center>
    <v-layout row justify-center>
    <v-flex xs12>
        <v-form ref="form" v-model="valido" lazy-validation>
        <v-card>
            
        <v-card-title class="light-blue darken-3 white--text">
            <h2>Ingreso</h2>
        </v-card-title>
        
        <v-card-text>
        <v-layout wrap>

            <v-flex xs12 sm6>
                <v-select
                :items="listas.tipoIngreso"
                item-text="nb_tipo_ingreso"
                item-value="id_tipo_ingreso"
                v-model="form.id_tipo_ingreso"
                :rules="rules.select"
                label="Tipo Ingreso"
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
                label="Ente Receptor"
                autocomplete
                required
                ></v-select>
            </v-flex>

            <v-flex xs12>  
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

            
            <v-flex xs12 sm4>
            <v-autonumeric
                v-model="form.mo_ingreso"
                ref="monto"
                label="Monto Ingreso"
                placeholder="Ingrese monto"
                hint="Ej 845.456,12"
                required
                :options="{
                    digitGroupSeparator: '.',
                    decimalCharacter: ',',
                    decimalCharacterAlternative: '.',
                    currencySymbolPlacement: 's',
                    roundingMethod: 'U',
                    minimumValue: '0'
                }"
            ></v-autonumeric>
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
                <v-autonumeric
                v-model="form.mo_tasa"
                ref="monto"
                :rules="rules.montoNR"
                label="Tasa de Cambio"
                placeholder="Ingrese Tasa"
                hint="Ej 456,12"
                :options="{
                    digitGroupSeparator: '.',
                    decimalCharacter: ',',
                    decimalCharacterAlternative: '.',
                    currencySymbolPlacement: 's',
                    roundingMethod: 'U',
                    minimumValue: '0'
                }"
            ></v-autonumeric>
            </v-flex>

            <v-flex xs12 sm6>
            <v-menu
                ref="picker"
                v-model="picker"
                full-width
                min-width="290px"
            >
                <v-text-field
                slot="activator"
                v-model="dates.fe_ingreso"
                :rules="rules.fecha"
                label="Seleccione Fecha"
                prepend-icon="event"
                readonly
                required
                ></v-text-field>
                <v-date-picker v-model="form.fe_ingreso" locale="es" @input="dates.fe_ingreso = formatDate(form.fe_ingreso)"></v-date-picker>
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
import VueAutonumeric from 'vue-autonumeric';
import withSnackbar from '../components/mixins/withSnackbar';
import formHelper from '../components/mixins/formHelper';

export default {
    mixins: [ formHelper, withSnackbar ],
    data () {
        return {
            tabla: 'ingreso',
            form:{
                id_ingreso: '',
                id_tipo_ingreso: '',
                id_ente: '',
                id_moneda: '',
                mo_ingreso: 0,
                mo_tasa: '',
                fe_ingreso: '',
                id_banco: '',
                tx_observaciones: '',
                id_usuario: '',
                id_status: ''
            },
            listas:{
                ente:        ['/grupo/4'],
                tipoIngreso: [],
                banco:       ['/grupo/1'],
                moneda:      [],
                status:      ['/grupo/4'],
            }, 
        }
    },
    methods:{
        update()
        {
            if (this.$refs.form.validate()) 
            {           
                if( this.form.id_status == 1 )
                {
                    if(!confirm('Esta operacion comfirma el ingreso de Divisa \n No puede reversarse. desea continuar?'))
                    {
                        return false;
                    }
                }  
                
                axios.put(this.basePath + this.item.id_ingreso, this.form)
                .then(respuesta => 
                {
                    this.showMessage(respuesta.data.msj)
                    this.$emit('cerrarModal');
                })
                .catch(error => 
                {
                    this.showError(error);
                })
            }
        },
        store()
        {               
            
            if (this.$refs.form.validate()) 
            { 
                if( this.form.id_status == 1 )
                {
                    if(!confirm('Esta operacion comfirma el ingreso de Divisa \n No puede reversarse. desea continuar?'))
                    {
                        return false;
                    }
                }  
                
                axios.post('/api/v1/ingreso', this.form)
                .then(respuesta => 
                {
                    this.showMessage(respuesta.data.msj)
                    this.$emit('cerrarModal');
                })
                .catch(error => 
                {
                    this.showError(error);
                })
            }
        },
    }
    
}

</script>
