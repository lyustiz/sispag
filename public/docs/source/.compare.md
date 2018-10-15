---
title: API Reference

language_tabs:
- bash
- javascript

includes:

search: true

toc_footers:
- <a href='http://github.com/mpociot/documentarian'>Documentation Powered by Documentarian</a>
---
<!-- START_INFO -->
# Info

Welcome to the generated API reference.
[Get Postman Collection](http://localhost/docs/collection.json)

<!-- END_INFO -->

#general
<!-- START_94b9e39c9179e6826963c4293a458c30 -->
## Listar Usuario

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/usuario" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/usuario",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/usuario`


<!-- END_94b9e39c9179e6826963c4293a458c30 -->

<!-- START_f4118dbd959bf0da643fc902f2d8ba1b -->
## Almacenar Usuario.

> Example request:

```bash
curl -X POST "http://localhost/api/v1/usuario" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=DAIBQ8WuPmHStRjI 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/usuario",
    "method": "POST",
    "data": {
        "\\Illuminate\\Http\\Request": "DAIBQ8WuPmHStRjI"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`POST api/v1/usuario`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 

<!-- END_f4118dbd959bf0da643fc902f2d8ba1b -->

<!-- START_2242609c5c80c579ddffd8c33fb6db0a -->
## Retornar Usuario especifico

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/usuario/{usuario}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\Usuario"=piLKtsgl0j94l3RB 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/usuario/{usuario}",
    "method": "GET",
    "data": {
        "\\App\\Models\\Usuario": "piLKtsgl0j94l3RB"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/usuario/{usuario}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\Usuario | $usuario |  optional  | 

<!-- END_2242609c5c80c579ddffd8c33fb6db0a -->

<!-- START_c02e1a4265c5705efafba684b78f89df -->
## Actualizar Usuario

> Example request:

```bash
curl -X PUT "http://localhost/api/v1/usuario/{usuario}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=0SkCbsW9KQWtsm3Q \
        -d "\App\Models\Usuario"=TyBV6q03YUrJ3KtJ 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/usuario/{usuario}",
    "method": "PUT",
    "data": {
        "\\Illuminate\\Http\\Request": "0SkCbsW9KQWtsm3Q",
        "\\App\\Models\\Usuario": "TyBV6q03YUrJ3KtJ"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`PUT api/v1/usuario/{usuario}`

`PATCH api/v1/usuario/{usuario}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 
    \App\Models\Usuario | $usuario |  optional  | 

<!-- END_c02e1a4265c5705efafba684b78f89df -->

<!-- START_f70d9b8f1882ab5eca09ea900a50ef0a -->
## Eliminar Usuario

> Example request:

```bash
curl -X DELETE "http://localhost/api/v1/usuario/{usuario}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\Usuario"=yKboAUmPgSha03d8 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/usuario/{usuario}",
    "method": "DELETE",
    "data": {
        "\\App\\Models\\Usuario": "yKboAUmPgSha03d8"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`DELETE api/v1/usuario/{usuario}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\Usuario | $usuario |  optional  | 

<!-- END_f70d9b8f1882ab5eca09ea900a50ef0a -->

<!-- START_963ec7878eb4c6d58381204eb18298b3 -->
## Actualizar Password

> Example request:

```bash
curl -X PUT "http://localhost/api/v1/usuario/update/password/{usuario}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=k3iO0fqaSBzasX0i \
        -d "\App\Models\Usuario"=0utLDh4sRjaH2oLW 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/usuario/update/password/{usuario}",
    "method": "PUT",
    "data": {
        "\\Illuminate\\Http\\Request": "k3iO0fqaSBzasX0i",
        "\\App\\Models\\Usuario": "0utLDh4sRjaH2oLW"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`PUT api/v1/usuario/update/password/{usuario}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 
    \App\Models\Usuario | $usuario |  optional  | 

<!-- END_963ec7878eb4c6d58381204eb18298b3 -->

<!-- START_62fde2d768104ddfce5da43713601b2b -->
## Muestra Indicadores Totalizados

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/home/totales" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/home/totales",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/home/totales`


<!-- END_62fde2d768104ddfce5da43713601b2b -->

<!-- START_84248ee38d0b5c877cbfc98e358d0c0b -->
## Listar Banco

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/banco" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/banco",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/banco`


<!-- END_84248ee38d0b5c877cbfc98e358d0c0b -->

<!-- START_b20673ac2173b16f930c5d5dfa04c69b -->
## Almacenar Banco

> Example request:

```bash
curl -X POST "http://localhost/api/v1/banco" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=NeQjb02DHFg3eCLU 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/banco",
    "method": "POST",
    "data": {
        "\\Illuminate\\Http\\Request": "NeQjb02DHFg3eCLU"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`POST api/v1/banco`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 

<!-- END_b20673ac2173b16f930c5d5dfa04c69b -->

<!-- START_c26c107da8d3d8466305708527bcf0ff -->
## Retornar Banco especifico

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/banco/{banco}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\Banco"=3OdFZ5uy5ijFgW7x 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/banco/{banco}",
    "method": "GET",
    "data": {
        "\\App\\Models\\Banco": "3OdFZ5uy5ijFgW7x"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/banco/{banco}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\Banco | $banco |  optional  | 

<!-- END_c26c107da8d3d8466305708527bcf0ff -->

<!-- START_1abda029b772d2574291f7e4abf00947 -->
## Actualizar Banco

> Example request:

```bash
curl -X PUT "http://localhost/api/v1/banco/{banco}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=knd0KUQrK9yKozHX \
        -d "\App\Models\Banco"=O7PRkNve10bUapr6 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/banco/{banco}",
    "method": "PUT",
    "data": {
        "\\Illuminate\\Http\\Request": "knd0KUQrK9yKozHX",
        "\\App\\Models\\Banco": "O7PRkNve10bUapr6"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`PUT api/v1/banco/{banco}`

`PATCH api/v1/banco/{banco}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 
    \App\Models\Banco | $banco |  optional  | 

<!-- END_1abda029b772d2574291f7e4abf00947 -->

<!-- START_cdbc8f512840579c11f3c944111cbe23 -->
## Eliminar Banco

> Example request:

```bash
curl -X DELETE "http://localhost/api/v1/banco/{banco}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\Banco"=fPZhxeyZhY17q5Lg 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/banco/{banco}",
    "method": "DELETE",
    "data": {
        "\\App\\Models\\Banco": "fPZhxeyZhY17q5Lg"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`DELETE api/v1/banco/{banco}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\Banco | $banco |  optional  | 

<!-- END_cdbc8f512840579c11f3c944111cbe23 -->

<!-- START_c0b6ff9089731859c7177949ed0ae5e6 -->
## Listar Tipo Banco

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/tipoBanco" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/tipoBanco",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/tipoBanco`


<!-- END_c0b6ff9089731859c7177949ed0ae5e6 -->

<!-- START_0953c773965418d092f4f295dc0b79dd -->
## Almacenar Tipo Banco

> Example request:

```bash
curl -X POST "http://localhost/api/v1/tipoBanco" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=mPbEq4UoWKmYllly 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/tipoBanco",
    "method": "POST",
    "data": {
        "\\Illuminate\\Http\\Request": "mPbEq4UoWKmYllly"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`POST api/v1/tipoBanco`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 

<!-- END_0953c773965418d092f4f295dc0b79dd -->

<!-- START_40a8fc3b041bb1845ea0f88488ff8b92 -->
## Retornar Tipo Banco especifico

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/tipoBanco/{tipoBanco}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\TipoBanco"=x9qYfhMsPp6MprRO 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/tipoBanco/{tipoBanco}",
    "method": "GET",
    "data": {
        "\\App\\Models\\TipoBanco": "x9qYfhMsPp6MprRO"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/tipoBanco/{tipoBanco}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\TipoBanco | $tipoBanco |  optional  | 

<!-- END_40a8fc3b041bb1845ea0f88488ff8b92 -->

<!-- START_4139eb88937265dc0e97bbcd8fa31159 -->
## Actualizar Tipo Banco

> Example request:

```bash
curl -X PUT "http://localhost/api/v1/tipoBanco/{tipoBanco}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=iXQ90IyAxx6lO22k \
        -d "\App\Models\TipoBanco"=whKhTRt2Bv4cVlGF 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/tipoBanco/{tipoBanco}",
    "method": "PUT",
    "data": {
        "\\Illuminate\\Http\\Request": "iXQ90IyAxx6lO22k",
        "\\App\\Models\\TipoBanco": "whKhTRt2Bv4cVlGF"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`PUT api/v1/tipoBanco/{tipoBanco}`

`PATCH api/v1/tipoBanco/{tipoBanco}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 
    \App\Models\TipoBanco | $tipoBanco |  optional  | 

<!-- END_4139eb88937265dc0e97bbcd8fa31159 -->

<!-- START_1d70442c891d00f802119f76d85f2192 -->
## Eliminar Tipo Banco

> Example request:

```bash
curl -X DELETE "http://localhost/api/v1/tipoBanco/{tipoBanco}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\TipoBanco"=KOspiPm7RMjRphkA 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/tipoBanco/{tipoBanco}",
    "method": "DELETE",
    "data": {
        "\\App\\Models\\TipoBanco": "KOspiPm7RMjRphkA"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`DELETE api/v1/tipoBanco/{tipoBanco}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\TipoBanco | $tipoBanco |  optional  | 

<!-- END_1d70442c891d00f802119f76d85f2192 -->

<!-- START_5b6c695d6817fffe5a4effa28c16edae -->
## Listar Grupo Banco

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/grupoBanco" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/grupoBanco",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/grupoBanco`


<!-- END_5b6c695d6817fffe5a4effa28c16edae -->

<!-- START_71d2a637a0c1087ef8a942c89b7664cf -->
## Almacenar Grupo Banco

> Example request:

```bash
curl -X POST "http://localhost/api/v1/grupoBanco" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=ESKpRUATFbNsMlHT 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/grupoBanco",
    "method": "POST",
    "data": {
        "\\Illuminate\\Http\\Request": "ESKpRUATFbNsMlHT"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`POST api/v1/grupoBanco`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 

<!-- END_71d2a637a0c1087ef8a942c89b7664cf -->

<!-- START_9cfee6de7daddba646e7f9ab578dd2e1 -->
## Retornar Grupo Banco especifico

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/grupoBanco/{grupoBanco}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\GrupoBancos"=fKwf2gym7Vh2GQtG 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/grupoBanco/{grupoBanco}",
    "method": "GET",
    "data": {
        "\\App\\Models\\GrupoBancos": "fKwf2gym7Vh2GQtG"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/grupoBanco/{grupoBanco}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\GrupoBancos | $grupoBancos |  optional  | 

<!-- END_9cfee6de7daddba646e7f9ab578dd2e1 -->

<!-- START_143abc62970a7c8a747ff507ff01d002 -->
## Actualizar Grupo Banco

> Example request:

```bash
curl -X PUT "http://localhost/api/v1/grupoBanco/{grupoBanco}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=8Ux2pVA43g6OnPqj \
        -d "\App\Models\GrupoBancos"=keCFBWexZC2zwhKU 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/grupoBanco/{grupoBanco}",
    "method": "PUT",
    "data": {
        "\\Illuminate\\Http\\Request": "8Ux2pVA43g6OnPqj",
        "\\App\\Models\\GrupoBancos": "keCFBWexZC2zwhKU"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`PUT api/v1/grupoBanco/{grupoBanco}`

`PATCH api/v1/grupoBanco/{grupoBanco}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 
    \App\Models\GrupoBancos | $grupoBancos |  optional  | 

<!-- END_143abc62970a7c8a747ff507ff01d002 -->

<!-- START_d4364a0e2251b8aa04e272f227c295f8 -->
## Eliminar Grupo Banco

> Example request:

```bash
curl -X DELETE "http://localhost/api/v1/grupoBanco/{grupoBanco}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\GrupoBancos"=TpK6yYwOvc42kBPE 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/grupoBanco/{grupoBanco}",
    "method": "DELETE",
    "data": {
        "\\App\\Models\\GrupoBancos": "TpK6yYwOvc42kBPE"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`DELETE api/v1/grupoBanco/{grupoBanco}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\GrupoBancos | $grupoBancos |  optional  | 

<!-- END_d4364a0e2251b8aa04e272f227c295f8 -->

<!-- START_eef606c8dda1a0137022411644917ff5 -->
## Listar Banco por Grupo

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/banco/grupo/{id_grupo_banco}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/banco/grupo/{id_grupo_banco}",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/banco/grupo/{id_grupo_banco}`


<!-- END_eef606c8dda1a0137022411644917ff5 -->

<!-- START_8ef85755ebd240b0879a15d3fb6309f3 -->
## Listar Ente

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/ente" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/ente",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/ente`


<!-- END_8ef85755ebd240b0879a15d3fb6309f3 -->

<!-- START_6929816ca4bb355ddd9bc2f7e9446fdc -->
## Almacenar Ente

> Example request:

```bash
curl -X POST "http://localhost/api/v1/ente" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=Zj8RDJYqtTYjuKqI 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/ente",
    "method": "POST",
    "data": {
        "\\Illuminate\\Http\\Request": "Zj8RDJYqtTYjuKqI"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`POST api/v1/ente`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 

<!-- END_6929816ca4bb355ddd9bc2f7e9446fdc -->

<!-- START_75928d3ad78ffff193d144f8d7b5e779 -->
## Retornar Ente especifico

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/ente/{ente}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\Ente"=hrSegy6rOQ2JBtFv 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/ente/{ente}",
    "method": "GET",
    "data": {
        "\\App\\Models\\Ente": "hrSegy6rOQ2JBtFv"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/ente/{ente}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\Ente | $ente |  optional  | 

<!-- END_75928d3ad78ffff193d144f8d7b5e779 -->

<!-- START_7d13f1a52a37d633cd6013d1c29e7cfb -->
## Actualizar Ente

> Example request:

```bash
curl -X PUT "http://localhost/api/v1/ente/{ente}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=JsSAtEbagVyiVrJu \
        -d "\App\Models\Ente"=htLDsAlpcYnnPabj 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/ente/{ente}",
    "method": "PUT",
    "data": {
        "\\Illuminate\\Http\\Request": "JsSAtEbagVyiVrJu",
        "\\App\\Models\\Ente": "htLDsAlpcYnnPabj"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`PUT api/v1/ente/{ente}`

`PATCH api/v1/ente/{ente}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 
    \App\Models\Ente | $ente |  optional  | 

<!-- END_7d13f1a52a37d633cd6013d1c29e7cfb -->

<!-- START_7eab7d9c497a94e4b26315b42d6c5c9d -->
## Eliminar Ente

> Example request:

```bash
curl -X DELETE "http://localhost/api/v1/ente/{ente}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\Ente"=8v2fEbgI2MeZ3yMO 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/ente/{ente}",
    "method": "DELETE",
    "data": {
        "\\App\\Models\\Ente": "8v2fEbgI2MeZ3yMO"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`DELETE api/v1/ente/{ente}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\Ente | $ente |  optional  | 

<!-- END_7eab7d9c497a94e4b26315b42d6c5c9d -->

<!-- START_cbbdb739f0c59a55e0983bb83c96d114 -->
## Listar Grupo Ente

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/grupoEnte" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/grupoEnte",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/grupoEnte`


<!-- END_cbbdb739f0c59a55e0983bb83c96d114 -->

<!-- START_c917c84585a3a34752621bab0ca07dac -->
## Almacenar Grupo Ente

> Example request:

```bash
curl -X POST "http://localhost/api/v1/grupoEnte" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=8rimbDLJ2RJYzg8z 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/grupoEnte",
    "method": "POST",
    "data": {
        "\\Illuminate\\Http\\Request": "8rimbDLJ2RJYzg8z"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`POST api/v1/grupoEnte`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 

<!-- END_c917c84585a3a34752621bab0ca07dac -->

<!-- START_073a2870f5ab7d71772e98e38e6a4546 -->
## Retornar Grupo Ente especifico

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/grupoEnte/{grupoEnte}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\GrupoEnte"=dP0045C1pBEzw2og 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/grupoEnte/{grupoEnte}",
    "method": "GET",
    "data": {
        "\\App\\Models\\GrupoEnte": "dP0045C1pBEzw2og"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/grupoEnte/{grupoEnte}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\GrupoEnte | $grupoEnte |  optional  | 

<!-- END_073a2870f5ab7d71772e98e38e6a4546 -->

<!-- START_43a1a95c1c594a50e7befea498e57178 -->
## Actualizar Grupo Ente

> Example request:

```bash
curl -X PUT "http://localhost/api/v1/grupoEnte/{grupoEnte}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=g0JQ423XmSl4iD3c \
        -d "\App\Models\GrupoEnte"=j2hAVvksJKCS7Cq8 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/grupoEnte/{grupoEnte}",
    "method": "PUT",
    "data": {
        "\\Illuminate\\Http\\Request": "g0JQ423XmSl4iD3c",
        "\\App\\Models\\GrupoEnte": "j2hAVvksJKCS7Cq8"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`PUT api/v1/grupoEnte/{grupoEnte}`

`PATCH api/v1/grupoEnte/{grupoEnte}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 
    \App\Models\GrupoEnte | $grupoEnte |  optional  | 

<!-- END_43a1a95c1c594a50e7befea498e57178 -->

<!-- START_6eb9df9f393f6c4c2eceda17e526f91f -->
## Eliminar Grupo Ente

> Example request:

```bash
curl -X DELETE "http://localhost/api/v1/grupoEnte/{grupoEnte}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\GrupoEnte"=2r9e3czhVlN9bqkd 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/grupoEnte/{grupoEnte}",
    "method": "DELETE",
    "data": {
        "\\App\\Models\\GrupoEnte": "2r9e3czhVlN9bqkd"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`DELETE api/v1/grupoEnte/{grupoEnte}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\GrupoEnte | $grupoEnte |  optional  | 

<!-- END_6eb9df9f393f6c4c2eceda17e526f91f -->

<!-- START_0f7f95ed48c5350dca4b210150b369f0 -->
## Listar Tipo Ente

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/tipoEnte" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/tipoEnte",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/tipoEnte`


<!-- END_0f7f95ed48c5350dca4b210150b369f0 -->

<!-- START_d140c76e0cad50eeb63d3ba78d13a53a -->
## Almacenar Tipo Ente

> Example request:

```bash
curl -X POST "http://localhost/api/v1/tipoEnte" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=gnTvIw9cgAUUjHox 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/tipoEnte",
    "method": "POST",
    "data": {
        "\\Illuminate\\Http\\Request": "gnTvIw9cgAUUjHox"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`POST api/v1/tipoEnte`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 

<!-- END_d140c76e0cad50eeb63d3ba78d13a53a -->

<!-- START_0b3606fe1abf22009e38ed3e7395e45e -->
## Retornar Tipo Ente especifico

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/tipoEnte/{tipoEnte}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\TipoEnte"=B9fefcKyML27dqHi 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/tipoEnte/{tipoEnte}",
    "method": "GET",
    "data": {
        "\\App\\Models\\TipoEnte": "B9fefcKyML27dqHi"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/tipoEnte/{tipoEnte}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\TipoEnte | $tipoEnte |  optional  | 

<!-- END_0b3606fe1abf22009e38ed3e7395e45e -->

<!-- START_44958679293438942a1360c9397130dc -->
## Actualizar Tipo Ente

> Example request:

```bash
curl -X PUT "http://localhost/api/v1/tipoEnte/{tipoEnte}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=5FqqWPiFTtBSytCG \
        -d "\App\Models\TipoEnte"=9x7p0y0s8Cvm7YxM 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/tipoEnte/{tipoEnte}",
    "method": "PUT",
    "data": {
        "\\Illuminate\\Http\\Request": "5FqqWPiFTtBSytCG",
        "\\App\\Models\\TipoEnte": "9x7p0y0s8Cvm7YxM"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`PUT api/v1/tipoEnte/{tipoEnte}`

`PATCH api/v1/tipoEnte/{tipoEnte}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 
    \App\Models\TipoEnte | $tipoEnte |  optional  | 

<!-- END_44958679293438942a1360c9397130dc -->

<!-- START_e085281e2b48523ba1921c168b12b6fe -->
## Eliminar Tipo Ente

> Example request:

```bash
curl -X DELETE "http://localhost/api/v1/tipoEnte/{tipoEnte}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\TipoEnte"=qtyztgwQ17r8gMJs 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/tipoEnte/{tipoEnte}",
    "method": "DELETE",
    "data": {
        "\\App\\Models\\TipoEnte": "qtyztgwQ17r8gMJs"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`DELETE api/v1/tipoEnte/{tipoEnte}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\TipoEnte | $tipoEnte |  optional  | 

<!-- END_e085281e2b48523ba1921c168b12b6fe -->

<!-- START_61a231fab06c0c50f1608cb5d7288e3c -->
## api/v1/ente/tipo/{id_tipo_ente}
> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/ente/tipo/{id_tipo_ente}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/ente/tipo/{id_tipo_ente}",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/ente/tipo/{id_tipo_ente}`


<!-- END_61a231fab06c0c50f1608cb5d7288e3c -->

<!-- START_c0bb7b43d46725ed28e76fb565719e19 -->
## api/v1/ente/grupo/{id_grupo_ente}
> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/ente/grupo/{id_grupo_ente}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/ente/grupo/{id_grupo_ente}",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/ente/grupo/{id_grupo_ente}`


<!-- END_c0bb7b43d46725ed28e76fb565719e19 -->

<!-- START_74f47a81d69c46408a9304d3c4ffdd80 -->
## api/v1/ente/tipo/{id_tipo_ente}/grupo/{id_grupo_ente}
> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/ente/tipo/{id_tipo_ente}/grupo/{id_grupo_ente}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/ente/tipo/{id_tipo_ente}/grupo/{id_grupo_ente}",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/ente/tipo/{id_tipo_ente}/grupo/{id_grupo_ente}`


<!-- END_74f47a81d69c46408a9304d3c4ffdd80 -->

<!-- START_e403399c809ffc8ae9f800a2f2a4f325 -->
## Listar Ingreso

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/ingreso" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/ingreso",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/ingreso`


<!-- END_e403399c809ffc8ae9f800a2f2a4f325 -->

<!-- START_9aba6785770896b842c34c6986d4541b -->
## Almacenar Ingreso

> Example request:

```bash
curl -X POST "http://localhost/api/v1/ingreso" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=hFCpd3AyAo6AAg8y 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/ingreso",
    "method": "POST",
    "data": {
        "\\Illuminate\\Http\\Request": "hFCpd3AyAo6AAg8y"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`POST api/v1/ingreso`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 

<!-- END_9aba6785770896b842c34c6986d4541b -->

<!-- START_83b1d084f6adfeb9719d0bbc0fa46636 -->
## Retornar Ingreso especifico

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/ingreso/{ingreso}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\Ingreso"=G6zGALSugEGWW0P5 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/ingreso/{ingreso}",
    "method": "GET",
    "data": {
        "\\App\\Models\\Ingreso": "G6zGALSugEGWW0P5"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/ingreso/{ingreso}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\Ingreso | $ingreso |  optional  | 

<!-- END_83b1d084f6adfeb9719d0bbc0fa46636 -->

<!-- START_6dcff1f322365b423cb926685496aef3 -->
## Actualizar Ingreso

> Example request:

```bash
curl -X PUT "http://localhost/api/v1/ingreso/{ingreso}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=BDCSYUM8CWuTL6YG \
        -d "\App\Models\Ingreso"=HTUeQLZcPrTOMxMz 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/ingreso/{ingreso}",
    "method": "PUT",
    "data": {
        "\\Illuminate\\Http\\Request": "BDCSYUM8CWuTL6YG",
        "\\App\\Models\\Ingreso": "HTUeQLZcPrTOMxMz"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`PUT api/v1/ingreso/{ingreso}`

`PATCH api/v1/ingreso/{ingreso}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 
    \App\Models\Ingreso | $ingreso |  optional  | 

<!-- END_6dcff1f322365b423cb926685496aef3 -->

<!-- START_0e247ec54f289c1c588b537e2b1ca5c7 -->
## Eliminar Ingreso

> Example request:

```bash
curl -X DELETE "http://localhost/api/v1/ingreso/{ingreso}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\Ingreso"=QSOKZPMFYJWYShWs 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/ingreso/{ingreso}",
    "method": "DELETE",
    "data": {
        "\\App\\Models\\Ingreso": "QSOKZPMFYJWYShWs"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`DELETE api/v1/ingreso/{ingreso}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\Ingreso | $ingreso |  optional  | 

<!-- END_0e247ec54f289c1c588b537e2b1ca5c7 -->

<!-- START_69238781a5d7084e60ccc747cd890507 -->
## Listar Tipo Ingreso

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/tipoIngreso" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/tipoIngreso",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/tipoIngreso`


<!-- END_69238781a5d7084e60ccc747cd890507 -->

<!-- START_fce85265c2bab2ef2c430f55b7bf1bb8 -->
## Almacenar Tipo Ingreso

> Example request:

```bash
curl -X POST "http://localhost/api/v1/tipoIngreso" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=R6lcPyhRz946EBAJ 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/tipoIngreso",
    "method": "POST",
    "data": {
        "\\Illuminate\\Http\\Request": "R6lcPyhRz946EBAJ"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`POST api/v1/tipoIngreso`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 

<!-- END_fce85265c2bab2ef2c430f55b7bf1bb8 -->

<!-- START_4b4d0103c16520c3c1a14c1297c5e721 -->
## Retornar Tipo Ingreso especifico

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/tipoIngreso/{tipoIngreso}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\TipoIngreso"=sSkVoq7Hsyl7ojVo 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/tipoIngreso/{tipoIngreso}",
    "method": "GET",
    "data": {
        "\\App\\Models\\TipoIngreso": "sSkVoq7Hsyl7ojVo"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/tipoIngreso/{tipoIngreso}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\TipoIngreso | $tipoIngreso |  optional  | 

<!-- END_4b4d0103c16520c3c1a14c1297c5e721 -->

<!-- START_89ba0c59fd3301093bc889b833b09c1b -->
## Actualizar Tipo Ingreso

> Example request:

```bash
curl -X PUT "http://localhost/api/v1/tipoIngreso/{tipoIngreso}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=bUdGn714pf8brPoz \
        -d "\App\Models\TipoIngreso"=8JkVEGXXoi4baQlo 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/tipoIngreso/{tipoIngreso}",
    "method": "PUT",
    "data": {
        "\\Illuminate\\Http\\Request": "bUdGn714pf8brPoz",
        "\\App\\Models\\TipoIngreso": "8JkVEGXXoi4baQlo"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`PUT api/v1/tipoIngreso/{tipoIngreso}`

`PATCH api/v1/tipoIngreso/{tipoIngreso}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 
    \App\Models\TipoIngreso | $tipoIngreso |  optional  | 

<!-- END_89ba0c59fd3301093bc889b833b09c1b -->

<!-- START_d9360295fa2178560183e80c64307c98 -->
## Eliminar Tipo Ingreso

> Example request:

```bash
curl -X DELETE "http://localhost/api/v1/tipoIngreso/{tipoIngreso}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\TipoIngreso"=Pu60DzDwI4tsydG2 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/tipoIngreso/{tipoIngreso}",
    "method": "DELETE",
    "data": {
        "\\App\\Models\\TipoIngreso": "Pu60DzDwI4tsydG2"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`DELETE api/v1/tipoIngreso/{tipoIngreso}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\TipoIngreso | $tipoIngreso |  optional  | 

<!-- END_d9360295fa2178560183e80c64307c98 -->

<!-- START_186661b3f32cd7d192562e7a6e4647e1 -->
## Listar Pago

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/pago" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/pago",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/pago`


<!-- END_186661b3f32cd7d192562e7a6e4647e1 -->

<!-- START_2d36a35dd1fe6234b016110e41ab4fb5 -->
## Almacenar Pago

> Example request:

```bash
curl -X POST "http://localhost/api/v1/pago" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=RYvInE3KX4ezHHqT 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/pago",
    "method": "POST",
    "data": {
        "\\Illuminate\\Http\\Request": "RYvInE3KX4ezHHqT"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`POST api/v1/pago`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 

<!-- END_2d36a35dd1fe6234b016110e41ab4fb5 -->

<!-- START_5f58f3a34a5961682896f14f5ae84c2e -->
## Retornar Pago especifico

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/pago/{pago}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\Pago"=6CjGitFXrNTdzKdI 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/pago/{pago}",
    "method": "GET",
    "data": {
        "\\App\\Models\\Pago": "6CjGitFXrNTdzKdI"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/pago/{pago}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\Pago | $pago |  optional  | 

<!-- END_5f58f3a34a5961682896f14f5ae84c2e -->

<!-- START_2d58d16bc3a20ccef01429399320228f -->
## Actualizar Pago

> Example request:

```bash
curl -X PUT "http://localhost/api/v1/pago/{pago}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=PhQJ2FLzc3Rd3yqk \
        -d "\App\Models\Pago"=HfWS7ggX4wngSS4N 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/pago/{pago}",
    "method": "PUT",
    "data": {
        "\\Illuminate\\Http\\Request": "PhQJ2FLzc3Rd3yqk",
        "\\App\\Models\\Pago": "HfWS7ggX4wngSS4N"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`PUT api/v1/pago/{pago}`

`PATCH api/v1/pago/{pago}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 
    \App\Models\Pago | $pago |  optional  | 

<!-- END_2d58d16bc3a20ccef01429399320228f -->

<!-- START_7f59bd08c255e0a6b5aeeb5f27758897 -->
## Eliminar Pago

> Example request:

```bash
curl -X DELETE "http://localhost/api/v1/pago/{pago}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\Pago"=oL1ps92YPg3tHujY 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/pago/{pago}",
    "method": "DELETE",
    "data": {
        "\\App\\Models\\Pago": "oL1ps92YPg3tHujY"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`DELETE api/v1/pago/{pago}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\Pago | $pago |  optional  | 

<!-- END_7f59bd08c255e0a6b5aeeb5f27758897 -->

<!-- START_b383923a2464426b902272188e3bf389 -->
## Listar Tipo Pago

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/tipoPago" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/tipoPago",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/tipoPago`


<!-- END_b383923a2464426b902272188e3bf389 -->

<!-- START_cfca3db3b9f41e0204184c5e5a67c157 -->
## Almacenar Tipo Pago

> Example request:

```bash
curl -X POST "http://localhost/api/v1/tipoPago" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=lEed2ealnzXi2qGD 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/tipoPago",
    "method": "POST",
    "data": {
        "\\Illuminate\\Http\\Request": "lEed2ealnzXi2qGD"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`POST api/v1/tipoPago`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 

<!-- END_cfca3db3b9f41e0204184c5e5a67c157 -->

<!-- START_f19e9aa3b012c6f59463cbfe53a755ab -->
## Retornar Tipo Pago especifico

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/tipoPago/{tipoPago}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\TipoPago"=0kXXhzmHAvrWgV64 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/tipoPago/{tipoPago}",
    "method": "GET",
    "data": {
        "\\App\\Models\\TipoPago": "0kXXhzmHAvrWgV64"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/tipoPago/{tipoPago}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\TipoPago | $tipoPago |  optional  | 

<!-- END_f19e9aa3b012c6f59463cbfe53a755ab -->

<!-- START_08fc6857aa4833b59806feba67e01e31 -->
## Actualizar Tipo Pago

> Example request:

```bash
curl -X PUT "http://localhost/api/v1/tipoPago/{tipoPago}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=zE65dY3r4ANThg7j \
        -d "\App\Models\TipoPago"=98mWnaGW1jOainYR 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/tipoPago/{tipoPago}",
    "method": "PUT",
    "data": {
        "\\Illuminate\\Http\\Request": "zE65dY3r4ANThg7j",
        "\\App\\Models\\TipoPago": "98mWnaGW1jOainYR"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`PUT api/v1/tipoPago/{tipoPago}`

`PATCH api/v1/tipoPago/{tipoPago}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 
    \App\Models\TipoPago | $tipoPago |  optional  | 

<!-- END_08fc6857aa4833b59806feba67e01e31 -->

<!-- START_a25137efa06e70d9f90724f0aac8c423 -->
## Eliminar Tipo Pago

> Example request:

```bash
curl -X DELETE "http://localhost/api/v1/tipoPago/{tipoPago}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\TipoPago"=EGauwOK3flSFeFNN 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/tipoPago/{tipoPago}",
    "method": "DELETE",
    "data": {
        "\\App\\Models\\TipoPago": "EGauwOK3flSFeFNN"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`DELETE api/v1/tipoPago/{tipoPago}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\TipoPago | $tipoPago |  optional  | 

<!-- END_a25137efa06e70d9f90724f0aac8c423 -->

<!-- START_455cf2b4c85cf8352c98dc9d8a81bba5 -->
## Listar Ejecucion Pago

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/ejecucionPago" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/ejecucionPago",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/ejecucionPago`


<!-- END_455cf2b4c85cf8352c98dc9d8a81bba5 -->

<!-- START_bb810635474790df6a1543999e0203a1 -->
## Almacenar Ejecucion Pago

> Example request:

```bash
curl -X POST "http://localhost/api/v1/ejecucionPago" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=CZsISwgYka23EPWD 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/ejecucionPago",
    "method": "POST",
    "data": {
        "\\Illuminate\\Http\\Request": "CZsISwgYka23EPWD"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`POST api/v1/ejecucionPago`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 

<!-- END_bb810635474790df6a1543999e0203a1 -->

<!-- START_652532934fcc6c127e82276805ec883b -->
## Retornar Ejecucion Pago especifico

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/ejecucionPago/{ejecucionPago}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\models\EjecucionPago"=shk7uC9toR1Zzuzy 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/ejecucionPago/{ejecucionPago}",
    "method": "GET",
    "data": {
        "\\App\\models\\EjecucionPago": "shk7uC9toR1Zzuzy"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/ejecucionPago/{ejecucionPago}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\models\EjecucionPago | $ejecucionPago |  optional  | 

<!-- END_652532934fcc6c127e82276805ec883b -->

<!-- START_3309ed4826fe02e0fe05cb13a5271c5f -->
## Actualizar Ejecucion Pago

> Example request:

```bash
curl -X PUT "http://localhost/api/v1/ejecucionPago/{ejecucionPago}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=10bN8oc7n1wDnnre \
        -d "\App\models\EjecucionPago"=aWr4CCkPmu7MXj1N 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/ejecucionPago/{ejecucionPago}",
    "method": "PUT",
    "data": {
        "\\Illuminate\\Http\\Request": "10bN8oc7n1wDnnre",
        "\\App\\models\\EjecucionPago": "aWr4CCkPmu7MXj1N"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`PUT api/v1/ejecucionPago/{ejecucionPago}`

`PATCH api/v1/ejecucionPago/{ejecucionPago}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 
    \App\models\EjecucionPago | $ejecucionPago |  optional  | 

<!-- END_3309ed4826fe02e0fe05cb13a5271c5f -->

<!-- START_0f86ece3420cdd04c2a9176807301301 -->
## Eliminar Ejecucion Pago

> Example request:

```bash
curl -X DELETE "http://localhost/api/v1/ejecucionPago/{ejecucionPago}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\models\EjecucionPago"=0x0PsNQoYIQcGLOB 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/ejecucionPago/{ejecucionPago}",
    "method": "DELETE",
    "data": {
        "\\App\\models\\EjecucionPago": "0x0PsNQoYIQcGLOB"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`DELETE api/v1/ejecucionPago/{ejecucionPago}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\models\EjecucionPago | $ejecucionPago |  optional  | 

<!-- END_0f86ece3420cdd04c2a9176807301301 -->

<!-- START_a4c228703c95c2529d114f6681f3a0ff -->
## Actualizar Ejecucion Pago

> Example request:

```bash
curl -X PUT "http://localhost/api/v1/ejecucionPago/update" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=uAwdeKvoFcwy5nqd \
        -d "\App\models\EjecucionPago"=Zo64ed22rRx9J6M4 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/ejecucionPago/update",
    "method": "PUT",
    "data": {
        "\\Illuminate\\Http\\Request": "uAwdeKvoFcwy5nqd",
        "\\App\\models\\EjecucionPago": "Zo64ed22rRx9J6M4"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`PUT api/v1/ejecucionPago/update`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 
    \App\models\EjecucionPago | $ejecucionPago |  optional  | 

<!-- END_a4c228703c95c2529d114f6681f3a0ff -->

<!-- START_459cc3cd6ee04b4c98e839badd436316 -->
## api/v1/pago/instruccion/{id_instruccion}
> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/pago/instruccion/{id_instruccion}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/pago/instruccion/{id_instruccion}",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/pago/instruccion/{id_instruccion}`


<!-- END_459cc3cd6ee04b4c98e839badd436316 -->

<!-- START_52b964fc9883ba7f605b56c86ef84a2a -->
## api/v1/ejecucionPago/pago/{id_pago}
> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/ejecucionPago/pago/{id_pago}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/ejecucionPago/pago/{id_pago}",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/ejecucionPago/pago/{id_pago}`


<!-- END_52b964fc9883ba7f605b56c86ef84a2a -->

<!-- START_b122b11c3350cbec4fc437e0c71e56b2 -->
## Listar Moneda

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/moneda" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/moneda",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/moneda`


<!-- END_b122b11c3350cbec4fc437e0c71e56b2 -->

<!-- START_ac2ac4cc9d6cd22b947ca7d1527cf6ab -->
## Almacenar Moneda

> Example request:

```bash
curl -X POST "http://localhost/api/v1/moneda" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=LcTM3IT8WuC1TS3n 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/moneda",
    "method": "POST",
    "data": {
        "\\Illuminate\\Http\\Request": "LcTM3IT8WuC1TS3n"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`POST api/v1/moneda`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 

<!-- END_ac2ac4cc9d6cd22b947ca7d1527cf6ab -->

<!-- START_394e4873599ac8f798fddd2b9a6122d7 -->
## Retornar Moneda especifico

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/moneda/{moneda}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\Moneda"=3tDdnCPEd9g3Kyol 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/moneda/{moneda}",
    "method": "GET",
    "data": {
        "\\App\\Models\\Moneda": "3tDdnCPEd9g3Kyol"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/moneda/{moneda}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\Moneda | $moneda |  optional  | 

<!-- END_394e4873599ac8f798fddd2b9a6122d7 -->

<!-- START_373093fe1fef91d30351335f59d4065c -->
## Actualizar Moneda

> Example request:

```bash
curl -X PUT "http://localhost/api/v1/moneda/{moneda}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=jPElcfMxwElDospb \
        -d "\App\Models\Moneda"=gWTPWdTrv5dmAVc5 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/moneda/{moneda}",
    "method": "PUT",
    "data": {
        "\\Illuminate\\Http\\Request": "jPElcfMxwElDospb",
        "\\App\\Models\\Moneda": "gWTPWdTrv5dmAVc5"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`PUT api/v1/moneda/{moneda}`

`PATCH api/v1/moneda/{moneda}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 
    \App\Models\Moneda | $moneda |  optional  | 

<!-- END_373093fe1fef91d30351335f59d4065c -->

<!-- START_e391ac4ccfb8f519479ad826115fb3e1 -->
## Eliminar Moneda

> Example request:

```bash
curl -X DELETE "http://localhost/api/v1/moneda/{moneda}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\Moneda"=uO6PIHMpLubwVxNn 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/moneda/{moneda}",
    "method": "DELETE",
    "data": {
        "\\App\\Models\\Moneda": "uO6PIHMpLubwVxNn"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`DELETE api/v1/moneda/{moneda}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\Moneda | $moneda |  optional  | 

<!-- END_e391ac4ccfb8f519479ad826115fb3e1 -->

<!-- START_277002e5c9d6885913114bd344e6e49e -->
## Listar Cuenta

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/cuenta" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/cuenta",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/cuenta`


<!-- END_277002e5c9d6885913114bd344e6e49e -->

<!-- START_a53084f7f90ec45c3e512e612df30dfc -->
## Almacenar Cuenta

> Example request:

```bash
curl -X POST "http://localhost/api/v1/cuenta" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=w0aFqdl2OYjpFqvq 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/cuenta",
    "method": "POST",
    "data": {
        "\\Illuminate\\Http\\Request": "w0aFqdl2OYjpFqvq"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`POST api/v1/cuenta`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 

<!-- END_a53084f7f90ec45c3e512e612df30dfc -->

<!-- START_7cc49058a516048d2dfa5e34395e12a8 -->
## Retornar Cuenta especifico

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/cuenta/{cuenta}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\Cuenta"=mTKKrBNSjVcLyEYN 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/cuenta/{cuenta}",
    "method": "GET",
    "data": {
        "\\App\\Models\\Cuenta": "mTKKrBNSjVcLyEYN"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/cuenta/{cuenta}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\Cuenta | $cuenta |  optional  | 

<!-- END_7cc49058a516048d2dfa5e34395e12a8 -->

<!-- START_172621df083e5cb2374a69b2df35d7f9 -->
## Actualizar Cuenta

> Example request:

```bash
curl -X PUT "http://localhost/api/v1/cuenta/{cuenta}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=vwjheUMEaPVZ7XNf \
        -d "\App\Models\Cuenta"=tTB7KdhnF8JxrhMo 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/cuenta/{cuenta}",
    "method": "PUT",
    "data": {
        "\\Illuminate\\Http\\Request": "vwjheUMEaPVZ7XNf",
        "\\App\\Models\\Cuenta": "tTB7KdhnF8JxrhMo"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`PUT api/v1/cuenta/{cuenta}`

`PATCH api/v1/cuenta/{cuenta}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 
    \App\Models\Cuenta | $cuenta |  optional  | 

<!-- END_172621df083e5cb2374a69b2df35d7f9 -->

<!-- START_d23a94d9f05b5aec5b0b64df7800e317 -->
## Eliminar Cuenta

> Example request:

```bash
curl -X DELETE "http://localhost/api/v1/cuenta/{cuenta}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\Cuenta"=NzEkv8sBZ7xiAVpf 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/cuenta/{cuenta}",
    "method": "DELETE",
    "data": {
        "\\App\\Models\\Cuenta": "NzEkv8sBZ7xiAVpf"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`DELETE api/v1/cuenta/{cuenta}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\Cuenta | $cuenta |  optional  | 

<!-- END_d23a94d9f05b5aec5b0b64df7800e317 -->

<!-- START_73d4ec9a12cd0f1781872de8548c69ac -->
## api/v1/cuenta/totales
> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/cuenta/totales" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/cuenta/totales",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/cuenta/totales`


<!-- END_73d4ec9a12cd0f1781872de8548c69ac -->

<!-- START_690a696f3410917dc44dcc66de922ee4 -->
## api/v1/cuenta/moneda/{id_moneda}
> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/cuenta/moneda/{id_moneda}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/cuenta/moneda/{id_moneda}",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/cuenta/moneda/{id_moneda}`


<!-- END_690a696f3410917dc44dcc66de922ee4 -->

<!-- START_e920dedcae4da67f58f276f26ff9c908 -->
## Listar Movimiento

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/movimiento" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/movimiento",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/movimiento`


<!-- END_e920dedcae4da67f58f276f26ff9c908 -->

<!-- START_fe822b54b3f74f11637b7c53c7eee219 -->
## Almacenar Movimiento

> Example request:

```bash
curl -X POST "http://localhost/api/v1/movimiento" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=kIk3llqVATipClwg 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/movimiento",
    "method": "POST",
    "data": {
        "\\Illuminate\\Http\\Request": "kIk3llqVATipClwg"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`POST api/v1/movimiento`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 

<!-- END_fe822b54b3f74f11637b7c53c7eee219 -->

<!-- START_5f2e887f2e6d07a248fe218320c4151c -->
## Retornar Movimiento especifico

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/movimiento/{movimiento}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\Movimiento"=m7epLxBvZLlYiGGF 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/movimiento/{movimiento}",
    "method": "GET",
    "data": {
        "\\App\\Models\\Movimiento": "m7epLxBvZLlYiGGF"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/movimiento/{movimiento}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\Movimiento | $movimiento |  optional  | 

<!-- END_5f2e887f2e6d07a248fe218320c4151c -->

<!-- START_3f61c02607d8f9debc1cbf81f6dd7d93 -->
## Actualizar Movimiento

> Example request:

```bash
curl -X PUT "http://localhost/api/v1/movimiento/{movimiento}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=nvsvOxVAaveF0djU \
        -d "\App\Models\Movimiento"=dDVasUOdwJilibh9 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/movimiento/{movimiento}",
    "method": "PUT",
    "data": {
        "\\Illuminate\\Http\\Request": "nvsvOxVAaveF0djU",
        "\\App\\Models\\Movimiento": "dDVasUOdwJilibh9"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`PUT api/v1/movimiento/{movimiento}`

`PATCH api/v1/movimiento/{movimiento}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 
    \App\Models\Movimiento | $movimiento |  optional  | 

<!-- END_3f61c02607d8f9debc1cbf81f6dd7d93 -->

<!-- START_bab334e748c9bbd152281e5ae26ebeb9 -->
## Eliminar Movimiento

> Example request:

```bash
curl -X DELETE "http://localhost/api/v1/movimiento/{movimiento}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\Movimiento"=yhhP92KX1lzbuaFp 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/movimiento/{movimiento}",
    "method": "DELETE",
    "data": {
        "\\App\\Models\\Movimiento": "yhhP92KX1lzbuaFp"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`DELETE api/v1/movimiento/{movimiento}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\Movimiento | $movimiento |  optional  | 

<!-- END_bab334e748c9bbd152281e5ae26ebeb9 -->

<!-- START_a1e53b11f28684324050c32065c7f982 -->
## api/v1/movimiento/moneda/{id_moneda}
> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/movimiento/moneda/{id_moneda}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/movimiento/moneda/{id_moneda}",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/movimiento/moneda/{id_moneda}`


<!-- END_a1e53b11f28684324050c32065c7f982 -->

<!-- START_3697a63db5479f2c5cc7f41b716b29eb -->
## Listar Solicitud

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/solicitud" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/solicitud",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/solicitud`


<!-- END_3697a63db5479f2c5cc7f41b716b29eb -->

<!-- START_6051a071aadd33ade860d2e7059f2796 -->
## Almacenar Solicitud

> Example request:

```bash
curl -X POST "http://localhost/api/v1/solicitud" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=T7ApvLULfKCv5IgB 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/solicitud",
    "method": "POST",
    "data": {
        "\\Illuminate\\Http\\Request": "T7ApvLULfKCv5IgB"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`POST api/v1/solicitud`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 

<!-- END_6051a071aadd33ade860d2e7059f2796 -->

<!-- START_5d51b6e82bebc8a0f53a777b63f7c4f7 -->
## Retornar Solicitud especifico

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/solicitud/{solicitud}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\Solicitud"=LMntHzpn2BrtoKfF 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/solicitud/{solicitud}",
    "method": "GET",
    "data": {
        "\\App\\Models\\Solicitud": "LMntHzpn2BrtoKfF"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/solicitud/{solicitud}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\Solicitud | $solicitud |  optional  | 

<!-- END_5d51b6e82bebc8a0f53a777b63f7c4f7 -->

<!-- START_df184d3d4e3894606d6ce7aa4b5de43a -->
## Actualizar Solicitud

> Example request:

```bash
curl -X PUT "http://localhost/api/v1/solicitud/{solicitud}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=wb26h28NJBedLg1h \
        -d "\App\Models\Solicitud"=ud4L6TOrjr6xOEKM 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/solicitud/{solicitud}",
    "method": "PUT",
    "data": {
        "\\Illuminate\\Http\\Request": "wb26h28NJBedLg1h",
        "\\App\\Models\\Solicitud": "ud4L6TOrjr6xOEKM"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`PUT api/v1/solicitud/{solicitud}`

`PATCH api/v1/solicitud/{solicitud}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 
    \App\Models\Solicitud | $solicitud |  optional  | 

<!-- END_df184d3d4e3894606d6ce7aa4b5de43a -->

<!-- START_f3617f97e8d7ce72dc7b58fdb43a0336 -->
## Eliminar Solicitud

> Example request:

```bash
curl -X DELETE "http://localhost/api/v1/solicitud/{solicitud}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\Solicitud"=szGwhUFpwRHfwTWU 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/solicitud/{solicitud}",
    "method": "DELETE",
    "data": {
        "\\App\\Models\\Solicitud": "szGwhUFpwRHfwTWU"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`DELETE api/v1/solicitud/{solicitud}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\Solicitud | $solicitud |  optional  | 

<!-- END_f3617f97e8d7ce72dc7b58fdb43a0336 -->

<!-- START_3c312325fa8d01d2ac013a7bd7baa136 -->
## Listar Categoria

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/categoria" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/categoria",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/categoria`


<!-- END_3c312325fa8d01d2ac013a7bd7baa136 -->

<!-- START_264f5681cfa2bdf3f9cb2df37d97004e -->
## Almacenar Categoria

> Example request:

```bash
curl -X POST "http://localhost/api/v1/categoria" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=V0bjBf9BTYDXBR6Z 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/categoria",
    "method": "POST",
    "data": {
        "\\Illuminate\\Http\\Request": "V0bjBf9BTYDXBR6Z"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`POST api/v1/categoria`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 

<!-- END_264f5681cfa2bdf3f9cb2df37d97004e -->

<!-- START_cc82488af4ee96f9d9500191dd5c7480 -->
## Retornar Categoria especifico

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/categoria/{categoria}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\Categoria"=f8s2H2wPPfcAGacM 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/categoria/{categoria}",
    "method": "GET",
    "data": {
        "\\App\\Models\\Categoria": "f8s2H2wPPfcAGacM"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/categoria/{categoria}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\Categoria | $categoria |  optional  | 

<!-- END_cc82488af4ee96f9d9500191dd5c7480 -->

<!-- START_3c0725b31b3b4ee13cfa0f001aa6489a -->
## Actualizar Categoria

> Example request:

```bash
curl -X PUT "http://localhost/api/v1/categoria/{categoria}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=f7PZ1hGBYCT9Zgze \
        -d "\App\Models\Categoria"=FMf0N2uc94b34KWK 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/categoria/{categoria}",
    "method": "PUT",
    "data": {
        "\\Illuminate\\Http\\Request": "f7PZ1hGBYCT9Zgze",
        "\\App\\Models\\Categoria": "FMf0N2uc94b34KWK"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`PUT api/v1/categoria/{categoria}`

`PATCH api/v1/categoria/{categoria}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 
    \App\Models\Categoria | $categoria |  optional  | 

<!-- END_3c0725b31b3b4ee13cfa0f001aa6489a -->

<!-- START_7e9da8f981edba89ff38b8ada7428814 -->
## Eliminar Categoria

> Example request:

```bash
curl -X DELETE "http://localhost/api/v1/categoria/{categoria}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\Categoria"=0gwPKD0JGiSzteb6 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/categoria/{categoria}",
    "method": "DELETE",
    "data": {
        "\\App\\Models\\Categoria": "0gwPKD0JGiSzteb6"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`DELETE api/v1/categoria/{categoria}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\Categoria | $categoria |  optional  | 

<!-- END_7e9da8f981edba89ff38b8ada7428814 -->

<!-- START_352f8de952da5abe78f99a50bdbdc88c -->
## Listar Solicitud

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/solicitud/categoria/{idCategoria}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/solicitud/categoria/{idCategoria}",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/solicitud/categoria/{idCategoria}`


<!-- END_352f8de952da5abe78f99a50bdbdc88c -->

<!-- START_cbe89543e6d9a1ac87d8e749a26ae8a5 -->
## Listar Instruccion

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/instruccion" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/instruccion",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/instruccion`


<!-- END_cbe89543e6d9a1ac87d8e749a26ae8a5 -->

<!-- START_7812297f801032f752c8234c9b29a28d -->
## Almacenar Instruccion

> Example request:

```bash
curl -X POST "http://localhost/api/v1/instruccion" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=HUXzc8zEt63JPnGv 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/instruccion",
    "method": "POST",
    "data": {
        "\\Illuminate\\Http\\Request": "HUXzc8zEt63JPnGv"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`POST api/v1/instruccion`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 

<!-- END_7812297f801032f752c8234c9b29a28d -->

<!-- START_9201aa059547adaa87c6787228c617a7 -->
## Retornar Instruccion especifico

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/instruccion/{instruccion}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\Instruccion"=xgPKJJ9aErznUPHD 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/instruccion/{instruccion}",
    "method": "GET",
    "data": {
        "\\App\\Models\\Instruccion": "xgPKJJ9aErznUPHD"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/instruccion/{instruccion}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\Instruccion | $instruccion |  optional  | 

<!-- END_9201aa059547adaa87c6787228c617a7 -->

<!-- START_78a574e3b7978774c0a429daefd8ba89 -->
## Actualizar Instruccion

> Example request:

```bash
curl -X PUT "http://localhost/api/v1/instruccion/{instruccion}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=x621rnPVDKBt3E0C \
        -d "\App\Models\Instruccion"=UGnaIOpXwMZtFNdY 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/instruccion/{instruccion}",
    "method": "PUT",
    "data": {
        "\\Illuminate\\Http\\Request": "x621rnPVDKBt3E0C",
        "\\App\\Models\\Instruccion": "UGnaIOpXwMZtFNdY"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`PUT api/v1/instruccion/{instruccion}`

`PATCH api/v1/instruccion/{instruccion}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 
    \App\Models\Instruccion | $instruccion |  optional  | 

<!-- END_78a574e3b7978774c0a429daefd8ba89 -->

<!-- START_b740b0507320d339958d5d41656e3cee -->
## Eliminar Instruccion

> Example request:

```bash
curl -X DELETE "http://localhost/api/v1/instruccion/{instruccion}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\Instruccion"=rmDVH77tvz1lh7SW 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/instruccion/{instruccion}",
    "method": "DELETE",
    "data": {
        "\\App\\Models\\Instruccion": "rmDVH77tvz1lh7SW"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`DELETE api/v1/instruccion/{instruccion}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\Instruccion | $instruccion |  optional  | 

<!-- END_b740b0507320d339958d5d41656e3cee -->

<!-- START_3000ac12a2d7b6a8353ac194c5201a7b -->
## api/v1/instruccion/pagos
> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/instruccion/pagos" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/instruccion/pagos",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/instruccion/pagos`


<!-- END_3000ac12a2d7b6a8353ac194c5201a7b -->

<!-- START_1af2ea8c2266d4b8989495cd8af4d421 -->
## api/v1/esquema/padre
> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/esquema/padre" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/esquema/padre",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/esquema/padre`


<!-- END_1af2ea8c2266d4b8989495cd8af4d421 -->

<!-- START_983083b6dab695f66065c372b738998c -->
## Listar Esquema

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/esquema" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/esquema",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/esquema`


<!-- END_983083b6dab695f66065c372b738998c -->

<!-- START_587f75496c80c4838e48bdd06f9945a9 -->
## Almacenar Esquema

> Example request:

```bash
curl -X POST "http://localhost/api/v1/esquema" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=5NW94nK4fDtJ6SNi 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/esquema",
    "method": "POST",
    "data": {
        "\\Illuminate\\Http\\Request": "5NW94nK4fDtJ6SNi"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`POST api/v1/esquema`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 

<!-- END_587f75496c80c4838e48bdd06f9945a9 -->

<!-- START_b7e23fae6e87415770f10120f7a4a0c5 -->
## Retornar Esquema especifico

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/esquema/{esquema}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\Esquema"=j9UEaQBSzKVEvIYH 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/esquema/{esquema}",
    "method": "GET",
    "data": {
        "\\App\\Models\\Esquema": "j9UEaQBSzKVEvIYH"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/esquema/{esquema}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\Esquema | $esquema |  optional  | 

<!-- END_b7e23fae6e87415770f10120f7a4a0c5 -->

<!-- START_265d9a0ed897505baee24a405c3618ba -->
## Actualizar Esquema

> Example request:

```bash
curl -X PUT "http://localhost/api/v1/esquema/{esquema}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=yv0QlS1cAkYIBBTk \
        -d "\App\Models\Esquema"=hiSSosrTVzYu9ZxR 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/esquema/{esquema}",
    "method": "PUT",
    "data": {
        "\\Illuminate\\Http\\Request": "yv0QlS1cAkYIBBTk",
        "\\App\\Models\\Esquema": "hiSSosrTVzYu9ZxR"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`PUT api/v1/esquema/{esquema}`

`PATCH api/v1/esquema/{esquema}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 
    \App\Models\Esquema | $esquema |  optional  | 

<!-- END_265d9a0ed897505baee24a405c3618ba -->

<!-- START_979fdcd9025e402e50cc39f2eb4970c6 -->
## Eliminar Esquema

> Example request:

```bash
curl -X DELETE "http://localhost/api/v1/esquema/{esquema}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\Esquema"=KUQx9f8xR23RT4rK 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/esquema/{esquema}",
    "method": "DELETE",
    "data": {
        "\\App\\Models\\Esquema": "KUQx9f8xR23RT4rK"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`DELETE api/v1/esquema/{esquema}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\Esquema | $esquema |  optional  | 

<!-- END_979fdcd9025e402e50cc39f2eb4970c6 -->

<!-- START_6194804745a37e90ba0eba941d5c37bc -->
## Listar Etapa Envio

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/etapaEnvio" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/etapaEnvio",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/etapaEnvio`


<!-- END_6194804745a37e90ba0eba941d5c37bc -->

<!-- START_e73535dac59b9a0764cf8af27f769f23 -->
## Almacenar Etapa Envio

> Example request:

```bash
curl -X POST "http://localhost/api/v1/etapaEnvio" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=1e7e59s7HrFrrtzq 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/etapaEnvio",
    "method": "POST",
    "data": {
        "\\Illuminate\\Http\\Request": "1e7e59s7HrFrrtzq"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`POST api/v1/etapaEnvio`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 

<!-- END_e73535dac59b9a0764cf8af27f769f23 -->

<!-- START_b769e56f2ed86ab623289386aca974df -->
## Retornar Etapa Envio especifico

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/etapaEnvio/{etapaEnvio}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\EtapaEnvio"=F2WhDle9G3lRWbTL 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/etapaEnvio/{etapaEnvio}",
    "method": "GET",
    "data": {
        "\\App\\Models\\EtapaEnvio": "F2WhDle9G3lRWbTL"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/etapaEnvio/{etapaEnvio}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\EtapaEnvio | $etapaEnvio |  optional  | 

<!-- END_b769e56f2ed86ab623289386aca974df -->

<!-- START_2f152a19b3ec1d3d17afa4373f81af73 -->
## Actualizar Etapa Envio

> Example request:

```bash
curl -X PUT "http://localhost/api/v1/etapaEnvio/{etapaEnvio}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=SyeYmu4K0UNdO8KY \
        -d "\App\Models\EtapaEnvio"=ofw6A6rJbFWPoFkU 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/etapaEnvio/{etapaEnvio}",
    "method": "PUT",
    "data": {
        "\\Illuminate\\Http\\Request": "SyeYmu4K0UNdO8KY",
        "\\App\\Models\\EtapaEnvio": "ofw6A6rJbFWPoFkU"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`PUT api/v1/etapaEnvio/{etapaEnvio}`

`PATCH api/v1/etapaEnvio/{etapaEnvio}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 
    \App\Models\EtapaEnvio | $etapaEnvio |  optional  | 

<!-- END_2f152a19b3ec1d3d17afa4373f81af73 -->

<!-- START_6c0906d74af3b2711347cdead3e748ac -->
## Eliminar Etapa Envio

> Example request:

```bash
curl -X DELETE "http://localhost/api/v1/etapaEnvio/{etapaEnvio}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\EtapaEnvio"=WuWUzqsRUMkvLjnA 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/etapaEnvio/{etapaEnvio}",
    "method": "DELETE",
    "data": {
        "\\App\\Models\\EtapaEnvio": "WuWUzqsRUMkvLjnA"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`DELETE api/v1/etapaEnvio/{etapaEnvio}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\EtapaEnvio | $etapaEnvio |  optional  | 

<!-- END_6c0906d74af3b2711347cdead3e748ac -->

<!-- START_486e017f30b5ba33270db457014951a8 -->
## Listar Status

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/status" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/status",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/status`


<!-- END_486e017f30b5ba33270db457014951a8 -->

<!-- START_7e987af97c1971c3327e9a8a99b293f2 -->
## Almacenar Status

> Example request:

```bash
curl -X POST "http://localhost/api/v1/status" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=XSrw2JHGVMuoZE8U 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/status",
    "method": "POST",
    "data": {
        "\\Illuminate\\Http\\Request": "XSrw2JHGVMuoZE8U"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`POST api/v1/status`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 

<!-- END_7e987af97c1971c3327e9a8a99b293f2 -->

<!-- START_1edf775701afa87ed3546e22cae5d0dd -->
## Retornar Status especifico

> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/status/{status}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\Status"=5ZXOMd9XwCVgDkXL 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/status/{status}",
    "method": "GET",
    "data": {
        "\\App\\Models\\Status": "5ZXOMd9XwCVgDkXL"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/status/{status}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\Status | $status |  optional  | 

<!-- END_1edf775701afa87ed3546e22cae5d0dd -->

<!-- START_b11b5aa4ef53dfc58afb9a3c3d5745ea -->
## Actualizar Status

> Example request:

```bash
curl -X PUT "http://localhost/api/v1/status/{status}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\Illuminate\Http\Request"=lTRE9NQI7uNyHsQ1 \
        -d "\App\Models\Status"=wbyuZbW5KHTyPCly 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/status/{status}",
    "method": "PUT",
    "data": {
        "\\Illuminate\\Http\\Request": "lTRE9NQI7uNyHsQ1",
        "\\App\\Models\\Status": "wbyuZbW5KHTyPCly"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`PUT api/v1/status/{status}`

`PATCH api/v1/status/{status}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \Illuminate\Http\Request | $request |  optional  | 
    \App\Models\Status | $status |  optional  | 

<!-- END_b11b5aa4ef53dfc58afb9a3c3d5745ea -->

<!-- START_f07abb2fedb355bac8b6f02aff3aa69f -->
## Eliminar Status

> Example request:

```bash
curl -X DELETE "http://localhost/api/v1/status/{status}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1"  \
    -d "\App\Models\Status"=qZKiI0AxttZ1PnnD 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/status/{status}",
    "method": "DELETE",
    "data": {
        "\\App\\Models\\Status": "qZKiI0AxttZ1PnnD"
    },
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`DELETE api/v1/status/{status}`

#### Parameters

Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    \App\Models\Status | $status |  optional  | 

<!-- END_f07abb2fedb355bac8b6f02aff3aa69f -->

<!-- START_c158d83a14076c890405ea52ce023eb4 -->
## api/v1/status/grupo/{id_grupo}
> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/status/grupo/{id_grupo}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/status/grupo/{id_grupo}",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/status/grupo/{id_grupo}`


<!-- END_c158d83a14076c890405ea52ce023eb4 -->

<!-- START_aa07793a346591decedd1d0945d7ab3a -->
## api/v1/reports/{nb_tabla}
> Example request:

```bash
curl -X GET -G "http://localhost/api/v1/reports/{nb_tabla}" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/reports/{nb_tabla}",
    "method": "GET",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```

> Example response:

```json
null
```

### HTTP Request
`GET api/v1/reports/{nb_tabla}`


<!-- END_aa07793a346591decedd1d0945d7ab3a -->

<!-- START_2248338be892a9b129658f2b9bd359e0 -->
## api/v1/reports
> Example request:

```bash
curl -X POST "http://localhost/api/v1/reports" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/reports",
    "method": "POST",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`POST api/v1/reports`


<!-- END_2248338be892a9b129658f2b9bd359e0 -->

<!-- START_a0bf4a0e0f69ce4556f8dd06f9787ccd -->
## api/v1/getReporteExcel
> Example request:

```bash
curl -X POST "http://localhost/api/v1/getReporteExcel" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/v1/getReporteExcel",
    "method": "POST",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`POST api/v1/getReporteExcel`


<!-- END_a0bf4a0e0f69ce4556f8dd06f9787ccd -->

<!-- START_c3fa189a6c95ca36ad6ac4791a873d23 -->
## Handle a login request to the application.

> Example request:

```bash
curl -X POST "http://localhost/api/login" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/login",
    "method": "POST",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`POST api/login`


<!-- END_c3fa189a6c95ca36ad6ac4791a873d23 -->

<!-- START_d7b7952e7fdddc07c978c9bdaf757acf -->
## Handle a registration request for the application.

> Example request:

```bash
curl -X POST "http://localhost/api/register" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/register",
    "method": "POST",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`POST api/register`


<!-- END_d7b7952e7fdddc07c978c9bdaf757acf -->

<!-- START_b7802a3a2092f162a21dc668479801f4 -->
## Send a reset link to the given user.

> Example request:

```bash
curl -X POST "http://localhost/api/password/email" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/password/email",
    "method": "POST",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`POST api/password/email`


<!-- END_b7802a3a2092f162a21dc668479801f4 -->

<!-- START_8ad860d24dc1cc6dac772d99135ad13e -->
## Reset the given user&#039;s password.

> Example request:

```bash
curl -X POST "http://localhost/api/password/reset" \
    -H "Accept: application/json" \
    -H "Authorization: Bearer: {token}" \
        -H "Api-Version: v1" 
```

```javascript
var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://localhost/api/password/reset",
    "method": "POST",
    "headers": {
        "accept": "application/json",
        "Authorization": "Bearer: {token}",
        "Api-Version": "v1",
    }
}

$.ajax(settings).done(function (response) {
    console.log(response);
});
```


### HTTP Request
`POST api/password/reset`


<!-- END_8ad860d24dc1cc6dac772d99135ad13e -->


