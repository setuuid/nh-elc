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
        >

        <template slot="e_category_id1" slot-scope="text, record">
          <a v-if="text > 0" href="javascript:;" @click="toEquipmentLst(record,'1')">{{text}}</a>
          <span v-else>{{text}}</span>
        </template>
        <template slot="e_category_id2" slot-scope="text, record">
          <a v-if="text > 0" href="javascript:;" @click="toEquipmentLst(record,'2')">{{text}}</a>
          <span v-else>{{text}}</span>
        </template>
        <template slot="e_category_id3" slot-scope="text, record">
          <a v-if="text > 0" href="javascript:;" @click="toEquipmentLst(record,'3')">{{text}}</a>
          <span v-else>{{text}}</span>
        </template>
        <template slot="e_category_id4" slot-scope="text, record">
          <a v-if="text > 0" href="javascript:;" @click="toEquipmentLst(record,'4')">{{text}}</a>
          <span v-else>{{text}}</span>
        </template>
        <template slot="e_category_id5" slot-scope="text, record">
        <a v-if="text > 0" href="javascript:;" @click="toEquipmentLst(record,'5')">{{text}}</a>
        <span v-else>{{text}}</span>
      </template>
        <template slot="e_category_id6" slot-scope="text, record">
          <a v-if="text > 0" href="javascript:;" @click="toEquipmentLst(record,'11')">{{text}}</a>
          <span v-else>{{text}}</span>
        </template>
        <template slot="e_category_id7" slot-scope="text, record">
          <a v-if="text > 0" href="javascript:;" @click="toEquipmentLst(record,'12')">{{text}}</a>
          <span v-else>{{text}}</span>
        </template>
        <template slot="e_category_id8" slot-scope="text, record">
        <a v-if="text > 0" href="javascript:;" @click="toEquipmentLst(record,'13')">{{text}}</a>
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
        description: '特种设备类',
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
            dataIndex: 'depart_name',

          },
          {
            title: '锅炉类',
            align:"center",
            dataIndex: 'e_category_id1',
            scopedSlots: { customRender: 'e_category_id1' },
          },
          {
            title: '压力容器类',
            align:"center",
            dataIndex: 'e_category_id2',
            scopedSlots: { customRender: 'e_category_id2' },
          },
          {
            title: '压力管道类',
            align:"center",
            dataIndex: 'e_category_id3',
            scopedSlots: { customRender: 'e_category_id3' },
          },
          {
            title: '电梯类',
            align:"center",
            dataIndex: 'e_category_id4',
            scopedSlots: { customRender: 'e_category_id4' },
          },
          {
            title: '起重机械类',
            align:"center",
            dataIndex: 'e_category_id5',
            scopedSlots: { customRender: 'e_category_id5' },
          },
          {
            title: '客运索道类',
            align:"center",
            dataIndex: 'e_category_id6',
            scopedSlots: { customRender: 'e_category_id6' },
          },
          {
            title: '大型游乐设施类',
            align:"center",
            width:120,
            dataIndex: 'e_category_id7',
            scopedSlots: { customRender: 'e_category_id7' },
          },
          {
            title: '场(厂)专用机动车辆',
            align:"center",
            width:140,
            dataIndex: 'e_category_id8',
            scopedSlots: { customRender: 'e_category_id8' },
          },
        ],
        eTypeId:'',
        companyId:''
      }
    },
    created(){
      this.eTypeId=(this.$route.params.code).split('&&')[1];
        this.companyId=(this.$route.params.code).split('&&')[0];
      this.qeuipmentTypeCount();
    },

    computed: {
    },
    methods: {
      toEquipmentLst(record,eCategoryId){
        // +'&&'
        console.log(JSON.stringify(record))
        var  param='EquipmentSpecialType'+'&&'+this.companyId+'&&'+this.eTypeId+'&&'+eCategoryId
        this.$router.push( {path:'/EquipmentList/'+param});
      },
      qeuipmentTypeCount:function(){ //年度计划淘汰设备实时信息
       let id=(this.$route.params.code).split('&&')[0];
        let url="/equipment/equipment/queryCensusById?companyId="+id;
        let method = 'get';
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


        initDictConfig() {
          console.log("--我才是真的方法!--")
          //初始化字典 - 使用状态
          // var param={dictCode:'useStatus'}
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