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
            date: '',
            menu: false

        }
    },

    computed: {
        computedDateFormatted () {
          return this.formatDate(this.date)
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
                
                this.rstForm
            }
            
        },

        rstForm(){

            for(var key in this.form) {

                    this.form[key] = '';
            }
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

        },
        parseDate (date) {

            if (!date) return null
            const [month, day, year] = date.split('/')
            return `${year}-${month.padStart(2, '0')}-${day.padStart(2, '0')}`

        },
   
    }

}
