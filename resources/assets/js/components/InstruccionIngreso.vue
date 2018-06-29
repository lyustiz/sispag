<template>
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
</template>

<script>
export default {

}
</script>

<style>

</style>
