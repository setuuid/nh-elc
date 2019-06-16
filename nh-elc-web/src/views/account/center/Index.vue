<template>
  <div class="page-header-index-wide page-header-wrapper-grid-content-main">
    <a-row :gutter="24">
      <!--<a-col :xl="6" :lg="24" :md="24" :sm="24" :xs="24" >
        <a-card :bordered="false" style="height: 331px">
          <div class="account-center-avatarHolder">
            <div class="avatar">
              <img :src="getAvatarView()"/>
            </div>
            <div class="username">{{ nickname() }}</div>
          </div>
          <a-divider />
          <a-divider :dashed="true" />
        </a-card>
      </a-col>-->
      <a-col :xl="24" :lg="24" :md="24" :sm="24" :xs="24">
        <a-card :bordered="false">
          <a-form :form="form" layout="inline">
            <a-form-item label="用户账号" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input placeholder="请输入用户账号" v-decorator="[ 'username']" read-only/>
            </a-form-item>
            <a-form-item label="用户账号" :labelCol="labelCol" :wrapperCol="wrapperCol" style="display: none">
              <a-input placeholder="请输入用户账号" v-decorator="[ 'id']" read-only/>
            </a-form-item>
          <!--  <template v-if="!model.id">
              <a-form-item label="登陆密码" :labelCol="labelCol" :wrapperCol="wrapperCol" >
                <a-input type="password" placeholder="请输入登陆密码" v-decorator="[ 'password', validatorRules.password]" />
              </a-form-item>

              <a-form-item label="确认密码" :labelCol="labelCol" :wrapperCol="wrapperCol" >
                <a-input type="password" @blur="handleConfirmBlur" placeholder="请重新输入登陆密码" v-decorator="[ 'confirmpassword', validatorRules.confirmpassword]"/>
              </a-form-item>
            </template>
-->
            <a-form-item label="用户名字" :labelCol="labelCol" :wrapperCol="wrapperCol" >
              <a-input placeholder="请输入用户名称" v-decorator="[ 'realname', validatorRules.realname]" />
            </a-form-item>
           <!-- <a-form-item label="生日" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-date-picker
                style="width: 100%"
                placeholder="请选择生日"
                v-decorator="['birthday', {initialValue:moment(model.birthday,dateFormat)}]"/>
            </a-form-item>-->
            <a-form-item label="性别" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-select v-decorator="[ 'sex', {}]" placeholder="请选择性别">
                <a-select-option :value="1">男</a-select-option>
                <a-select-option :value="2">女</a-select-option>
              </a-select>
            </a-form-item>

            <a-form-item label="邮箱" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input placeholder="请输入邮箱" v-decorator="[ 'email', validatorRules.email]" />
            </a-form-item>

            <a-form-item label="手机号码" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-input placeholder="请输入手机号码" v-decorator="[ 'phone', validatorRules.phone]" />
            </a-form-item>
            <a-form-item label="头像" :labelCol="labelCol" :wrapperCol="wrapperCol">
              <a-upload
                listType="picture-card"
                class="avatar-uploader"
                :showUploadList="false"
                :action="uploadAction"
                :data="{'isup':1}"
                :headers="headers"
                :beforeUpload="beforeUpload"
                @change="handleChange"
              >
                <img v-if="model.avatar" :src="getAvatarView()" alt="头像" style="height:104px;max-width:300px"/>
                <div v-else>
                  <a-icon :type="uploadLoading ? 'loading' : 'plus'" />
                  <div class="ant-upload-text">上传</div>
                </div>
              </a-upload>
            </a-form-item>
          </a-form>

          <div class="drawer-bootom-button anty-form-btn" v-show="!disableSubmit">
            <a-popconfirm title="确定放弃编辑？" @confirm="handleCancel" okText="确定" cancelText="取消">
              <a-button style="margin-right: .8rem">取消</a-button>
            </a-popconfirm>
            <a-button @click="handleSubmit" type="primary" :loading="confirmLoading">提交</a-button>
          </div>
        </a-card>
      </a-col>
    </a-row>
  </div>
</template>

<script>
  import pick from 'lodash.pick'
  import moment from 'moment'
  import Vue from 'vue'
  // 引入搜索部门弹出框的组件
/*  import departWindow from './DepartWindow'*/
  import { ACCESS_TOKEN } from "@/store/mutation-types"
  import {  httpAction} from '@/api/manage'
  import {editUsers} from '@/api/api'
  import { mapGetters } from 'vuex'

  export default {
    name: "RoleModal",
    components: {
   /*   departWindow,*/
    },
    data() {
      return {
        modalWidth:800,
        drawerWidth:700,
        modaltoggleFlag:true,
        confirmDirty: false,
        selectedDepartKeys:[], //保存用户选择部门id
        checkedDepartKeys:[],
        checkedDepartNames:[], // 保存部门的名称 =>title
        checkedDepartNameString:"", // 保存部门的名称 =>title
        userId:"", //保存用户id
        disableSubmit:false,
        userDepartModel:{userId:'',departIdList:[]}, // 保存SysUserDepart的用户部门中间表数据需要的对象
        dateFormat:"YYYY-MM-DD",
        validatorRules:{
          realname:{rules: [{ required: true, message: '请输入用户名称!' }]},
          phone:{rules: [{validator: this.validatePhone}]},
          email:{rules: [{type: 'email', message: '请输入正确格式的电子邮箱!',}]},
          roles:{}
        },
        title:"操作",
        visible: false,
        model: {},
        roleList:[],
        selectedRole:[],
        labelCol: {
          xs: { span:8 },
          sm: { span:6 },
        },
        wrapperCol: {
          xs: { span: 24 },
          sm: { span: 18 },
        },
        uploadLoading:false,
        confirmLoading: false,
        headers:{},
        form:this.$form.createForm(this),
        url: {
          addUDepartIds:"/sys/user/addUDepartIds", // 引入为用户添加部门信息需要的url
          editUDepartIds:"/sys/user/editUDepartIds", // 引入为用户更新部门信息需要的url
          fileUpload: window._CONFIG['domianURL']+"/sys/common/upload",
          imgerver: window._CONFIG['domianURL']+"/sys/common/view",
          userWithDepart: "/sys/user/userDepartList", // 引入为指定用户查看部门信息需要的url
        },
      }
    },
    created () {
      const token = Vue.ls.get(ACCESS_TOKEN);
      this.headers = {"X-Access-Token":token}

    },
    mounted(){
      this.initChart();
    },
    computed: {
      uploadAction: function() {
        return this.url.fileUpload;
      }
    },
    methods: {
      ...mapGetters(["nickname", "avatar"]),
      getAvatar(){
        return window._CONFIG['imgDomainURL']+"/"+this.avatar();
      },
      initChart() {
        let url="sys/user/querySysUserAndDep";
        let method = 'get';
        let formData = "";
        httpAction(url,formData,method).then((res)=>{
          if (res.success) {
            this.userData = res.result;
            // console.log(this.userData)
            this.form.setFieldsValue(pick(this.userData,'id','username','sex','realname','email','phone'))
            this.model.avatar=this.userData.avatar;
          }
        })
      },
      close () {
        this.$emit('close');
        this.visible = false;
        this.disableSubmit = false;
        this.selectedRole = [];
        this.userDepartModel = {};
        this.checkedDepartNames = [];
      },
      moment,
      handleSubmit () {
        const that = this;
        // 触发表单验证
        this.form.validateFields((err, values) => {
          if (!err) {
            that.confirmLoading = true;
            let avatar = that.model.avatar;
            let formData = Object.assign(this.model, values);
            formData.avatar = avatar;
            that.initChart();
            let obj;
            obj=editUsers(formData);
            obj.then((res)=>{
              if(res.success){
                that.$message.success(res.message);
                that.initChart();
                that.$emit('ok');
              }else{
                that.$message.warning(res.message);
              }
            }).finally(() => {
              that.confirmLoading = false;
              that.checkedDepartNames = [];
              that.close();
            })

          }
         /* if (!err) {
            that.confirmLoading = true;
            let avatar = that.model.avatar;
            if(!values.birthday){
              values.birthday = '';
            }else{
              values.birthday = values.birthday.format(this.dateFormat);
            }
            let formData = Object.assign(this.model, values);
            formData.avatar = avatar;
            formData.selectedroles = this.selectedRole.length>0?this.selectedRole.join(","):'';
            that.confirmLoading = true;
            let obj;
              obj=editUsers(formData);
              obj.then((res)=>{
              if(res.success){
                that.$message.success(res.message);
                that.initChart();
                that.$emit('ok');
              }else{
                that.$message.warning(res.message);
              }
            }).finally(() => {
              that.confirmLoading = false;
              that.checkedDepartNames = [];
              that.close();
            })

          }*/
        })
      },
      //取消修改
      handleCancel () {
        this.initChart()
      },
      validatePhone(rule, value, callback){
        if(!value || new RegExp(/^1[3|4|5|7|8][0-9]\d{8}$/).test(value)){
          callback();
        }else{
          callback("请输入正确格式的手机号码!");
        }
      },
      handleConfirmBlur  (e) {
        const value = e.target.value
        this.confirmDirty = this.confirmDirty || !!value
      },

      normFile  (e) {
        // console.log('Upload event:', e)
        if (Array.isArray(e)) {
          return e
        }
        return e && e.fileList
      },
      beforeUpload: function(file){
        var fileType = file.type;
        if(fileType.indexOf('image')<0){
          this.$message.warning('请上传图片');
          return false;
        }
        //TODO 验证文件大小
      },
      handleChange (info) {
        //this.model.avatar=true;
        if (info.file.status === 'uploading') {
          this.uploadLoading = true
          return
        }
        if (info.file.status === 'done') {
          var response = info.file.response;
          this.uploadLoading = false;
          // console.log(response);
          if(response.success){
            this.model.avatar =response.message;
          }else{
            this.$message.warning(response.message);
          }
        }
      },
      getAvatarView(){
        return this.url.imgerver +"/"+ this.model.avatar;
      },

    }
  }
</script>

<style lang="scss" scoped>
  .anty-form-btn {
    width: 100%;
    text-align: center;
  }
  .anty-form-btn button {
    margin: 0 5px;
  }
  .ant-form-inline .ant-form-item {
    display: inline-block;
    width: 47%;
    margin: 10px;
  }
  .page-header-wrapper-grid-content-main {
    width: 100%;
    height: 100%;
    min-height: 100%;
    transition: .3s;

    .account-center-avatarHolder {
      text-align: center;
      margin-bottom: 24px;

      & > .avatar {
        margin: 0 auto;
        width: 104px;
        height: 104px;
        margin-bottom: 20px;
        border-radius: 50%;
        overflow: hidden;
        img {
          height: 100%;
          width: 100%;
        }
      }
      .username {
        color: rgba(0, 0, 0, 0.85);
        font-size: 20px;
        line-height: 28px;
        font-weight: 500;
        margin-bottom: 4px;
      }
    }

    .account-center-detail {

      p {
        margin-bottom: 8px;
        padding-left: 26px;
        position: relative;
      }

      i {
        position: absolute;
        height: 14px;
        width: 14px;
        left: 0;
        top: 4px;
        background: url(https://gw.alipayobjects.com/zos/rmsportal/pBjWzVAHnOOtAUvZmZfy.svg)
      }

      .title {
        background-position: 0 0;
      }
      .group {
        background-position: 0 -22px;
      }
      .address {
        background-position: 0 -44px;
      }
    }

    .account-center-tags {
      .ant-tag {
        margin-bottom: 8px;
      }
    }

    .account-center-team {

      .members {
        a {
          display: block;
          margin: 12px 0;
          line-height: 24px;
          height: 24px;
          .member {
            font-size: 14px;
            color: rgba(0, 0, 0, .65);
            line-height: 24px;
            max-width: 100px;
            vertical-align: top;
            margin-left: 12px;
            transition: all 0.3s;
            display: inline-block;
          }
          &:hover {
            span {
              color: #1890ff;
            }
          }
        }
      }
    }

    .tagsTitle, .teamTitle {
      font-weight: 500;
      color: rgba(0,0,0,.85);
      margin-bottom: 12px;
    }

  }

</style>