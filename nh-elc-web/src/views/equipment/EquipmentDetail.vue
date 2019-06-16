<template>
  <a-card style="margin: -10px -10px;">
    <a-spin :spinning="confirmLoading">
      <a-form style="align-items: center;">

        <div style="width: 90%;"><h3>设备基本信息</h3></div>
        <div class="colStyle" >
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="设备种类">
              <a-input v-model="dataSource.eTypeName" style="width: 100%;" disabled/>
          </a-form-item>

          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="设备类别">
              <a-input v-model="dataSource.eCategoryName" style="width: 100%;" disabled/>
          </a-form-item>
        </div>
        <div class="colStyle">
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="设备名称">
            <a-input  v-model="dataSource.name" disabled/>
          </a-form-item>
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="安全等级">
            <a-input  v-model="dataSource.bitNumber" disabled/>
          </a-form-item>
        </div>
        <div class="colStyle">
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="设备位号">
            <a-input  v-model="dataSource.safeLevel" disabled/>
          </a-form-item>
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="所属单元">
            <a-input v-model="dataSource.unit" disabled/>
          </a-form-item>
        </div>
        <div class="colStyle">
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="设备型号">
            <a-input  v-model="dataSource.model" disabled/>
          </a-form-item>
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="使用状态">
            <a-input  v-model="dataSource.useStateText" disabled/>
          </a-form-item>
        </div>
        <div class="colStyle">
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="投入使用日期">
            <a-input  v-model="dataSource.useTime" disabled/>
<!--            <a-date-picker  :defaultValue="moment(dataSource.useTime,'YYYY-MM-DD')" disabled  style="width: 100%;"/>-->
          </a-form-item>
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="使用寿命(年)">
            <a-input  v-model="dataSource.year" disabled/>
          </a-form-item>
        </div>
        <div class="colStyle">
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="计划淘汰日期">
            <a-input  v-model="dataSource.planDestoryTime" disabled/>
<!--            <a-date-picker :defaultValue="moment(dataSource.planDestoryTime,'YYYY-MM-DD')"  style="width: 100%;" disabled/>-->
          </a-form-item>
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="使用证编号">
            <a-input v-model="dataSource.useCardNum" disabled />
          </a-form-item>
        </div>
        <div class="colStyle">
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="设备备注">
            <a-input  v-model="dataSource.mainNote"  disabled/>
          </a-form-item>
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="检验机构">
            <a-input v-model="dataSource.checkOrganization"  disabled/>
          </a-form-item>
        </div>
        <!--        <div style="width: 90%;"><h3>设备检验情况</h3></div>-->
        <div class="colStyle">
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="本次检验/评估日期">
            <a-input  v-model="dataSource.checkTime" disabled/>
<!--            <a-date-picker  style="width: 100%;" :defaultValue="moment(dataSource.checkTime,'YYYY-MM-DD')" disabled/>-->

          </a-form-item>
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="检验/评估结论">
              <a-input v-model="dataSource.testResult" disabled/>
          </a-form-item>
        </div>
        <div class="colStyle">
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="下次检验/评估日期">
            <a-input  v-model="dataSource.nextCheckTime" disabled/>
<!--            <a-date-picker  style="width: 100%;" :defaultValue="moment(dataSource.nextCheckTime,'YYYY-MM-DD')" disabled/>-->
          </a-form-item>
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="备注">
            <a-input v-model="dataSource.note" disabled/>
          </a-form-item>
        </div>

      </a-form>
    </a-spin>
  </a-card>
</template>

<script>
  import moment from "moment"
  import { getAction } from '@/api/manage'

  export default {
    name: "EquipmentDetail",
    data () {
      return {
        title:"操作",
        labelCol: {
          xs: { span: 12 },
          sm: { span: 7 },
        },
        wrapperCol: {
          xs: { span: 10 },
          sm: { span: 15 },
        },
        dataSource:{},
        confirmLoading:false,
      }
    },
    created () {
      var id=this.$route.params.code
      //
      getAction('/equipment/equipment/queryById/'+id,{}).then((res) => {
        // console.log("設備詳情："+JSON.stringify(res.result))
        if (res.success) {
          this.dataSource=res.result
        }
      })
    },
    watch: {
      //解决首页跳重复路由不走created()问题
      '$route' (to, from) { //监听路由是否变化
        var id=this.$route.params.code
        getAction('/equipment/equipment/queryById/'+id,{}).then((res) => {
          // console.log("aaa"+JSON.stringify(res.result))
          if (res.success) {
            this.dataSource=res.result
          }
        })
      }
    },
    methods: {
      moment,
    }
  }
</script>

<style scoped>
  .colStyle{
    display: flex;
    flex-direction: row;
  }
</style>