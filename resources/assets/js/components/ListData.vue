<template>

    <v-card v-if="visible" class="list-data">
    
    <v-toolbar dark color="blue white--text" dense flat>
        <v-card-title primary-title primary>
           <h3> {{ titulo }} </h3>
        </v-card-title>
        <v-spacer></v-spacer>
        <v-btn icon @click="$emit('cerrar')">
            <v-icon>clear</v-icon>
        </v-btn>  
    </v-toolbar>
    
    <v-card-text>
        
         
            
        <v-layout row wrap v-for="(texto, titulo) in items" :key="titulo" >
            
                <v-flex sm4 >
                     <div class="caption text-sm-left">{{titulo}}</div>
                </v-flex>

                <v-flex sm8>
                    <div class="font-weight-light text-sm-left">{{texto}}</div>
                </v-flex>
                
           <slot></slot>
        </v-layout>
    
    </v-card-text>

</v-card>
</template>

<script>
export default {
    props: ['titulo' , 'items', 'visible'],
}
</script>

<style scope>

    .list-data{
        margin-top: 1em;
        margin-bottom: 1em;
    }
    .label{

    }
</style>
