<template>
  <v-card>
    <v-card-title>
      <span class="headline">Iniciar Sesión</span>
    </v-card-title>
    <v-card-text>
      <v-form ref="loginForm" v-model="valid" color="white">
        <v-text-field
          :error="errors['usuario']"
          :error-messages="errors['usuario']"
          :rules="usuarioRules"
          color="blue"
          dark
          label="Usuario"
          name="usuario"
          required
          v-model="usuario"></v-text-field>
        <v-text-field
          :rules="passwordRules"
          color="blue"
          dark
          label="Password"
          name="password"
          required
          type="password"
          v-model="password"></v-text-field>
      </v-form>
      <v-container grid-list-md text-xs-left>
        <v-layout row wrap>
          <v-flex xs12>
            <a class="recuperar-clave" v-on:click="verFormRecovery">
              Olvidastes tu Contraseña?
            </a>
          </v-flex>
        </v-layout>
      </v-container>
    </v-card-text>
    <v-card-actions>
      <v-spacer></v-spacer>
      <v-btn color="blue darken-2" class="white--text" @click.native="login" :loading="loginLoading">Ingresar</v-btn>
      <v-spacer></v-spacer>
    </v-card-actions>
  </v-card>
</template>


<script>
  import * as actions from '../../store/action-types'
  import withSnackbar from '../mixins/withSnackbar'
  import $ from "jquery";
  export default {
    mixins: [withSnackbar],
    data () {
      return {
        errors: [],
        internalAction: this.action,
        usuario: '',
        usuarioRules: [
          (v) => !!v || 'El usuario es obligatorio',
          (v) => /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(v) || 'Email have to be a valid email'
        ],
        password: '',
        passwordRules: [
          (v) => !!v || 'La contraseña es obligatoria',
          (v) => v.length >= 6 || 'Password have to be at least 6 characters long'
        ],
        valid: false,
        loginLoading: false
      }
    },
    props: {
      action: {
        type: String,
        default: null
      },
      show: {
        type: Boolean,
        default: true
      }
    },
    computed: {
      showLogin: {
        get () {
          if (this.internalAction && this.internalAction === 'login') return true
          return false
        },
        set (value) {
          if (value) this.internalAction = 'login'
          else this.internalAction = null
        }
      }
    },
    methods: {
      verFormRecovery () {
        $(this.$parent.$el).slick('slickNext');
      },
      login () {
        if (this.$refs.loginForm.validate()) {
          this.loginLoading = true
          const credentials = {
            'email': this.email,
            'password': this.password
          }
          this.$store.dispatch(actions.LOGIN, credentials).then(response => {
            this.loginLoading = false
            this.showLogin = false
            window.location = '/home'
          }).catch(error => {
            console.log('HEY:')
            console.log(error.response.data)
            if (error.response && error.response.status === 422) {
              this.showError({
                message: 'Invalid data',
              })
            } else {
              this.showError(error)
            }
            this.errors = error.response.data.errors
          }).then(() => {
            this.loginLoading = false
          })
        }
      },
    }
  }
</script>

<style scoped lang="less">

  .card{
    background-color:transparent;

    .card__title{
      color:rgba(255,255,255,1);
      text-align:center ;

      span{
        width: 100%;
      }

    }

    .card__text{

      .recuperar-clave{
        color: rgba(255,255,255,1);
        transition: all 0.2s;

        &:hover{
          color: rgba(33,150,243,1);
        }

      }

    }

  }

</style>
