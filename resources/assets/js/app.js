
require('./bootstrap');

window.Vue = require('vue');

Vue.component('form-buttons', require('./components/FormButtons.vue'));
Vue.component('list-buttons', require('./components/ListButtons.vue'));
Vue.component('dialogo', require('./components/Dialogo.vue'));
Vue.component('form-container', require('./components/FormContainer.vue'));
Vue.component('list-select', require('./components/ListSelect.vue'));
Vue.component('list-data', require('./components/ListData.vue'));
Vue.component('snackbar', require('./components/SnackBarComponent.vue'));

Vue.component('v-autonumeric', require('./components/VAutonumeric.vue'));
Vue.component('currency-field', require('./components/CurrencyField.vue'));

Vue.component('report', require('./components/reports/Report.vue'));
Vue.component('report-data', require('./components/reports/ReportData.vue'));

Vue.component('login-button', require('./components/LoginButtonComponent.vue'));
Vue.component('remember-password', require('./components/RememberPasswordComponent.vue'));
Vue.component('reset-password', require('./components/ResetPasswordComponent.vue'));

Vue.component('usuario-lista', require('./components/UsuarioLista.vue'));
Vue.component('usuario-form', require('./components/UsuarioForm.vue'));
Vue.component('usuario-password', require('./components/UsuarioPassword.vue'));


Vue.component('cuenta-lista', require('./components/CuentaLista.vue'));
Vue.component('movimiento-lista', require('./components/MovimientoLista.vue'));

Vue.component('pago-det', require('./components/PagoDet.vue'));
Vue.component('pago-lista', require('./components/PagoLista.vue'));
Vue.component('pago-form', require('./components/PagoForm.vue'));
Vue.component('banco-lista', require('./components/BancoLista.vue'));
Vue.component('banco-form', require('./components/BancoForm.vue'));
Vue.component('ingreso-lista', require('./components/IngresoLista.vue'));
Vue.component('ingreso-form', require('./components/IngresoForm.vue'));
Vue.component('solicitud-lista', require('./components/SolicitudLista.vue'));
Vue.component('solicitud-form', require('./components/SolicitudForm.vue'));
Vue.component('instruccion-lista', require('./components/InstruccionLista.vue'));
Vue.component('instruccion-form', require('./components/InstruccionForm.vue'));
Vue.component('ente-lista', require('./components/EnteLista.vue'));
Vue.component('ente-form', require('./components/EnteForm.vue'));
Vue.component('categoria-lista', require('./components/CategoriaLista.vue'));
Vue.component('categoria-form', require('./components/CategoriaForm.vue'));
Vue.component('moneda-lista', require('./components/MonedaLista.vue'));
Vue.component('moneda-form', require('./components/MonedaForm.vue'));
Vue.component('esquema-lista', require('./components/EsquemaLista.vue'));
Vue.component('esquema-form', require('./components/EsquemaForm.vue'));
Vue.component('tipo-ingreso-lista', require('./components/TipoIngresoLista.vue'));
Vue.component('tipo-ingreso-form', require('./components/TipoIngresoForm.vue'));

Vue.component('ejecucion-lista', require('./components/EjecucionPagoLista.vue'));
Vue.component('ejecucion-form', require('./components/EjecucionPagoForm.vue'));
//Vue.component('ejecucion-lista', require('./components/EjecucionLista.vue'));
//Vue.component('ejecucion-form', require('./components/EjecucionForm.vue'));

Vue.component('home', require('./components/Home.vue'));

//Componentes Frontend
Vue.component('form-login', require('./components/frontend/form-login.vue'));
Vue.component('form-recovery', require('./components/frontend/form-recovery.vue'));

window.Vuetify = require('vuetify');
Vue.use(Vuetify)

import store from './store'
import * as actions from './store/action-types'
import * as mutations from './store/mutation-types'

import { mapGetters } from 'vuex'
import withSnackbar from './components/mixins/withSnackbar'

import Slick from 'vue-slick';
import colors from 'vuetify/es5/util/colors';

if (window.user) {
  store.commit(mutations.USER,  user)
  store.commit(mutations.LOGGED, true)
}

Vue.use(Vuetify, {
  theme: {
    primary: colors.red.darken1, // #E53935
    secondary: colors.red.lighten4, // #FFCDD2
    accent: colors.indigo.base // #3F51B5
  }
})

const app = new Vue({
  el: '#app',
  store,
  mixins: [ withSnackbar ],
  components: { Slick },
  data: () => ({
    parallax: {
      height: 0,
      images: "/img/salto-angel.jpeg"
    },
    slickOptions: {
      draggable: false,
      nextArrow: "",
      prevArrow: "",
      slidesToShow: 1
    },
    drawer: false,
    drawerRight: false,
    changingPassword: false,
    updatingUser: false,
    items: [

      { heading: 'Modulos' },
      { icon: 'home', text: 'Inicio', href: '/home' },
      { icon: 'monetization_on', text: 'Ingresos', href: '/ingreso' },
      { icon: 'record_voice_over', text: 'Solicitudes', href: '/solicitud' },
      { icon: 'playlist_add_check', text: 'Intrucciones', href: '/instruccion' },
      { icon: 'assignment_returned', text: 'Pagos', href: '/pago' },
      { icon: 'assessment', text: 'Cuentas', href: '/cuenta' },
      { heading: 'Datos Maestros' },
      { icon: 'assignment', text: 'Datos Maestros',
        children:
        [
          { icon: 'account_balance', text: 'Banco', href: '/banco' },
          { icon: 'store_mall_directory', text: 'Entes', href: '/ente' },
          { icon: 'format_list_numbered_rtl', text: 'Categorias de Pago', href: '/categoria' },
          { icon: 'attach_money', text: 'Monedas', href: '/moneda' },
          { icon: 'view_quilt', text: 'Esquema de Pago', href: '/esquema' },
          { icon: 'move_to_inbox', text: 'Tipo de Ingreso', href: '/tipoIngreso' },
        ],
      },
      { heading: 'Reportes' },
      { icon: 'description', text: 'Reportes',
        children:
        [
          { icon: 'description', text: 'General', href: '/reports.general' },
          { icon: 'description', text: 'Ingresos', href: '/reports.ingreso' },
          { icon: 'description', text: 'Solicitudes', href: '/reports.solicitud' },
          { icon: 'description', text: 'Intrucciones', href: '/reports.instruccion' },
          { icon: 'description', text: 'Bitacora', href: '/reports.bitacora' },
          { icon: 'description', text: 'Bancos', href: '/reports.banco' },
        ], 
      },
      { heading: 'Administracion' },
      { icon: 'person', text: 'Usuarios', href: '/usuario' },
    ]
  }),
  created: function () {

    this.windowResize();

  },
  computed: {
    ...mapGetters({
      user: 'user'
    })
  },
  methods: {
    windowResize () {

      this.parallax.height = window.innerHeight;

      window.addEventListener('resize', () => {
        this.parallax.height = window.innerHeight
      });

    },
    toogleRightDrawer () {
      this.drawerRight = !this.drawerRight
    },
    checkRoles (item) {
      if (item.role) {
        return this.$store.getters.roles.find(function (role) {
          return role == item.role // eslint-disable-line
        })
      }
      return true
    },
    logout () {
      this.logoutLoading = true
      this.$store.dispatch(actions.LOGOUT).then(response => {
        window.location = '/'
      }).catch(error => {
        console.log(error)
      }).then(() => {
        this.logoutLoading = false
      })
    },
    menuItemSelected (item) {
      if (item.href) {
        if (item.new) {
          window.open(item.href)
        } else {
          window.location.href = item.href
        }
      }
    },
    changePassword () {
      this.changingPassword = true
      this.$store.dispatch(actions.REMEMBER_PASSWORD, this.user.email).then(response => {
        this.showMessage(`Correo para reinicio de contraseña`)
      }).catch(error => {
        console.dir(error)
        this.showError(error)
      }).then(() => {
        this.changingPassword = false
      })
    }
  }
});
