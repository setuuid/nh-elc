<template>
  <a-modal
    :title="title"
    :width="800"
    :visible="visible"
    :confirmLoading="confirmLoading"
    @ok="handleOk"
    @cancel="handleCancel"
    cancelText="关闭">
    
    <a-spin :spinning="confirmLoading">
      <a-form :form="form">
      
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="equipmentId">
          <a-input-number v-decorator="[ 'equipmentId', validatorRules.equipmentId ]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="设备记录ID">
          <a-input-number v-decorator="[ 'equipmentRecordId', validatorRules.equipmentRecordId ]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="userId">
          <a-input-number v-decorator="[ 'userId', validatorRules.userId ]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="用户名">
          <a-input placeholder="请输入用户名" v-decorator="['username', validatorRules.username ]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="操作人所属公司">
          <a-input-number v-decorator="[ 'companyId', validatorRules.companyId ]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="修改内容">
          <a-input placeholder="请输入修改内容" v-decorator="['content', validatorRules.content ]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="备注">
          <a-input placeholder="请输入备注" v-decorator="['note', validatorRules.note ]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="addtime">
          <a-date-picker showTime format='YYYY-MM-DD HH:mm:ss' v-decorator="[ 'addtime', validatorRules.addtime ]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="设备状态">
          <a-input placeholder="请输入设备状态" v-decorator="['status', validatorRules.status ]" />
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="设备类型">
          <a-input placeholder="请输入设备类型" v-decorator="['type', validatorRules.type ]" />
        </a-form-item>
		
      </a-form>
    </a-spin>
  </a-modal>
</template>

<script>
  import { httpAction } from '@/api/manage'
  import pick from 'lodash.pick'
  import moment from "moment"

  export default {
    name: "EquipmentLogModal",
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
        equipmentId:{rules: [{ required: true, message: '请输入equipmentId!' }]},
        equipmentRecordId:{rules: [{ required: true, message: '请输入设备记录ID!' }]},
        userId:{rules: [{ required: true, message: '请输入userId!' }]},
        username:{rules: [{ required: true, message: '请输入用户名!' }]},
        companyId:{rules: [{ required: true, message: '请输入操作人所属公司!' }]},
        content:{rules: [{ required: true, message: '请输入修改内容!' }]},
        note:{rules: [{ required: true, message: '请输入备注!' }]},
        addtime:{rules: [{ required: true, message: '请输入addtime!' }]},
        status:{rules: [{ required: true, message: '请输入设备状态!' }]},
        type:{rules: [{ required: true, message: '请输入设备类型!' }]},
        },
        url: {
          add: "/equipmentlog/equipmentLog/add",
          edit: "/equipmentlog/equipmentLog/edit",
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
          this.form.setFieldsValue(pick(this.model,'equipmentId','equipmentRecordId','userId','username','companyId','content','note','status','type'))
		  //时间格式化
          this.form.setFieldsValue({addtime:this.model.addtime?moment(this.model.addtime):null})
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
            formData.addtime = formData.addtime?formData.addtime.format('YYYY-MM-DD HH:mm:ss'):null;
            
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

<style scoped>

</style>