@extends('layouts.app')

@section('content')

    <v-container fluid grid-list-md text-xs-center>

        <test   tabla="banco" 
                :encabezados="[
                               { text: 'Nombre',   value: 'nb_banco' },
                               { text: 'Tipo',     value: 'tipo_banco.nb_tipo_banco' },
                               { text: 'Status',   value: 'id_status' }
                              ]"
                @seleccionar="true"
        >
        </test>

    </v-container>

@endsection