<template>
  <a-card :bordered="false" class="card-area" style="margin: -10px -10px;">
    <div class="title">计划淘汰设备列表</div>
    <!-- 查询区域 -->
    <div class="table-page-search-wrapper">
      <a-form layout="inline">
        <a-row :gutter="24">

          <a-col :md="6" :sm="8">
            <a-form-item label="年度">
              <a-select  v-model="selectedYear" style="width: 200px" @change="handleYearChange">
                <a-select-option v-for="(item,index) in yearList" :key="index" >{{item}}</a-select-option>
              </a-select>
            </a-form-item>
          </a-col>

          <a-col :md="6" :sm="8" >
            <span style="float: left;overflow: hidden;" class="table-page-search-submitButtons">
              <a-button type="primary" @click="queryData" icon="search">查询</a-button>
              <a-button type="primary" @click="reset" icon="reload" style="margin-left: 8px">重置</a-button>
            </span>
          </a-col>

        </a-row>
      </a-form>
    </div >


    <!-- table区域-begin -->
    <div>

      <a-table
        ref="table"
        size="middle"
        bordered
        rowKey="id"
        :columns="columns"
        :dataSource="dataSource"
        :pagination="false"
        >
        <template slot="type_1_1" slot-scope="text,record,index">
          <a v-if="text > 0 && total!=index+1" href="javascript:;" @click="toEquipmentEliminateStatus(record,'1')">{{text}}</a>
          <span v-else-if="total==index+1">{{text}}</span>
          <span v-else>{{text}}</span>
      </template>
        <template slot="type_1_2" slot-scope="text, record,index">
        <a v-if="text > 0 && total!=index+1" href="javascript:;" @click="toEquipmentEliminateStatus(record,'1')">{{text}}</a>
        <span v-else-if="total==index+1">{{text}}</span>
        <span v-else>{{text}}</span>
      </template>
        <template slot="type_2_1" slot-scope="text,record,index">
          <a v-if="text > 0 && total!=index+1" href="javascript:;" @click="toEquipmentList(record,'2','1')">{{text}}</a>
          <span v-else-if="total==index+1">{{text}}</span>
          <span v-else>{{text}}</span>
        </template>
        <template slot="type_2_2" slot-scope="text, record,index">
          <a v-if="text > 0 && total!=index+1" href="javascript:;" @click="toEquipmentList(record,'2','2')">{{text}}</a>
          <span v-else-if="total==index+1">{{text}}</span>
          <span v-else>{{text}}</span>
        </template>
        <template slot="type_3_1" slot-scope="text, record,index">
          <a v-if="text > 0 && total!=index+1" href="javascript:;" @click="toEquipmentList(record,'4','1')">{{text}}</a>
          <span v-else-if="total==index+1">{{text}}</span>
          <span v-else>{{text}}</span>
        </template>
        <template slot="type_3_2" slot-scope="text, record,index">
          <a v-if="text > 0 && total!=index+1" href="javascript:;" @click="toEquipmentList(record,'4','2')">{{text}}</a>
          <span v-else-if="total==index+1">{{text}}</span>
          <span v-else>{{text}}</span>
        </template>
        <template slot="type_4_1" slot-scope="text, record,index">
          <a v-if="text > 0 && total!=index+1" href="javascript:;" @click="toEquipmentList(record,'5','1')">{{text}}</a>
          <span v-else-if="total==index+1">{{text}}</span>
          <span v-else>{{text}}</span>
        </template>
        <template slot="type_4_2" slot-scope="text, record,index">
          <a v-if="text > 0 && total!=index+1" href="javascript:;" @click="toEquipmentList(record,'5','2')">{{text}}</a>
          <span v-else-if="total==index+1">{{text}}</span>
          <span v-else>{{text}}</span>
        </template>
        <template slot="type_5_1" slot-scope="text, record,index">
          <a v-if="text > 0 && total!=index+1" href="javascript:;" @click="toEquipmentList(record,'6','1')">{{text}}</a>
          <span v-else-if="total==index+1">{{text}}</span>
          <span v-else>{{text}}</span>
        </template>
        <template slot="type_5_2" slot-scope="text, record,index">
          <a v-if="text > 0 && total!=index+1" href="javascript:;" @click="toEquipmentList(record,'6','2')">{{text}}</a>
          <span v-else-if="total==index+1">{{text}}</span>
          <span v-else>{{text}}</span>
        </template>

      </a-table>
    </div>
    <!-- table区域-end -->

  </a-card>
</template>

<script>

  import { getAction } from '@/api/manage'

  export default {
    name: "reportFormList",
    components: {
    },
    data () {
      return {
        description: '设备管理页面',
        dataSource:[],
        yearList:['请选择'],
        selectedYear:'请选择',
        // 表头
        columns: [
          {
            title: '#',
            dataIndex: '',
            key:'rowIndex',
            width:50,
            align:"center",
            customRender:function (t,r,index) {
              return parseInt(index)+1;
            }
          },
          {
            title: '公司名称',
            align:"center",
            dataIndex: 'departname',
          },
          {
            title: '特种设备类',
            align:"center",
            children: [{
              title: '已淘汰',
              align:"center",
              dataIndex: 'type_1_1',
              scopedSlots: { customRender: 'type_1_1' },
            },{
              title: '计划淘汰',
              align:"center",
              dataIndex: 'type_1_2',
              scopedSlots: { customRender: 'type_1_2' },
            }]
          },
          {
            title: '安全及其他设备类',
            align:"center",
            children: [{
              title: '已淘汰',
              align:"center",
              dataIndex: 'type_2_1',
              scopedSlots: { customRender: 'type_2_1' },
            },{
              title: '计划淘汰',
              align:"center",
              dataIndex: 'type_2_2',
              scopedSlots: { customRender: 'type_2_2' },
            }]
          },
          {
            title: '消防设备类',
            align:"center",
            children: [{
              title: '已淘汰',
              align:"center",
              dataIndex: 'type_3_1',
              scopedSlots: { customRender: 'type_3_1' },
            },{
              title: '计划淘汰',
              align:"center",
              dataIndex: 'type_3_2',
              scopedSlots: { customRender: 'type_3_2' },
            }]
          },
          {
            title: '环保设备类',
            align:"center",
            children: [{
              title: '已淘汰',
              align:"center",
              dataIndex: 'type_4_1',
              scopedSlots: { customRender: 'type_4_1' },
            },{
              title: '计划淘汰',
              align:"center",
              dataIndex: 'type_4_2',
              scopedSlots: { customRender: 'type_4_2' },
            }]
          },
          {
            title: '用电及节能设备类',
            align:"center",
            children: [{
              title: '已淘汰',
              align:"center",
              dataIndex: 'type_5_1',
              scopedSlots: { customRender: 'type_5_1' },
            },{
              title: '计划淘汰',
              align:"center",
              dataIndex: 'type_5_2',
              scopedSlots: { customRender: 'type_5_2' },
            }]
          },
          {
            title: '设备总量',
            align:"center",
            children: [{
              title: '已淘汰',
              align:"center",
              dataIndex: 'total_1',
            },{
              title: '计划淘汰',
              align:"center",
              dataIndex: 'total_2',
            }]
          },

        ],
        total:'',
      }
    },
    created(){

      var year=2018;
      for(var i=0;i<5;i++){
        this.yearList.push(year++)
      }
      if(this.selectedYear=='请选择'){
        var years=new Date();
        this.selectedYear=years.getFullYear();
      }
      this.queryData()
    },
    computed: {
      importExcelUrl: function(){
        return `${window._CONFIG['domianURL']}/${this.url.importExcelUrl}`;
      }
    },
    methods: {
      //跳转到设备淘汰情况表
      toEquipmentEliminateStatus(record,eTypeId){
        // console.log(JSON.stringify(record))
        var  param=this.selectedYear+"&&"+record.company_id+'&&'+eTypeId;
       this.$router.push( {path:'/EquipmentEliminateStatus/'+param});
      },
      //跳转到设备列表
      toEquipmentList(record,eTypeId,destoryType){
        // console.log(JSON.stringify(record))
        var  param='reprotFormList'+"&&"+record.company_id+"&&"+eTypeId+"&&"+parseInt(destoryType)+"&&"+this.selectedYear
        console.log(JSON.stringify(param))
        this.$router.push( {path:'/EquipmentList/'+param});
        // alert(this.$route.path)
      },
      handleYearChange(index){
        this.selectedYear=this.yearList[index];
      },
      queryData(){
        var param={year:this.selectedYear}
        getAction('/reportForm/queryEliminateEquipment',param).then((res) => {
          if (res.success) {
            this.dataSource=res.result
            this.total=this.dataSource.length
          }
        })
      },
      reset(){
        this.selectedYear=this.yearList[0]
        this.queryData()
      }
    }
  }
</script>
<style lang="less" scoped>
/** Button按钮间距 */
.title{
  width: 100%;
  height: 40px;
  margin-bottom: 17px;
  /* background: #4b99eb; */
  color: black;
  line-height: 40px;
  font-size: 18px;
}
  .ant-btn {
    margin-left: 3px
  }
  .ant-card-body .table-operator{
    margin-bottom: 18px;
  }
  .ant-table-tbody .ant-table-row td{
    padding-top:15px;
    padding-bottom:15px;
  }
  .anty-row-operator button{margin: 0 5px}
  .ant-btn-danger{background-color: #ffffff}

  .ant-modal-cust-warp{height: 100%}
  .ant-modal-cust-warp .ant-modal-body{height:calc(100% - 110px) !important;overflow-y: auto}
  .ant-modal-cust-warp .ant-modal-content{height:90% !important;overflow-y: hidden}
</style>