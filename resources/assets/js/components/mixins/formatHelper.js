export default {
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
            let val = (value/1).toFixed(2).replace('.', ',')
            return val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".")
        }

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

            date = date.substr(0,10)
            const [year, month, day] = date.split('-')

            return `${day}/${month}/${year}`
        },
    }

}
