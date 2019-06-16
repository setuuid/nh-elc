<template>
  <a-card :bordered="false" class="card-area" style="margin: -10px -10px;">
    <div class="title">{{companyName}}</div>

    <!-- table区域-begin -->
    <div>
      <a-table :columns="columns" :dataSource="dataSource" bordered>
        <template slot="type_1_1" slot-scope="text,record,index">
          <a v-if="text > 0 && index+1<total" href="javascript:;" @click="toEquipmentList(record,'1')">{{text}}</a>
          <span v-else>{{text}}</span>
        </template>
        <template slot="type_1_2" slot-scope="text, record,index">
          <a v-if="text > 0 && index+1<total" href="javascript:;" @click="toEquipmentList(record,'2')">{{text}}</a>
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
    name: "EquipmentEliminateStatus",
    components: {
    },
    data () {
      return {
        columns : [{
          title: '设备类别',
          align:"center",
          dataIndex: 'category_name',
          width:'40%',
          // scopedSlots: { customRender: 'category_name' },
        }, {
          title: '已淘汰',
          dataIndex: 'type_1_1',
          align:"center",
          width:'30%',
          scopedSlots: { customRender: 'type_1_1' },
        }, {
          title: '计划淘汰',
          dataIndex: 'type_1_2',
          align:"center",
          width:'30%',
          scopedSlots: { customRender: 'type_1_2' },
        }],
        dataSource : [],
        companyName:'',
        year:'',
        companyId:'',
        eTypeId:'',
        total:''
      }
    },
    created(){
      console.log(JSON.stringify(this.$route.params.code))
      this.year=this.$route.params.code.split('&&')[0]
      this.companyId=this.$route.params.code.split('&&')[1]
      this.eTypeId=this.$route.params.code.split('&&')[2]
      this.queryData()

    },
    computed: {

    },
    methods: {

      queryData(){
        var param={year:this.year,companyId:this.companyId}
        getAction('/reportForm/queryEliminateSpecialEquipment',param).then((res) => {
          if (res.success) {
            this.dataSource=res.result
            this.companyName=this.dataSource[0].company_name
            this.total=res.result.length
          }
        })
      },
      toEquipmentList(record,destType){
        // console.log(JSON.stringify(record))
        var  param='EquipmentEliminateStatus'+'&&'+this.companyId+'&&'+this.eTypeId+'&&'+parseInt(destType)+'&&'+this.year+'&&'+record.category_id;
        this.$router.push( {path:'/EquipmentList/'+param});
        console.log("param"+JSON.stringify(param))
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
    margin-top: -10px;
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