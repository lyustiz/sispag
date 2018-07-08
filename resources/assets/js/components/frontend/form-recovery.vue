<template>
  <v-card>
    <v-card-title>
      <span class="headline">Recuperar Contraseña</span>
    </v-card-title>
    <v-card-text>
      <v-form v-model="valid" ref="resetPasswordForm">
        <v-text-field
          :rules="emailRules"
          dark
          label="Tu Correo"
          required
          v-model="internalEmail"></v-text-field>
        <v-text-field
          :rules="passwordRules"
          dark
          hint="Al menos 6 caracteres"
          label="Contraseña"
          min="6"
          name="password"
          required
          type="password"
          v-model="password"></v-text-field>
        <v-text-field
          :rules="passwordRules"
          dark
          hint="Al menos 6 caracteres"
          label="Confirma la Contraseña"
          name="passwordConfirmation"
          min="6"
          v-model="passwordConfirmation"
          required
          type="password"></v-text-field>
      </v-form>
    </v-card-text>
    <v-card-actions>
      <v-spacer></v-spacer>
      <v-btn
        :color="done ? 'green' : 'blue darken-2'"
        :loading="loading"
        class="white--text"
        flat
        @click.native="reset">
          <v-icon v-if="done">done</v-icon>
          &nbsp;
          <template v-if="!done">Restablecer</template>
          <template v-else>Done</template>
      </v-btn>
      <v-spacer></v-spacer>
    </v-card-actions>
  </v-card>
</template>


<script>
  import * as actions from '../../store/action-types'
  import sleep from '../../utils/sleep'
  import withSnackbar from '../mixins/withSnackbar'
  export default {
    mixins: [withSnackbar],
    data () {
      return {
        internalAction: this.action,
        internalEmail: this.email,
        loading: false,
        done: false,
        emailRules: [
          (v) => !!v || 'El email és obligatori',
          (v) => /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(v) || 'S\'ha d\'indicar un email vàlid'
        ],
        password: '',
        passwordConfirmation: '',
        passwordRules: [
          (v) => !!v || 'La paraula de pas és obligatòria',
          (v) => v.length >= 6 || 'La paraula de pas ha de tenir com a mínim 6 caràcters'
        ],
        valid: false
      }
    },
    props: {
      action: {
        type: String,
        default: null
      },
      token: {
        type: String,
        default: null
      },
      email: {
        type: String,
        default: null
      }
    },
    computed: {
      showResetPassword: {
        get () {
          return this.internalAction && (this.internalAction === 'reset_password')
        },
        set (value) {
          if (value) this.internalAction = 'reset_password'
          else this.internalAction = null
        }
      }
    },
    methods: {
      reset () {
        if (this.$refs.resetPasswordForm.validate()) {
          const user = {
            'email': this.internalEmail,
            'password': this.password,
            'password_confirmation': this.passwordConfirmation,
            'token': this.token
          }
          this.loading = true
          this.$store.dispatch(actions.RESET_PASSWORD, user).then(response => {
            this.loading = false
            this.done = true
            sleep(4000).then(() => {
              this.showResetPassword = false
              window.location = '/home'
            })
          }).catch(error => {
            if (error.response && error.response.status === 422) {
              this.showError({
                message: 'Invalid data'
              })
            } else {
              this.showError(error)
            }
            this.errors = error.response.data.errors
          }).then(() => {
            this.loading = false
          })
        }
      }
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


    }

  }

</style>
