<template>
  <a-modal
    :width="0"
    :height="0"
    style="top: -100px;text-align: center"
    :visible="visible">
    <a-spin tip="Loading..." style="margin-top: 400px;position: absolute;"/>
    <template slot="footer">
      <a-button key="back" style="display: none;"></a-button>
      <a-button key="submit" type="primary" style="display: none;">
      </a-button>
    </template>
  </a-modal>
</template>

<script>
  export default {
    name: 'downShade',
    data(){
      return{
        visible: false,
      }
    },
    created(){

    },
    methods:{
      showShade(){
        this.visible=true
        // this.
      },
      closeShade(){
        this.visible=false
      },
    }
  }
</script>

<style scoped>
.ant-modal-close,
.ant-modal{
  display: none;
}
</style>