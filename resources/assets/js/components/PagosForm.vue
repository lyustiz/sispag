<template>
    <v-container fluid grid-list-md text-xs-center>

    <lista-pagos></lista-pagos>
        <v-layout row justify-center>
            <v-flex xs11>
                <v-card>
                    
                    <v-card-title class="blue accent-1 white--text">
                        <h2>Ingresos</h2>
                    </v-card-title>
                    
                    <v-card-text>
                    <v-layout wrap>
                            
                            <v-flex xs12>
                               <v-select
                                :items="['Petroleo', 'Oro']"
                                v-model="a1"
                                label="Tipo Ingreso"
                                autocomplete
                                required
                                ></v-select>
                            </v-flex>

                            <v-flex xs12>  
                                <v-select
                                :items="['CUSPA', 'Bandes']"
                                v-model="a1"
                                label="Ente Receptor"
                                autocomplete
                                required
                                ></v-select>
                            </v-flex>

                            <v-flex xs12>  
                                <v-select
                                :items="['Venezuela', 'BVC']"
                                v-model="a1"
                                label="Banco Receptor"
                                autocomplete
                                required
                                ></v-select>
                            </v-flex>

                            <v-flex xs12 sm6>
                                <v-select
                                :items="['EURO', 'DOLARES']"
                                v-model="a1"
                                label="Moneda"
                                autocomplete
                                ></v-select>
                            </v-flex>

                            <v-flex xs12 sm6>
                                <v-text-field
                                    ref="monto"
                                    :rules="[
                                    () => !!address || 'Campo Requerido',
                                    () => !!address && address.length <= 25 || 'Address must be less than 25 characters',
                                    addressCheck
                                    ]"
                                    v-model="monto"
                                    label="Monto Ingreso"
                                    placeholder="Ingrese monto"
                                    hint="Ej 11.045.456,12"
                                    mask="###.###.###,##"
                                    prepend-icon="euro_symbol"
                                    required
                                ></v-text-field>
                            </v-flex>

                             <v-flex xs12 sm6>
                                <v-text-field
                                    ref="monto"
                                    :rules="[
                                    () => !!address || 'Campo Requerido',
                                    () => !!address && address.length <= 25 || 'Address must be less than 25 characters',
                                    addressCheck
                                    ]"
                                    v-model="Tasa"
                                    label="Taza de Cambio"
                                    placeholder="Ingrese Tasa"
                                    hint="Ej 11.045.456,12"
                                    mask="###.###.###,##"
                                    required
                                ></v-text-field>
                            </v-flex>

                            <v-flex xs12 sm6>
                             <v-text-field
                                slot="activator"
                                v-model="dateFormatted"
                                label="Date"
                                hint="MM/DD/YYYY format"
                                persistent-hint
                                prepend-icon="event"
                                @blur="date = parseDate(dateFormatted)"
                            ></v-text-field>
                            <v-date-picker v-model="date" locale="es-ES" no-title @input="menu1 = false"></v-date-picker>
                            </v-flex>    
                    </v-layout>
                    </v-card-text>
                    
                    <v-card-actions>
                        <v-btn
                        :disabled="!valid"
                        @click="submit"
                        >
                        submit
                        </v-btn>
                        <v-btn @click="clear">clear</v-btn>
                    </v-card-actions>
                                        
                </v-card>
            </v-flex>
        </v-layout>
    </v-container>
</template>

<script>
export default {

}
</script>

<style>

</style>
