/**
 * 新增修改完成调用 modalFormOk方法 编辑弹框组件ref定义为modalForm
 * 高级查询按钮调用 superQuery方法  高级查询组件ref定义为superQueryModal
 * data中url定义 list为查询列表  delete为删除单条记录  deleteBatch为批量删除
 */
import { filterObj } from '@/utils/util';
import { deleteAction, getAction,downFile1,downFile2 } from '@/api/manage'
export const JeecgListMixin = {
  data(){
    return {
      /* 查询条件 */
      queryParam: {},
      /* 数据源 */
      dataSource:[],
      /* 分页参数 */
      ipagination:{
        current: 1,
        pageSize: 10,
        pageSizeOptions: ['10', '20', '30'],
        showTotal: (total, range) => {
          return range[0] + "-" + range[1] + " 共" + total + "条"
        },
        showQuickJumper: true,
        showSizeChanger: true,
        total: 0
      },
      /* 排序参数 */
      isorter:{
        column: 'createTime',
        order: 'desc',
      },
      /* 筛选参数 */
      filters: {},
      /* table加载状态 */
      loading:false,
      /* table选中keys*/
      selectedRowKeys: [],
      /* table选中records*/
      selectionRows: [],
      /* 查询折叠 */
      toggleSearchStatus:false,
      /* 高级查询条件生效状态 */
      superQueryFlag:false,
      /* 高级查询条件 */
      superQueryParams:"",
      //跳转来源页
      resourceFrom:'',
      searchCid:'',//查询-公司id
      searchETypeId:'',//查询-设备种类id
      searchDestoryType:'',//查询--
      searchPlaneDestoryTime:'',
      searchCategoryId:'',//查询-设备类型id
      skipSearch:false,
      searchEstatus:'',//设备状态2,正常，3，淘汰，5超期服役，6预警设备
    }
  },
  created() {
    if(this.$route.params.code){
      // console.log("paramssssss"+JSON.stringify(this.$route.params.code))
      this.skipSearch=true;
      this.resourceFrom=(this.$route.params.code).split('&&')[0]
      if(this.resourceFrom=='EquipmentEliminateStatus' || this.resourceFrom=='reprotFormList' || this.resourceFrom=='EquipmentTypeList'|| this.resourceFrom=='EquipmentTypeCount' ||this.resourceFrom=='EquipmentSpecialType'){
        this.searchCid=(this.$route.params.code).split('&&')[1]
        if((this.$route.params.code).split('&&')[2]){
          this.searchETypeId=(this.$route.params.code).split('&&')[2]
        }
      }
      if(this.resourceFrom=='EquipmentTypeList' || this.resourceFrom=='analysis'){
        if(this.resourceFrom=='analysis'){
          this.searchEstatus=(this.$route.params.code).split('&&')[1]
        }else{
          this.searchEstatus=(this.$route.params.code).split('&&')[3]
        }
      }
      if(this.resourceFrom=='EquipmentEliminateStatus' || this.resourceFrom=='reprotFormList'){
        this.searchDestoryType=(this.$route.params.code).split('&&')[3]
        this.searchPlaneDestoryTime=(this.$route.params.code).split('&&')[4]
      }
      if(this.resourceFrom=='EquipmentEliminateStatus' || this.resourceFrom=='EquipmentSpecialType'){//
        if(this.resourceFrom=='EquipmentSpecialType'){
          this.searchCategoryId=(this.$route.params.code).split('&&')[3]
        }else{
          this.searchCategoryId=(this.$route.params.code).split('&&')[5]
        }

      }
      this.getQueryParam()
    }else{
      this.skipSearch=false;
    }
    this.loadData();
    //初始化字典配置 在自己页面定义
    this.initDictConfig();
    // console.log("parms:"+JSON.stringify(this.$route.params.code))

  },

  watch: {
    // //解决首页跳重复路由不走created()问题
    '$route' (to, from) { //监听路由是否变化
      console.log(JSON.stringifyingify(this.$route.params.code))
      if(this.$route.params.code){
        // console.log("paramssssss"+JSON.stringify(this.$route.params.code))
        this.skipSearch=true;
        this.resourceFrom=(this.$route.params.code).split('&&')[0]
          if(this.resourceFrom=='analysis'){
            this.searchEstatus=(this.$route.params.code).split('&&')[1]
          }
        this.getQueryParam()
      }else{
        this.skipSearch=false;
      }
      this.loadData();
      //初始化字典配置 在自己页面定义
      this.initDictConfig();
    }
  },
  methods:{
    loadData(arg) {
      if(!this.url.list){
        this.$message.error("请设置url.list属性!")
        return
      }
      //加载数据 若传入参数1则加载第一页的内容
      if (arg === 1) {
        this.ipagination.current = 1;
      }
      var params;
      if(this.skipSearch==false){
         params = this.getQueryParams();//查询条件
      }else{
         params=this.getQueryParam()
      }
      // console.log("search"+JSON.stringify(params))
      getAction(this.url.list, params).then((res) => {
        if (res.success) {
          this.dataSource = res.result.records;
          this.ipagination.total = res.result.total;
        }
      })
    },
    getQueryParam() {
      //获取跳转页过来的查询条件
      var param ={}
      if(this.resourceFrom=='analysis'){
        param.eStatus=this.searchEstatus
      }else{
        if(this.resourceFrom=='EquipmentEliminateStatus' || this.resourceFrom=='EquipmentSpecialType'){
          param.eCategoryId=this.searchCategoryId;
        }
        if(this.resourceFrom=='EquipmentEliminateStatus' || this.resourceFrom=='reprotFormList'){
          param.deiOrPlanDeiType=this.searchDestoryType;
          param.useCountYear=this.searchPlaneDestoryTime;
        }
        if(this.resourceFrom=='EquipmentTypeList'){
          param.eStatus=this.searchEstatus
        }
        if(this.searchETypeId){
          param.eTypeId=this.searchETypeId;
        }
        param.companyId=this.searchCid;
      }
      param.column='createTime';
      param.order="desc"
      param.field = this.getQueryField();
      param.pageNo = this.ipagination.current;
      param.pageSize = this.ipagination.pageSize;
      // console.log(JSON.stringify(param))
      return param
    },
    initDictConfig(){
      // console.log("--这是一个假的方法!")
    },
    handleSuperQuery(arg) {
      //高级查询方法
      if(!arg){
        this.superQueryParams=''
        this.superQueryFlag = false
      }else{
        this.superQueryFlag = true
        this.superQueryParams=JSON.stringify(arg)
      }
      this.loadData()
    },
    getQueryParams() {
      //获取查询条件
      let sqp = {}
      if(this.superQueryParams){
        sqp['superQueryParams']=encodeURI(this.superQueryParams)
      }
      var param = Object.assign(sqp, this.queryParam, this.isorter ,this.filters);
      param.field = this.getQueryField();
      param.pageNo = this.ipagination.current;
      param.pageSize = this.ipagination.pageSize;
      return filterObj(param);
    },
    getQueryField() {
      //TODO 字段权限控制
      var str = "id,";
      this.columns.forEach(function (value) {
        // console.log(value)
        str += "," + value.dataIndex;
      });
      return str;
    },

    onSelectChange(selectedRowKeys, selectionRows) {
      this.selectedRowKeys = selectedRowKeys;
      this.selectionRows = selectionRows;
    },
    onClearSelected() {
      this.selectedRowKeys = [];
      this.selectionRows = [];
    },
    searchQuery() {
      this.loadData(1);
    },
    superQuery() {
      this.$refs.superQueryModal.show();
    },
    searchReset() {
      this.queryParam = {}
      this.loadData(1);
    },
    batchDel: function () {
      if(!this.url.deleteBatch){
        this.$message.error("请设置url.deleteBatch属性!")
        return
      }
      if (this.selectedRowKeys.length <= 0) {
        this.$message.warning('请选择一条记录！');
        return;
      } else {
        var ids = "";
        for (var a = 0; a < this.selectedRowKeys.length; a++) {
          ids += this.selectedRowKeys[a] + ",";
        }
        var that = this;
        this.$confirm({
          title: "确认删除",
          content: "是否删除选中数据?",
          onOk: function () {
            deleteAction(that.url.deleteBatch, {ids: ids}).then((res) => {
              if (res.success) {
                that.$message.success(res.message);
                that.loadData();
                that.onClearSelected();
              } else {
                that.$message.warning(res.message);
              }
            });
          }
        });
      }
    },
    handleDelete: function (id) {
      if(!this.url.delete){
        this.$message.error("请设置url.delete属性!")
        return
      }
      var that = this;
      deleteAction(that.url.delete, {id: id}).then((res) => {
        if (res.success) {
          that.$message.success(res.message);
          that.loadData();
        } else {
          that.$message.warning(res.message);
        }
      });
    },
    handleEdit: function (record) {
      this.$refs.modalForm.edit(record);
      this.$refs.modalForm.title = "编辑";
    },
    handleAdd: function () {
      this.$refs.modalForm.add();
      this.$refs.modalForm.title = "新增";
    },
    handleShade: function () {
      this.$refs.shades.showShade()
    },
    handleTableChange(pagination, filters, sorter) {
      //分页、排序、筛选变化时触发
      //TODO 筛选
      if (Object.keys(sorter).length > 0) {
        this.isorter.column = sorter.field;
        this.isorter.order = "ascend" == sorter.order ? "asc" : "desc"
      }
      this.ipagination = pagination;
      this.loadData();
    },
    handleToggleSearch(){
      this.toggleSearchStatus = !this.toggleSearchStatus;
    },
    modalFormOk() {
      // 新增/修改 成功时，重载列表
      this.loadData();
    },
    handleDetail:function(record){
      this.$refs.modalForm.edit(record);
      this.$refs.modalForm.title="详情";
      this.$refs.modalForm.disableSubmit = true;
    },
    /* 导出 */
    handleExportXls(){
      let paramsStr = encodeURI(JSON.stringify(this.getQueryParams()));
      let url = `${window._CONFIG['domianURL']}/${this.url.exportXlsUrl}?paramsStr=${paramsStr}`;
      window.location.href = url;
    },
    /* 导出 */
    handleExport(){
      this.handleShade()
      downFile1(this.url.exportXlsUrl,{}).then((res) => {
        console.log(res.result)//不能删
      }).catch(error=>{
        // console.log("error"+error);
        this.$refs.shades.closeShade()
      })

    },
    /* 下载模板 */
    handleDownMould(){
      this.handleShade()
      // window.open(`${window._CONFIG['domianURL']}/excel/equipment.xlsx`) ;
      downFile2('equipment/equipment/downloadExcel',{}).then((res) => {
        console.log(res.result)//不能删
      }).catch(error=>{
        // console.log("error"+error);
        this.$refs.shades.closeShade()
      })
    },
    /* 导入 */
    handleImportExcel(info){
      if (info.file.status !== 'uploading') {
        // console.log(info.file, info.fileList);
      }
      if(info.file.status === 'done'){
        if(info.file.response.code==200){
          this.$message.success(`${info.file.name} 文件导入成功`);
          this.loadData();
        }else if(info.file.response.code==500){
          this.$message.error(info.file.response.message);
        }else{
          this.$message.error('上传失败');
        }
      }
    },
  }

}