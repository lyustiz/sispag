export default {
    created() {
              
        this.listasLoader()
        this.basePath += this.tabla + '/'
        this.form.id_usuario = this.$store.getters.user.id
    },
    data() {

        return {

            basePath: '/api/v1/',
            valido: false,
            btnAccion: '',
            picker: false,
            rules: {
                select: [
                    v => !!v || 'Seleccione una Opcion (Campo Requerido)',
                    ],
                requerido: [
                    v => !!v || 'Campo Requerido',
                    ],
                monto: [
                    v => !!v || 'Monto Requerido',
                    ],
                fecha: [
                    v => !!v || 'Fecha Requerida',
                    ],
            }

        }
    },
    props: ['accion','item'],

    watch: {

        accion: function (val) {
            this.btnAccion = val;
            if(val=='upd')
            {
                this.mapForm()
            }else{
                this.clear();
            }
            
        },

        item: function (val) {
            this.mapForm()
        }
    },
    
    methods: {

        listRequests(objListas) {
            
            let peticiones = [];

            for(var lista in objListas) {

                let parametro = (objListas[lista]) ? objListas[lista] : '';

                peticiones.push(axios.get(this.basePath + lista + parametro));

            }

            return axios.all(peticiones)
            
        },

        listasLoader(){

            this.listRequests(this.listas)
            .then(
                
                axios.spread( (...dataLists) => {
                
                    let i = 0;
                    for(var key in this.listas) {
                        this.listas[key] = dataLists[i].data
                        i++;
                    }
                })
            )
            .catch(error =>{
            
                this.showError(error);

            });
        },

        mapForm(){

            if(this.item)
            {
                for(var key in this.item) {

                    if(this.form.hasOwnProperty(key)) {
                        this.form[key] = this.item[key];
                    }
                }
            }else{
                
                this.rstForm()
            }
            
        },

        rstForm(){

            for(var key in this.form) {

                    this.form[key] = '';
            }
            this.form.id_usuario = this.$store.getters.user.id
        },

        clear () {

            this.$refs.form.reset()

        },

        cancel(){

            this.$emit('cerrarModal');
            this.clear();
            

        },
        formatDate (date) {

            if (!date) return null
            const [year, month, day] = date.split('-')
            return `${month}/${day}/${year}`

        }
   
    }

}
