export default {
    created() {
        this.items  = this.list();
    },
    data() {

        return {

            basePath: '/api/v1/',
            modal: false,
            selected: [],
            items: '',
            item:  '',
            buscar: '',
            accion: '',
            nb_accion: '',
            dialogo: false,

        }
    },

    methods: {

        cerrarModal(){
            this.modal = false;
            this.item = '';
            this.list();
        },
        insItem () {

            this.nb_accion  = 'Agregar:';
            this.accion     = 'ins';
            this.modal      = true;
            
        },
        updItem (item) {

            this.nb_accion  = 'Editar:';
            this.accion     = 'upd';
            this.modal      = true;
            this.item       = item;
        },
        delForm (item) {

            this.dialogo = true;
            this.item = item;
            
        },
        delCancel () {

            this.dialogo = false;
            
        }
        

   
    }

}
