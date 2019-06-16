<template>
  <a-card :bordered="false">
    aaaaaa
  </a-card>
</template>

<script>
  import { getAction } from '@/api/manage'
  export default {
    data () {
      return {
        formLayout: 'horizontal',
        form: this.$form.createForm(this),
        areaOptions:[]
      }
    },
    methods: {
      handleSubmit (e) {
        e.preventDefault()
        this.form.validateFields((err, values) => {
          if (!err) {
            console.log('Received values of form: ', values)
          }
        })
      },
      handleSelectChange (value) {
        console.log(value)
        this.form.setFieldsValue({
          note: `Hi, ${value === 'male' ? 'man' : 'lady'}!`,
        })
      },
      onChange(value, selectedOptions) {
        console.log(value, selectedOptions);
      },
      filter(inputValue, path) {
        return (path.some(option => (option.label).toLowerCase().indexOf(inputValue.toLowerCase()) > -1));
      },
    },
    created (){
      getAction('/api/area').then((res) => {
        console.log("------------")
        console.log(res)
        this.areaOptions = res;
      })
    }
  }
</script>