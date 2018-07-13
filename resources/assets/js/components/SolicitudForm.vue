<template>

    <v-container fluid grid-list-md text-xs-center>
    <v-layout row justify-center>
    <v-flex xs12>
        <v-form ref="form" v-model="valido" lazy-validation>
        <v-card>
            
        <v-card-title class="light-blue darken-3 white--text">
            <h2>Solicitud</h2>
        </v-card-title>
        
        <v-card-text>
        <v-layout wrap>

            <v-flex xs12>  
                <v-select
                :items="listas.ente"
                item-text="nb_ente"
                item-value="id_ente"
                v-model="form.id_ente"
                label="Ente Solicitante"
                :rules="rules.select"
                autocomplete
                required
                ></v-select>
            </v-flex>

            <v-flex xs12 sm6>
                <v-text-field
                v-model="form.nu_solicitud"
                :rules="rules.requerido"
                label="Numero Solicitud"
                placeholder="Ingrese Numero de la Solicitud"
                hint="Ej MPPEF-01-2018"
                required
                ></v-text-field>
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
                v-model="dates.fe_solicitud"
                :rules="rules.fecha"
                label="Fecha de la Solicitud"
                prepend-icon="event"
                readonly
                required
                ></v-text-field>
                <v-date-picker 
                v-model="form.fe_solicitud" 
                locale="es" 
                @input="dates.fe_solicitud = formatDate( form.fe_solicitud )">
                </v-date-picker>
            </v-menu>
            </v-flex>
            
            <v-flex xs12>
                <v-text-field
                v-model="form.tx_concepto"
                :rules="rules.requerido"
                label="Concepto de la Solicitud"
                placeholder="Ingrese Descripcion"
                required
                ></v-text-field>
            </v-flex>
            
            <v-flex xs12 sm6>
                <v-text-field
                v-model="form.mo_solicitud"
                :rules="rules.monto"
                label="Monto Solicitud"
                placeholder="Ingrese monto"
                hint="Ej 845.456,12"
                required
                ></v-text-field>
            </v-flex>

            <v-flex xs12 sm6>
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
            
            <v-flex xs12 sm6>  
                <v-select
                :items="listas.categoria"
                item-text="nb_categoria"
                item-value="id_categoria"
                v-model="form.id_categoria"
                :rules="rules.select"
                label="Categoria de la Solicitud"
                autocomplete
                required
                ></v-select>
            </v-flex>

            <v-flex xs12 sm6>  
                <v-select
                :items="listas.status"
                item-text="nb_status"
                item-value="id_status"
                v-model="form.id_status"
                :rules="rules.select"
                label="Status de la Solicitud"
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
            tabla: 'solicitud',
            form:{
                id_solicitud:     '',
                nu_solicitud:     '',
                tx_concepto:      '',
                mo_solicitud:     '',
                fe_solicitud:     '',
                id_ente:          '',
                id_moneda:        '',
                id_categoria:     '',
                tx_observaciones: '',
                id_usuario:       '',
                id_status:        ''
            },
            listas:{
                ente:        ['/grupo/4'],
                moneda:      [],
                categoria:   [],
                status:      ['/grupo/2'],
            },            
        }
    },
    methods:{

        update(){

            if (this.$refs.form.validate())
            { 
                axios.put(this.basePath + this.item.id_solicitud, this.form)
                .then(respuesta => {
                    this.showMessage(respuesta.data.msj)
                })
                .catch(error => {
                    this.showError(error);
                })
            } 
        },
        store(){
                        
            if (this.$refs.form.validate()) 
            { 
                axios.post(this.basePath, this.form)
                .then(respuesta => {
                    this.showMessage(respuesta.data.msj)
                    this.cancel();
                })
                .catch(error => {
                    this.showError(error);
                })
            }
            
        }
    }
    
}

</script>
