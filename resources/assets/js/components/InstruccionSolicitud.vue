<template>
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
                <v-list-tile  >
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
</template>

<script>
export default {
props
}
</script>

<style>

</style>
