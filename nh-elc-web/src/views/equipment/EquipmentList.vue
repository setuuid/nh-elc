<template>
  <a-card :bordered="false" class="card-area" style="margin: -10px -10px;">

    <!-- 查询区域 -->
    <div class="table-page-search-wrapper" style="margin: -5px -15px;">
      <a-form layout="inline">
        <a-row :gutter="24">

          <a-col :md="6" :sm="8">
            <a-form-item label="公司名称">
                <j-dict-select-tag v-model="queryParam.companyId" placeholder="请输入公司名称" dictCode="sys_depart,depart_name,id" style="width: 220px;"/>
            </a-form-item>
          </a-col>
          <a-col :md="6" :sm="8">
            <a-form-item label="设备种类">
              <j-dict-select-tag v-model="queryParam.eTypeId" placeholder="请输入设备种类" dictCode="e_type,name,id" style="width: 220px;"/>
            </a-form-item>
          </a-col>
          <template v-if="toggleSearchStatus">
            <a-col :md="6" :sm="8">
              <a-form-item label="所属单元">
                <a-input placeholder="请输入所属单元" v-model="queryParam.unit"></a-input>
              </a-form-item>
            </a-col>
            <a-col :md="6" :sm="8">
              <a-form-item label="使用寿命"  >
              <a-select    placeholder="请输入使用寿命" v-model="queryParam.year" >
                  <a-select-option :value="item.value" v-for="item in sysmList">{{item.text}}</a-select-option>
                </a-select>
              </a-form-item>
            </a-col>
            <a-col :md="6" :sm="8">
              <a-form-item label="设备名称">
                <a-input placeholder="请输入设备名称" v-model="queryParam.name"></a-input>
              </a-form-item>
            </a-col>
            <a-col :md="6" :sm="8">
              <a-form-item label="设备位号">
                <a-input placeholder="请输入设备位号" v-model="queryParam.bitNumber"></a-input>
              </a-form-item>
            </a-col>
            <a-col :md="6" :sm="8">
              <a-form-item label="年限选择">
                <a-select  placeholder="请输入年限选择" v-model="queryParam.yearType">
                  <a-select-option value="1">5年以上15年以下</a-select-option>
                  <a-select-option value="2">8年以上15年以下</a-select-option>
                  <a-select-option value="3">10年以上15年以下</a-select-option>
                  <a-select-option value="4">15年以上</a-select-option>
                </a-select>
              </a-form-item>
            </a-col>
            <a-col :md="6" :sm="8">
              <a-form-item label="实际淘汰年份">
               <!-- <a-input placeholder="请输入实际淘汰年份" v-model="queryParam.safeLevel"></a-input>-->
                <a-select  placeholder="请输入实际淘汰年份" v-model="queryParam.realDestoryDate">
                  <a-select-option value="2018">2018年</a-select-option>
                  <a-select-option value="2019">2019年</a-select-option>
                  <a-select-option value="2020">2020年</a-select-option>
                  <a-select-option value="2021">2021年</a-select-option>
                  <a-select-option value="2022">2022年</a-select-option>
                </a-select>
              </a-form-item>
            </a-col>
          </template>
          <a-col :md="6" :sm="8" >
            <span style="float: left;overflow: hidden;" class="table-page-search-submitButtons">
              <a-button type="primary" @click="searchQuery" icon="search">查询</a-button>
              <a-button type="primary" @click="searchReset" icon="reload" style="margin-left: 8px">重置</a-button>
              <a @click="handleToggleSearch" style="margin-left: 8px">
                {{ toggleSearchStatus ? '收起' : '展开' }}
                <a-icon :type="toggleSearchStatus ? 'up' : 'down'"/>
              </a>
            </span>
          </a-col>

        </a-row>
      </a-form>
    </div >

    <!-- 操作按钮区域 -->
    <div class="table-operator">
      <a-button @click="handleAdd" v-has="'equipment:add'" type="primary" icon="plus">新增</a-button>
      <a-button type="primary" icon="download"  v-has="'equipment:export'" @click="handleExport">导出</a-button>
      <a-upload
        name="file"
        :showUploadList="false"
        :multiple="false"
        :action="importExcelUrl"
        :headers="{'X-Access-Token':token}"
        @change="handleImportExcel">
        <a-button type="primary"  v-has="'equipment:import'" icon="import">导入</a-button>
      </a-upload>
      <a-button type="primary" v-has="'equipment:downloadExcel'" icon="download" @click="handleDownMould">下载模板</a-button>
      <a-dropdown v-if="selectedRowKeys.length > 0">
        <a-menu slot="overlay">
          <a-menu-item key="1"  @click="batchDel"><a-icon type="delete"/>删除</a-menu-item>
        </a-menu>
        <a-button style="margin-left: 8px"> 批量操作 <a-icon type="down" /></a-button>
      </a-dropdown>
    </div>

    <!-- table区域-begin -->
    <div>
      <div class="ant-alert ant-alert-info" style="margin-bottom: 16px;">
        <i class="anticon anticon-info-circle ant-alert-icon"></i> 已选择 <a style="font-weight: 600">{{ selectedRowKeys.length }}</a>项
        <a style="margin-left: 24px" @click="onClearSelected">清空</a>
      </div>

      <a-table
        ref="table"
        size="middle"
        bordered
        rowKey="id"
        :columns="columns"
        :dataSource="dataSource"
        :pagination="ipagination"
        :loading="loading"
        :rowSelection="{selectedRowKeys: selectedRowKeys, onChange: onSelectChange}"
        @change="handleTableChange">

          <template slot="useStatus" slot-scope="text, record">
            <span :style="{'color':text==3 ? '#ff0000':''}">{{record.useStateText}}</span>
          </template>

        <span slot="action" slot-scope="text, record">
          <a  v-has="'equipment:edit'"  @click="handleEdit(record)">编辑</a>
<!--          <a-divider type="vertical" />-->
          <a style="margin: 0 10px" @click="handleCheck(record.id)">查看</a>
          <a-popconfirm title="确定删除吗?" @confirm="() => handleDelete(record.id)">
                  <a v-has="'equipemnt:delete'">删除</a>
          </a-popconfirm>
<!--          <a-dropdown>-->
<!--            <a class="ant-dropdown-link">更多 <a-icon type="down" /></a>-->
<!--            <a-menu slot="overlay">-->
<!--              <a-menu-item>-->
<!--                <a-popconfirm title="确定删除吗?" @confirm="() => handleDelete(record.id)">-->
<!--                  <a  v-has="'equipemnt:delete'">删除</a>-->
<!--                </a-popconfirm>-->
<!--              </a-menu-item>-->
<!--              <a-menu-item>-->
<!--                <a @click="handleCheck(record.id)">查看</a>-->
<!--              </a-menu-item>-->
<!--            </a-menu>-->
<!--          </a-dropdown>-->
        </span>

      </a-table>
    </div>
    <!-- table区域-end -->

    <!-- 表单区域 -->
    <equipment-modal ref="modalForm" @ok="modalFormOk"></equipment-modal>
<!--    遮罩-->
    <down-shade ref="shades"></down-shade>
  </a-card>
</template>

<script>
  import EquipmentModal from './modules/EquipmentModal'
  import downShade from './modules/downShade'
  import {filterDictText} from '@/components/dict/JDictSelectUtil'
  import { JeecgListMixin } from '@/mixins/JeecgListMixin'
  import { getAction } from '@/api/manage'

  export default {
    name: "EquipmentList",
    mixins:[JeecgListMixin],
    components: {
      EquipmentModal,
      downShade
    },
    data () {
      return {
        description: '设备管理页面',
        token:'',
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
            width:'150px',
            dataIndex: 'companyName'
          },
          {
            title: '设备种类',
            align:"center",
            dataIndex: 'eTypeName'
          },
          {
            title: '设备类别',
            align:"center",
            dataIndex: 'eCategoryName'
          },
          {
            title: '设备名称',
            align:"center",
            dataIndex: 'name'
          },
          {
            title: '设备位号',
            align:"center",
            dataIndex: 'bitNumber'
          },
          {
            title: '所属单元',
            align:"center",
            width:120,
            dataIndex: 'unit'
          },
          {
            title: '使用状态',
            align:"center",
            dataIndex: 'useStatus',
            scopedSlots: { customRender: 'useStatus' },
          },
          {
            title: '投入使用日期',
            align:"center",
            dataIndex: 'useTime'
          },
          {
            title: '使用寿命(年)',
            align:"center",
            dataIndex: 'year',
            customRender:function (index) {
              return parseInt(index)+'年';
            }
          },

          {
            title: '操作',
            dataIndex: 'action',
            align:"center",
            scopedSlots: { customRender: 'action' },
          }
        ],
        url: {
          list: "/equipment/equipment/listVo",
          delete: "/equipment/equipment/delete",
          deleteBatch: "/equipment/equipment/deleteBatch",
          exportXlsUrl: "equipment/equipment/xls",
          importExcelUrl: "equipment/equipment/importExl",
          checkDetail:'/equipment/equipment/listVo',
        },
        sysmList:[
          {
            value:'1',
            text:'1年'
          },
          {
            value:'2',
            text:'2年'
          },
          {
            value:'3',
            text:'3年'
          },
          {
            value:'4',
            text:'4年'
          },
          {
            value:'5',
            text:'5年'
          },
          {
            value:'6',
            text:'6年'
          },
          {
            value:'7',
            text:'7年'
          },
          {
            value:'8',
            text:'8年'
          },
          {
            value:'9',
            text:'9年'
          },
          {
            value:'10',
            text:'10年'
          },
          {
            value:'11',
            text:'11年'
          },
          {
            value:'12',
            text:'12年'
          },
          {
            value:'13',
            text:'13年'
          },
          {
            value:'14',
            text:'14年'
          },
          {
            value:'15',
            text:'15年'
          },
          {
            value:'20',
            text:'20年'
          },
          {
            value:'25',
            text:'25年'
          },
          {
            value:'30',
            text:'30年'
          },
          {
            value:'35',
            text:'35年'
          },
          {
            value:'40',
            text:'40年'
          },
          {
            value:'45',
            text:'45年'
          },
          {
            value:'50',
            text:'50年'
          }
        ],
      }
    },
    created(){

    },
    computed: {
      importExcelUrl: function(){
        return `${window._CONFIG['domianURL']}/${this.url.importExcelUrl}`;
      },
    },
    methods: {
      initDictConfig() {
        this.token=localStorage.getItem('token')
        console.log("--我才是真的方法!--")
        this.getDownListData();

      },
      //获取所有下拉框数据列表
      getDownListData(){
        //初始化字典 - 使用状态
        getAction('/sys/dict/getDictItems/use_status',{}).then((res) => {
          // console.log("aaa"+JSON.stringify(res.result))
          if (res.success) {
            localStorage.setItem("useStatus",JSON.stringify(res.result))
          }
        })
        //初始化字典-检验结果result
        getAction('/sys/dict/getDictItems/check_result',{}).then((res) => {
          // console.log("aaa"+JSON.stringify(res.result))
          if (res.success) {
            localStorage.setItem("jyresult",JSON.stringify(res.result))
          }
        })
        //获取所有设备种类
        getAction('/etype/queryItemsEType',{}).then((res) => {
          // console.log("aaa"+JSON.stringify(res.result))
          if (res.success) {
            localStorage.setItem("equipmentType",JSON.stringify(res.result))
          }
        })
      },
      //查看详情
      handleCheck:function(id){
        var param =id
        this.$router.push({path:'/EquipmentDetail/'+param});
      },
    }
  }
</script>
<style lang="less" scoped>
  /** Button按钮间距 */
  .ant-btn {
    margin-left: 3px
  }
  .ant-select-selection-selected-value {
    float: left;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    /* max-width: 100%; */
    width: 189px;
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
  .shade{
    width: 100%;
    height: 100%;
    position: absolute;
    background: #000;
    opacity: 0.4;
    top: 0;
    left: 0;
  }
</style>