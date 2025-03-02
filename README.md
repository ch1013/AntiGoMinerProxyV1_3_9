<h4 align="left">破解交流群：    https://t.me/MinerProxyHackGO   </h4>
<h4 align="left">```shell</h4>
<h4 align="left">### Linux 一键安装脚本，安装过程需要输入钱包替换作者抽水：</h4>
<h4 align="left"># 方式1，supervisor守护，Linux开机、重启、奔溃均能自启动，推荐：</h4>
<h6 align="left">bash <(curl -s -L https://github.com/minerproxys/AntiGoMinerProxyV1_3_9/releases/download/1.3.9/supervisor_GOMP.sh)</h6>
<h4 align="left"># 方式2，原作者守护，不稳定，易出错：</h4>
<h6 align="left">bash <(curl -s -L https://github.com/ch1013/AntiGoMinerProxyV1_3_9/releases/download/1.3.9/manage.sh)</h6>
  

<h4 align="left">windows版本，到release文件夹，下载windows压缩包。</h4>

<h4 align="left">使用前，务必阅读使用说明.doc。 自定义设置E池和鱼池。</h4>

<h4 align="left">## :scroll: 開發抽水</h4></h4>
<h4 align="center">* 原作者恆定0.3%是假的！！！ 破解返回实现0抽。 共约E池见证原作者黑心抽血比例</h4>
<h4 align="center">* 这是市面上唯一一款可以防止CC攻击的，破解真香！</h4>

<h4 align="center">* Windows破解界面</h4>
<h1 align="center">
  <br>
  <img src="https://github.com/minerproxys/AntiGoMinerProxyV1_3_9/blob/main/images/winChangeWallet.png" width="800"/>
</h1>
<h4 align="center">* Linux破解界面</h4>
<h1 align="center">
  <br>
  <img src="https://github.com/minerproxys/AntiGoMinerProxyV1_3_9/blob/main/images/changeWallet.png" width="800"/>
</h1>
<h1 align="center">
  <br>
  <img src="https://raw.githubusercontent.com/GoMinerProxy/GoMinerProxy/main/images/logo.png" width="350"/>
</h1>

<h4 align="center">基於GoLang的高性能多線程ETH/ETC礦池轉發中繼代理工具.</h4>
<h4 align="center">BTC轉發請進(https://github.com/GoMinerProxy/GoMinerTool-BTC)</h4>

<p align="center">
  <a>
    <img src="https://img.shields.io/badge/Release-1.3.9_ETHASH-orgin.svg" alt="travis">
  </a>
  <a>
    <img src="https://img.shields.io/badge/Last_Update-2022_03_23-orgin.svg" alt="travis">
  </a>
  <a>
    <img src="https://img.shields.io/badge/Language-GoLang-green.svg" alt="travis">
  </a>
  <a>
    <img src="https://img.shields.io/badge/License-Apache-green.svg" alt="travis">
  </a>
</p>

<p align="center">
  <a href="https://github.com/GoMinerProxy/GoMinerProxy/tree/main/readmes/zh-hk">繁體中文(zh-hk)</a> •
  <a href="https://github.com/GoMinerProxy/GoMinerProxy/tree/main/readmes/zh-cn">簡體中文(zh-cn)</a> •
  <a href="https://github.com/GoMinerProxy/GoMinerProxy/tree/main/readmes/en-us/">English(en-us)</a> •
  <a href="https://gominerproxy.github.io/zh_hk/">文檔</a> •
  <a href="https://t.me/+afVqEXnxtQAyNWNh">Telegram 討論群组</a> •
  <a href="https://t.me/go_minerproxy">Telegram 通知頻道</a>
</p>

![Screenshot](https://raw.githubusercontent.com/GoMinerProxy/GoMinerProxy/main/images/web_1.png)

## :sparkles: 特性

* :cloud: 礦池轉發：支持ETH/ETC的中繼代理，支持Stratum/NiceHash/Stratum2所有協議，方便統一管理(其他幣種即将更新)
* :zap: 超高性能：採用高效率的GoLang語言編寫，並對多線程進行優化
* 💻 自定義抽水：支持中繼平台自定義抽水比例進行抽水，並支持在不關閉代理池的情況下進行動態修改
* 📚 多種抽水算法：用戶可自選各種抽水算法，防止算力出現週期函數或心跳圖的情況
* 💾 安全穩定：支持TCP、SSL等方式，並對CC攻擊編寫一定的策略進行防護
* :gear: 獨家前置代理模式：支持中轉伺服器到礦池端的加密與混淆，可內網部署
* :outbox_tray: 批量轉發：一個軟件即可開啟對多個礦池的轉發，無需開啟多個進程
* :card_file_box: 熱修改：配置均可網頁後台上熱修改，無需再修改繁瑣配置文件再重啟
* :art: 精美後台：後台網頁功能全面、折線圖、統計豐富、黑暗模式、多語言支持
* :eye_speech_bubble: 完善社區支持：Telegram 群組內可幫助處理解決遇到的各類問題，歡迎提出反饋建議
* :rocket: 開箱即用：All-In-One 打包，一鍵搭建運行，一鍵配置
* :family_woman_girl_boy: 多系統支持：Windows Linux MacOS均可支持使用，無需額外環境等
* :gear: 專業團隊：擁有豐富區塊鏈開發的工作經驗，多名開發人員來自香港科技大學名校
* :link: 快速響應：可選擇開啟，偽裝低延遲(用戶內核延遲處顯示的延遲為礦機到中轉服務器的延遲)、清理無效提交
* 🌈 ... ...

## :hammer_and_wrench: 部署

最新軟件版本請見：<a href="https://github.com/minerproxys/AntiGoMinerProxyV1_3_9/tree/main/release">Github Release</a></br>
Windows 直接下載適用於您目標機器操作系統、CPU架構的主程序，直接運行即可。<a href="https://gominerproxy.github.io/zh_hk/1%20-%20%E5%BF%AB%E9%80%9F%E9%96%8B%E5%A7%8B/1.1%20-%20Windows%E7%B3%BB%E7%B5%B1.html">Windows詳細教程</a>
</br>
Linux 可按照下述指令運行，請注意下載鏈接需要適用於您目標機器操作系統、CPU架構。<a href="https://gominerproxy.github.io/zh_hk/1%20-%20%E5%BF%AB%E9%80%9F%E9%96%8B%E5%A7%8B/1.2%20-%20Linux%E7%B3%BB%E7%B5%B1.html">Linux詳細教程</a>

### Linux一鍵管理脚本(自帶崩潰重啟，但無開機自啟)
```shell
# 海外伺服器可用
bash <(curl -s -L https://github.com/minerproxys/AntiGoMinerProxyV1_3_9/blob/main/scripts/supervisor_GOMP.sh)
# 大陆伺服器可用
bash <(curl -s -L https://github.com/minerproxys/AntiGoMinerProxyV1_3_9/blob/main/scripts/supervisor_GOMP.sh)

```
```shell
# 再次SSH链接可以使用下述指令查看输出
screen -r go_miner_proxy
```
以上為最簡單的部署示例，您可以參考 [文檔 - 快速開始](https://gominerproxy.github.io/zh_hk/) 進行更為完善的部署。 

## :alembic: 技术栈

* [Go](https://golang.org/) + [Gin](https://github.com/gin-gonic/gin)
* [NodeJs](https://nodejs.org/) + [GitBook](https://www.gitbook.com/)
* [Vue.JS](https://vuejs.org/) + [vue-element](https://panjiachen.github.io/vue-element-admin-site/)

## :scroll: 開發抽水
* 原作者恆定0.3%是假的！！！ 破解返回实现0抽。 共约E池共同见证原作者黑心抽血比例
