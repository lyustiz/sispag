@extends('layouts.app')
@section('content')

<v-container fluid grid-list-md text-xs-center>
  <home></home>
</v-container>
<?php 
   print_r(json_encode($menu) );
?>
@endsection
