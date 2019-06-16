<template>
  <a-popover
    trigger="click"
    placement="bottomRight"
    :autoAdjustOverflow="true"
    :arrowPointAtCenter="true"
    overlayClassName="header-notice-wrapper"
    :overlayStyle="{  top: '50px',background:'#1890ff', color:'#fff'}">
    <template slot="content" >
          <li class="dropdown-menu-title" >
            <span>Android</span>&nbsp;&nbsp;<img src="~@/assets/android.png" width="80px" height="80px">
          </li>
    </template>
    <span @click="fetchNotice" >
      <img src="~@/assets/phone.png" width="15px" > 手机APP
    </span>
  </a-popover>
</template>

<script>
  export default {
    name: "Android",
    data () {
      return {
        loadding: false
      }
    },
    methods: {
      fetchNotice () {
        if (this.loadding) {
          this.loadding = false
          return
        }
        this.loadding = true
        setTimeout(() => {
          this.loadding = false
        },1000)
      }
    }
  }
</script>

<style lang="css">
  .header-notice-wrapper {
    top: 50px !important;
    background: #0088ff;
    color: #fff;
  }
</style>
<style lang="scss" scoped>
  .header-notice{
    display: inline-block;
    transition: all 0.3s;

    span {
      vertical-align: initial;
    }
    .dropdown-menu-title {
      background: #446db4;
      color: #fff;
      padding: 8px 0px;
      position: relative;
    }

  }
</style>