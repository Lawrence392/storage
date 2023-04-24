<#import "../macros.ftl" as mymacro>

<@mymacro.head content="clothes"/>


<#--  links  -->
<link rel="stylesheet" href="/css/clothes.css">


<@mymacro.connect/>
<#--  body  -->
    <#include "../pagelist.ftl"/>



    <h1 class="title">我的搭配</h1>
    <div class="card-container">
        <div class="card">
            <img src="assets/oil painting .jpg" alt="衬衫">
            <span class="scene">居家</span>
            <span class="location">卧室衣柜</span>
        </div>

        <div class="card">
            <img src="assets/OIP.jpg" alt="裙子">
            <span class="scene">逛街</span>
            <span class="location">一楼衣架</span>

        </div>

        <div class="card">
            <img src="assets/R.jpg" alt="夹克">
            <span class="scene">通勤</span>
            <span class="location">洗衣房</span>


        </div>

        <div class="card">
            <img src="assets/Iris.png" alt="夹克">
            <span class="scene">使用场景</span>
            <span class="location">位置描述</span>

        </div>
    </div>


<@mymacro.foot/>
