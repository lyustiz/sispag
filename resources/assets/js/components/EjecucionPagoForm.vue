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
                ref="etapaSelect"
                label="Etapa de Ejecucion de Pago"
                hide-selected
                multiple
                required
                chips
                @input="setEtapa()"
                :readonly="etapa.beneficiario.closed || (!etapaCompletada && etapaActual > 0)"
                ></v-select>
            </v-flex>

            <!--CORRESPONSAL -->
            <v-layout row v-show="etapa.corresponsal.active" wrap>
            <v-flex xs12 class="text-sm-left">
                <v-chip>
                <v-avatar class="teal"><v-icon>expand_more</v-icon></v-avatar>
                    <h3>Corresponsal</h3>  
                </v-chip>
                <v-divider></v-divider>
            </v-flex>
            
            <v-flex xs12 sm6>  
                <v-select
                :items="listas.banco"
                item-text="nb_banco"
                item-value="id_banco"
                v-model="form.corresponsal.id_banco"
                :rules="rules.etapaCo"
                label="Banco Corresponsal"
                autocomplete
                required
                :readonly="etapaActual > 1 || etapa.corresponsal.closed"
                ></v-select>
            </v-flex>

            <v-flex xs12 sm3>
            <v-menu
                ref="picker"
                v-model="picker.corresponsal"
                full-width
                min-width="290px"
                :readonly="etapaActual > 1 || etapa.corresponsal.closed"
            >
                <v-text-field
                slot="activator"
                v-model="dates.corresponsal"
                :rules="rules.etapaCo"
                label="Fecha Corresponsal"
                prepend-icon="event"
                readonly
                required
                ></v-text-field>

                <v-date-picker 
                    v-model="form.corresponsal.fe_envio_inst" 
                    locale="es"
                    :readonly="etapaActual > 1 || etapa.corresponsal.closed"
                    @input="dates.corresponsal = formatDate( form.corresponsal.fe_envio_inst )"
                ></v-date-picker>

            </v-menu>
            </v-flex>

            <v-flex xs12 sm3>  
                <v-select
                :items="listas.status"
                item-text="nb_status"
                item-value="id_status"
                v-model="form.corresponsal.id_status"
                :rules="rules.etapaCo"
                label="Status Corresponsal"
                autocomplete
                required
                :readonly="etapaActual > 1 || etapa.corresponsal.closed"
                ></v-select>
            </v-flex>

            <v-flex xs12 >
                <v-text-field
                    :rules="rules.tx_observaciones"
                    v-model="form.corresponsal.tx_observaciones"
                    label="Observaciones"
                    placeholder="Indique Observaciones"
                ></v-text-field>
            </v-flex>
            </v-layout>

            <!--INTERMEDIARIO -->
            <v-layout row v-show="etapa.intermediario.active" wrap>
            <v-flex xs12 class="text-sm-left">
                <v-chip>
                <v-avatar class="teal"><v-icon>expand_more</v-icon></v-avatar>
                    <h3>Intermediario</h3>  
                </v-chip>
                <v-divider></v-divider>
            </v-flex>
            
            <v-flex xs12 sm6>  
                <v-select
                :items="listas.banco"
                item-text="nb_banco"
                item-value="id_banco"
                v-model="form.intermediario.id_banco"
                :rules="rules.etapaIn"
                label="Banco Intermediario"
                autocomplete
                required
                :readonly="etapaActual > 2 || etapa.intermediario.closed"
                ></v-select>
            </v-flex>

            <v-flex xs12 sm3>
            <v-menu
                ref="picker"
                v-model="picker.intermediario"
                full-width
                min-width="290px"
                :readonly="etapaActual > 2 || etapa.intermediario.closed"
            >
                <v-text-field
                slot="activator"
                v-model="dates.intermediario"
                :rules="rules.etapaIn"
                label="Fecha Intermediario"
                prepend-icon="event"
                readonly
                required
                ></v-text-field>

                <v-date-picker 
                    v-model="form.intermediario.fe_envio_inst" 
                    locale="es"
                    :readonly="etapaActual > 2 || etapa.intermediario.closed"
                    @input="dates.intermediario = formatDate( form.intermediario.fe_envio_inst )"
                ></v-date-picker>

            </v-menu>
            </v-flex>

            <v-flex xs12 sm3>  
                <v-select
                :items="listas.status"
                item-text="nb_status"
                item-value="id_status"
                v-model="form.intermediario.id_status"
                :rules="rules.etapaIn"
                label="Status Intermediario"
                autocomplete
                required
                :readonly="etapaActual > 2 || etapa.intermediario.closed"
                ></v-select>
            </v-flex>

            <v-flex xs12 >
                <v-text-field
                    :rules="rules.tx_observaciones"
                    v-model="form.intermediario.tx_observaciones"
                    label="Observaciones"
                    placeholder="Indique Observaciones"
                    :disabled="!etapa.intermediario"
                ></v-text-field>
            </v-flex>
            </v-layout>

            <!--BENEFICIARIO -->
            <v-layout row v-show="etapa.beneficiario.active" wrap>
            <v-flex xs12 class="text-sm-left">
                <v-chip>
                <v-avatar class="teal"><v-icon>expand_more</v-icon></v-avatar>
                    <h3>Beneficiario</h3>  
                </v-chip>
                <v-divider></v-divider>
            </v-flex>

            <v-flex xs12 sm6>  
                <v-select
                :items="listas.banco"
                item-text="nb_banco"
                item-value="id_banco"
                v-model="form.beneficiario.id_banco"
                :rules="rules.etapaBe"
                label="Banco Beneficiario"
                autocomplete
                required
                :readonly="etapa.beneficiario.closed"
                ></v-select>
            </v-flex>

            <v-flex xs12 sm3>
            <v-menu
                ref="picker"
                v-model="picker.beneficiario"
                full-width
                min-width="290px"
                :readonly="etapa.beneficiario.closed"
            >
                <v-text-field
                slot="activator"
                v-model="dates.beneficiario"
                :rules="rules.etapaBe"
                label="Fecha Beneficiario"
                prepend-icon="event"
                readonly
                required
                ></v-text-field>

                <v-date-picker 
                    v-model="form.beneficiario.fe_envio_inst" 
                    locale="es"
                    :readonly="etapa.beneficiario.closed"
                    @input="dates.beneficiario = formatDate( form.beneficiario.fe_envio_inst )"
                ></v-date-picker>
            </v-menu>
            </v-flex>

            <v-flex xs12 sm3>  
                <v-select
                :items="listas.status"
                item-text="nb_status"
                item-value="id_status"
                v-model="form.beneficiario.id_status"
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
                    v-model="form.beneficiario.tx_observaciones"
                    label="Observaciones"
                    placeholder="Indique Observaciones"
                    :disabled="!etapa.beneficiario"
                ></v-text-field>
            </v-flex>
            </v-layout>

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
    mixins: [  formHelper, withSnackbar ],
    data () {
        return {
            tabla: 'ejecucionPago',
            basePath: '/api/v1/',
            valido: false,
            btnAccion: '',
            picker:{
                corresponsal:   false,
                intermediario:  false,
                beneficiario:   false,
            },
            etapa:{
                corresponsal:   {
                                    active: false,
                                    closed: false
                                },
                intermediario:  {
                                    active: false,
                                    closed: false
                },
                beneficiario:   {
                                    active: false,
                                    closed: false
                },
            },
            dates:{
                corresponsal:   null,
                intermediario:  null,
                beneficiario:   null,
            },
            form:{
                id_usuario:       '',
                id_etapa_envio:  [],
                corresponsal:{
                    id_ejecucion_pago:null,
                    id_etapa_envio:   1,
                    id_pago:          this.pago.id_pago,
                    id_banco:         null,
                    fe_envio_inst:    null,
                    id_status:        null,
                    tx_observaciones: null,
                },
                intermediario:{
                    id_ejecucion_pago:null,
                    id_etapa_envio:   2,
                    id_pago:          this.pago.id_pago,
                    id_banco:         null,
                    fe_envio_inst:    null,
                    id_status:        null,
                    tx_observaciones: null,
                },
                beneficiario:{
                    id_ejecucion_pago:null,
                    id_etapa_envio:   3,
                    id_pago:          this.pago.id_pago,
                    id_banco:         null,
                    fe_envio_inst:    null,
                    id_status:        null,
                    tx_observaciones: null,
                },
            },
            listas:{
                banco:      ['/grupo/1'],
                etapaEnvio: [],
                status:     ['/grupo/6'],
            },
            rules:{
                etapa: [
                    v => v.length > 0 || 'Seleccione una Opcion (Campo Requerido)',
                    v => ( this.accion == 'upd' && Number(v) < this.item.id_etapa_envio) 
                         ? 'Debe seleccionar la siguiente Etapa'
                         : true,
                   ],
                etapaCo:[
                    v => 
                    {
                        switch(true)
                        {
                            case !!v && this.form.id_etapa_envio.includes(1):
                                return true;
                                break;
                            case !v && !this.form.id_etapa_envio.includes(1):
                                return true;
                                break;
                            default:
                                return 'Campo Obligatorio para Etapa Corresponsal'
                            break;
                        }
                    }
                    ], 
                etapaIn:[
                    v => 
                    {
                        switch(true)
                        {
                            case !!v && this.form.id_etapa_envio.includes(2):
                                return true;
                                break;
                            case !v && !this.form.id_etapa_envio.includes(2):
                                return true;
                                break;
                            default:
                                return 'Campo Obligatorio para Etapa Intermediario'
                            break;
                        }
                    }
                    ], 
                etapaBe:[
                    v => 
                    {
                        switch(true)
                        {
                            case !!v && this.form.id_etapa_envio.includes(3):
                                return true;
                                break;
                            case !v && !this.form.id_etapa_envio.includes(3):
                                return true;
                                break;
                            default:
                                return 'Campo Obligatorio para Etapa Beneficicario'
                            break;
                        }
                    }
                    ], 

            }
            
        }
    },
    props:['pago', 'etapas'],
    computed:
    {
        etapaActual()
        {
            var etapaActual = 0
            
            this.form.id_etapa_envio.forEach(function(item, index) 
            {
                etapaActual = (etapaActual > item) ? etapaActual : Number(item);
                
            }, this);

            return etapaActual
        },
        etapaCompletada()
        {
            let nombreEtapa = this.nombreEtapa(this.etapaActual);
            
            return (this.form[nombreEtapa]) ?  this.form[nombreEtapa].id_banco      != null 
                                            && this.form[nombreEtapa].fe_envio_inst != null 
                                            && this.form[nombreEtapa].id_status     == 31 
                                            : false; 
        }
    },
    watch:{

        item(item)
        {
          if(this.btnAccion == 'upd')
           {
               this.setEtapa()
           } 
        },
    },
    methods:
    {
        disableEtapa()
        {
            this.$refs.etapaSelect.items.forEach(function(item, index) 
            {
                if( Number(item.id_etapa_envio) <= (this.etapaActual) ) 
                {
                    this.$refs.etapaSelect.items[index].disabled = true
                }
                else
                {
                    this.$refs.etapaSelect.items[index].disabled = false
                }

            }, this);

        },
        setEtapa()
        {
            this.$refs.etapaSelect.menuIsActive = false
            this.disableEtapa();
            this.etapa.corresponsal.active  = ( this.form.id_etapa_envio.includes(1) ) ? true: false;
            this.etapa.intermediario.active = ( this.form.id_etapa_envio.includes(2) ) ? true: false;
            this.etapa.beneficiario.active  = ( this.form.id_etapa_envio.includes(3) ) ? true: false;

        },
        mapForm()
        {
            if(this.btnAccion == 'upd') 
            {
                this.item.forEach(function callback(item, index) 
                {
                    let nombreEtapa = this.nombreEtapa(item.id_etapa_envio);
                    
                    if(!this.form.id_etapa_envio.includes(item.id_etapa_envio))
                    {
                        this.form.id_etapa_envio.push(item.id_etapa_envio);
                    }
                    
                    if(item.id_id_status == 31)
                    {
                        this.etapa[nombreEtapa].closed = true;
                    }
                    
                    
                    this.form[nombreEtapa].id_ejecucion_pago =  item.id_ejecucion_pago;

                    this.dates[nombreEtapa] = this.formatDate(item.fe_envio_inst);

                    for(var key in this.form[nombreEtapa]) 
                    {
                        if(this.form[nombreEtapa].hasOwnProperty(key)) 
                        {
                            this.form[nombreEtapa][key]  =  item[key];
                        }
                    }

                }, this);
                this.setEtapa()
            }

            
        },
        update()
        {
            
            if (this.$refs.form.validate()) 
            {           
                if( this.form.id_etapa_envio == 3 &&  this.form.beneficiario.id_status == 31 )
                {
                    if(!confirm('Esta operacion cerrara el proceso de pago \n Desea continuar?'))
                    {
                        return false;
                    }
                }
                this.form.id_pago = this.pago.id_pago

                axios.put(this.basePath +'update', this.form)
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
        },
        rstForm(){
        },
        nombreEtapa(idEtapa)
        {
            let nombreEtapa = null;

            switch (idEtapa) 
            {
                case 1:
                    nombreEtapa = 'corresponsal';
                    break;
                case 2: 
                    nombreEtapa = 'intermediario';
                    break;
                case 3:
                    nombreEtapa = 'beneficiario';
                    break;
            }
  
            return nombreEtapa;
        }
    }
    
}

</script>

