<template>
  <a-modal
    :title="title"
    :width="1000"
    :visible="visible"
    :confirmLoading="confirmLoading"
    @ok="handleOk"
    @cancel="handleCancel"
    cancelText="关闭">

    <a-spin :spinning="confirmLoading">
      <a-form :form="form" style="align-items: center;">

        <div style="width: 90%;"><h3>设备基本信息</h3></div>
        <div class="colStyle" >
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="设备种类">
            <div class="tipstyle">*</div>
            <div v-if="isShowTip1" class="tiptext">请选择设备种类</div>
            <!--            <a-input-number v-decorator="[ 'eTypeId', {}]" />-->
            <a-select v-if="!isEdit"  v-model="newEtypeId" style="width: 100%" @change="handleeTypeChange" >
              <a-select-option v-for="(item,index) in equipmentType" :key="index" >{{item.eTypeName}}</a-select-option>
            </a-select>

            <a-select v-else v-model="editEtypeId"  style="width: 100%" @change="handleeTypeChange" >
              <a-select-option v-for="(item,index) in equipmentType" :key="index" >{{item.eTypeName}}</a-select-option>
            </a-select>

          </a-form-item>

          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="设备类别">
            <div class="tipstyle">*</div>
            <div v-if="isShowTip2" class="tiptext">请选择设备类别</div>
            <!--            <a-input-number v-decorator="[ 'eCategoryId', {}]" />-->

            <a-select v-if="!isEdit" v-model="newEclassify" style="width: 100%" @change="handleeClassifyChange">
              <a-select-option v-for="(item,index) in equipmentClassify" :key="index">{{item.eCategoryName}}</a-select-option>
            </a-select>

            <a-select v-else v-model="editEclassify" style="width: 100%" @change="handleeClassifyChange">
              <a-select-option v-for="(item,index) in equipmentClassify" :key="index">{{item.eCategoryName}}</a-select-option>
            </a-select>

          </a-form-item>
        </div>
        <div class="colStyle">
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="设备名称">
            <a-input placeholder="请输入设备名称" v-decorator="['name', {rules: [{ required: true, message: '请输入设备名称' }]}]" />
          </a-form-item>
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="安全等级">
            <a-input placeholder="请输入安全等级" v-decorator="['safeLevel', {rules: [{ required: true, message: '请输入安全等级' }]}]" />
          </a-form-item>
        </div>
        <div class="colStyle">
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="设备位号">
            <a-input placeholder="请输入设备位号" v-decorator="['bitNumber', {rules: [{ required: true, message: '请输入设备位号' }]}]" />
          </a-form-item>
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="所属单元">
            <a-input placeholder="请输入所属单元" v-decorator="['unit', {rules: [{ required: true, message: '请输入所属单元' }]}]" />
          </a-form-item>
        </div>
        <div class="colStyle">
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="设备型号">
            <a-input placeholder="请输入设备型号" v-decorator="['model', {}]" />
          </a-form-item>
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="使用状态">
            <div class="tipstyle">*</div>
            <div v-if="isShowTip3" class="tiptext">请选择使用状态</div>
            <a-select v-if="!isEdit" v-model="newUseStatus" style="width: 100%" @change="handleUseStatusChange">
              <a-select-option v-for="(status,index) in useStatus" :key="index">{{status.text}}</a-select-option>
            </a-select>

            <a-select v-else v-model="editUseStatus" style="width: 100%" @change="handleUseStatusChange">
              <a-select-option v-for="(status,index) in useStatus" :key="index">{{status.text}}</a-select-option>
            </a-select>
          </a-form-item>
        </div>
        <div class="colStyle">
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="投入使用日期">
            <a-date-picker v-decorator="[ 'useTime', {rules: [{ required: true, message: '请输入投入使用日期' }]}]"  style="width: 100%;"/>
          </a-form-item>
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="使用寿命(年)">
            <div class="tipstyle" style="left: -102px;">*</div>
            <div v-if="showYearTip" class="tiptext">使用寿命不可小于0年</div>
            <div v-if="showYearTip1" class="tiptext">请输入使用寿命</div>
<!--            v-decorator="['year', {rules: [{ required: true, message: '请输入使用寿命' }]}]"-->
            <a-input placeholder="请输入使用寿命(年)" min="1" type="number" v-model="yearFlag"  />
          </a-form-item>
        </div>
        <div class="colStyle">
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="计划淘汰日期">
            <a-date-picker v-decorator="[ 'planDestoryTime', {}]" style="width: 100%;"/>
          </a-form-item>
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="使用证编号">
            <a-input placeholder="请输入使用证编号" v-decorator="['useCardNum', {}]" />
          </a-form-item>
        </div>
        <div class="colStyle">
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="设备备注">
            <a-input placeholder="请输入设备备注" v-decorator="['mainNote', {}]" />
          </a-form-item>
          <a-form-item
            v-if="showjyjg==true"
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="检验机构">
            <a-input placeholder="请输入检验机构" v-decorator="['checkOrganization', {}]" />
          </a-form-item>
        </div>
        <!--        <div style="width: 90%;"><h3>设备检验情况</h3></div>-->
        <div class="colStyle">
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="本次检验/评估日期">
            <a-date-picker :disabled="isEdit?true:false"  style="width: 100%;" v-decorator="[ 'checkTime', {rules: [{ required: true, message: '请输入本次检验/评估日期' }]}]"/>

          </a-form-item>
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="检验/评估结论">
            <div class="tipstyle" style="left: -115px;">*</div>
            <div v-if="isShowTip4" class="tiptext">请选择检验/评估结论</div>
            <a-select v-if="!isEdit" v-model="newResult" style="width: 100%" @change="handleResultChange">
              <a-select-option v-for="(item,index) in jyresult" :key="index">{{item.text}}</a-select-option>
            </a-select>
            <a-select v-else v-model="editResult" style="width: 100%" @change="handleResultChange">
              <a-select-option v-for="(item,index) in jyresult" :key="index">{{item.text}}</a-select-option>
            </a-select>
          </a-form-item>
        </div>
        <div class="colStyle">
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="下次检验/评估日期">
            <a-date-picker :disabled="isEdit?true:false" style="width: 100%;" v-decorator="[ 'nextCheckTime', {rules: [{ required: true, message: '请输入下次检验/评估日期' }]}]"/>
          </a-form-item>
          <a-form-item
            style="width: 50%;"
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="备注">
            <a-input placeholder="请输入备注" v-decorator="[ 'note', {}]"/>
          </a-form-item>
        </div>

      </a-form>
    </a-spin>
  </a-modal>
</template>

<script>
  import {httpAction,getAction} from '@/api/manage'
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
          xs: { span: 12 },
          sm: { span: 7 },
        },
        wrapperCol: {
          xs: { span: 10 },
          sm: { span: 15 },
        },
        confirmLoading: false,
        form: this.$form.createForm(this),
        validatorRules:{
        },
        url: {
          add: "/equipment/equipment/add",
          edit: "/equipment/equipment/edit",
        },
        useStatus:'',//使用状态
        useStatusIndex:'',//使用状态索引
        equipmentType:'',//设备种类
        equipmentClassify:'',//设备类别
        jyresult:'',//检验结果
        jyresultIndex:'',//检验结果索引
        eTypeIndex:'',//设备种类索引,
        eClassifyIndex:'',//设备类别索引
        isEdit:false,//编辑页 显示回显数据
        editEtypeId:'',//编辑设备种类
        editEclassify:'',//编辑设备类别
        editUseStatus:'',//编辑使用状态
        editResult:'',//编辑检验结果
        newResult:'请选择',//新增检验结果
        newEtypeId:'请选择',//新增设备种类
        newEclassify:'请选择',//新增设备类别
        newUseStatus:'请选择',//新增使用状态
        record:'',
        isShowTip1:false,
        isShowTip2:false,
        isShowTip3:false,
        isShowTip4:false,
        showYearTip:false,
        showYearTip1:false,
        showYearTip2:false,
        showjyjg:false,
        yearFlag:'',
        checkTime:'',
        nextCheckTime:'',
        note:'',
        equipmentRecord:'',

      }
    },
    created () {
      this.equipmentType= JSON.parse(localStorage.getItem("equipmentType"));
      this.useStatus=JSON.parse(localStorage.getItem("useStatus"))
      this.jyresult=JSON.parse(localStorage.getItem("jyresult"))
    },
    watch: {
      'eTypeIndex' (val) {
        this.isShowTip1=false;
        if(val==0){
          this.showjyjg=true
        }else{
          this.showjyjg=false
        }
      },
      'eClassifyIndex' () {
        this.isShowTip2=false;
      },
      'useStatusIndex' () {
        this.isShowTip3=false;
      },
      'jyresultIndex' () {
        this.isShowTip4=false;
      },
      'yearFlag'(val){
        // alert(val)
        if(val<=0 && val!='' ){
          this.showYearTip1=false
          this.showYearTip=true
        }else if(val==''){
          // alert(222)
          if(this.showYearTip2==false){
            this.showYearTip=false
            this.showYearTip1=true
          }

        }else{
          this.showYearTip=false
          this.showYearTip1=false
        }
      }
    },
    methods: {
      moment,
      add () {
        this.edit({});
      },
      edit (record) {
        this.form.resetFields();
        this.model = Object.assign({}, record);
        this.visible = true;
        // console.log("sslskdkd"+JSON.stringify(record))
        if(record.name){
          //进入新增页
          this.isEdit=true;
        }else{
          //进入的是编辑页
          this.isEdit=false;
        }
        this.record=record
        // console.log(JSON.stringify(record))

        this.$nextTick(() => {
          // this.form.setFieldsValue(pick(this.model,'eTypeId','eCategoryId','name','safeLevel','bitNumber','unit','model','useStatus','year','status','uid','factoryNum','useCardNum','mainNote','checkOrganization','maintenanceUnit','ratedLoad','qrcodeLinksrc','qrcodeImgsrc'))
          // this.form.setFieldsValue({useTime:this.model.useTime?moment(this.model.useTime):null})
          setTimeout(()=>{
            this.form.setFieldsValue(pick(this.model,'eTypeId','eCategoryId','name','safeLevel','bitNumber','unit','model','useStatus','year','status','uid','factoryNum','useCardNum','mainNote','checkOrganization','maintenanceUnit','ratedLoad','qrcodeLinksrc','qrcodeImgsrc'))
          },3000)
          this.form.setFieldsValue({destoryTime:this.model.destoryTime?moment(this.model.destoryTime):null})
          this.form.setFieldsValue({realDestoryTime:this.model.realDestoryTime?moment(this.model.realDestoryTime):null})
          this.form.setFieldsValue({planDestoryTime:this.model.planDestoryTime?moment(this.model.planDestoryTime):null})
          this.form.setFieldsValue({addtime:this.model.addtime?moment(this.model.addtime):null})
          // this.form.setFieldsValue({lastUpdateTime:this.model.lastUpdateTime?moment(this.model.lastUpdateTime):null})
          // console.log("model"+JSON.stringify(this.model))
          if(this.isEdit){
            this.showYearTip2==false
            this.yearFlag=record.year;
            //如果是编辑页，获取所有下拉框的值和最后一个备注框的值
            for(var i=0;i<this.equipmentType.length;i++){ //设备种类
              if(this.equipmentType[i].eTypeId==record.eTypeId){
                this.editEtypeId=this.equipmentType[i].eTypeName
                if(this.editEtypeId=='特种设备类'){
                  this.showjyjg=true
                }else{
                  this.showjyjg=false
                }
                this.selectEclassify(record.eTypeId);//设备类别
              }
            }
            for(var j=0;j<this.useStatus.length;j++){ //使用状态
              if(record.useStatus==this.useStatus[j].value){
                this.editUseStatus=this.useStatus[j].text
              }
            }
            this.yearFlag=record.year;
            for(var m=0;m<this.jyresult.length;m++){ //检验结果
              if(record.result==parseInt(this.jyresult[m].value)){
                this.editResult=this.jyresult[m].text
              }
            }
            getAction('/equipment/equipment/queryById/'+record.id,{}).then((res) => {
              // console.log("aaass"+JSON.stringify(res.result))
              if (res.success) {
                this.equipmentRecord=res.result;
                this.form.setFieldsValue({checkTime:res.result.checkTime?moment(res.result.checkTime):null})
                this.form.setFieldsValue({nextCheckTime:res.result.nextCheckTime?moment(res.result.nextCheckTime):null})
                this.form.setFieldsValue({note:res.result.note?res.result.note:null})
                this.form.setFieldsValue({result:res.result.result?res.result.result:null})
                for(var m=0;m<this.jyresult.length;m++){ //检验结果
                  if(res.result.result==parseInt(this.jyresult[m].value)){
                    this.editResult=this.jyresult[m].text
                  }
                }
              }
            })
          }else
            {
            //如果是新增页 清空所有下拉框标志
            this.newEtypeId="请选择";
            this.newEclassify="请选择";
            this.newUseStatus="请选择";
            this.newResult="请选择";
            this.eTypeIndex="";
            this.useStatusIndex="";
            this.jyresultIndex="";
            this.eClassifyIndex="";
            this.yearFlag="";
            this.showYearTip=false;
            this.showYearTip1=false;
            this.showYearTip2=true;
          }
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
          // console.log("valuses:"+JSON.stringify(values))
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
              this.showYearTip=false
              //时间格式化
              formData.useTime = formData.useTime?formData.useTime.format():null;
              formData.destoryTime = formData.destoryTime?formData.destoryTime.format():null;
              // formData.realDestoryTime = formData.realDestoryTime?formData.realDestoryTime.format():null;
              formData.planDestoryTime = formData.planDestoryTime?formData.planDestoryTime.format():null;
              formData.addtime = formData.addtime?formData.addtime.format():null;
              formData.year=this.yearFlag;
              formData.checkTime=formData.checkTime?formData.checkTime.format():null;
              formData.nextCheckTime=formData.nextCheckTime?formData.nextCheckTime.format():null;
              // var equipmentRecord;
              if(this.isEdit){//编辑
                // equipmentRecord=this.equipmentRecord.equipmentRecord;
                formData.eTypeId=this.eTypeIndex==""?this.record.eTypeId:this.equipmentType[this.eTypeIndex].eTypeId;
                formData.eTypeName=this.eTypeIndex==""?this.record.eTypeName:this.equipmentType[this.eTypeIndex].eTypeName;
                formData.eCategoryId=this.eClassifyIndex==""?this.record.eCategoryId:this.equipmentClassify[this.eClassifyIndex].eCategoryId;
                formData.eCategoryName=this.eClassifyIndex==""?this.record.eCategoryName:this.equipmentClassify[this.eClassifyIndex].eCategoryName;
                formData.useStatus=this.useStatusIndex==""?this.record.useStatus:parseInt(this.useStatus[this.useStatusIndex].value);
                formData.result=this.jyresultIndex==""?this.record.result:parseInt(this.jyresult[this.jyresultIndex].value);
                formData.equipmentId=this.equipmentRecord.equipmentId
                formData.equipmentRecordId=this.equipmentRecord.equipmentRecordId
                formData.addType=this.equipmentRecord.addType
                formData.testResult=this.equipmentRecord.testResult

              }else
              {//新增
                if(this.eTypeIndex===''){
                  this.isShowTip1=true;
                }else{
                  formData.eTypeId=this.equipmentType[this.eTypeIndex].eTypeId;
                }
                if(this.eClassifyIndex===""){
                  this.isShowTip2=true;
                }else{
                  formData.eCategoryId=this.equipmentClassify[this.eClassifyIndex].eCategoryId;
                }
                if(this.useStatusIndex===""){
                  this.isShowTip3=true;
                }else{
                  formData.useStatus=parseInt(this.useStatus[this.useStatusIndex].value)
                }
                if(this.jyresultIndex===""){
                  this.isShowTip4=true;
                }else{
                  formData.result=parseInt(this.jyresult[this.jyresultIndex].value)
                }
                if(this.yearFlag==''){
                  this.showYearTip1=true;
                }else if(this.yearFlag<=0){
                  this.showYearTip=true;
                }else {
                  formData.year=this.yearFlag;
                }
              }

            // console.log("formData:"+JSON.stringify(formData))
            // that.confirmLoading = false;
              if(this.isShowTip3==false && this.isShowTip1==false && this.isShowTip2==false && this.isShowTip4==false && this.showYearTip==false && this.showYearTip1==false){

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
              }else{
                that.confirmLoading = false;
              }
            }

        })
      },
      handleCancel () {
        this.close()
      },
      handleeTypeChange(index) {
        // console.log("this.eTypeIndex"+this.eTypeIndex)
        this.eTypeIndex=index;
        // console.log(this.equipmentType[this.eTypeIndex])
        //根据设备种类id查询设备类别
        var param={eTypeId:this.equipmentType[index].eTypeId}
        getAction('/etype/queryItemsECateGory',param).then((res) => {
          // console.log("aaa"+JSON.stringify(res.result))
          if (res.success) {
            this.equipmentClassify=res.result
            this.newEclassify='请选择'
            this.editEclassify=''

          }
        })
      },
      selectEclassify(id){
        var param={eTypeId:id}
        getAction('/etype/queryItemsECateGory',param).then((res) => {
          if (res.success) {
            this.equipmentClassify=res.result
            if(this.equipmentClassify.length<=0){
              this.editEclassify=''
            }else{
              for(var j=0;j<this.equipmentClassify.length;j++){
                if(this.equipmentClassify[j].eCategoryId==this.record.eCategoryId){
                  this.editEclassify=this.equipmentClassify[j].eCategoryName
                }
              }
            }

          }
        })
      },
      handleeClassifyChange(index){
        this.eClassifyIndex=index;
        // console.log("eClassifyIndex"+this.eClassifyIndex)
      },
      handleUseStatusChange(index){
        this.useStatusIndex=index;
        // console.log("useStatusIndex"+this.useStatusIndex)
      },
      handleResultChange(index){
        this.jyresultIndex=index;
        // console.log("jyresultIndex"+this.jyresultIndex)
      },
    }
  }
</script>

<style scoped>
  .colStyle{
    display: flex;
    flex-direction: row;
  }
  .tipstyle{
    display: inline-block;
    margin-right: 4px;
    font-family: SimSun;
    line-height: 1;
    font-size: 14px;
    color: #f5222d;
    position: absolute;
    left: -80px;
    top: 2px;
  }
  .tiptext{
    display: inline-block;
    position: absolute;
    color: #f5222d;
    left: 0px;
    top: 20px;
  }
</style>