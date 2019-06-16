<template>
  <a-modal
    :title="title"
    :width="800"
    :ok=false
    :visible="visible"
    :confirmLoading="confirmLoading"
    :okButtonProps="{ props: {disabled: disableSubmit} }"
    @ok="handleOk"
    @cancel="handleCancel"
    cancelText="关闭">

    <a-spin :spinning="confirmLoading">
      <a-form :form="form">
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="机构名称"
          :hidden="false"
          hasFeedback >
          <a-input id="departName" placeholder="请输入机构/部门名称" v-decorator="['departName', validatorRules.departName ]"/>
        </a-form-item>
        <a-form-item :labelCol="labelCol" :wrapperCol="wrapperCol" :hidden="seen" label="上级部门" hasFeedback>
        <a-tree-select
          style="width:100%"
          :dropdownStyle="{maxHeight:'200px',overflow:'auto'}"
          :treeData="departTree"
          v-model="model.parentId"
          placeholder="请选择上级部门"
          :disabled="condition">
        </a-tree-select>
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="组织机构编码">
          <a-input placeholder="请输入组织机构编码" v-decorator="['orgCode', {'initialValue':''}]"/>
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="公司地址">
          <a-input placeholder="请输入公司地址" v-decorator="['address', {'initialValue':''}]"/>
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="邮政编码">
          <a-input placeholder="请输入邮政编码" v-decorator="['zipCode', {'initialValue':''}]"/>
        </a-form-item>
        <a-form-item :labelCol="labelCol" :wrapperCol="wrapperCol" label="单位性质">
          <Select v-model="companyProperty" placeholder="请输入单位性质"  style="width:388px;height:35px;" class="select_control" v-decorator="['companyProperty', {'initialValue':''}]" >
            <Option v-for="item in companyProperty" :value="item.value" :key="item.value">{{ item.text }}</Option>
          </Select>
        </a-form-item>
        <a-form-item :labelCol="labelCol" :wrapperCol="wrapperCol" label="所属行业">
            <a-input placeholder="请输入所属行业" v-decorator="['industry', {'initialValue':''}]"/>
          </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="法人">
          <a-input placeholder="请输入法人" v-decorator="['legalPerson', {'initialValue':''}]"/>
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="联系人">
          <a-input placeholder="请输入联系人" v-decorator="['contactPerson', {'initialValue':''}]"/>
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="联系电话">
          <a-input placeholder="请输入联系电话" v-decorator="['mobile', {'initialValue':''}]"/>
        </a-form-item>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          label="状态" >
          <a-radio-group v-decorator="['status', {'initialValue':'1'}]" placeholder="请选择状态">
            <a-radio value="1"> 有效</a-radio>
            <a-radio value="2">无效</a-radio>
          </a-radio-group>
        </a-form-item>
      </a-form>
    </a-spin>
  </a-modal>
</template>

<script>
  import { httpAction,getAction } from '@/api/manage'
  import { queryIdTree } from '@/api/api'
  import pick from 'lodash.pick'
  import ATextarea from 'ant-design-vue/es/input/TextArea'
  export default {
    name: "SysDepartModal",
    components: { ATextarea },
    data () {
      return {
        companyProperty:[],
        departTree:[],
        orgTypeData:[],
        phoneWarning:'',
        departName:"",
        title:"操作",
        seen:false,
        visible: false,
        condition:true,
        disableSubmit:false,
        model: {},
        menuhidden:false,
        menuusing:true,
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
        departName:{rules: [{ required: true, message: '请输入机构/部门名称!' }]},
        orgCode:{rules: [{ required: true, message: '请输入机构编码!' }]},
         mobile:{rules: [{validator:this.validateMobile}]}
        },
        url: {
          add: "/sysdepart/sysDepart/add",
        },
      }
    },
    created () {
    },
    methods: {

      loadTreeData(){
        var that = this;
        queryIdTree().then((res)=>{
          if(res.success){
            that.departTree = [];
            for (let i = 0; i < res.result.length; i++) {
              let temp = res.result[i];
              that.departTree.push(temp);
            }
          }

        }),
          //获取单位性质
          getAction('/sys/dict/getDictItems/company_property',{}).then((res) => {

            if (res.success) {
              that.companyProperty=[]
              for (let i = 0; i < res.result.length; i++) {
                let temp = res.result[i]
                that.companyProperty.push(temp)
              }
            }
          })
      },
      add (depart) {
        if(depart){
          this.seen = false;
        }else{
          this.seen = true;
        }
        this.edit(depart);
      },
      edit (record) {
          this.form.resetFields();
          this.model = Object.assign({}, {});
          this.visible = true;
          this.loadTreeData();
          this.model.parentId = record!=null?record.toString():null;
          this.$nextTick(() => {
            this.form.setFieldsValue(pick(this.model,'departName','departNameEn','departNameAbbr','departOrder','description','orgType','orgCode','mobile','fax','address','memo','status','delFlag'))
          });
      },
      close () {
        this.$emit('close');
        this.disableSubmit = false;
        this.visible = false;
      },
      handleOk () {
        const that = this;
        // 触发表单验证
        this.form.validateFields((err, values) => {
          if (!err) {
            that.confirmLoading = true;
            let formData = Object.assign(this.model, values);
            //时间格式化
            // console.log("formdata"+JSON.stringify(formData))
            httpAction(this.url.add,formData,"post").then((res)=>{
              if(res.success){
                that.$message.success(res.message);
                that.loadTreeData();
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
      validateMobile(rule,value,callback){
        if (!value || new RegExp(/^1([38][0-9]|4[579]|5[0-3,5-9]|6[6]|7[0135678]|9[89])\d{8}$/).test(value)){
          callback();
        }else{
          callback("您的手机号码格式不正确!");
        }

      }
    }
  }
</script>

<style scoped>

</style>