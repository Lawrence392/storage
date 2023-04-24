<#import "../macros.ftl" as mymacro>

<@mymacro.head content="asset"/>


<#--  links  -->
<link rel="stylesheet" href="/css/bank.css">



<@mymacro.connect/>
<#--  body  -->
    <div class="card">
        <h2>食用水果打卡</h2>
        <p>点击按钮完成今日打卡</p>
        <button class="btn" id="checkin-btn">打卡</button>
        <div class="feedback-container">
            <span class="feedback-icon"></span>
            <span class="feedback-message">打卡成功</span>
        </div>
    </div>


    <section class="content">
        <h2>本月收支明细</h2>
        <table>
            <thead>
                <tr>
                    <th>日期</th>
                    <th>收入</th>
                    <th>支出</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>4月1日</td>
                    <td>￥0.02</td>
                    <td>￥10.00</td>
                </tr>
                <tr>
                    <td>4月5日</td>
                    <td>￥5.10</td>
                    <td>￥24.20</td>
                </tr>
                <tr>
                    <td>4月10日</td>
                    <td>￥1.00</td>
                    <td>￥6.00</td>
                </tr>
                <tr>
                    <td>4月15日</td>
                    <td>￥2.50</td>
                    <td>￥4.03</td>
                </tr>
                <tr>
                    <td>4月20日</td>
                    <td>￥1.20</td>
                    <td>￥40.00</td>
                </tr>
            </tbody>
        </table>
    </section>





<@mymacro.foot/>