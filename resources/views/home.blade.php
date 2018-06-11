@extends('layouts.app')

@section('content')

 <v-container fluid grid-list-md text-xs-center>

    <v-layout row justify-center>

        <v-flex xs12 sm3 >
               <v-layout row>
                <v-card>

                    <v-flex flat xs12>
                        <v-card dark color="blue">
                            <v-card-text class="text-xs-center">
                                <v-icon x-large>euro_symbol</v-icon>
                            </v-card-text>
                        </v-card>
                    </v-flex>

                    <v-flex flat xs12>
                        <v-card color="">
                            <v-card-text>

                            <v-list-tile >

                                <v-list-tile-content>
                                    <v-list-tile-title>Ingreso Euros</v-list-tile-title>
                                    <v-list-tile-sub-title>3.000.543,00</v-list-tile-sub-title>
                                </v-list-tile-content>

                            </v-list-tile>

                            </v-card-text>
                        </v-card>
                    </v-flex>
               </v-layout>
               </v-card>
        </v-flex>

        <v-flex xs12 sm3>
            <v-layout col>
            <v-card>
                    <v-flex flat xs12>
                        <v-card dark tile color="red">
                            <v-card-text class="text-xs-center">
                                <v-icon x-large>attach_money</v-icon>
                            </v-card-text>
                        </v-card>
                    </v-flex>

                    <v-flex  flat xs12>
                        <v-card tile color="">
                            <v-card-text>

                            <v-list-tile >

                                <v-list-tile-content>
                                    <v-list-tile-title>Ingreso Dolar</v-list-tile-title>
                                    <v-list-tile-sub-title>3.000.543,00</v-list-tile-sub-title>
                                </v-list-tile-content>

                            </v-list-tile>

                            </v-card-text>
                        </v-card>
                    </v-flex>
               </v-card>
               </v-layout>
        </v-flex>

        <v-flex xs12 sm3>
            <v-layout col>
            <v-card>
                    <v-flex flat xs12>
                        <v-card dark color="green">
                            <v-card-text class="text-xs-center">
                                <v-icon x-large>shop_two</v-icon>
                            </v-card-text>
                        </v-card>
                    </v-flex>

                    <v-flex  flat xs12>
                        <v-card color="">
                            <v-card-text>

                            <v-list-tile>

                                <v-list-tile-content>
                                    <v-list-tile-title>Otros Ingreso</v-list-tile-title>
                                    <v-list-tile-sub-title>3.000.543,00</v-list-tile-sub-title>
                                </v-list-tile-content>

                            </v-list-tile>

                            </v-card-text>
                        </v-card>
                    </v-flex>
            </v-card>
            </v-layout>
        </v-flex>

        <v-flex xs12 sm3>
            <v-layout col>
            <v-card>
                    <v-flex flat xs12>
                        <v-card dark color="orange">
                            <v-card-text class="text-xs-center">
                                <v-icon x-large>account_balance</v-icon>
                            </v-card-text>
                        </v-card>
                    </v-flex>

                    <v-flex  flat xs12>
                        <v-card color="">
                            <v-card-text>

                            <v-list-tile>

                                <v-list-tile-content>
                                    <v-list-tile-title>Total Ingresos </v-list-tile-title>
                                    <v-list-tile-sub-title>3.000.543,00</v-list-tile-sub-title>
                                </v-list-tile-content>

                            </v-list-tile>

                            </v-card-text>
                        </v-card>
                    </v-flex>
            </v-card>
            </v-layout>
        </v-flex>

        </v-layout>  
</v-container>        
@endsection

