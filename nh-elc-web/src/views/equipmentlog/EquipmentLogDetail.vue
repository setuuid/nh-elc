<template>
  <a-card :bordered="false" style="margin: -10px -10px;">
    <div class="title">设备日志详情</div>
    <div>
      <a-table
        ref="table"
        size="middle"
        bordered
        :rowKey="id"
        :columns="columns"
        :dataSource="dataSource">

      </a-table>
    </div>
    <!-- table区域-end -->

    <!-- 表单区域 -->
<!--    <equipmentLog-modal ref="modalForm" @ok="modalFormOk"></equipmentLog-modal>-->
  </a-card>
</template>

<script>

  import { getAction } from '@/api/manage'

  export default {
    name: 'EquipmentLogDetail',
    data() {
      return {
        description: '设备操作记录管理页面',
        dataSource:[],
        // 表头
        columns: [
          {
            title: '操作人',
            align: 'center',
            dataIndex: 'username'
          },
          {
            title: '操作时间',
            align: 'center',
            dataIndex: 'addTime'
          },
          {
            title: '修改内容',
            align: 'center',
            dataIndex: 'name'
          },
          {
            title: '原数据',
            align: 'center',
            dataIndex: 'old',
          },
          {
            title: '修改后数据',
            dataIndex: 'new',
            align: 'center',
          }
        ],
        id:''
      }
    },
    computed: {
    },
    created(){
      // alert(this.$route.params.code)
      this.id=this.$route.params.code
      this.getData()
    },
    methods: {
      getData(){
        // var param={id:this.id}
        getAction('/equipmentlog/equipmentLog/queryContentById/'+this.id,{}).then((res) => {
          if (res.success) {
            this.dataSource=res.result
          }
        })
      }
    }
  }
</script>

<style scoped>
  .title{
    width: 100%;
    height: 40px;
    margin-bottom: 17px;
    /* background: #4b99eb; */
    color: black;
    line-height: 40px;
    font-size: 18px;
  }
</style>