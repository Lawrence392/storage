<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Home Storage Hub</title>
    <link rel="stylesheet" href="/css/style.css">

</head>

<body>
    <header>
        <div class="head_container">
            <!-- head logo -->
            <div class="logo_flex">

                <a href="/" class="logo">
                    <img src="./assets/Iris.png" alt="Logo" class="logo">
                    <span>Home Storage Hub</span>
                </a>
            </div>
            <!-- pages-->
            <div class="head_flex">
                <ul class="head_flex">
                    <li>
                        <a class="page_botton" href="#">
                            Product
                        </a>
                    </li>
                    <li>
                        <a class="page_botton" href="#">
                            Calculator
                        </a>
                    </li>
                    <li>
                        <a class="page_botton" href="#">
                            Clothes
                        </a>
                    </li>
                    <li>
                        <a class="page_botton" href="#">
                            Bank
                        </a>
                    </li>
                </ul>
            </div>
            <!-- line -->


    </header>

    <h1 class="title">My Fruits</h1>
    <form method="POST" action="/tasks">
        <div class="new-task-form" tabindex="0">
            <label for="new-task">➕</label>
            <input type="text" id="new-task" name="name" required autocomplete="off"  placeholder="Try typing 'apple'" title="Click to start adding fruit">
            <label for="deadline" class="deadline">Deadline:</label>
            <input type="date" id="deadline" name="deadline" required>
            <input class="submit_button" type="submit" value="➡️">
        </div>
        <ul id="tasks">
            <li class="divider">Fruit in stock</li>
            <#--  list  -->
            <#list tasks as task>
                <label title="Complete task">
                    <input type="checkbox" value="nairsg957" class="box" title="Complete task">
                    <span class="text">${task.name}</span>
                </label>
                <div class="progress-bar-container">
                    <div class="progress-bar">
                    </div>
                </div>
                ${task.deadline?string("yyyy-MM-dd")}
                
                <#--  binding button  -->
                <button type="button" data-task="nairsg957" class="delete" title="Delete task">
                    <a href="/tasks/${task.id}/delete">╳</a>
                </button>
            </#list>



            <li class="task">
                <label title="Complete task">
                    <input type="checkbox" value="nairsg957" class="box" title="Complete task">
                    <span class="text">12</span>
                </label>
                <div class="progress-bar-container">
                    <div class="progress-bar">
                    </div>
                </div>
                <button type="button" data-task="nairsg957" class="delete" title="Delete task">╳</button>
            </li>


                <li class="divider">Completed</li>
                <li class="task completed">
                <label title="Reopen task">
                    <input type="checkbox" checked="" value="0ikhw5n3u" class="box" title="Reopen task">
                    <span class="text">33232</span>
                </label>
                <button type="button" data-task="0ikhw5n3u" class="delete" title="Delete task">╳</button>
                </li>
            </ul>
        </form>
        

    <#--  <script src="/js/to-do.js"></script>  -->

<#--  javascript  -->
    <script>
    const progressBarContainers = document.querySelectorAll('.progress-bar-container');
    const numTasks = progressBarContainers.length;

    for (let i = 0; i < numTasks; i++) {
        //随机生成0到100之间的整数作为完成度
        const percentComplete = Math.floor(Math.random() * 100);  
        const container = progressBarContainers[i];
        const progressBar = container.querySelector('.progress-bar');

        // 设置进度条宽度
        progressBar.style.width = percentComplete + '%';

       // 根据进度条宽度切换颜色 
        if (percentComplete < 30) {
            container.classList.add('red');
        } else if (percentComplete < 70) {
            container.classList.add('yellow');
        }
    }
    </script>

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


