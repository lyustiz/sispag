<template>
<div>
    <div v-if="btnAccion=='upd'">

        <v-tooltip bottom>
            <v-btn slot="activator" fab small @click="update" :disabled="!valido"  class="warning">
                <v-icon>edit</v-icon>
            </v-btn>
        <span>Editar</span>
        </v-tooltip>

    </div>

    <div v-else>
        <v-tooltip bottom>
            <v-btn slot="activator" fab small @click="store" :disabled="!valido"  class="success">
                <v-icon>save_alt</v-icon>
            </v-btn>
        <span>Guardar</span>
        </v-tooltip>


        <v-tooltip bottom>
            <v-btn  slot="activator" fab small @click="clear"  class="info">
                <v-icon>refresh</v-icon>
            </v-btn>
        <span>Limpiar</span>
        </v-tooltip>
    </div>

    <v-tooltip bottom>
        <v-btn slot="activator" fab small @click="cancel"  class="error">
            <v-icon>close</v-icon>
        </v-btn>
    <span>Cancelar</span>
    </v-tooltip>
</div>
</template>

<script>
export default {
 data () {
        return {
            tabla: 'banco',
        }
    },

    props: ['btnAccion', 'valido'],

    methods:{
        
        update(){
           this.$emit('update'); 
        },
        store(){
            this.$emit('store'); 
        },
        clear(){
            this.$emit('clear'); 
        },
        cancel(){
            this.$emit('cancel'); 
        }
    }
}
</script>

<style>

</style>
