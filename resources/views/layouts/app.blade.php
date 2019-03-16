<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="user" content="{{ Auth::user() }}">
    <link rel="manifest" href="/manifest.json">
    <title>{{ config('app.name', 'SIGESPAD') }}</title>
    <link href='/assets/googlefonts/css/css.css' rel="stylesheet">
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
    <!-- MENU -->

    <v-list dense>

    @foreach (session('menu') as $modulo)

        <!-- modulo -->
        <v-layout row align-center>
            <v-flex xs6>
                <v-subheader>
                    {{  $modulo->nb_modulo }}
                </v-subheader>
            </v-flex>
        </v-layout>
       
        @foreach ($modulo->menu as $mmenu)

            @if (count($mmenu->subMenu) > 0)

                <!-- menu con submenu -->
                <v-list-group no-action>
                    <v-list-tile slot="activator">
                        <v-list-tile-action>
                            <v-icon>{{ $mmenu->tx_icon }}</v-icon>
                        </v-list-tile-action>
                        <v-list-tile-content>
                            <v-list-tile-title>{{ $mmenu->nb_menu }}</v-list-tile-title>
                        </v-list-tile-content>
                    </v-list-tile>

                    <!-- submenu -->
                    @foreach ($mmenu->subMenu as $subMenu)
                    
                        <v-list-tile @click="menuItemSelected('{{ $subMenu->tx_url }}')">
                            <v-list-tile-action>
                                <v-icon>{{ $subMenu->tx_icon }}</v-icon>
                            </v-list-tile-action>
                            <v-list-tile-content>
                                <v-list-tile-title>{{ $subMenu->nb_menu }}</v-list-tile-title>
                            </v-list-tile-content>
                        </v-list-tile>

                    @endforeach
                    
                </v-list-group>

            @else

                <!-- menu sin submenu -->
                <v-list-tile @click="menuItemSelected('{{ $mmenu->tx_url }}')">
                    <v-list-tile-action>
                        <v-icon> {{ $mmenu->tx_icon }}</v-icon>
                    </v-list-tile-action>
                    <v-list-tile-content>
                        <v-list-tile-title>{{ $mmenu->nb_menu }}</v-list-tile-title>
                    </v-list-tile-content>
                </v-list-tile>

            @endif

        @endforeach

    @endforeach

    </v-list>

    </v-navigation-drawer>
    <v-toolbar
            color="red darken-1"
            dark
            app
            clipped-left
            clipped-right
            fixed
    >
        <v-toolbar-title :style="$vuetify.breakpoint.smAndUp ? 'width: 300px; min-width: 250px' : 'min-width: 72px'" class="ml-0 pl-3">
            <v-toolbar-side-icon @click.stop="drawer = !drawer"></v-toolbar-side-icon>
            <span class="hidden-xs-only">{{ config('app.shortname', 'SIGESPAD') }}</span>
        </v-toolbar-title>
        
        <div class="d-flex align-center" style="margin-left: auto">
            
            <v-menu offset-y>

            <v-btn @click="verNotificaciones" slot="activator" dark icon >
              <v-icon>notifications</v-icon>
            </v-btn>

            <v-card>
            <v-card-text class="px-0 lighten-3">
                <v-list two-line>
                    <v-list-tile >
                        <v-list-tile-content>
                            <v-list-tile-title class="blue--text"> Estatus </v-list-tile-title>
                            <v-list-tile-sub-title class="green--text"> <v-icon color="green">thumb_up_alt</v-icon> Sin Notificaciones</v-list-tile-sub-title>
                        </v-list-tile-content>
                    </v-list-tile>
                </v-list>
            </v-card-text>

            </v-card>
            </v-menu>
          
            <v-btn icon @click="verAyuda">
                <v-icon>help</v-icon>
            </v-btn>

            <v-btn icon @click="toogleRightDrawer">
                <v-icon>account_circle</v-icon>
            </v-btn>

        </div>
    </v-toolbar>
    <v-navigation-drawer fixed v-model="drawerRight" right clipped app >
        <v-card>
            <v-container fluid grid-list-md class="grey lighten-4">
                <v-list-tile >
                    <v-list-tile-avatar>
                        <v-icon large>account_circle</v-icon>
                    </v-list-tile-avatar>
                    <v-list-tile-content>
                        <v-list-tile-title>@{{ user.usuario }} </v-list-tile-title>
                    </v-list-tile-content>
                </v-list-tile>
            </v-container>
            <v-card-text class="px-0 lighten-3">
                <v-list two-line>
                    <v-list-tile >
                        <v-list-tile-content>
                            <v-list-tile-title class="blue--text"><v-icon>person</v-icon> Nombres y Apellidos </v-list-tile-title>
                            <v-list-tile-sub-title >@{{ user.nb_nombre }} @{{ user.nb_apellido }}</v-list-tile-sub-title>
                        </v-list-tile-content>
                    </v-list-tile>
                    <v-list-tile >
                        <v-list-tile-content>
                            <v-list-tile-title class="blue--text"><v-icon>email</v-icon> Email </v-list-tile-title>
                            <v-list-tile-sub-title >@{{ user.email }}</v-list-tile-sub-title>
                        </v-list-tile-content>
                    </v-list-tile>
                </v-list>
            </v-card-text>
            <v-card-actions>
                <v-btn  @click="logout" flat color="red">
                    <v-icon dark>exit_to_app</v-icon> Salir del Sistema
                </v-btn>
            </v-card-actions>
   
        </v-card>
    </v-navigation-drawer>
    <v-content>
        @yield('content')
    </v-content>
</v-app>
@stack('beforeScripts')
<script src="{{ mix('js/app.js') }}"></script>
@stack('afterScripts')
</body>
</html>
