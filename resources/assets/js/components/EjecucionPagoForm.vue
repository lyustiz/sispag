<template>
    <v-container fluid grid-list-md text-xs-center>
    <v-layout row justify-center>
    <v-flex xs12>
        <v-form ref="form" v-model="valido" lazy-validation>
        <v-card>
            
            <v-card-title class="light-blue darken-3 white--text">
                <h2>Ejecucion de Pago</h2>
            </v-card-title>
            
            <v-card-text>
            <v-layout wrap>
            
            <v-flex xs12>  
                <v-select
                :items="listas.etapaEnvio"
                item-text="nb_etapa_envio"
                item-value="id_etapa_envio"
                v-model="form.id_etapa_envio"
                :rules="rules.etapa"
                label="Etapa de Ejecucion de Pago"
                autocomplete
                required
                @input="setEtapa(form.id_etapa_envio)"
                ></v-select>
            </v-flex>

            <v-flex xs12 class="text-sm-left">
                <v-subheader>Corresponsal</v-subheader> 
                <v-divider></v-divider>
            </v-flex>
            <!--CORRESPONSAL -->
            <v-flex xs12 sm6>  
                <v-select
                :items="listas.banco"
                item-text="nb_banco"
                item-value="id_banco"
                v-model="form.id_banco_co"
                :rules="rules.etapaCo"
                label="Banco Corresponsal"
                autocomplete
                required
                :disabled="!etapa.corresponsal"
                ></v-select>
            </v-flex>

            <v-flex xs12 sm3>
            <v-menu
                ref="picker"
                v-model="picker.corresponsal"
                full-width
                min-width="290px"
                :disabled="!etapa.corresponsal"
            >
                <v-text-field
                slot="activator"
                v-model="dates.fe_envio_co"
                :rules="rules.etapaCo"
                label="Fecha Corresponsal"
                prepend-icon="event"
                readonly
                required
                :disabled="!etapa.corresponsal"
                ></v-text-field>

                <v-date-picker 
                    v-model="form.fe_envio_co" 
                    locale="es"
                    @input="dates.fe_envio_co = formatDate( form.fe_envio_co )"
                ></v-date-picker>

            </v-menu>
            </v-flex>

            <v-flex xs12 sm3>  
                <v-select
                :items="listas.status"
                item-text="nb_status"
                item-value="id_status"
                v-model="form.id_status_co"
                :rules="rules.etapaCo"
                label="Status Corresponsal"
                autocomplete
                required
                :disabled="!etapa.corresponsal"
                ></v-select>
            </v-flex>

            <v-flex xs12 class="text-sm-left">
                <v-subheader>Intermediario</v-subheader> 
                <v-divider></v-divider>
            </v-flex>
            <!--INTERMEDIARIO -->
            <v-flex xs12 sm6>  
                <v-select
                :items="listas.banco"
                item-text="nb_banco"
                item-value="id_banco"
                v-model="form.id_banco_in"
                :rules="rules.etapaIn"
                label="Banco Intermediario"
                autocomplete
                required
                :disabled="!etapa.intermediario"
                ></v-select>
            </v-flex>

            <v-flex xs12 sm3>
            <v-menu
                ref="picker"
                v-model="picker.intermediario"
                full-width
                min-width="290px"
                :disabled="!etapa.intermediario"
            >
                <v-text-field
                slot="activator"
                v-model="dates.fe_envio_in"
                :rules="rules.etapaIn"
                label="Fecha Intermediario"
                prepend-icon="event"
                readonly
                required
                :disabled="!etapa.intermediario"
                ></v-text-field>

                <v-date-picker 
                    v-model="form.fe_envio_in" 
                    locale="es"
                    @input="dates.fe_envio_in = formatDate( form.fe_envio_in )"
                ></v-date-picker>

            </v-menu>
            </v-flex>

            <v-flex xs12 sm3>  
                <v-select
                :items="listas.status"
                item-text="nb_status"
                item-value="id_status"
                v-model="form.id_status_in"
                :rules="rules.etapaIn"
                label="Status Intermediario"
                autocomplete
                required
                :disabled="!etapa.intermediario"
                ></v-select>
            </v-flex>

             <v-flex xs12 class="text-sm-left">
                <v-subheader>Beneficiario</v-subheader> 
                <v-divider></v-divider>
            </v-flex>
            <!--BENEFICIARIO -->
            <v-flex xs12 sm6>  
                <v-select
                :items="listas.banco"
                item-text="nb_banco"
                item-value="id_banco"
                v-model="form.id_banco"
                :rules="rules.etapaBe"
                label="Banco Beneficiario"
                autocomplete
                required
                :disabled="!etapa.beneficiario"
                ></v-select>
            </v-flex>

            <v-flex xs12 sm3>
            <v-menu
                ref="picker"
                v-model="picker.beneficiario"
                full-width
                min-width="290px"
                :disabled="!etapa.beneficiario"
            >
                <v-text-field
                slot="activator"
                v-model="dates.fe_envio_inst"
                :rules="rules.etapaBe"
                label="Fecha Beneficiario"
                prepend-icon="event"
                readonly
                required
                :disabled="!etapa.beneficiario"
                ></v-text-field>

                <v-date-picker 
                    v-model="form.fe_envio_inst" 
                    locale="es"
                    @input="dates.fe_envio_inst = formatDate( form.fe_envio_inst )"
                    
                ></v-date-picker>

            </v-menu>
            </v-flex>

            <v-flex xs12 sm3>  
                <v-select
                :items="listas.status"
                item-text="nb_status"
                item-value="id_status"
                v-model="form.id_status"
                :rules="rules.etapaBe"
                label="Status Beneficiario"
                autocomplete
                required
                :disabled="!etapa.beneficiario"
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
                    <pre>{{this.item}}</pre>            
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
            picker:{
                corresponsal:   false,
                intermediario:  false,
                beneficiario:   false,
            },
            etapa:{
                corresponsal:   false,
                intermediario:  false,
                beneficiario:   false,
            },
            tabla: 'ejecucionPago',
            form:{
                id_pago :         '',
                id_banco:         '',
                fe_envio_inst:    '',
                id_etapa_envio:   '',
                tx_observaciones: '',
                id_usuario:       '',
                id_status:        '',
                //update
                id_banco_co:      '',
                fe_envio_co:      '',
                id_status_co:     '',
                id_banco_in:      '',
                fe_envio_in:      '',
                id_status_in:     ''
            },
            listas:{
                banco:      ['/grupo/1'],
                etapaEnvio: [],
                status:     ['/grupo/6'],
            },
            rules:{
                etapa: [
                    v => !!v || 'Seleccione una Opcion (Campo Requerido)',
                    v => ( this.accion == 'upd' && Number(v) < this.item.id_etapa_envio) 
                         ? 'Debe seleccionar la siguiente Etapa'
                         : true,
                   ],
                etapaCo:[
                    v => ( v && this.accion == 'ins' && this.form.id_etapa_envio == 1)
                         ? true
                         : 'Obligatorio para etapa Corresponsal',
                    v => ( v && this.accion == 'upd' && this.item.id_etapa_envio == 1)
                         ? true
                         : 'Obligatorio para etapa Corresponsal',
                    ],
                etapaIn:[
                    v =>(  v && this.accion == 'ins' && this.form.id_etapa_envio == 2) 
                         ? true
                         : 'Obligatorio para etapa Intermediario',
                    v =>(  v && this.accion == 'upd' && this.item.id_etapa_envio == 2) 
                         ? true
                         : 'Obligatorio para etapa Intermediario',
                    ],
                etapaBe:[
                    v =>( v && this.accion == 'ins' && this.form.id_etapa_envio == 3) 
                         ? true
                         : 'Obligatorio para etapa Beneficiario',
                    v =>( v && this.accion == 'upd' && this.item.id_etapa_envio == 3) 
                         ? true
                         : 'Obligatorio para etapa Beneficiario',
                    ],

            }
            
        }
    },
    props:['pago', 'etapas'],
    methods:
    {
        setEtapa(etapa)
        {
            switch (true) {
                case etapa == 1:
                    this.etapa.corresponsal  = true;
                    this.etapa.intermediario = false;
                    this.etapa.beneficiario  = false;
                    break;

                case etapa == 2:
                    this.etapa.corresponsal = true;
                    this.etapa.intermediario = true;
                    this.etapa.beneficiario = false;
                    break;

                case etapa == 3:
                    this.etapa.corresponsal = true;
                    this.etapa.intermediario = true;
                    this.etapa.beneficiario = true;
                    break;
            
                default:
                    break;
            }
        },
        update()
        {
            
            if (this.$refs.form.validate()) 
            {           
                if( this.form.id_etapa_envio == 3 &&  this.form.id_status == 31 )
                {
                    if(!confirm('Esta operacion completara el proceso de pago \n Desea continuar?'))
                    {
                        return false;
                    }
                }
                
                this.form.id_pago = this.pago.id_pago

                axios.put(this.basePath + this.item.id_ejecucion_pago, this.form)
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
                this.form.id_pago = this.pago.id_pago

                axios.post(this.basePath, this.form)
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
        }
    }
    
}

</script>

