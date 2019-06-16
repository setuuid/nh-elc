<template>
  <div  class="page-header-index-wide">
<!--    首页-->
    <div v-show="roleCodes">
      <div style=" margin-top: -10px;">
        <a-card >
          <a-card-grid style="width:19.6%;textAlign:'center';background: #dfe2f3;margin-right: 0.5%;">
            <div class="sub-top-item">
              <div class="sub-top-item-sub" @click="toEquipmentLst('2')">
                <a>
                  <div class="left" style="background: #69ca88; "><img src="~@/assets/ico2.png"></div>
                </a><div class="right"><a href="javascript:;">
                <p class="top"><span style="color:#69ca88;">{{list1 || 0}}</span>  台/套</p>
              </a><p class="bottom"><a href="javascript:;" > 正常在役设备总量</a></p>
              </div>
              </div>
            </div>
          </a-card-grid>
          <a-card-grid style="width:19.6%;textAlign:'center';background: #dfe2f3;margin-right:0.5%;">
            <div class="sub-top-item">
              <div class="sub-top-item-sub" @click="toEquipmentLst('6')">
                <a>
                  <div class="left" style="background: #f0ac55; "><img src="~@/assets/ico3.png"></div>
                </a><div class="right"><a>
                <p class="top"><span style="color:#f0ac55;" >{{list2 || 0}}</span>  台/套</p>
              </a><p class="bottom"> 预警设备总量</p>
                <span class="b_span">近三个月内需检验/检查</span>
              </div>
              </div>
            </div>
          </a-card-grid>
          <a-card-grid style="width:19.6%;textAlign:'center';background: #dfe2f3;margin-right: 0.5%;">
            <div class="sub-top-item">
              <div class="sub-top-item-sub" @click="toEquipmentLst('5')">
                <a>
                  <div class="left" style="background: #7171c3; "><img src="~@/assets/ico4.png"></div>
                </a><div class="right"><a>
                <p class="top"><span style="color:#7171c3;"  >{{list3 || 0}}</span>  台/套</p>
              </a><p class="bottom"><a> 超期服役设备总量</a></p>
              </div>
              </div>
            </div>
          </a-card-grid>
          <a-card-grid style="width:19.6%;textAlign:'center';background: #dfe2f3;margin-right: 0.5%;">
            <div class="sub-top-item">
              <div class="sub-top-item-sub" >
                <a>
                  <div class="left" style="background: #488df4; "><img src="~@/assets/sbico.png"></div>

                </a><div class="right"><a href="javascript:;" @click="reportFormList()">
                <p class="top"><span style="color:#488df4;">{{list4 || 0}}</span>  台/套</p>
              </a><p class="bottom"><a href="javascript:;" @click="reportFormList()"> 计划淘汰设备总量</a></p>
              </div>
              </div>
            </div>
          </a-card-grid>
          <a-card-grid style="width:19.6%;textAlign:'center';background: #dfe2f3;">
            <div class="sub-top-item">
              <div class="sub-top-item-sub" @click="toEquipmentLst('3')">
                <a>
                  <div class="left" style="background: #e36e5b; "><img src="~@/assets/ico5.png"></div>

                </a><div class="right"><a>
                <p class="top"><span style="color:#e36e5b;">{{list5 || 0}}</span>  台/套</p>
              </a><p class="bottom"><a> 淘汰设备总量</a></p>
              </div>
              </div>
            </div>
          </a-card-grid>
        </a-card>
      </div>
      <a-row :gutter="12">
        <a-col :xl="9" :lg="24" :md="24" :sm="24" :xs="24" >
          <a-card   title="年度计划淘汰设备实时信息" :style="{ marginTop: '10px',height:'490px'}">
            <a-dropdown :trigger="['click']" placement="bottomLeft" slot="extra" >
              <a class="ant-dropdown-link" href="javascript:;" @click="reportFormList()">
                更多
              </a>
            </a-dropdown>
            <div style="height: 305px">
<!--              :class-option="classOption"-->
              <vue-seamless-scroll :data="equipmentList" :class-option="classOption" class="warp">
                <ul class="item">
                  <li v-for="item in equipmentList" >
                  <span @click="toEquipmentDetail(item)">{{item.companyId}}&nbsp;&nbsp;{{item.eTypeId}}&nbsp;&nbsp;设备：{{item.name}}&nbsp;&nbsp;
                    投入使用时间：{{item.useTime}}&nbsp;&nbsp; 计划淘汰时间：<span class="date" style="color:red" v-text="item.planDestoryTime"></span>
                  </span>
                  </li>
                </ul>
              </vue-seamless-scroll>
            </div>
          </a-card>
        </a-col>
        <a-col :xl="15" :lg="24" :md="24" :sm="24" :xs="24">
          <a-card  :bordered="false" title="设备总量概括" :style="{ marginTop: '10px',height:'490px',}">
            <div id="main" style="height:360px;width:720px;margin-left: -20px" ref="myEchart"> </div>
          </a-card>
        </a-col>
      </a-row>
    </div>

<!--    公司简介-->
    <div v-show="roleCodes1" style=" margin-top: -10px;margin-left: -10px;background: #fff;min-height: 72vh;">
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
              <a-input v-model="companyInfo.zipCode" />
            </a-form-item>
          </div>
          <div class="colStyle">
            <a-form-item :labelCol="labelCol" :wrapperCol="wrapperCol" style="width: 600px;" label="单位性质">
              <a-input v-model="companyInfo.companyPropertyName" />
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
  import ChartCard from '@/components/ChartCard'
  import ACol from "ant-design-vue/es/grid/Col"
  import ATooltip from "ant-design-vue/es/tooltip/Tooltip"
  import MiniArea from '@/components/chart/MiniArea'
  import MiniBar from '@/components/chart/MiniBar'
  import MiniProgress from '@/components/chart/MiniProgress'
  import RankList from '@/components/chart/RankList'
  import Bar from '@/components/chart/Bar'
  import Trend from '@/components/Trend'
  import Pie from '@/components/chart/Pie'
  import echarts from 'echarts'
  import { httpAction,getAction } from '@/api/manage'

  export default {
    name: "Analysis",
    components: {
      ATooltip,
      ACol,
      ChartCard,
      MiniArea,
      MiniBar,
      MiniProgress,
      RankList,
      Bar,
      Trend,
      Pie,
      echarts,
    },
    data () {
      return {
        labelCol: {
          xs: { span: 24 },
          sm: { span: 7 },
        },
        wrapperCol: {
          xs: { span: 10 },
          sm: { span: 15 },
        },
        companyInfo:{},
        charts: '',
        opinion:['特种设备类','安全设备类','消防设备类','环保设备类','用电及节能类'],
        opinionData:[
          {value:335, name:'特种设备类'},
          {value:310, name:'安全设备类'},
          {value:234, name:'消防设备类'},
          {value:135, name:'环保设备类'},
          {value:1048, name:'用电及节能类'},
        ],
        height:400,
        userList:"",
        equipmentList:[{}],
        equipment_type:"",
        queryCount:"",
        list1:"",
        list2:"",
        list3:"",
        list4:"",
        list5:"",
        e_type1:"",
        e_name1:"",
        e_key1:"",
        e_type2:"",
        e_name2:"",
        e_key2:"",
        e_type3:"",
        e_name3:"",
        e_key3:"",
        e_type4:"",
        e_name4:"",
        e_key4:"",
        e_type5:"",
        e_name5:"",
        e_key5:"",
        e_type6:"",
        e_name6:"",
        e_key6:"",
        chart: null,
        roleCodes:false,//admin
        roleCodes1:false,
      }
    },
    computed: {
      classOption: function () {
        return {
          step:0.1,
          limitMoveNum: 5
        }
      }
    },
    created(){
      this.getRole();

    },
    methods:{
      getCompanyInfo(){
        getAction('/sysdepart/sysDepart/queryCompany',{}).then((res) => {
          // console.log("aaa"+JSON.stringify(res.result))
          if (res.success) {
            this.companyInfo=res.result
          }
        })
      },
      getRole(){
        getAction('/sys/role/getRoleCodeByUserId',{}).then((res) => {
          // console.log("aaa"+JSON.stringify(res.result))
          if (res.success) {
            if(res.result=='admin'){
              this.roleCodes=true
            }else{
              this.roleCodes1=true
              this.getCompanyInfo();
            }
          }
        })
      },
      toEquipmentLst(eStatus){
        var param='analysis'+'&&'+eStatus
        // alert(JSON.stringify(param))
        this.$router.push( {path:'/EquipmentList/'+param});
      },
      reportFormList(){
          this.$router.push( {path:'/reportform/reportFormList'});
      },

      EquipmentByPlanTime:function(){ //年度计划淘汰设备实时信息
        let url="/equipment/equipment/EquipmentByPlanTime";
        let method = 'get';
        const that = this;
        let formData = "";
        httpAction(url,formData,method).then((res)=>{
          if(res.success){
            this.equipmentList= res.result;
          }else{
            that.$message.warning(res.message);
          }
        })
      },
      showData:function () {//设备状态
        let httpurl="/equipment/equipment/home";
        let method = 'get';
        const that = this;
        let formData = "";
        //时间格式化
        httpAction(httpurl,formData,method).then((res)=>{
          if(res.success){
            this.userList= res.result;
            this.list1=this.userList[1].value;
            this.list2=this.userList[5].value;
            this.list3=this.userList[4].value;
            this.list4=this.userList[3].value;
            this.list5=this.userList[2].value;
          }else{
            that.$message.warning(res.message);
          }
        })
      },
      initChart() {   //设备总量概括
        this.chart = echarts.init(this.$refs.myEchart);
        // 把配置和数据放这里
        let url="equipment/equipment/EquipmentByEtype";
        let method = 'get';
        let formData = "";
        httpAction(url,formData,method).then((res)=>{
          this.equipment_type= res.result;
          this.e_type1=this.equipment_type[0].value;
          this.e_name1=this.equipment_type[0].name;
          this.e_key1=this.equipment_type[0].key;
          this.e_type2=this.equipment_type[1].value;
          this.e_name2=this.equipment_type[1].name;
          this.e_key2=this.equipment_type[1].key;
          this.e_type3=this.equipment_type[3].value;
          this.e_name3=this.equipment_type[3].name;
          this.e_key3=this.equipment_type[3].key;
          this.e_type4=this.equipment_type[4].value;
          this.e_name4=this.equipment_type[4].name;
          this.e_key4=this.equipment_type[4].key;
          this.e_type5=this.equipment_type[5].value;
          this.e_name5=this.equipment_type[5].name;
          this.e_key5=this.equipment_type[5].key;
          this.e_type6=parseInt(this.e_type1)+parseInt(this.e_type2)+parseInt(this.e_type3)+parseInt(this.e_type4)+parseInt(this.e_type5);
          this.chart.setOption({
            tooltip: {
              trigger: 'item',
              formatter: "{a} <br/>{b}: {c} ({d}%)"
            },
            legend: {
              orient: 'horizontal',
              x: 'center',
              itemGap: 4,
              data: [this.e_name1, this.e_name2, this.e_name3, this.e_name4, this.e_name5]
            },
            series: [
              {
                name: '访问来源',
                type: 'pie',
                selectedMode: 'single',
                radius: [0, '35%'],
                center: ['50%', '50%'],
                label: {
                  normal: {
                    position: 'center',
                    padding: [3, 4, 5, 6],
                    color: '#fff',
                    formatter: '{b} \n{c}',
                    textStyle: {
                      fontWeight: 'normal',
                      fontSize: 16
                    }
                  }
                },
                labelLine: {
                  normal: {
                    show: false,
                  }
                },
                data: [
                  { value: this.e_type6, name: '设备总量' }
                ]
              },
              {
                name: '访问来源',
                type: 'pie',
                selectedMode: 'single',
                radius: ['45%', '70%'],

                label: {
                  normal: {
                    formatter: '  {b|{b}：}{c} {per|{d}%}  ',
                    borderColor: '#aaa',
                    fontSize: 14,
                    borderWidth: 1,
                    borderRadius: 4,
                    shadowBlur: 3,
                    shadowOffsetX: 2,
                    shadowOffsetY: 2,
                    shadowColor: '#999',
                    //padding: [0, 7],
                    rich: {
                      a: {
                        color: '#999',
                        lineHeight: 22,
                        align: 'center'
                      },
                      abg: {
                        backgroundColor: '#333',
                        width: '100%',
                        align: 'right',
                        height: 22,
                        borderRadius: [4, 4, 0, 0]
                      },
                      hr: {
                        borderColor: '#aaa',
                        width: '100%',
                        borderWidth: 0.5,
                        height: 0
                      },
                      b: {
                        fontSize: 14,
                        lineHeight: 40
                      },
                      per: {
                        color: '#eee',
                        backgroundColor: '#ff2a2f',
                        padding: [2, 4],
                        borderRadius: 2,
                      }
                    }
                  }
                },
                labelLine: {
                  normal: {
                    show: true,
                    length: 20,
                  }
                },
                data: [
                  { value: this.e_type1, name: this.e_name1 },
                  { value: this.e_type2, name: this.e_name2 },
                  { value: this.e_type3, name:this.e_name3 },
                  { value: this.e_type4, name:this.e_name4 },
                  { value: this.e_type5, name: this.e_name5 },
                ],
                itemStyle: {
                  emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                  },
                  normal: {
                    color: function(params) {
                      //自定义颜色
                      var colorList = [
                        '#7171c3', '#69ca88', '#e36e5b', '#f0ac55', '#488df4', '#FF2A2F',
                      ];
                      return colorList[params.dataIndex]
                    }
                  }
                }
              }
            ]
          })
        })
        let self = this;
        this.chart.on('click', function (param){
          this.id=param.dataIndex;
          this.name=param.name;
          if(this.id=='0'){
            if(this.name!=="设备总量"){
              // 特种设备类
              let id='1';
              self.$router.push({path: '/equipmentTypeList/'+id});
            }else{
              //设备总量
             self.$router.push({path: '/equipment/EquipmentTypeCount'});
            }
          }else if(this.id=='1'){
            // alert("安全及其他")
            let id='2';
            self.$router.push({path: '/equipmentTypeList/'+id});
          }else if(this.id=='2'){
            // alert("消防")
            let id='4';
            self.$router.push({path: '/equipmentTypeList/'+id});
          }else if(this.id=='3'){
            // alert("环保")
            let id='5';
            self.$router.push({path: '/equipmentTypeList/'+id});
          }else if(this.id=='4') {
            // alert("用电节能")
            let id='6';
            self.$router.push({path: '/equipmentTypeList/'+id});
          }
        });
      },
      toEquipmentDetail(record){
        // console.log("滾動列表"+JSON.stringify(record))
        var param=record.id
        this.$router.push( {path:'/EquipmentDetail/'+param});
      },
      getCompanyXz(){
        getAction('/sys/dict/getDictItems/company_property',{}).then((res) => {
          if (res.success) {
            this.companyProperty=res.result
          }
        })
      }

    },
    //调用
    mounted(){
     /* let _this=this;
      window.addEventListener("resize",function () {
        _this.chart.resize();
      })*/
      this.EquipmentByPlanTime();
      this.showData();
      this.initChart();
    },
    beforeDestroy() {
      if (!this.chart) {
        return
      }
      this.chart.dispose();
      this.chart = null;
    },
  }
</script>
<style lang="scss" scoped>
  .warp {
    height: 400px;
    overflow: hidden;
  }
  .warp ul {
    list-style: none;
    padding: 0;
    margin: 0 auto;
  }
  .warp li {
    border-bottom: 1px #ccc solid;
    line-height: 24px;
    padding: 10px;
  }
  .warp li a{
    color: #646464 !important;
  }
  .warp li a span{
    color: red;
  }
  .extra-wrapper {
    line-height: 55px;
    padding-right: 24px;

    .extra-item {
      display: inline-block;
      margin-right: 24px;

      a {
        margin-left: 24px;
      }
    }
  }
  .left {
    position: relative;
    width:52px;
    height: 52px;
    float: left;
    margin: 0 -10px;
    border-radius: 0.2133333333rem;
  }
  .left img {
    height: 27px;
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
  }
  .sub-top-item .sub-top-item-sub .right {
    width: 200px;

  }
  .top {
    padding-top: 0.2133333333rem;
  }
  .top span{
    font-size: 16px;
    margin-left: 28px;
  }
  .bottom {
    margin-top: -9px;
    font-size: 16px;
    margin-left: 60px;
  }
  .b_span{
    margin-left: 59px;
    font-size: 12px;
    display: block;
    margin-top: -17px;
    color: #666;
  }
  .bottom a{color:#666}
  /* 首页访问量统计 */
  .head-info {
    position: relative;
    text-align: left;
    padding: 0 32px 0 0;
    min-width: 125px;

    &.center {
      text-align: center;
      padding: 0 32px;
    }

    span {
      color: rgba(0, 0, 0, .45);
      display: inline-block;
      font-size: .95rem;
      line-height: 42px;
      margin-bottom: 4px;
    }
    p {
      line-height: 42px;
      margin: 0;
      a {
        font-weight: 600;
        font-size: 1rem;
      }
    }
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