<template>
    <v-speed-dial right direction="left">

        <v-btn slot="activator" color="info" dark small fab>
            <v-icon>settings</v-icon>
            <v-icon>close</v-icon>
        </v-btn>

        <v-tooltip top>
        <v-btn slot="activator" fab dark small color="error" @click="eliminar">
            <v-icon>delete</v-icon>
        </v-btn>
        <span>Eliminar</span>
        </v-tooltip>

        <v-tooltip top>
        <v-btn slot="activator" fab dark small color="warning" @click="editar">
            <v-icon>edit</v-icon>
        </v-btn>
        <span>Editar</span>
        </v-tooltip>

    </v-speed-dial>
</template>

<script>
export default {
    methods:
    {
        editar()
        {
            this.$emit('editar',this.item); 
        },
        eliminar()
        {
            this.$emit('eliminar',this.item); 
        },
    }
}
</script>
