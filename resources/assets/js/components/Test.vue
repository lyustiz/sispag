<template>

    <v-container fluid grid-list-md text-xs-center >
    <v-layout row justify-center>
    <v-flex xs11>   
    <v-toolbar dark color="blue accent-1 white--text">
                <v-card-title >
                INSTRUCCIONES
                </v-card-title>
                <v-spacer></v-spacer>
            </v-toolbar>
   <v-card>
       
       <v-card-title primary-title>
            
           <v-layout row wrap>
               
           
            <v-flex xs12 sm6>
            <v-select
                :items="listas.categorias"
                v-model="categoria"
                item-value="id_categoria"
                item-text="nb_categoria"
                label="Categoria"
            ></v-select>
            </v-flex>

            <v-flex xs12 sm6  v-if="categoria">
                
                <v-tooltip bottom>
                <v-btn slot="activator" icon @click.native="dialogo2 = true"  flat>
                    <v-icon color="primary">record_voice_over</v-icon>
                </v-btn>
                <span>Solicitud</span>
                </v-tooltip>

                <v-tooltip bottom>
                <v-btn slot="activator" icon @click.native="dialogo = true" >
                    <v-icon color="primary">monetization_on</v-icon>
                </v-btn>
                <span>Ingresos</span>
                </v-tooltip>

                <v-tooltip bottom>
                <v-btn slot="activator" icon @click.native="detInstr = true" >
                    <v-icon color="primary">how_to_reg</v-icon>
                </v-btn>
                <span>Instruccion</span>
                </v-tooltip>
               
            </v-flex>
                
            </v-layout>

       </v-card-title>

       

       <v-card-text>
         
         <v-layout row wrap>
             
             <v-flex xs12 sm4>
                 <v-card v-if="solicitud">
                     <v-toolbar dark color="blue accent-1 white--text">
                        <v-card-title primary-title primary>
                        Solicitud
                        </v-card-title>
                        <v-spacer></v-spacer>
                        <v-btn icon @click="solicitud=false">
                            <v-icon>clear</v-icon>
                        </v-btn>  
                        </v-toolbar>
                     
                        <v-card-text>
                            <v-list two-line subheader>
                                <v-list-tile >
                                    <v-list-tile-content>
                                    <v-list-tile-title>Ente Solicitante</v-list-tile-title>
                                    <v-list-tile-sub-title>{{ solicitud.ente.nb_ente }}</v-list-tile-sub-title>
                                    </v-list-tile-content>
                                </v-list-tile>
                                <v-list-tile >
                                    <v-list-tile-content>
                                    <v-list-tile-title>Concepto</v-list-tile-title>
                                    <v-list-tile-sub-title>{{ solicitud.tx_concepto }}</v-list-tile-sub-title>
                                    </v-list-tile-content>
                                </v-list-tile>
                                <v-list-tile >
                                    <v-list-tile-content>
                                    <v-list-tile-title>Moneda Solicitud</v-list-tile-title>
                                    <v-list-tile-sub-title>{{ solicitud.moneda.nb_moneda }}</v-list-tile-sub-title>
                                    </v-list-tile-content>
                                </v-list-tile>
                                <v-list-tile >
                                    <v-list-tile-content>
                                    <v-list-tile-title>Monto Solicitado</v-list-tile-title>
                                    <v-list-tile-sub-title>{{ solicitud.mo_solicitud }} {{ solicitud.moneda.tx_signo }}</v-list-tile-sub-title>
                                    </v-list-tile-content>
                                </v-list-tile>
                                <v-list-tile>
                                    <v-list-tile-content>
                                    <v-list-tile-title>Fecha Solicitud</v-list-tile-title>
                                    <v-list-tile-sub-title>{{ solicitud.fe_solicitud }}</v-list-tile-sub-title>
                                    </v-list-tile-content>
                                </v-list-tile>
                            </v-list>
                        </v-card-text>
                 </v-card>
             </v-flex>
             <v-flex xs12 sm4>
                 <v-card v-if="ingreso">
                        <v-toolbar dark color="blue accent-1 white--text">
                        <v-card-title primary-title primary>
                        Ingreso
                        </v-card-title>
                        <v-spacer></v-spacer>
                        <v-btn icon @click="ingreso=false">
                            <v-icon>clear</v-icon>
                        </v-btn>  
                        </v-toolbar>
                        
                        <v-card-text>
                        <v-list two-line subheader>
                            <v-list-tile >
                                <v-list-tile-content>
                                <v-list-tile-title>Moneda</v-list-tile-title>
                                <v-list-tile-sub-title>{{cuenta.moneda}}</v-list-tile-sub-title>
                                </v-list-tile-content>
                            </v-list-tile>
                            <v-list-tile >
                                <v-list-tile-content>
                                <v-list-tile-title>Monto Total</v-list-tile-title>
                                <v-list-tile-sub-title>{{ cuenta.total }} {{cuenta.monSig}}</v-list-tile-sub-title>
                                </v-list-tile-content>
                            </v-list-tile>
                            <v-list-tile >
                                <v-list-tile-content>
                                <v-list-tile-title>Monto Instruido</v-list-tile-title>
                                <v-list-tile-sub-title>{{ cuenta.instruido }} {{cuenta.monSig}}</v-list-tile-sub-title>
                                </v-list-tile-content>
                            </v-list-tile>
                            <v-list-tile>
                                <v-list-tile-content>
                                <v-list-tile-title>Monto Disponible</v-list-tile-title>
                                <v-list-tile-sub-title>{{ cuenta.disponible }} {{cuenta.monSig}}</v-list-tile-sub-title>
                                </v-list-tile-content>
                            </v-list-tile>
                        </v-list>
                            <v-text-field
                                v-model="instruccion"
                                name="name"
                                label="Monto Instuccion"
                            ></v-text-field>
                        </v-card-text>
                 </v-card>
             </v-flex>
             <v-flex xs12 sm4>
                 <v-card v-if="detInstr">

                     <v-toolbar dark color="blue accent-1 white--text">
                        <v-card-title primary-title primary>
                        Detalle Instruccion
                        </v-card-title>
                        <v-spacer></v-spacer>
                        <v-btn icon @click="detInstr=false">
                            <v-icon>clear</v-icon>
                        </v-btn>  
                        </v-toolbar>
                    <v-card-text>
                         
                    
                    <v-select
                        :items="listas.esquemas"
                        v-model="esquema"
                        item-value="id_esquema"
                        item-text="nb_esquema"
                        label="Esquema de Pago"
                    ></v-select>
                    <v-text-field
                        v-model="instruccion"
                        name="name"
                        label="Nro Esquema de Pago"
                    ></v-text-field>
                    <v-text-field
                        v-model="instruccion"
                        name="name"
                        label="Oficio Cuenta Mandante"
                    ></v-text-field>
                    <v-text-field
                        v-model="instruccion"
                        name="name"
                        label="Fecha Instruccion"
                    ></v-text-field>
                    <v-text-field
                        v-model="instruccion"
                        name="name"
                        label="Monto Instuccion"
                    ></v-text-field>
                </v-card-text>
                </v-card>
             </v-flex>
         </v-layout>


       </v-card-text>
       
   </v-card >
    <div v-if="categoria">
     <v-dialog v-model="dialogo"> 
        
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
     <v-dialog v-model="dialogo2" > 
             <list-select   
                :tabla="tablaCategoria" 
                :encabezados="[
                                { text: 'Ente',     value: 'ente.nb_ente' },
                                { text: 'Concepto',     value: 'tx_concepto' },
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
      <instruccion-lista :titulo="false"></instruccion-lista>
      </v-container>

      

</template>

<script>

import withSnackbar from './mixins/withSnackbar'

export default {
    mixins: [withSnackbar],
    created() {
        
       this.listCategoria();
      // this.listSolicitud();
       this.listEsquema();
    },
    data () {
        return {
            dialogo:    false,
            dialogo2:   false,
            dialogo3:   false,
            ingreso:    false,
            solicitud:  false,
            detInstr: false,
            instruccion: '',
            categoria:  false,
            esquema:    false,
            listas: {
                categorias: [],
                esquemas: [],
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
        }
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
        listCategoria(){
             axios.get('/api/v1/categoria')
            .then(respuesta => {
            
                this.listas.categorias = respuesta.data;
            })
            .catch(error => {
                this.showError(error)    
            })
        },
         listSolicitud(){
             axios.get('/api/v1/solicitud/categoria/1')
            .then(respuesta => {

                console.log(respuesta.data);
            })
            .catch(error => {
                this.showError(error)    
            })
        },
        listEsquema(){
             axios.get('/api/v1/esquema')
            .then(respuesta => {

                this.listas.esquemas = respuesta.data;
            })
            .catch(error => {
                this.showError(error)    
            })
        }
    }
}
</script>

<style>

</style>
