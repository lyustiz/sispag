export default {
    created() {
              
        this.listasLoader()
        this.rstForm();
        this.basePath += this.tabla 
        this.form.id_usuario = this.$store.getters.user.id_usuario;

    },
    data() {

        return {

            basePath: '/api/v1/',
            id_usuario: this.$store.getters.user.id_usuario,
            valido: false,
            btnAccion: '',
            picker: false,
            dates: {},
            moneda:{
                default: {
                            decimal: ',',
                            thousands: '.',
                            precision: 2,
                            masked: true /* doesn't work with directive */
                },
                tasa:{
                            decimal: ',',
                            thousands: '.',
                            precision: 4,
                            masked: true /* doesn't work with directive */
                }
            },
            rules: {
                select: [
                    v => !!v || 'Seleccione una Opcion (Campo Requerido)',
                    ],
                requerido: [
                    v => !!v || 'Campo Requerido',
                    ],
                monto: [
                    v => !!v || 'Monto Requerido',
                    v => {
                        let valor = true 
                        let monto = 0
                        if(v)
                        {
                            monto = Number(v.replace('.','').replace(',','.'));
                            valor = (isNaN(monto) || monto == 0)
                                    ? `Monto no Valido` 
                                    : true;
                        }
                        return valor;
                    }
                   ],
                fecha: [
                    v => !!v || 'Fecha Requerida',
                    ],
            }
            

        }
    },
    props: ['accion','item'],

    watch: {

        accion: function (val) 
        {
            this.btnAccion = val;

            if(val=='upd')
            {
                this.mapForm();
                
            }else
            {
                this.clear();
            } 
            
        },

        item: function (val) {
            this.mapForm()
        }
    },
    filters: {

        formDate: function (value) {

            if (!date) return null
            const [year, month, day] = date.split('-')
            return `${day}/${month}/${year}`
        },
        formatNumber: function (value) 
        {
            let val = (value/1).toFixed(2).replace('.', ',')
            return val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".")
        }

    },
    methods: {
        formatDate (date) 
        { 
            if (!date) return null
    
            const [year, month, day] = date.split('-')
            return `${day}/${month}/${year}`
        },
        formatNumber: function (value) 
        {
            let val = (value/1).toFixed(2).replace('.', ',')
            return val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".")
        },
        listRequests(objListas) 
        {
            let peticiones = [];

            for(var lista in objListas) 
            {
                let parametro = (objListas[lista]) ? objListas[lista] : '';

                peticiones.push(axios.get(this.basePath + lista + parametro));
            }

            return axios.all(peticiones)
            
        },

        listasLoader()
        {
            this.listRequests(this.listas)
            .then(
                
                axios.spread( (...dataLists) => 
                {
                    let i = 0;
                    for(var key in this.listas) 
                    {
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
                        
                        if(key.substr(0, 2) == 'fe')
                        {
                            this.dates[key] =  this.formatDate(this.item[key]);
                        }
                        this.form[key]  =  this.item[key];
                    }
                }
            }else{
                
                this.rstForm()
            }
            
        },

        rstForm(){
            for(var key in this.form) {

                this.form[key] = null;
            }
            for(var key in this.dates) {

                this.dates[key] = null;
            }
            this.form.id_usuario = this.$store.getters.user.id_usuario
        },

        clear () {

            this.$refs.form.reset();
            this.rstForm();

        },

        cancel(){

            this.$emit('cerrarModal');
            this.clear();

        },
   
    }

}
