<template>

    <v-container fluid grid-list-md text-xs-center >
    <v-layout row justify-center>
    <v-flex xs12>   
        <v-form ref="form" v-model="valido" lazy-validation>
        <v-card>
       
            <v-card-title class="red accent-1 white--text">
                <h2>Instruccion</h2>
            </v-card-title>

        <v-card-text>     
        <v-layout row wrap>
            
            <v-flex xs12 sm6 v-show="btnAccion != 'upd'" >
                <v-select
                    :items="listas.categoria"
                    item-value="id_categoria"
                    item-text="nb_categoria"
                    v-model="categoria"
                    label="Categoria"
                    clearable
                ></v-select>
            </v-flex>

        <v-flex xs12 sm6 v-if="categoria" v-show="btnAccion != 'upd'">
            
            <v-tooltip bottom>
            <v-btn slot="activator" fab small color="success" @click.native="dsolicitud = true" >
                <v-icon >record_voice_over</v-icon>
            </v-btn>
            <span>Solicitud</span>
            </v-tooltip>

            <v-tooltip bottom>
            <v-btn slot="activator" fab small color="warning" @click.native="dingreso  = true" >
                <v-icon>attach_money</v-icon>
            </v-btn>
            <span>Ingresos</span>
            </v-tooltip>
            
        </v-flex>
            
        </v-layout>


         <v-layout row wrap>
             
            <v-flex xs12 sm4 v-if="solicitud">
                <list-data 
                titulo="Solicitud" 
                :items="{ 
                          'Ente Solicitante': solicitud.ente.nb_ente,
                          'Concepto'        : solicitud.tx_concepto,
                          'Moneda Solicitud': solicitud.moneda.nb_moneda,
                          'Monto Solicitado': solicitud.mo_solicitud,
                          'Fecha Solicitud' : solicitud.fe_solicitud,
                        }" 
                :visible="true"
                @cerrar="remSolicitud"
                 >
                </list-data >
            </v-flex>

            <v-flex xs12 sm4 v-if="ingreso">

                <list-data 
                titulo="Ingreso" 
                :items="{ 
                          'Moneda'          : ingreso.moneda.nb_moneda,
                          'Monto Total'     : ingreso.mo_total,
                          'Monto Instruido' : ingreso.mo_instruido,
                          'Monto Disponible': ingreso.mo_disponible,
                        }"
                :visible="true" 
                @cerrar="remIngreso"
                >
                
                    <v-list-tile>
                        <v-text-field
                        v-model="form.mo_instruccion"
                        :rules="rules.montoInstruccion"
                        name="name"
                        label="Monto de la Instuccion"
                        placeholder="Ingrese Monto"
                        hint="Ej 3.107.000,02"
                        required
                        ></v-text-field>
                    </v-list-tile>

                </list-data >

            </v-flex>


            <v-flex xs12 sm4 v-if="ingreso">

                <list-data 
                titulo="Detalle Instruccion" 
                :items="{}" 
                :visible="true"
                @cerrar="remIngreso">
       
                    <v-select
                        :items="listas.esquema"
                        item-value="id_esquema"
                        item-text="nb_esquema"
                        label="Esquema de Pago"
                        v-model="form.id_esquema"
                        :rules="rules.select"
                        autocomplete
                        required
                    ></v-select>

                    <v-text-field
                        v-model="form.nu_esquema"
                        name="name"
                        label="Nro Esquema de Pago"
                    ></v-text-field>

                    <v-text-field
                        v-model="form.tx_ofi_cta_mte"
                        name="name"
                        label="Oficio Cuenta Mandante"
                    ></v-text-field>

                    <v-flex>
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
                        label="Seleccione Fecha"
                        prepend-icon="event"
                        readonly
                        required
                        ></v-text-field>
                        <v-date-picker 
                            v-model="form.fe_instruccion" 
                            locale="es" 
                            @input="dates.fe_instruccion = formatDate( form.fe_instruccion )"
                        ></v-date-picker>
                    </v-menu>
                        
                    </v-flex>
                    
                    <v-text-field
                        v-model="form.tx_observaciones"
                        name="name"
                        label="observaciones"
                    ></v-text-field>

                </list-data >
 
             </v-flex>
         </v-layout>


       </v-card-text>

       <v-card-actions>

                <form-buttons 
                    v-if="ingreso"
                    @update="update"
                    @store="store"
                    @clear="clear"
                    @cancel="cancel"
                    :btnAccion="btnAccion"
                    :valido="valido"
                ></form-buttons>  

            </v-card-actions>
       
   </v-card >
   </v-form>

    <div v-if="categoria">

        <v-dialog v-model="dsolicitud" > 

            <list-select
                :tabla="tablaCategoria" 
                :encabezados="[
                                { text: 'Ente',     value: 'ente.nb_ente' },
                                { text: 'Concepto', value: 'tx_concepto' },
                                { text: 'Monto',    value: 'mo_solicitud' },
                                { text: 'Status',   value: 'status.nb_status' },
                              ]"
                @seleccion="setSolicitud"
            >
            </list-select>

        </v-dialog>

        <v-dialog v-model="dingreso"> 

            <list-select 
                tabla="cuenta" 
                :encabezados="[
                                { text: 'moneda',   value: 'moneda.nb_moneda' },
                                { text: 'Monto',    value: 'mo_disponible' },
                                { text: 'Status',   value: 'status.nb_status' },
                                ]"
                @seleccion="setIngreso"
            >
            </list-select>

        </v-dialog>

        </div>

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
            tabla:       'instruccion',
            categoria:   false,
            dsolicitud:  false,
            dingreso:    false,
            solicitud:   false,
            ingreso:     false,
            instruccion: false,
            listSol:     false,
            form:{
                id_solicitud:    '',
                tx_concepto:     '',
                id_esquema:      '',
                nu_esquema:      '',
                tx_ofi_cta_mte:  '',
                bo_ofi_cta_mte:   0,
                fe_instruccion:  '',
                mo_instruccion:  '',
                id_moneda:       '',
                tx_observaciones:'',
                id_usuario:      '',
                id_status:        1,  
            },
            rules:{
                montoInstruccion: [
                    v => !!v || 'Indique Monto',
                    v => (Number(v) > Number(this.ingreso.mo_disponible)) ? 'Monto mayor al disponible' : true
                   ],
            },
            listas: {
                categoria: [],
                esquema: [],
            }
        }
    },
    computed:{
        tablaCategoria()
        {
            return 'solicitud/categoria/'+this.categoria;
        },
    },
    watch:{
        tx_ofi_cta_mte: function (val) 
        {
            
            this.form.bo_ofi_cta_mte =  (val = '') ? 0 :1;
            
        },
        btnAccion: function (val)
        {
            if( val == 'upd')
            {
                this.categoria = 1;
                this.getSolicitud();
                this.getIngreso();
            }
        },
        categoria: function(val)
        {
          this.solicitud = false;
          this.ingreso   = false;
        }
    },
    filters: {

        formatNumber: function (value) 
        {
            let val = (value/1).toFixed(2).replace('.', ',')
            return val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".")
        }

    },
    methods:
    {
        setSolicitud(item)
        {
            this.dsolicitud = false;
            this.solicitud  = item;
            this.form.id_solicitud = item.id_solicitud
        },
        remSolicitud()
        {
           if(this.btnAccion != 'upd')
           {
                this.solicitud          = false;
                this.form.id_solicitud  = false;
           }
        },
        setIngreso(item)
        {
            this.dingreso = false;
            this.ingreso  = item;
            this.form.id_moneda = item.id_moneda
        },
        remIngreso()
        {
            if(this.btnAccion != 'upd')
            {
                this.ingreso        = false;
                this.form.id_moneda = false;
                
            }
        },
        clear () 
        {
            this.$refs.form.reset()
            this.ingreso  = false;
            this.solicitud      = false;
            this.categoria      = false;
        },
        getSolicitud()
        {
             axios.get('/api/v1/solicitud/'+this.item.id_solicitud)
            .then(respuesta => {

                this.solicitud = respuesta.data;
            })
            .catch(error => {
                this.showError(error)    
            })

        },
        getIngreso()
        {
             axios.get('/api/v1/cuenta/moneda/'+this.item.id_moneda)
            .then(respuesta => {
                
                this.ingreso = respuesta.data;
            })
            .catch(error => {
                this.showError(error)    
            })

        },
        update()
        {
            if (this.$refs.form.validate()) 
            {
                axios.put(this.basePath + this.item.id_instruccion, this.form)
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

<style>

</style>

