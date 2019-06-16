<template>
  <div id="userLayout" :class="['user-layout-wrapper', device]">
    <div class="container">
      <div class="top">
        <div class="desc">
              嘉兴南湖区危险化学品企业
        </div>
        <div class="header">
          <a href="/">
           <!-- <img src="~@/assets/logo.png" class="logo" alt="logo">-->
            <span class="title">设备全生命周期管理信息化平台</span>
          </a>
        </div>
      </div>
      <route-view></route-view>
   <!--   <div class="footer">
        <div class="links">
          <a href="http://jeecg-boot.mydoc.io" target="_blank">帮助</a>
          <a href="https://github.com/zhangdaiscott/jeecg-boot" target="_blank">隐私</a>
          <a href="https://github.com/zhangdaiscott/jeecg-boot" target="_blank">条款</a>
        </div>
        <div class="copyright">
          Copyright &copy; 2019 <a href="http://www.jeecg.org" target="_blank">JEECG开源社区</a> 出品
        </div>
      </div>-->
    </div>
  </div>
</template>

<script>
  import RouteView from "@/components/layouts/RouteView"
  import { mixinDevice } from '@/utils/mixin.js'

  export default {
    name: "UserLayout",
    components: { RouteView },
    mixins: [mixinDevice],
    data () {
      return {}
    },
    mounted () {
      document.body.classList.add('userLayout')
    },
    beforeDestroy () {
      document.body.classList.remove('userLayout')
    },
  }
</script>

<style lang="scss" scoped>
  #userLayout.user-layout-wrapper {
    overflow: hidden;
    height: 100%;

    &.mobile {
      .container {
        .main {
          max-width: 368px;
          width: 98%;
        }
      }
    }

    .container {
      width: 100%;
      min-height: 100%;
      background: #f0f2f5 url(~@/assets/bg2.jpg) no-repeat 50%;
      background-size: 100%;
      padding: 110px 0 144px;
      position: relative;

      a {
        text-decoration: none;
      }

      .top {
        text-align: right;
        margin-right: 260px;

        .header {
          height: 44px;
          line-height: 44px;

          .badge {
            position: absolute;
            display: inline-block;
            line-height: 1;
            vertical-align: middle;
            margin-left: -12px;
            margin-top: -10px;
            opacity: 0.8;
          }

          .logo {
            height: 44px;
            vertical-align: top;
            margin-right: 16px;
            border-style: none;
          }

          .title {
            font-size: 30px;
            color:#fff;
            font-family: "Chinese Quote", -apple-system, BlinkMacSystemFont, "Segoe UI", "PingFang SC", "Hiragino Sans GB", "Microsoft YaHei", "Helvetica Neue", Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
            position: relative;
            top: 2px;
          }
        }
        .desc {
          font-size: 20px;
          color: #d7d7d7;
          margin: -10px 89px 5px 10px;
        }
      }

      .main {
        min-width: 260px;
        width: 436px;
        margin: 0 auto;
        border: 1px #ccc solid;
        margin-right: 246px;
        margin-top: 30px;
        background: rgba(255, 255, 255, 0.17);
        box-sizing: border-box;
        display: -webkit-flex;
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        border-bottom: 8px solid #1890ff;
        border-radius: 30px 30px 50px 50px;
      }

      .footer {
        position: absolute;
        width: 100%;
        bottom: 0;
        padding: 0 16px;
        margin: 48px 0 24px;
        text-align: center;

        .links {
          margin-bottom: 8px;
          font-size: 14px;
          a {
            color: rgba(0, 0, 0, 0.45);
            transition: all 0.3s;
            &:not(:last-child) {
              margin-right: 40px;
            }
          }
        }
        .copyright {
          color: rgba(0, 0, 0, 0.45);
          font-size: 14px;
        }
      }
    }
  }
</style>