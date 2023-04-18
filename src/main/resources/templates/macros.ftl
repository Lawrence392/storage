<!-- macros.ftl -->

<#macro head content>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>${content}</title>
        <link rel="stylesheet" href="/css/style.css">

    <#include "header.ftl"/>

</#macro>






<#macro connect>

    </head>
<body>
</#macro>




<#macro foot>
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <h5>备案信息</h5>
                    <p>公安备案号：京ICP备2022017197号-1</p>
                </div>
                <div class="col-md-3 col-sm-6">
                    <h5>权力声明</h5>
                    <p>所有内容版权归本站所有，未经授权禁止转载</p>
                </div>
                <div class="col-md-3 col-sm-6">
                    <h5>联系我们</h5>
                    <p>邮箱：15202114392@163.com</p>
                </div>
                <div class="col-md-3 col-sm-6">
                    <h5>关注我们</h5>
                    <ul class="list-unstyled">
                        <li><a href="#">Github</a></li>
                        <li><a href="#">Bilibili</a></li>
                        <li><a href="#">Wechat</a></li>
                        <li><a href="#">QQ</a></li>

                    </ul>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <p>版权所有 &copy; 2023 Example.com. All rights reserved.</p>
                    </div>
                    <div class="col-sm-6">
                        <p class="text-right">提供技术支持</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>


    </body>
</html>

</#macro>
