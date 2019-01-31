<template>

    <v-text-field
     ref="field"
    :prefix="prefix"
    v-model="model"
    @focus="onFocus"
    @keyup="onKeyUp"
    @keypress="onKeyPress($event)"
    :error-messages="errorMessages"
    v-bind="$attrs"
    @change="onChange"
    @blur="onBlur"
    >
    </v-text-field>

</template>

<script>
function tryParseFloat (str, defaultValue) {
  var retValue = defaultValue
  if (str !== null) {
    if (str.length > 0) {
      if (!isNaN(str)) {
        retValue = parseFloat(str)
      }else{
        return false
      }
    }
  }
  return retValue
}
export default {
  props: {
    value: null,
    'error-messages': null,
    allowNegative: {
      type: Boolean,
      default: false
    },
    prefix: {
      type: String,
      default: ''
    },
    thousandsSeparator: {
      type: String,
      default: '.'
    },
    decimalSeparator: {
      type: String,
      default: ','
    },
    languageCode: {
      type: String,
      default: 'es-ES'
    },
    decimales: {
      type: Number,
      default: 2
    }
  },
  data () {
    return {
      numberValue: this.value,
      model: this.value,
      isMasked: true,
      thousandsSeparatorRegex: new RegExp(`\\${this.thousandsSeparator}`, 'g'),
      decimalSeparatorRegex: new RegExp(`\\${this.decimalSeparator}`, 'g')
    }
  },
  methods: {
    onFocus () {
      this.isMasked = false
      this.updateModel()
    },
    onBlur () {
      if (this.$listeners.blur) this.$listeners.blur()
      this.isMasked = true
      this.format()
    },
    onKeyUp () {
      this.updateNumberValue()
    },
    onKeyPress(event){
      this.checkNumber(event)
    },
    onChange () {
      if (this.$listeners.change) this.$listeners.change()
    },
    checkNumber(event){
      let keyValid = ['1','2','3','4','5','6','7','8','9','0','.',',','Backspace','ArrowLeft','ArrowRight','Delete'];
      if(!keyValid.includes(event.key)) event.preventDefault()
    },
    updateNumberValue () {
      let v = this.model
      let parsed
      if(!v) return
      v = v.replace(this.thousandsSeparatorRegex, '')
      if (this.decimalSeparator !== '.') v = v.replace(this.decimalSeparatorRegex, this.thousandsSeparator)
      
      const result = tryParseFloat(v)
      if (!result) parsed = 0
      else parsed = result
      if (!this.allowNegative && result < 0) parsed = 0
      this.numberValue = parsed.toFixed(this.decimales)

      console.info( this.numberValue)
    },
    updateModel () {
      if (this.numberValue === null) return
      let v = this.numberValue.toString()
      v = v.replace(this.thousandsSeparatorRegex, this.decimalSeparator)
      this.model = v
    },
    format () {
      if (this.numberValue === null) return
      let v = Number(this.numberValue)
      v = v.toLocaleString(this.languageCode, {maximumFractionDigits: this.decimales})
      if (v.length !== 1 && v.slice(v.indexOf(this.decimalSeparator) + 1).length === 1) v += '0'
      this.model = v
    }
  },
  watch: {
    numberValue (v) {
      this.$emit('input', v)
    },
    value (v) {
      this.numberValue = v
      if (!this.$refs.field.isFocused) {
        this.format()
      }
    }
  },
  created () {
    this.format()
  }
}
</script>

<style lang="scss" scoped>
</style>