<!-- macros.ftl -->

<#macro head content>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>${content}</title>
        <link rel="stylesheet" href="/css/style.css">

</#macro>






<#macro connect>
    </head>

    <body>
        <header>
            <div class="head_container">
                <!-- head logo -->
                <div class="logo_flex">

                    <a href="/" class="logo">
                        <img src="/assets/Iris.png" alt="Logo" class="logo">
                        <span class="logo">海豚管家</span>
                    </a>
                </div>
            </div>
        </header>
</#macro>




<#macro foot>
    <#--  <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <h5>备案信息</h5>
                    <p>公安备案号: 京ICP备2022017197号-1</p>
                </div>
                <div class="col-md-3 col-sm-6">
                    <h5>权力声明</h5>
                    <p>所有内容版权归海豚管家董事会所有，未经授权禁止转载</p>
                </div>
                <div class="col-md-3 col-sm-6">
                    <h5>联系我们</h5>
                    <p>邮箱: 15202114392@163.com</p>
                    <p>电话: 15202114392</p>
                </div>
                <div class="col-md-3 col-sm-6">
                    <h5>关注我们</h5>
                    <ul class="list-unstyled">
                        <li><a href="https://github.com/Lawrence392">Github</a></li>
                        <li><a href="https://space.bilibili.com/351506819/">Bilibili</a></li>
                        <li><a href="#">Wechat: Lawrence</a></li>
                        <li><a href="#">QQ</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <p>版权所有 &copy; 2023 airblog.cloud. All rights reserved.</p>
                    </div>
                    <div class="col-sm-6">
                        <p class="text-right">提供技术支持</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>  -->
    <footer class="foot_container">
        <ul class="foot_flex">
            <li>
                <a class="page_botton" href="/link/tasks">
                    首页
                </a>
            </li>
            <li>
                <a class="page_botton" href="/link/bank">
                    资产
                </a>
            </li>
            <li>
                <a class="page_botton" href="/link/chat">
                    消息
                </a>
            </li>
            <li>
                <a class="page_botton" href="/link/me">
                    我
                </a>
            </li>
        </ul>
    </footer>





    </body>
</html>

</#macro>
