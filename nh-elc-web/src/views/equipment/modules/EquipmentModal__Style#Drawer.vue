<template>
  <a-drawer
      :title="title"
      :width="800"
      placement="right"
      :closable="false"
      @close="close"
      :visible="visible"
  >

    <a-spin :spinning="confirmLoading">
      <a-form :form="form">
      
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="公司名称">
          <a-input placeholder="请输入公司名称" v-decorator="['companyId', {}]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="设备种类">
          <a-input-number v-decorator="[ 'eTypeId', {}]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="设备类别">
          <a-input-number v-decorator="[ 'eCategoryId', {}]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="设备名称">
          <a-input placeholder="请输入设备名称" v-decorator="['name', {}]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="安全等级">
          <a-input placeholder="请输入安全等级" v-decorator="['safeLevel', {}]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="设备位号">
          <a-input placeholder="请输入设备位号" v-decorator="['bitNumber', {}]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="所属单元">
          <a-input placeholder="请输入所属单元" v-decorator="['unit', {}]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="设备型号">
          <a-input placeholder="请输入设备型号" v-decorator="['model', {}]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="使用状态">
          <a-input placeholder="请输入使用状态" v-decorator="['useStatus', {}]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="投入使用日期">
          <a-date-picker v-decorator="[ 'userTime', {}]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="使用寿命(年)">
          <a-input placeholder="请输入使用寿命(年)" v-decorator="['year', {}]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="报废日期">
          <a-date-picker v-decorator="[ 'destoryTime', {}]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="实际淘汰日期">
          <a-date-picker v-decorator="[ 'realDestoryTime', {}]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="计划淘汰日期">
          <a-date-picker v-decorator="[ 'planDestoryTime', {}]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="状态">
          <a-input placeholder="请输入状态" v-decorator="['status', {}]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="添加日期">
          <a-date-picker v-decorator="[ 'addtime', {}]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="最后修改时间">
          <a-date-picker v-decorator="[ 'lastUpdateTime', {}]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="使用人">
          <a-input placeholder="请输入使用人" v-decorator="['uid', {}]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="出场编号">
          <a-input placeholder="请输入出场编号" v-decorator="['factoryNum', {}]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="使用证编号">
          <a-input placeholder="请输入使用证编号" v-decorator="['useCardNum', {}]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="设备备注">
          <a-input placeholder="请输入设备备注" v-decorator="['mainNote', {}]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="检验机构(特种设备特有)">
          <a-input placeholder="请输入检验机构(特种设备特有)" v-decorator="['checkOrganization', {}]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="维保单位/联系人(电梯类)">
          <a-input placeholder="请输入维保单位/联系人(电梯类)" v-decorator="['maintenanceUnit', {}]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="额定起重量（起重机械类设备特有）">
          <a-input placeholder="请输入额定起重量（起重机械类设备特有）" v-decorator="['ratedLoad', {}]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="二维码连接地址">
          <a-input placeholder="请输入二维码连接地址" v-decorator="['qrcodeLinksrc', {}]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="二维码图片地址">
          <a-input placeholder="请输入二维码图片地址" v-decorator="['qrcodeImgsrc', {}]" />
        </a-form-item>
		
      </a-form>
    </a-spin>
    <a-button type="primary" @click="handleOk">确定</a-button>
    <a-button type="primary" @click="handleCancel">取消</a-button>
  </a-drawer>
</template>

<script>
  import { httpAction } from '@/api/manage'
  import pick from 'lodash.pick'
  import moment from "moment"

  export default {
    name: "EquipmentModal",
    data () {
      return {
        title:"操作",
        visible: false,
        model: {},
        labelCol: {
          xs: { span: 24 },
          sm: { span: 5 },
        },
        wrapperCol: {
          xs: { span: 24 },
          sm: { span: 16 },
        },

        confirmLoading: false,
        form: this.$form.createForm(this),
        validatorRules:{
        },
        url: {
          add: "/equipment/equipment/add",
          edit: "/equipment/equipment/edit",
        },
      }
    },
    created () {
    },
    methods: {
      add () {
        this.edit({});
      },
      edit (record) {
        this.form.resetFields();
        this.model = Object.assign({}, record);
        this.visible = true;
        this.$nextTick(() => {
          this.form.setFieldsValue(pick(this.model,'companyId','eTypeId','eCategoryId','name','safeLevel','bitNumber','unit','model','useStatus','year','status','uid','factoryNum','useCardNum','mainNote','checkOrganization','maintenanceUnit','ratedLoad','qrcodeLinksrc','qrcodeImgsrc'))
		  //时间格式化
          this.form.setFieldsValue({userTime:this.model.userTime?moment(this.model.userTime):null})
          this.form.setFieldsValue({destoryTime:this.model.destoryTime?moment(this.model.destoryTime):null})
          this.form.setFieldsValue({realDestoryTime:this.model.realDestoryTime?moment(this.model.realDestoryTime):null})
          this.form.setFieldsValue({planDestoryTime:this.model.planDestoryTime?moment(this.model.planDestoryTime):null})
          this.form.setFieldsValue({addtime:this.model.addtime?moment(this.model.addtime):null})
          this.form.setFieldsValue({lastUpdateTime:this.model.lastUpdateTime?moment(this.model.lastUpdateTime):null})
        });

      },
      close () {
        this.$emit('close');
        this.visible = false;
      },
      handleOk () {
        const that = this;
        // 触发表单验证
        this.form.validateFields((err, values) => {
          if (!err) {
            that.confirmLoading = true;
            let httpurl = '';
            let method = '';
            if(!this.model.id){
              httpurl+=this.url.add;
              method = 'post';
            }else{
              httpurl+=this.url.edit;
               method = 'put';
            }
            let formData = Object.assign(this.model, values);
            //时间格式化
            formData.userTime = formData.userTime?formData.userTime.format():null;
            formData.destoryTime = formData.destoryTime?formData.destoryTime.format():null;
            formData.realDestoryTime = formData.realDestoryTime?formData.realDestoryTime.format():null;
            formData.planDestoryTime = formData.planDestoryTime?formData.planDestoryTime.format():null;
            formData.addtime = formData.addtime?formData.addtime.format():null;
            formData.lastUpdateTime = formData.lastUpdateTime?formData.lastUpdateTime.format():null;
            
            console.log(formData)
            httpAction(httpurl,formData,method).then((res)=>{
              if(res.success){
                that.$message.success(res.message);
                that.$emit('ok');
              }else{
                that.$message.warning(res.message);
              }
            }).finally(() => {
              that.confirmLoading = false;
              that.close();
            })



          }
        })
      },
      handleCancel () {
        this.close()
      },


    }
  }
</script>

<style lang="less" scoped>
/** Button按钮间距 */
  .ant-btn {
    margin-left: 30px;
    margin-bottom: 30px;
    float: right;
  }
</style>