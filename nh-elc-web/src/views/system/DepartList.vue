<template xmlns:background-color="http://www.w3.org/1999/xhtml">
  <a-row :gutter="12">
    <div style="height: 615px;overflow: hidden;overflow-y: scroll" class="ant-col-sm-24 ant-col-md-12">
    <a-col :md="8" :sm="24" style="width: 100%;">
      <a-card :bordered="false">
        <!-- 按钮操作区域 -->
        <a-row style="margin-left: 14px">
          <a-button @click="handleAdd(2)" type="primary">添加子部门</a-button>
          <a-button @click="handleAdd(1)" type="default">添加一级部门</a-button>
          <a-button title="删除多条数据" @click="batchDel" type="default">批量删除</a-button>
          <a-button @click="refresh" type="default" icon="reload" :loading="loading">刷新</a-button>
        </a-row>
        <div style="background: #fff;padding-left:16px;height: 100%; margin-top: 5px">
          <a-alert type="info" :showIcon="true">
            <div slot="message">
              当前选择：
              <a v-if="this.currSelected.title">{{ getCurrSelectedTitle() }}</a>
              <a v-if="this.currSelected.title" style="margin-left: 10px" @click="onClearSelected">取消选择</a>
            </div>
          </a-alert>
          <a-input-search @search="onSearch" style="width:100%;margin-top: 10px" placeholder="请输入部门名称"/>
          <!-- 树-->
          <a-col :md="8" :sm="24">
            <template>
              <a-dropdown :trigger="[this.dropTrigger]" @visibleChange="dropStatus">
               <span style="user-select: none">
            <a-tree
              checkable
              multiple
              @select="onSelect"
              @check="onCheck"
              @rightClick="rightHandle"
              :selectedKeys="selectedKeys"
              :checkedKeys="checkedKeys"
              :treeData="departTree"
              :checkStrictly="true"
              :expandedKeys="iExpandedKeys"
              :autoExpandParent="autoExpandParent"
              @expand="onExpand"/>
                </span>
                <!--新增右键点击事件,和增加添加和删除功能-->
                <a-menu slot="overlay">
                  <a-menu-item @click="handleAdd(3)" key="1">添加</a-menu-item>
                  <a-menu-item @click="handleDelete" key="2">删除</a-menu-item>
                  <a-menu-item @click="closeDrop" key="3">取消</a-menu-item>
                </a-menu>
              </a-dropdown>
            </template>
          </a-col>
        </div>
      </a-card>
    </a-col>
    </div>
    <a-col :md="12" :sm="24">
      <a-card :bordered="false">
        <a-form :form="form">
          <a-form-item
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="机构名称">
            <a-input placeholder="请输入机构/部门名称" v-decorator="['departName', validatorRules.departName ]"/>
          </a-form-item>
          <a-form-item :labelCol="labelCol" :wrapperCol="wrapperCol" label="上级部门">
            <a-tree-select
              style="width:100%"
              :dropdownStyle="{maxHeight:'200px',overflow:'auto'}"
              :treeData="treeData"
              :disabled="disable"
              v-model="model.parentId"
              placeholder="无">
            </a-tree-select>
          </a-form-item>
          <a-form-item
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="组织机构编码">
            <a-input placeholder="请输入组织机构编码" v-decorator="['orgCode', {'initialValue':''}]"/>
          </a-form-item>
        <!--  <a-form-item
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="排序">
            <a-input-number v-decorator="[ 'departOrder',{'initialValue':0}]"/>
          </a-form-item>-->
          <a-form-item
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="公司地址">
            <a-input placeholder="请输入公司地址" v-decorator="['address', {'initialValue':''}]"/>
          </a-form-item>
          <a-form-item
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="邮政编码">
            <a-input placeholder="请输入邮政编码" v-decorator="['zipCode', {'initialValue':''}]"/>
          </a-form-item>
          <a-form-item :labelCol="labelCol" :wrapperCol="wrapperCol" label="单位性质">
    <!--       <a-select placeholder="请输入单位性质"  v-model="companyProperty" style="width: 100%"  >
             <a-select-option v-for="item in companyProperty" :value="item.value" :key="item.value">{{item.text}}</a-select-option>
            </a-select>-->
       <Select v-model="companyProperty" placeholder="请输入单位性质"  style="width:388px;height:35px;" class="select_control" v-decorator="['companyProperty', {'initialValue':''}]" >
              <Option v-for="item in companyProperty" :value="item.value" :key="item.value">{{ item.text }}</Option>
       </Select>
          </a-form-item>
          <a-form-item
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="所属行业">
            <a-input placeholder="请输入行业" v-decorator="['industry', {'initialValue':''}]"/>
          </a-form-item>
          <a-form-item
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="法人">
            <a-input placeholder="请输入法人" v-decorator="['legalPerson', {'initialValue':''}]"/>
          </a-form-item>
          <a-form-item
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="联系人">
            <a-input placeholder="请输入联系人" v-decorator="['contactPerson', {'initialValue':''}]"/>
          </a-form-item>
          <a-form-item
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="联系电话">
            <a-input placeholder="请输入联系电话" v-decorator="['mobile', {'initialValue':''}]"/>
          </a-form-item>
          <a-form-item
            :labelCol="labelCol"
            :wrapperCol="wrapperCol"
            label="状态" >
            <a-radio-group v-decorator="['status',{'initialValue':''}]">
              <a-radio value="1">有效</a-radio>
              <a-radio value="2">无效</a-radio>
            </a-radio-group>
          </a-form-item>
        </a-form>
        <div class="anty-form-btn">
          <a-button @click="emptyCurrForm" type="default" htmlType="button" icon="sync">重置</a-button>
          <a-button @click="submitCurrForm" type="primary" htmlType="button" icon="form">修改并保存</a-button>
        </div>
      </a-card>
    </a-col>
    <depart-modal ref="departModal" @ok="loadTree"></depart-modal>
  </a-row>
</template>
<script>
  import DepartModal from './modules/DepartModal'
  import pick from 'lodash.pick'
  import { queryDepartTreeList, searchByKeywords, deleteByDepartId } from '@/api/api'
  import { httpAction, deleteAction,getAction } from '@/api/manage'
  import Operation from 'ant-design-vue/es/transfer/operation'
  // 表头
  const columns = [
    {
      title: '机构名称',
      dataIndex: 'departName'
    },
    {
      title: '单位性质',
      align: 'center',
      dataIndex: 'companyProperty'
    },
    {
      title: '机构编码',
      align: 'center',
      dataIndex: 'orgCode'
    },
    {
      title: '所属行业',
      align: 'center',
      dataIndex: 'industry'
    },
    {
      title: '法人',
      align: 'center',
      dataIndex: 'legalPerson'
    },
    {
      title: '邮政编码',
      align: 'center',
      dataIndex: 'zipCode'
    },
    {
      title: '联系人',
      align: 'center',
      dataIndex: 'contactPerson'
    },
    {
      title: '手机号',
      dataIndex: 'mobile'
    },
    {
      title: '公司地址',
      dataIndex: 'address'
    },
 {
      title: '状态',
      align: 'center',
      dataIndex: 'status'
    },
    {
      title: '操作',
      align: 'center',
      dataIndex: 'action',
      scopedSlots: { customRender: 'action' }
    }
  ]
  export default {
    name: 'DepartList',
    components: {
      Operation,
      DepartModal
    },
    data() {
      return {
        value1:'a',
        iExpandedKeys: [],
        loading: false,
        autoExpandParent: true,
        currFlowId: '',
        currFlowName: '',
        disable: true,
        treeData: [],
        companyProperty:[],
        visible: false,
        departTree: [],
        rightClickSelectedKey: '',
        hiding: true,
        model: {},
        dropTrigger: '',
        depart: {},
        columns: columns,
        disableSubmit: false,
        checkedKeys: [],
        selectedKeys: [],
        autoIncr: 1,
        currSelected: {},
        form: this.$form.createForm(this),
        labelCol: {
          xs: { span: 24 },
          sm: { span: 5 }
        },
        wrapperCol: {
          xs: { span: 24 },
          sm: { span: 16 }
        },
        graphDatasource: {
          nodes: [],
          edges: []
        },
        validatorRules: {
          departName: { rules: [{ required: true, message: '请输入机构/部门名称!' }] },
          orgCode: { rules: [{ required: true, message: '请输入机构编码!' }] },
          mobile: { rules: [{ validator: this.validateMobile }] }
        },
        url: {
          delete: '/sysdepart/sysDepart/delete',
          edit: '/sysdepart/sysDepart/edit',
          deleteBatch: '/sysdepart/sysDepart/deleteBatch'
        }
      }
    },
    methods: {
      loadTree() {
        var that = this
        that.treeData = []
        that.departTree = []
        that.companyProperty=[]
        queryDepartTreeList().then((res) => {
          if (res.success) {
            for (let i = 0; i < res.result.length; i++) {
              let temp = res.result[i]
              that.treeData.push(temp)
              that.departTree.push(temp)
              that.setThisExpandedKeys(temp)
             // console.log(temp.id)
            }
            this.loading = false
          }
        })
        //获取单位性质
      getAction('/sys/dict/getDictItems/company_property',{}).then((res) => {
          if (res.success) {
            for (let i = 0; i < res.result.length; i++) {
              let temp = res.result[i]
              that.companyProperty.push(temp)
               // console.log(this.companyProperty[0].text)
            }
          }
        })

      },
      setThisExpandedKeys(node) {
        if (node.children && node.children.length > 0) {
          this.iExpandedKeys.push(node.key)
          for (let a = 0; a < node.children.length; a++) {
            this.setThisExpandedKeys(node.children[a])
          }
        }
      },
      refresh() {
        this.loading = true
        this.loadTree()
      },
      // 右键操作方法
      rightHandle(node) {
        this.dropTrigger = 'contextmenu'
        // console.log(node.node.eventKey)
        this.rightClickSelectedKey = node.node.eventKey
      },
      onExpand(expandedKeys) {
        // console.log('onExpand', expandedKeys)
        // if not set autoExpandParent to false, if children expanded, parent can not collapse.
        // or, you can remove all expanded children keys.
        this.iExpandedKeys = expandedKeys
        this.autoExpandParent = false
      },
      backFlowList() {
        this.$router.back(-1)
      },
      // 右键点击下拉框改变事件
      dropStatus(visible) {
        if (visible == false) {
          this.dropTrigger = ''
        }
      },
      // 右键店家下拉关闭下拉框
      closeDrop() {
        this.dropTrigger = ''
      },
      addRootNode() {
        this.$refs.nodeModal.add(this.currFlowId, '')
      },
      batchDel: function() {
        // console.log(this.checkedKeys)
        if (this.checkedKeys.length <= 0) {
          this.$message.warning('请选择一条记录！')
        } else {
          var ids = ''
          for (var a = 0; a < this.checkedKeys.length; a++) {
            ids += this.checkedKeys[a] + ','
          }
          var that = this
          this.$confirm({
            title: '确认删除',
            content: '确定要删除所选中的 ' + this.checkedKeys.length + ' 条数据?',
            onOk: function() {
              deleteAction(that.url.deleteBatch, { ids: ids }).then((res) => {
                if (res.success) {
                  that.$message.success(res.message)
                  that.loadTree()
                  that.onClearSelected()
                } else {
                  that.$message.warning(res.message)
                }
              })
            }
          })
        }
      },
      onSearch(value) {
        let that = this
        if (value) {
          searchByKeywords({ keyWord: value }).then((res) => {
            if (res.success) {
              that.departTree = []
              for (let i = 0; i < res.result.length; i++) {
                let temp = res.result[i]
                that.departTree.push(temp)
              }
            } else {
              that.$message.warning(res.message)
            }
          })
        } else {
          that.loadTree()
        }

      },
      nodeModalOk() {
        this.loadTree()
      },
      nodeModalClose() {
      },
      hide() {
        this.visible = false
      },
      onCheck(checkedKeys, info) {
        // console.log('onCheck', checkedKeys, info)
        this.hiding = false
        this.checkedKeys = checkedKeys.checked
      },
      onSelect(selectedKeys, e) {
        // console.log('selected', selectedKeys, e)
        this.hiding = false
        let record = e.node.dataRef
        //console.log('onSelect-record', record)
        this.currSelected = Object.assign({}, record)
        this.model = this.currSelected
        this.selectedKeys = [record.key]
        this.model.parentId = record.parentId
        this.setValuesToForm(record)
        // console.log("record:"+JSON.stringify(record))


      },
      // 触发onSelect事件时,为部门树右侧的form表单赋值
      setValuesToForm(record) {
        this.form.getFieldDecorator('fax', { initialValue: '' })
        this.form.setFieldsValue(pick(record, 'departName','orgCode','zipCode','companyProperty','legalPerson','industry','contactPerson','qrcodeSwitch', 'departOrder', 'mobile', 'fax', 'address', 'memo','status'))
      },
      getCurrSelectedTitle() {
        return !this.currSelected.title ? '' : this.currSelected.title
      },
      onClearSelected() {
        this.hiding = true
        this.checkedKeys = {}
        this.currSelected = {}
        this.form.resetFields()
        this.selectedKeys = []
      },
      handleNodeTypeChange(val) {
        this.currSelected.nodeType = val
      },
      notifyTriggerTypeChange(value) {
        this.currSelected.notifyTriggerType = value
      },
      receiptTriggerTypeChange(value) {
        this.currSelected.receiptTriggerType = value
      },
      submitCurrForm() {
        this.form.validateFields((err, values) => {
          if (!err) {
            if (!this.currSelected.id) {
              this.$message.warning('请点击选择要修改部门!')
              return
            }

            let formData = Object.assign(this.currSelected, values)
            // console.log('Received values of form: ', formData)
            httpAction(this.url.edit, formData, 'put').then((res) => {
              if (res.success) {
                this.$message.success('保存成功!')
                this.loadTree()
              }
            })
          }
        })
      },
      emptyCurrForm() {
        this.form.resetFields()
      },
      nodeSettingFormSubmit() {
        this.form.validateFields((err, values) => {
          if (!err) {
            // console.log('Received values of form: ', values)
          }
        })
      },
      openSelect() {
        this.$refs.sysDirectiveModal.show()
      },
      handleAdd(num) {
        if (num == 1) {
          this.$refs.departModal.add()
          this.$refs.departModal.title = '新增'
        } else if (num == 2) {
          let key = this.currSelected.key
          if (!key) {
            this.$message.warning('请先选中一条记录!')
            return false
          }
          this.$refs.departModal.add(this.selectedKeys)
          this.$refs.departModal.title = '新增'
        } else {
          this.$refs.departModal.add(this.rightClickSelectedKey)
          this.$refs.departModal.title = '新增'
        }
      },
      handleDelete() {
        deleteByDepartId({ id: this.rightClickSelectedKey }).then((resp) => {
          if (resp.success) {
            this.$message.success('删除成功!')
            this.loadTree()
          } else {
            this.$message.warning('删除失败!')
          }
        })
      },
      selectDirectiveOk(record) {
        // console.log('选中指令数据', record)
        this.nodeSettingForm.setFieldsValue({ directiveCode: record.directiveCode })
        this.currSelected.sysCode = record.sysCode
      },
      getFlowGraphData(node) {
        this.graphDatasource.nodes.push({
          id: node.id,
          text: node.flowNodeName
        })
        if (node.children.length > 0) {
          for (let a = 0; a < node.children.length; a++) {
            let temp = node.children[a]
            this.graphDatasource.edges.push({
              source: node.id,
              target: temp.id
            })
            this.getFlowGraphData(temp)
          }
        }
      }
    },
    created() {
      this.currFlowId = this.$route.params.id
      this.currFlowName = this.$route.params.name
      this.loadTree()
    }

  }
</script>
<style scoped>
  .anty-form-btn {
    width: 100%;
    text-align: center;
  }
  .ant-card-body{
    padding: 5px;
  }
  .ant-form-item{
    margin-bottom: 10px;
  }
  .ant-form-explain{
    margin-top: -6px;
  }
  .ant-form-item-with-help {
    margin-bottom: 0px;
  }
  .anty-form-btn button {
    margin: 0 5px;
  }

  .anty-node-layout .ant-layout-content {
    margin: 0 !important;
  }

  .anty-node-layout .ant-layout-header {
    padding-right: 0
  }

  .header {
    padding: 0 8px;
  }

  .header button {
    margin: 0 3px
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

  #app .desktop {
    height: auto !important;
  }

  /** Button按钮间距 */
  .ant-btn {
    margin-left: 3px
  }
</style>