<template>
  <div  class="page-header-index-wide">
  <div style=" margin-top: -10px;margin-left: -10px;background: #fff;height: 70vh;">
    <div class="title">公司简介</div>
    <div style="align-items: center;margin-top: 40px; width: 100%;">
      <a-form style="align-items: center;">
        <div class="colStyle">
          <a-form-item
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            style="width: 600px;"
            label="公司名称">
            <a-input style="width: 100%;" v-model="companyInfo.departName"/>
          </a-form-item>
          <a-form-item
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            style="width: 600px;"
            label="组织机构代码">
            <a-input style="width: 100%;" v-model="companyInfo.orgCode" />
          </a-form-item>
        </div>
        <div class="colStyle">
          <a-form-item
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            style="width: 600px;"
            label="公司地址">
            <a-input v-model="companyInfo.address"/>
          </a-form-item>
          <a-form-item
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            style="width: 600px;"
            label="邮政编码">
            <a-input v-model="companyInfo.fax" />
          </a-form-item>
        </div>
        <div class="colStyle">
          <a-form-item :labelCol="labelCol" :wrapperCol="wrapperCol" style="width: 600px;" label="单位性质">
            <!--       <a-select placeholder="请输入单位性质"  v-model="companyProperty" style="width: 100%"  >
                     <a-select-option v-for="item in companyProperty" :value="item.value" :key="item.value">{{item.text}}</a-select-option>
                    </a-select>-->
            <a-input v-model="companyInfo.industry" />
          </a-form-item>
          <a-form-item
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            style="width: 600px;"
            label="所属行业">
            <a-input v-model="companyInfo.industry" />
          </a-form-item>
        </div>
        <div class="colStyle">
          <a-form-item
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            style="width: 600px;"
            label="法定代表人">
            <a-input v-model="companyInfo.companyProperty" />
          </a-form-item>
          <a-form-item
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            style="width: 600px;"
            label="联系人">
            <a-input v-model="companyInfo.legalPerson"/>
          </a-form-item>
        </div>
        <a-form-item
          :labelCol="labelCol"
          :wrapperCol="wrapperCol"
          style="width: 600px;margin-left: 40px"
          label="联系电话">
          <a-input v-model="companyInfo.mobile  " />
        </a-form-item>


      </a-form>
    </div>
  </div>
  </div>
</template>

<script>
  import { getAction } from '@/api/manage'
  export default {
    name: 'companyHomepPage',
    data(){
      return{
        companyInfo:{},
        labelCol: {
          xs: { span: 24 },
          sm: { span: 7 },
        },
        wrapperCol: {
          xs: { span: 10 },
          sm: { span: 15 },
        },
      }
    },
    created(){
      getAction('/sysdepart/sysDepart/queryCompany',{}).then((res) => {
        console.log("aaa"+JSON.stringify(res.result))
        if (res.success) {
          this.companyInfo=res.result
        }
      })
    },
  }
</script>

<style scoped>
  .colStyle{
    display: flex;
    flex-direction: row;
    justify-content: center;
  }
  .title{
    width: 100%;
    height: 40px;
    padding-left: 22px;
    padding-top: 24px;
    color: black;
    line-height: 40px;
    font-size: 18px;
  }
</style>