<template>
  <a-card :bordered="false" class="card-area" style="margin: -10px -10px;">
    <!-- table区域-begin -->
    <div>
      <a-table
        ref="table"
        size="middle"
        bordered
        rowKey="companyid"
        :columns="columns"
        :dataSource="dataSource"
        :pagination="false"
        >

        <template slot="type_1" slot-scope="text, record">
          <a v-if="text > 0" href="javascript:;" @click="toEquipmentSpecialType(record,'1')">{{text}}</a>
          <span v-else>{{text}}</span>
        </template>
        <template slot="type_2" slot-scope="text, record">
          <a v-if="text > 0" href="javascript:;" @click="toEquipmentLst(record,'2')">{{text}}</a>
          <span v-else>{{text}}</span>
        </template>
        <template slot="type_4" slot-scope="text, record">
          <a v-if="text > 0" href="javascript:;" @click="toEquipmentLst(record,'4')">{{text}}</a>
          <span v-else>{{text}}</span>
        </template>
        <template slot="type_5" slot-scope="text, record">
          <a v-if="text > 0" href="javascript:;" @click="toEquipmentLst(record,'5')">{{text}}</a>
          <span v-else>{{text}}</span>
        </template>
        <template slot="type_6" slot-scope="text, record">
          <a v-if="text > 0" href="javascript:;" @click="toEquipmentLst(record,'6')">{{text}}</a>
          <span v-else>{{text}}</span>
        </template>
        <template slot="total" slot-scope="text, record">
          <a v-if="text > 0" href="javascript:;" @click="toEquipmentLst1(record)">{{text}}</a>
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
            title: '特种设备类',
            align:"center",
            dataIndex: 'type_1',
            scopedSlots: { customRender: 'type_1' },
          },
          {
            title: '安全及其他设备类',
            align:"center",
            dataIndex: 'type_2',
            scopedSlots: { customRender: 'type_2' },
          },
          {
            title: '消防设备类',
            align:"center",
            dataIndex: 'type_4',
            scopedSlots: { customRender: 'type_4' },
          },
          {
            title: '环保设备类',
            align:"center",
            dataIndex: 'type_5',
            scopedSlots: { customRender: 'type_5' },
          },
          {
            title: '用电及节能设备类',
            align:"center",
            width:130,
            dataIndex: 'type_6',
            scopedSlots: { customRender: 'type_6' },
          },
          {
            title: '设备总量',
            align:"center",
            dataIndex: 'total',
            scopedSlots: { customRender: 'total' },
          },
        ],
      }
    },
    created(){
      this.qeuipmentTypeCount();
    },

    computed: {
    },
    methods: {
      toEquipmentSpecialType(record,eTypeId){
        // console.log(JSON.stringify(record))
        var  param=record.companyid+'&&'+eTypeId
        this.$router.push( {path:'/equipmentSpecial/'+param});
      },
      qeuipmentTypeCount:function(){ //年度计划淘汰设备实时信息
        let url="/equipment/equipment/queryCountByCompany";
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
      toEquipmentLst(record,eTypeId){
        console.log(JSON.stringify(record))
        var  param='EquipmentTypeCount'+'&&'+record.companyid+'&&'+eTypeId
        this.$router.push( {path:'/EquipmentList/'+param});
      },
      toEquipmentLst1(record){
        var  param='EquipmentTypeCount'+'&&'+record.companyid
        this.$router.push( {path:'/EquipmentList/'+param});
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