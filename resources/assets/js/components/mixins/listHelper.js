export default {
    created() {
        this.items  = this.list();
    },
    data() {

        return {

            basePath: '/api/v1/',
            id_usuario: this.$store.getters.user.id_usuario,
            IsLoading: true,
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
    filters: {

        formDate: function (value) {

            if (!value) return ''
            value = value.toString();
            return value.substr(8, 2)+'/'+value.substr(5, 2)+'/'+value.substr(0, 4);
        },
        formatDateTime: function (value) {

            if (!value) return ''
            value = value.toString();
            return value.substr(8, 2)+'/'+value.substr(5, 2)+'/'+value.substr(0, 4)+' '+value.substr(12, 10);
        },
        formatNumber: function (value) 
        {
            let val = (value/1).toFixed(3).replace('.', ',')
            return val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".")
        },
        formatTasa: function(value)
        {
            return (value/1).toString().replace('.', ',');
        },
               

    },
    methods: {
        formatNumber: function (value) 
        {
            let val = (value/1).toFixed(2).replace('.', ',')
            return val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".")
        },
        formatDate (date) 
        { 
            if (!date) return null
    
            const [year, month, day] = date.split('-')
            return `${day}/${month}/${year}`
        },
        formatTasa: function(value)
        {
            return (value/1).toString().replace('.', ',');
        },
        cerrarModal(){
            this.modal  = false;
            this.item   = '';
            this.list();
            this.accion = false;
        },
        insItem () {

            this.item = '';
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
