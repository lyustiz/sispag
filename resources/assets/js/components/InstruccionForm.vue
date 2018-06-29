<template>

    <v-container fluid grid-list-md text-xs-center >
    <v-layout row justify-center>
    <v-flex xs12>   
        
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
            <v-btn slot="activator" fab small color="success" @click.native="dingreso = true" >
                <v-icon >record_voice_over</v-icon>
            </v-btn>
            <span>Solicitud</span>
            </v-tooltip>

            <v-tooltip bottom>
            <v-btn slot="activator" fab small color="warning" @click.native="dsolicitud = true" >
                <v-icon>monetization_on</v-icon>
            </v-btn>
            <span>Ingresos</span>
            </v-tooltip>
            
        </v-flex>
            
        </v-layout>


         <v-layout row wrap>
             
            <v-flex xs12 sm4>
                <list-data 
                titulo="Solicitud" 
                :items="{ 
                          'Ente Solicitante': 'dolar',
                          'Concepto'        : '123444',
                          'Moneda Solicitud': '11233',
                          'Monto Solicitado': '23444',
                          'Fecha Solicitud' : '23444',
                        }" 
                :visible="ingreso" >
                </list-data >
            </v-flex>

            <v-flex xs12 sm4>

                <list-data 
                titulo="Ingreso" 
                :items="{ 
                          'Moneda'          : 'dolar',
                          'Monto Total'     : '123444',
                          'Monto Instruido' : '11233',
                          'Monto Disponible': '23444',
                        }" 
                :visible="solicitud">
                
                    <v-list-tile>
                        <v-text-field
                        v-model="ingreso"
                        name="name"
                        label="Monto de la Instuccion"
                        ></v-text-field>
                    </v-list-tile>

                </list-data >

            </v-flex>


            <v-flex xs12 sm4>

                <list-data 
                titulo="Detalle Instruccion" 
                :items="{}" 
                :visible="solicitud">
       
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
                        v-model="form.nu_esquemq_pag"
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
                        ref="menu1"
                        :close-on-content-click="false"
                        v-model="menu1"
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
                        <v-date-picker v-model="form.fe_instruccion" @input="$refs.menu1.save(date)"></v-date-picker>
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
       
   </v-card >

    <div v-if="categoria">

        <v-dialog v-model="dingreso"> 

            <list-select   
                tabla="cuenta" 
                :encabezados="[
                                { text: 'moneda',   value: 'moneda.nb_moneda' },
                                { text: 'Monto',    value: 'mo_disponible' },
                                { text: 'Status',   value: 'status.nb_status' },
                                ]"
                @seleccion="getIngreso"
            >
            </list-select>

        </v-dialog>

        <v-dialog v-model="dsolicitud" > 

            <list-select   
                :tabla="tablaCategoria" 
                :encabezados="[
                                { text: 'Ente',     value: 'ente.nb_ente' },
                                { text: 'Concepto', value: 'tx_concepto' },
                                { text: 'Monto',    value: 'mo_solicitud' },
                                { text: 'Status',   value: 'status.nb_status' },
                                ]"
                @seleccion="getSolicitud"
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
            categoria:  false,
            dingreso:   false,
            dsolicitud: false,
            ingreso:    false,
            solicitud:  false,
            menu1:      false,
            date: '',
            form:{
                id_solicitud:   '',
                tx_concepto:    '',
                id_esquema:     '',
                nu_esquema:     '',
                tx_ofi_cta_mte: '',
                bo_ofi_cta_mte: '',
                fe_instruccion: '',
                mo_instruccion: '',
                id_moneda:      '',
                tx_observacion: '',
                id_usuario:     '',
                id_status:      '',  
            },
            rules:{

            },
            instruccion: '',
            esquema:    false,
            listas: {
                categoria: [],
                esquema: [],
            },
            cuenta:{
                moneda: '',
                monSig: '',
                total: 0,
                instruido: 0,
                disponible: 0
            }
        }


    },
    computed:{
        tablaCategoria(){
            return 'solicitud/categoria/'+this.categoria;
        },
    },
    methods:
    {
        getIngreso(item){
            this.dialogo = false;
            this.ingreso = item;
            this.setMontos()
        },
        getSolicitud(item){
            this.dialogo2 = false;
            this.solicitud = item;
        },
        getInstruccion(item){
            this.dialogo3 = false;
            this.instruccion = item;
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
                this.cuenta.disponible = 0;
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
    }
}
</script>

<style>

</style>

