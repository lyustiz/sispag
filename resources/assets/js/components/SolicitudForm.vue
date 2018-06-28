<template>

    <v-container fluid grid-list-md text-xs-center>
    <v-layout row justify-center>
    <v-flex xs12>
        <v-form ref="form" v-model="valido" lazy-validation>
        <v-card>
            
        <v-card-title class="red accent-1 white--text">
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
                :rules="rules.nu_solicitud"
                label="Numero Solicitud"
                placeholder="Ingrese Numero de la Solicitud"
                hint="Ej MPPEF-01-2018"
                required
                ></v-text-field>
            </v-flex>

            <v-flex xs12 sm6>
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
                locale="es"
                min-width="290px"
            >
                <v-text-field
                slot="activator"
                v-model="form.fe_solicitud"
                :rules="rules.fe_solicitud"
                label="Fecha de la Solicitud"
                prepend-icon="event"
                readonly
                required
                ></v-text-field>
                <v-date-picker v-model="form.fe_solicitud" @input="$refs.menu1.save(date)"></v-date-picker>
            </v-menu>
            </v-flex>
            
            <v-flex xs12>
                <v-text-field
                v-model="form.tx_concepto"
                :rules="rules.tx_concepto"
                label="Concepto de la Solicitud"
                placeholder="Ingrese Descripcion"
                required
                ></v-text-field>
            </v-flex>
            
            <v-flex xs12 sm6>
                <v-text-field
                v-model="form.mo_solicitud"
                :rules="rules.mo_solicitud"
                label="Monto Solicitud"
                placeholder="Ingrese monto"
                hint="Ej 845.456,12"
                required
                ></v-text-field>
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
            date: '',
            dateFormatted: '',
            menu1: false,
            form:{
                id_solicitud:   '',
                nu_solicitud:   '',
                tx_concepto:    '',
                mo_solicitud:   '',
                fe_solicitud:   '',
                id_ente:        '',
                id_moneda:      '',
                id_categoria:   '',
                tx_observacion: '',
                id_usuario:     '',
                id_status:      ''
            },
            listas:{
                ente:        ['/grupo/4'],
                moneda:      [],
                categoria:   [],
                status:      ['/grupo/1'],
            },
            rules:{
                mo_solicitud: [
                    v => !!v || 'Campo Requerido',
                    ],
                nu_solicitud: [
                    v => !!v || 'Campo Requerido',
                    () => true
                    ], 
                fe_solicitud: [
                    v => !!v || 'Campo Requerido',
                    () => true
                    ], 
                tx_concepto: [
                    v => !!v || 'Campo Requerido',
                    () => true
                    ], 
                select: [
                    v => !!v || 'Seleccione una Opcion (Opcion Requerida)',
                    ], 
            }
            
        }
    },
    watch: {
        date (val) {
            this.dateFormatted = this.formatDate(this.date)
        },
    },
    methods:{
        update(){
                       
            axios.put(this.basePath + this.item.id_solicitud, this.form)
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
