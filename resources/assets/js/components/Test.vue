<template>

    <v-container grid-list-xs>
        
    
   <v-card>
       
       <v-card-title primary-title>
           <div>
               <h3 class="headline mb-0">headline</h3>
               <div>description</div>
           </div>
           
       </v-card-title>
       <v-card-actions>
           <v-btn-toggle v-model="toggle_exclusive" >
              <v-btn flat @click.native="dialogo = true" color="primary">
                Ingresos<v-icon>monetization_on</v-icon>
              </v-btn>
              <v-btn flat @click.native="dialogo2 = true" color="primary">
                Solicitud<v-icon>record_voice_over</v-icon>
              </v-btn>
              <v-btn flat @click.native="dialogo3 = true" color="primary">
                Instruccion<v-icon>how_to_reg</v-icon>
              </v-btn>
            </v-btn-toggle>
       </v-card-actions>

       <v-card-text>
         
         <v-layout row wrap>
             <v-flex xs12 sm4>
                 <v-card v-if="ingreso">
                        <v-toolbar dark color="primary">
                        <v-card-title primary-title primary>
                        Ingreso
                        </v-card-title>
                        <v-spacer></v-spacer>
                        <v-btn icon @click="ingreso=false">
                            <v-icon>clear</v-icon>
                        </v-btn>  
                        </v-toolbar>
                     
                        <v-card-text>
                            <div>{{ingreso}}</div>
                            <v-text-field
                                name="name"
                                v-model="ingreso.moneda.nb_moneda"
                                label="Moneda"
                                readonly
                            ></v-text-field>
                            <v-text-field
                                name="name"
                                v-model="ingreso.mo_cuenta"
                                label="Monto Total"
                                readonly
                            ></v-text-field>
                            <v-text-field
                                name="name"
                                label="Monto Disponible"
                            ></v-text-field>
                            <v-text-field
                                v-model="instruido"
                                name="name"
                                label="Monto Instruccion "
                            ></v-text-field>
                        </v-card-text>
                 </v-card>
             </v-flex>
             <v-flex xs12 sm4>
                 <v-card>
                     <div v-show="solicitud">{{solicitud}}</div>
                 </v-card>
             </v-flex>
             <v-flex xs12 sm4>
                 <v-card>
                     <div v-show="instruccion">{{instruccion}}</div>
                 </v-card>
             </v-flex>
         </v-layout>


       </v-card-text>
       
   </v-card>
    
     <v-dialog v-model="dialogo"> 
        
            <list-select   
                tabla="cuenta" 
                :encabezados="[
                                { text: 'moneda',   value: 'moneda.nb_moneda' },
                                { text: 'Monto',    value: 'mo_cuenta' },
                                { text: 'Status',   value: 'status.nb_status' },
                                ]"
                @seleccion="getIngreso"
            >
            </list-select>
     </v-dialog>
     <v-dialog v-model="dialogo2" > 
             <list-select   
                tabla="solicitud" 
                :encabezados="[
                                { text: 'Ente',     value: 'ente.nb_ente' },
                                { text: 'Monto',    value: 'mo_solicitud' },
                                { text: 'Status',   value: 'status.nb_status' },
                                ]"
                @seleccion="getSolicitud"
            >
            </list-select>

      </v-dialog>
      <v-dialog v-model="dialogo3" > 
             <list-select   
                tabla="moneda" 
                :encabezados="[
                                { text: 'Codigo',   value: 'nb_moneda' },
                                { text: 'Simbolo',    value: 'co_moneda' },
                                { text: 'Status',   value: 'status.nb_status' },
                                ]"
                @seleccion="getInstruccion"
            >
            </list-select>

      </v-dialog>

      </v-container>

</template>

<script>
export default {
    created() {
        
       // this.lista  = this.list();
    },
    data () {
        return {
            dialogo: false,
            dialogo2: false,
            dialogo3: false,
            toggle_exclusive: false,
            ingreso: false,
            solicitud: false,
            instruccion: false
        }
    },
    computed:
    {
        instruido()
        {
            if(this.ingreso)
            {
                let instrucciones = this.ingreso.moneda.instruccion;
                var total = 0;
                instrucciones.forEach(function(item) {
                  total =+ item.mo_instruccion;
                });

                return total;
            }

            return 0;

        }
    },
    methods:
    {
        getIngreso(item){
            this.dialogo = false;
            this.ingreso = item;
        },
        getSolicitud(item){
            this.dialogo2 = false;
            this.solicitud = item;
        },
        getInstruccion(item){
            this.dialogo3 = false;
            this.instruccion = item;
        },

    }
}
</script>

<style>

</style>
