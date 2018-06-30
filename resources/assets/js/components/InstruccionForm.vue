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
            
            <v-flex xs12 sm6>
                <v-select
                    :items="listas.categoria"
                    item-value="id_categoria"
                    item-text="nb_categoria"
                    v-model="categoria"
                    label="Categoria"
                ></v-select>
            </v-flex>

        <v-flex xs12 sm6 v-if="categoria">
            
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
                        name="name"
                        label="Monto de la Instuccion"
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
                        v-model="form.tx_ofi_cta_mdte"
                        name="name"
                        label="Oficio Cuenta Mandante"
                    ></v-text-field>

                    <v-flex>
                    <v-menu
                        ref="menu"
                        :close-on-content-click="false"
                        v-model="menu"
                        :nudge-right="40"
                        :return-value.sync="date"
                        lazy
                        transition="scale-transition"
                        offset-y
                        full-width
                        locale="es_ES"
                        min-width="290px"
                    >
                        <v-text-field
                        slot="activator"
                        v-model="form.fe_instruccion"
                        label="Seleccione Fecha"
                        prepend-icon="event"
                        readonly
                        required
                        ></v-text-field>
                        <v-date-picker v-model="form.fe_instruccion" @input="$refs.menu.save(date)"></v-date-picker>
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
   <pre>{{$data}}</pre>

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
            form:{
                id_solicitud:   '',
                tx_concepto:    '',
                id_esquema:     '',
                nu_esquema:     '',
                tx_ofi_cta_mte: '',
                bo_ofi_cta_mte: 0,
                fe_instruccion: '',
                mo_instruccion: '',
                id_moneda:      '',
                tx_observaciones: '',
                id_usuario:     '',
                id_status:      1,  
            },
            rules:{

            },
            listas: {
                categoria: [],
                esquema: [],
            }
        }
    },
    computed:{
        tablaCategoria(){
            return 'solicitud/categoria/'+this.categoria;
        },
    },
    watch:{
        tx_ofi_cta_mte: function (val) {
            
            this.form.bo_ofi_cta_mte =  (val = '') ? 0 :1;
            
        },
    },
    methods:
    {
        setSolicitud(item){

            this.dsolicitud = false;
            this.solicitud  = item;
            this.form.id_solicitud = item.id_solicitud
        },
        remSolicitud()
        {
            this.solicitud  = false;
            this.form.id_solicitud = false;
        },
        setIngreso(item)
        {
            this.dingreso = false;
            this.ingreso  = item;
            this.form.id_moneda = item.id_moneda
        },
        remIngreso(){
            this.ingreso  = false;
            this.form.id_moneda = false;
        },
        setMontos(){

            if(this.ingreso)
            {
                let instrucciones   = this.ingreso.moneda.instruccion;

                this.cuenta.moneda  = this.ingreso.moneda.nb_moneda;
                this.cuenta.monSig  = this.ingreso.moneda.tx_signo;
                this.cuenta.total   = this.ingreso.mo_disponible;

                let instruido = 0
                instrucciones.forEach(function(item) {
                   
                     instruido=+ item.mo_instruccion;
                });
                this.cuenta.instruido   = instruido;
                this.cuenta. disponible = this.cuenta.total  - instruido;

            }else{

                this.cuenta.moneda      = false;
                this.cuenta.total       = 0;
                this.cuenta.instruido   = 0;
                this.cuenta.disponible  = 0;
            }
        },
         listSolicitud(){
             axios.get('/api/v1/solicitud/categoria/'+ this.categoria)
            .then(respuesta => {

                console.log(respuesta.data);
            })
            .catch(error => {
                this.showError(error)    
            })
        },
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

<style>

</style>

