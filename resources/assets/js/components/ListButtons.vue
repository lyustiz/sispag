<template><v-layout row justify-center>

    <v-speed-dial direction="left">
        
        <v-btn slot="activator" :color="color" dark small fab>
            <v-icon>{{icono}}</v-icon>
            <v-icon>close</v-icon>
        </v-btn>

        <v-tooltip top v-if="del">
        <v-btn slot="activator" fab dark small color="error" @click="eliminar">
            <v-icon>delete</v-icon>
        </v-btn>
        <span>Eliminar</span>
        </v-tooltip>

        <v-tooltip top v-if="upd">
        <v-btn slot="activator" fab dark small color="warning" @click="editar">
            <v-icon>edit</v-icon>
        </v-btn>
        <span>Editar</span>
        </v-tooltip>

        <slot></slot>
            
    </v-speed-dial></v-layout>
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
    },
    props:{
        upd: {
        type: Boolean,
        default: true
        },
        del: {
        type: Boolean,
        default: true
        },
        icono:{
        type: String, 
        default: 'settings'  
        },
        color:{
        type: String,
        default: 'info'
        }
        
        

    }
}
</script>
