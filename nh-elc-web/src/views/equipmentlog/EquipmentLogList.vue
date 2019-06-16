<template>
  <a-card :bordered="false" style="margin: -10px -10px;">

<!--    &lt;!&ndash; 查询区域 &ndash;&gt;-->
<!--    <div class="table-page-search-wrapper">-->
<!--      <a-form layout="inline">-->
<!--        <a-row :gutter="24">-->

<!--          <a-col :md="6" :sm="8">-->
<!--            <a-form-item label="设备名称">-->
<!--              <a-input placeholder="请输入equipmentId" v-model="queryParam.equipmentName"></a-input>-->
<!--            </a-form-item>-->
<!--          </a-col>-->
<!--          <a-col :md="6" :sm="8">-->
<!--            <a-form-item label="设备记录ID">-->
<!--              <a-input placeholder="请输入设备记录ID" v-model="queryParam.equipmentRecordId"></a-input>-->
<!--            </a-form-item>-->
<!--          </a-col>-->
<!--          <template v-if="toggleSearchStatus">-->
<!--            <a-col :md="6" :sm="8">-->
<!--              <a-form-item label="userId">-->
<!--                <a-input placeholder="请输入userId" v-model="queryParam.userId"></a-input>-->
<!--              </a-form-item>-->
<!--            </a-col>-->
<!--            <a-col :md="6" :sm="8">-->
<!--              <a-form-item label="用户名">-->
<!--                <a-input placeholder="请输入用户名" v-model="queryParam.username"></a-input>-->
<!--              </a-form-item>-->
<!--            </a-col>-->
<!--            <a-col :md="6" :sm="8">-->
<!--              <a-form-item label="操作人所属公司">-->
<!--                <a-input placeholder="请输入操作人所属公司" v-model="queryParam.companyId"></a-input>-->
<!--              </a-form-item>-->
<!--            </a-col>-->
<!--          </template>-->
<!--          <a-col :md="6" :sm="8">-->
<!--            <span style="float: left;overflow: hidden;" class="table-page-search-submitButtons">-->
<!--              <a-button type="primary" @click="searchQuery" icon="search">查询</a-button>-->
<!--              <a-button type="primary" @click="searchReset" icon="reload" style="margin-left: 8px">重置</a-button>-->
<!--              <a @click="handleToggleSearch" style="margin-left: 8px">-->
<!--                {{ toggleSearchStatus ? '收起' : '展开' }}-->
<!--                <a-icon :type="toggleSearchStatus ? 'up' : 'down'"/>-->
<!--              </a>-->
<!--            </span>-->
<!--          </a-col>-->

<!--        </a-row>-->
<!--      </a-form>-->
<!--    </div>-->

<!--    &lt;!&ndash; 操作按钮区域 &ndash;&gt;-->
<!--    <div class="table-operator">-->
<!--      <a-dropdown v-if="selectedRowKeys.length > 0">-->
<!--        <a-menu slot="overlay">-->
<!--          <a-menu-item key="1" @click="batchDel">-->
<!--            <a-icon type="delete"/>-->
<!--            删除-->
<!--          </a-menu-item>-->
<!--        </a-menu>-->
<!--        <a-button style="margin-left: 8px"> 批量操作-->
<!--          <a-icon type="down"/>-->
<!--        </a-button>-->
<!--      </a-dropdown>-->
<!--    </div>-->

    <!-- table区域-begin -->
    <div>
      <a-table
        ref="table"
        size="middle"
        bordered
        rowKey="id"
        :columns="columns"
        :dataSource="dataSource"
        :pagination="ipagination"
        :loading="loading"
        @change="handleTableChange">

        <template slot="content" slot-scope="text,record">
<!--          {{record.content}}-->
          <span style="color: #3366ff;">{{JSON.parse(record.content)[0].name}}</span> 由 <span style="color: #ff5959;">{{JSON.parse(record.content)[0].old}}</span> 修改为 <span style="color: #ff5959;">{{JSON.parse(record.content)[0].new}}</span>
        </template>

        <span slot="action" slot-scope="text, record">
          <span style="color: #40a9ff;cursor:pointer" @click="toLogDetail(record.id)">查看</span>
        </span>

      </a-table>
    </div>
    <!-- table区域-end -->

    <!-- 表单区域 -->
    <equipmentLog-modal ref="modalForm" @ok="modalFormOk"></equipmentLog-modal>
  </a-card>
</template>

<script>
  import EquipmentLogModal from './modules/EquipmentLogModal'
  import { JeecgListMixin } from '@/mixins/JeecgListMixin'

  export default {
    name: 'EquipmentLogList',
    mixins: [JeecgListMixin],
    components: {
      EquipmentLogModal
    },
    data() {
      return {
        description: '设备操作记录管理页面',
        // 表头
        columns: [
          {
            title: '设备记录ID',
            align: 'center',
            dataIndex: 'equipmentRecordId'
          },
          // {
          //   title: '设备名称',
          //   align: 'center',
          //   dataIndex: 'equipmentName'
          // },
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
            align: 'left',
            dataIndex: 'content',
            width:'300px',
            scopedSlots: { customRender: 'content' },

          },
          {
            title: '设备详情',
            dataIndex: 'action',
            align: 'center',
            scopedSlots: { customRender: 'action' }
          }
        ],
        url: {
          list: '/equipmentlog/equipmentLog/listvo',
          delete: '/equipmentlog/equipmentLog/delete',
          deleteBatch: '/equipmentlog/equipmentLog/deleteBatch',
        }
      }
    },
    computed: {
    },
    methods: {
      toLogDetail(id){
        this.$router.push( {path:'/EquipmentLogDetail/'+id});
      }
    }
  }
</script>
<style lang="less" scoped>
  /** Button按钮间距 */
  .ant-btn {
    margin-left: 3px
  }

  .ant-card-body .table-operator {
    margin-bottom: 18px;
  }

  .ant-table-tbody .ant-table-row td {
    padding-top: 15px;
    padding-bottom: 15px;
  }

  .anty-row-operator button {
    margin: 0 5px
  }

  .ant-btn-danger {
    background-color: #ffffff
  }

  .ant-modal-cust-warp {
    height: 100%
  }

  .ant-modal-cust-warp .ant-modal-body {
    height: calc(100% - 110px) !important;
    overflow-y: auto
  }

  .ant-modal-cust-warp .ant-modal-content {
    height: 90% !important;
    overflow-y: hidden
  }
</style>