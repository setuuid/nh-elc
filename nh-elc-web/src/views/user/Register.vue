<template>
  <div class="main user-layout-register">
    <a-form>
      <h3><span>注册</span></h3>
      <a-form-item>
        <a-input size="large" v-model="username" type="text" placeholder="用户名"></a-input>
        <div class="tips" v-if="showUsername">请输入用户名</div>
      </a-form-item>
      <a-form-item>
        <a-input size="large" v-model="password" type="password"  autocomplete="false" placeholder="至少6位密码"></a-input>
        <div class="tips" v-if="showPassword">请输入密码</div>
        <div class="tips" v-if="showPassword3">请输入至少6位密码</div>
      </a-form-item>

      <a-form-item>
        <a-input size="large" v-model="password1" type="password"  autocomplete="false" placeholder="确认密码"></a-input>
        <div class="tips" v-if="showPassword1">请输入确认密码</div>
        <div class="tips" v-if="showPassword2">密码不一致</div>
      </a-form-item>

      <a-form-item>
        <a-input v-model="phone" size="large" placeholder="11 位手机号">
          <a-select slot="addonBefore" size="large" defaultValue="+86">
            <a-select-option value="+86">+86</a-select-option>
            <a-select-option value="+87">+87</a-select-option>
          </a-select>
        </a-input>
        <div class="tips" v-if="showPhone1">请输入手机号</div>
        <div class="tips" v-if="showPhone2">请输入正确手机号</div>
      </a-form-item>
      <!--<a-input-group size="large" compact>
            <a-select style="width: 20%" size="large" defaultValue="+86">
              <a-select-option value="+86">+86</a-select-option>
              <a-select-option value="+87">+87</a-select-option>
            </a-select>
            <a-input style="width: 80%" size="large" placeholder="11 位手机号"></a-input>
          </a-input-group>-->
      <a-form-item>
        <a-select  v-model="companyId" style="width: 100%">
          <a-select-option v-for="(item) in companyList" :key="item.companyId" >{{item.companyName}}</a-select-option>
        </a-select>
        <div class="tips" v-if="showCompany">请选择部门</div>
      </a-form-item>


      <a-form-item>
        <a-button
          size="large"
          type="primary"
          htmlType="submit"
          class="register-button"
          :loading="registerBtn"
          @click.stop.prevent="handleSubmit"
          :disabled="registerBtn">注册
        </a-button>
        <router-link class="login" :to="{ name: 'login' }">使用已有账户登录</router-link>
      </a-form-item>

<!--      <depart-window ref="departWindow" @ok="modalFormOk"></depart-window>-->

    </a-form>
  </div>
</template>

<script>
  import { mixinDevice } from '@/utils/mixin.js'
  import { getSmsCaptcha } from '@/api/login'
  import departWindow from '../system/modules/DepartWindow'
  import {getAction,httpAction} from '../../api/manage'

  export default {
    name: "Register",
    components: {
      departWindow,
    },
    mixins: [mixinDevice],
    data() {
      return {
        form: null,
        companyId:'请选择部门',
        companyList:[],
        state: {
          time: 60,
          smsSendBtn: false,
          passwordLevel: 0,
          passwordLevelChecked: false,
          percent: 10,
          progressColor: '#FF0000'
        },
        registerBtn: false,
        username:'',
        password:'',
        password1:'',
        phone:'',
        showUsername:false,
        showPassword:false,
        showPassword1:false,
        showPassword2:false,
        showPassword3:false,
        showPassword4:false,
        showPhone1:false,
        showPhone2:false,
        showCompany:false,
      }
    },
    computed: {

    },
    created(){
      this.getCompanyList()
    },
    methods: {

      handlePasswordLevel (rule, value, callback) {

        let level = 0

        // 判断这个字符串中有没有数字
        if (/[0-9]/.test(value)) {
          level++
        }
        // 判断字符串中有没有字母
        if (/[a-zA-Z]/.test(value)) {
          level++
        }
        // 判断字符串中有没有特殊符号
        if (/[^0-9a-zA-Z_]/.test(value)) {
          level++
        }
        this.state.passwordLevel = level
        this.state.percent = level * 30
        if (level >= 2) {
          if (level >= 3) {
            this.state.percent = 100
          }
          callback()
        } else {
          if (level === 0) {
            this.state.percent = 10
          }
          callback(new Error('密码强度不够'))
        }
      },

      handlePasswordCheck (rule, value, callback) {
        let password = this.form.getFieldValue('password')
        console.log('value', value)
        if((value.split('')).length<6){
          callback(new Error('请输入至少六位密码'))
        }else{
          if (value === undefined) {
            callback(new Error('请输入密码'))
          }
          if (value && password && value.trim() !== password.trim()) {
            callback(new Error('两次密码不一致'))
          }
        }

        callback()
      },

      handlePhoneCheck (rule, value, callback) {
       console.log('handlePhoneCheck, rule:', rule)
        console.log('handlePhoneCheck, value', value)
        console.log('handlePhoneCheck, callback', callback)

       callback()
      },

      handlePasswordInputClick () {
        if (!this.isMobile()) {
          this.state.passwordLevelChecked = true
          return;
        }
        this.state.passwordLevelChecked = false
      },

      handleSubmit() {


       if(this.username==''){
         this.showUsername=true;
       }else if(this.password==''){
         this.showPassword=true;
       }else if(this.password != this.password1){
         this.showPassword2=true
       }else if(this.phone==''){
         this.showPhone1=true;
       }else if(this.companyId=='请选择部门'){
         this.showCompany=true
       }else{
         if(this.showPassword1==false && this.showPassword2==false && this.showPassword3==false && this.showPassword4==false && this.showPhone2==false){
           var param ={
             username:this.username,
             password:this.password,
             phone:this.phone,
             selectedroles:this.companyId
           }
           httpAction('/sys/register',param,'post').then((res) => {
             // console.log("aaa"+JSON.stringify(res.result))
             if (res.success) {
               this.$message.info('注册成功！');
                this.$router.push('/user/login')
             }
           })
         }
       }
      },

      getCaptcha(e) {
        e.preventDefault()
        let that = this

        this.form.validateFields(['mobile'], {force: true},
          (err, values) => {
            if (!err) {
              this.state.smsSendBtn = true;

              let interval = window.setInterval(() => {
                if (that.state.time-- <= 0) {
                  that.state.time = 60;
                  that.state.smsSendBtn = false;
                  window.clearInterval(interval);
                }
              }, 1000);

              const hide = this.$message.loading('验证码发送中..', 0);

              getSmsCaptcha({mobile: values.mobile}).then(res => {
                setTimeout(hide, 2500);
                this.$notification['success']({
                  message: '提示',
                  description: '验证码获取成功，您的验证码为：' + res.result.captcha,
                  duration: 8
                })
              }).catch(err => {
                setTimeout(hide, 1);
                clearInterval(interval);
                that.state.time = 60;
                that.state.smsSendBtn = false;
                this.requestFailed(err);
              });
            }
          }
        );
      },
      requestFailed(err) {
        this.$notification['error']({
          message: '错误',
          description: ((err.response || {}).data || {}).message || "请求出现错误，请稍后再试",
          duration: 4,
        });
        this.registerBtn = false;
      },
     getCompanyList(){
       getAction('/sysdepart/sysDepart/queryBusConmpanyItems',{}).then((res) => {
         // console.log("aaa"+JSON.stringify(res.result))
         if (res.success) {
           this.companyList=res.result
         }
       })
     }
    },
    watch: {
      'state.passwordLevel' (val) {
        console.log(val)

      },
      'username'(val){
        if(val==''){
          this.showUsername=true
        }else {
          this.showUsername=false
        }
      },
      'password'(val){
        console.log(val)
        if(val==''){
          this.showPassword=true
          this.showPassword3=false
        }else if(val.split('').length < 6){
          this.showPassword3=true
          this.showPassword=false;
        }else{
          this.showPassword=false;
          this.showPassword3=false;
        }
      },
      'password1'(val){
        if(val==''){
          this.showPassword1=true
          this.showPassword2=false
        }else if(val.split('').length >=this.password.split('').length && this.password!=this.password1){
          this.showPassword2=true
          this.showPassword1=false
        }else {
          this.showPassword2=false;
          this.showPassword1=false;
        }
      },
      'phone'(val){
        var myreg = /^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/;
        if(val==''){
          this.showPhone1=true
          this.showPassword2=false
        }else if(val.split('').length >=11 && !myreg.test(this.phone)){
          this.showPhone1=false
          this.showPhone2=true
        }else{
          this.showPhone1=false
          this.showPhone2=false
        }
      },
      'companyId'(val){
        if(val=='请选择部门'){
          this.showCompany=true
        }else{
          this.showCompany=false
        }
      }
    }
  }
</script>
<style lang="scss">
  .user-register {

    &.error {
      color: #ff0000;
    }

    &.warning {
      color: #ff7e05;
    }

    &.success {
      color: #52c41a;
    }


  }

  .user-layout-register {
    .ant-input-group-addon:first-child {
      background-color: #fff;
    }
  }
</style>
<style lang="scss" scoped>
  .user-layout-register {



  h3  {
    font-size: 16px;
    color: #fff;
    text-align: center;
    margin: 10px;
  }
    .getCaptcha {
      display: block;
      width: 100%;
      height: 40px;
    }

    .register-button {
      width: 50%;
    }

    .login {
      float: right;
      line-height: 40px;
    }
  }
  .tips{
    color: red;
    position: absolute;
    top: 20px;
    width: 200px;
  }
</style>