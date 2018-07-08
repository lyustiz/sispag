<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="user" content="{{ Auth::user() }}">
    <link rel="manifest" href="/manifest.json">
    <title>{{ config('app.name', 'Pagos Pais') }}</title>
    <link href='/assets/googlefonts/css/css.css' rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/pace/1.0.2/themes/blue/pace-theme-corner-indicator.min.css" rel="stylesheet">
    <link rel="stylesheet" href="{{ url('/assets/vuetify/css/vuetify.min.css') }}">
    <link href="{{ mix('css/app.css') }}" rel="stylesheet">


</head>
<body>
<v-app id="app" v-cloak>
    <snackbar></snackbar>
    <v-navigation-drawer
            dark
            fixed
            clipped
            app
            v-model="drawer"
    >
    
    <v-list dense v-for="(item, idx) in items" :key="idx">

        <!-- header -->
        <v-layout row v-if="item.heading" align-center>                        
            <v-flex xs6>
                <v-subheader v-if="item.heading">
                    @{{ item.heading }}
                </v-subheader>
            </v-flex>
        </v-layout>

        <!-- subitems -->
        <v-list-group v-else-if="item.children" v-model="item.model" no-action>

            <v-list-tile slot="activator">

                <v-list-tile-action>
                    <v-icon>@{{ item.icon }}</v-icon>
                </v-list-tile-action>

                <v-list-tile-content>
                    <v-list-tile-title>@{{ item.text }}</v-list-tile-title>
                </v-list-tile-content>

            </v-list-tile>

            <v-list-tile v-for="(subItem, sidx) in item.children" :key="sidx"  @click="menuItemSelected(subItem)">
                
                <v-list-tile-action>
                    <v-icon>@{{ subItem.icon }}</v-icon>
                </v-list-tile-action>

                <v-list-tile-content>
                    <v-list-tile-title>@{{ subItem.text }}</v-list-tile-title>
                </v-list-tile-content>

            </v-list-tile>
            
        </v-list-group>

        <!-- default items -->
        <v-list-tile v-else @click="menuItemSelected(item)">
            
            <v-list-tile-action>
                <v-icon>@{{ item.icon }}</v-icon>
            </v-list-tile-action>

            <v-list-tile-content>
                <v-list-tile-title>@{{ item.text }}</v-list-tile-title>
            </v-list-tile-content>

        </v-list-tile>


</v-list>


    </v-navigation-drawer>
    <v-toolbar
            color="red"
            dark
            app
            clipped-left
            clipped-right
            fixed
    >
        <v-toolbar-title :style="$vuetify.breakpoint.smAndUp ? 'width: 300px; min-width: 250px' : 'min-width: 72px'" class="ml-0 pl-3">
            <v-toolbar-side-icon @click.stop="drawer = !drawer"></v-toolbar-side-icon>
            <span class="hidden-xs-only">{{ config('app.shortname', 'SIPDIVEN') }}</span>
        </v-toolbar-title>
        <div class="d-flex align-center" style="margin-left: auto">
            <v-btn icon>
                <v-icon>notifications</v-icon>
            </v-btn>
            <v-btn icon @click="toogleRightDrawer">
                <v-icon>account_circle</v-icon>
            </v-btn>
        </div>
    </v-toolbar>
    <v-navigation-drawer
            fixed
            v-model="drawerRight"
            right
            clipped
            app
    >
        <v-card>
            <v-container fluid grid-list-md class="grey lighten-4">
                <v-layout row wrap>
                    <v-flex xs12>
                        <v-icon>account_circle</v-icon>
                    </v-flex>
                    <v-flex xs12>
                        <h3>@{{  user.name }}</h3>
                    </v-flex>
                </v-layout>
            </v-container>
            <v-card-text class="px-0 grey lighten-3">
                <v-form class="pl-3 pr-1 ma-0">
                    <v-text-field :readonly="!editingUser"
                                  label="Correo"
                                  :value="user.email"
                                  ref="email"
                                  @input="updateEmail"
                    ></v-text-field>
                    <v-text-field :readonly="!editingUser"
                                  label="Usuario"
                                  :value="user.name"
                                  @input="updateName"
                    ></v-text-field>
                    <v-text-field readonly
                                  label="Creado"
                                  :value="user.created_at"
                                  readonly
                    ></v-text-field>
                </v-form>
            </v-card-text>
            <v-card-actions>
                <v-spacer></v-spacer>
                <v-btn :loading="updatingUser" flat color="green" @click="updateUser" v-if="editingUser">
                    <v-icon right dark>save</v-icon>
                    Guardar
                </v-btn>
                <v-btn flat color="orange" @click="editUser()" v-else>
                    <v-icon right dark>edit</v-icon>
                    Editar
                </v-btn>
                <v-btn :loading="logoutLoading" @click="logout" flat color="orange">
                    <v-icon right dark>exit_to_app</v-icon>
                    Salir</v-btn>
                <v-spacer></v-spacer>
            </v-card-actions>
            <v-card-actions>
                <v-spacer></v-spacer>
                <v-btn :loading="changingPassword" flat color="red" @click="changePassword">Cambiar Contraseña</v-btn>
                <v-spacer></v-spacer>
            </v-card-actions>
        </v-card>
    </v-navigation-drawer>
    <v-content>
        @yield('content')
    </v-content>
</v-app>
@stack('beforeScripts')
<script src="{{ mix('js/app.js') }}"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pace/1.0.2/pace.min.js"></script>
@stack('afterScripts')
</body>
</html>
