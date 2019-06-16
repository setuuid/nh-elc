<template>
  <a-card :bordered="false" class="card-area" style="margin: -10px -10px;">
    <!-- table区域-begin -->
    <div>
      <a-table
        ref="table"
        size="middle"
        bordered
        rowKey="company_id"
        :columns="columns"
        :dataSource="dataSource"
        :pagination="false"
      >

        <template slot="type_1" slot-scope="text, record">
          <a v-if="text > 0" href="javascript:;" @click="toEquipmentLst(record,'2')">{{text}}</a>
          <span v-else>{{text}}</span>
        </template>
        <template slot="census" slot-scope="text, record">
          <a v-if="text > 0" href="javascript:;" @click="toEquipmentLst(record,'5')">{{text}}</a>
          <span v-else>{{text}}</span>
        </template>
        <template slot="total" slot-scope="text, record">
          <a v-if="text > 0" href="javascript:;" @click="toEquipmentLst(record,'6')">{{text}}</a>
          <span v-else>{{text}}</span>
        </template>
        <template slot="type_2" slot-scope="text, record">
          <a v-if="text > 0" href="javascript:;" @click="toEquipmentLst(record,'3')">{{text}}</a>
          <span v-else>{{text}}</span>
        </template>
      </a-table>
    </div>
  </a-card>
</template>

<script>
  import { httpAction } from '@/api/manage'
  export default {
    name: "queryCountByCompany",
    components: {
    },
    data () {
      return {
        dataSource:[],
        description: '设备总量',
        // 表头
        columns: [
          {
            title: '序号',
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
            dataIndex: 'company'
          },
          {
            title: '正常在役设备总量',
            align:"center",
            dataIndex: 'type_1',
            scopedSlots: { customRender: 'type_1' },
          },
          {
            title: '超期在役设备总量',
            align:"center",
            dataIndex: 'census',
            scopedSlots: { customRender: 'census' },
          },
          {
            title: '预警设备总量',
            align:"center",
            dataIndex: 'total',
            scopedSlots: { customRender: 'total' },
          },
          {
            title: '淘汰设备总量',
            align:"center",
            dataIndex: 'type_2',
            scopedSlots: { customRender: 'type_2' },
          },
        ],
        eTypeId:''
      }
    },
    created(){
      this.eTypeId=this.$route.params.code
      this.qeuipmentTypeCount();
    },

    computed: {
    },
    watch:{
      // //解决首页跳重复路由不走created()问题
      '$route' (to, from) { //监听路由是否变化
        // alert(this.$route.params.code)
        this.eTypeId=this.$route.params.code
        this.qeuipmentTypeCount();
      },
    },
    methods: {
      qeuipmentTypeCount:function(){ //年度计划淘汰设备实时信息
        let url="equipment/equipment/queryCountBytype?typeid="+this.eTypeId;
        let method = 'post';
        const that = this;
        let formData = "";
        httpAction(url,formData,method).then((res)=>{
          if(res.success){
            this.dataSource= res.result;
          }else{
            that.$message.warning(res.message);
          }
        })
      },
      toEquipmentLst(record,eStatus){
        var param='EquipmentTypeList'+'&&'+record.company_id+'&&'+this.eTypeId+'&&'+eStatus
        this.$router.push( {path:'/EquipmentList/'+param});
        // console.log(JSON.stringify(param))
      },
      initDictConfig() {
      }
    }
  }
</script>
<style lang="less" scoped>
  /** Button按钮间距 */
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