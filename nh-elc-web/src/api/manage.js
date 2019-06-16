import { axios } from '@/utils/request'

const api = {
  user: '/api/user',
  role: '/api/role',
  service: '/api/service',
  permission: '/api/permission',
  permissionNoPager: '/api/permission/no-pager'
}

export default api

//post
export function postAction(url,parameter) {
  return axios({
    url: url,
    method:'post' ,
    data: parameter
  })
}

//post method= {post | put}
export function httpAction(url,parameter,method) {
  return axios({
    url: url,
    method:method ,
    data: parameter
  })
}

//put
export function putAction(url,parameter) {
  return axios({
    url: url,
    method:'put',
    data: parameter
  })
}

//get
export function getAction(url,parameter) {
  return axios({
    url: url,
    method: 'get',
    params: parameter
  })
}

//deleteAction
export function deleteAction(url,parameter) {
  return axios({
    url: url,
    method: 'delete',
    params: parameter
  })
}

export function getUserList(parameter) {
  return axios({
    url: api.user,
    method: 'get',
    params: parameter
  })
}

export function getRoleList(parameter) {
  return axios({
    url: api.role,
    method: 'get',
    params: parameter
  })
}

export function getServiceList(parameter) {
  return axios({
    url: api.service,
    method: 'get',
    params: parameter
  })
}

export function getPermissions(parameter) {
  return axios({
    url: api.permissionNoPager,
    method: 'get',
    params: parameter
  })
}

// id == 0 add     post
// id != 0 update  put
export function saveService(parameter) {
  return axios({
    url: api.service,
    method: parameter.id == 0 ? 'post' : 'put',
    data: parameter
  })
}

/**
 * 下载文件 用于excel导出
 * @param url
 * @param parameter
 * @returns {*}
 */
export function downFile(url,parameter){
  return axios({
    url: url,
    params: parameter,
    method:'get' ,
    responseType: 'blob'
  })
}
export function downFile1(url,parameter){
  return axios({
    url: url,
    params: parameter,
    method:'get' ,
    headers:{
      "Authorization":localStorage.getItem("token")
    },
    responseType: 'blob'
  }).then(function (res) {
    download(res)
  })

  function download(data) {
    if(!data){
      return
    }
    var blob = new Blob([data], {type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8'})
    var url = window.URL.createObjectURL(blob);
    var aLink = document.createElement("a");
    aLink.style.display = "none";
    aLink.href = url;
    aLink.setAttribute("download", "设备信息.xlsx");
    document.body.appendChild(aLink);
    aLink.click();
    document.body.removeChild(aLink); //下载完成移除元素
    window.URL.revokeObjectURL(url); //释放掉blob对象

  }
}
export function downFile2(url,parameter) {
  return axios({
    url: url,
    params: parameter,
    method:'get' ,
    headers:{
      "Authorization":localStorage.getItem("token")
    },
    responseType: 'blob'
  }).then(function (res) {
    download(res)
  })
  function download(data) {
    if(!data){
      return
    }
    var blob = new Blob([data], {type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8'})
    var url = window.URL.createObjectURL(blob);
    var aLink = document.createElement("a");
    aLink.style.display = "none";
    aLink.href = url;
    aLink.setAttribute("download", "设备导入模板.xlsx");
    document.body.appendChild(aLink);
    aLink.click();
    document.body.removeChild(aLink); //下载完成移除元素
    window.URL.revokeObjectURL(url); //释放掉blob对象
  }
}

