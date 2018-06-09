@extends('layouts.app')

@section('content')

    <v-container fluid grid-list-md text-xs-center>
        <v-layout row wrap>
            <v-flex xs12>
                <v-card>
                    <v-card-title class="blue accent-1 white--text"><h2>Formulario Prueba</h2></v-card-title>
                    <v-card-text>
                    <v-layout row>
                    <v-flex xs12>
                        <v-form ref="form" v-model="valid" lazy-validation>
                            <v-text-field
                            v-model="name"
                            :rules="[v => !!v || 'Nombre es requerido']"
                            :counter="10"
                            label="Name"
                            required
                            ></v-text-field>
                            <v-text-field
                            v-model="email"
                            :rules="[v => !!v || 'Email es requerido']"
                            label="E-mail"
                            required
                            ></v-text-field>
                            <v-select
                            v-model="select"
                            :items="items"
                            :rules="[v => !!v || 'Item es requerido']"
                            label="Item"
                            required
                            ></v-select>
                            <v-checkbox
                            v-model="checkbox"
                            :rules="[v => !!v || 'Debes seleccionar para continuar']"
                            label="Do you agree?"
                            required
                            ></v-checkbox>

                            <v-btn
                            :disabled="!valid"
                            @click="submit"
                            >
                            submit
                            </v-btn>
                            <v-btn @click="clear">clear</v-btn>
                        </v-form>
                        </v-flex>
                        </v-layout>
                    </v-card-text>
                </v-card>
            </v-flex>
        </v-layout>
    </v-container>

@endsection
