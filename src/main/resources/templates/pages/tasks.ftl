<#import "../macros.ftl" as task>

<@task.head content="essentials"/>


<#--  links  -->
<link rel="stylesheet" href="/css/tasks.css">
            <!-- pages-->

<@task.connect/>
<#--  body  -->
    <#include "../pagelist.ftl"/>

    <h1 class="title">Add essential</h1>
    <form method="POST" action="/fruits/tasks">
        <div class="new-task-form" tabindex="0">
            <label for="new-task"></label>
            <input type="text" id="new-task" name="name" required autocomplete="off"  placeholder="Type fruit">
            
            <label for="deadline" class="deadline"> - </label>
            <input type="date" id="deadline" name="deadline" required>
            <#--  <label for="isComplete" class="isComplete">Complete:</label>
            <input type="checkbox" id="isComplete" class="isComplete" name="isComplete">  -->
            <input class="submit_button" type="submit" value="➡️">
        </div>
        <ul id="tasks">
            <li class="divider">Essentials in stock</li>
            <#--  list  -->
            <#list tasks as task>

            <li class="task">
                <label class="task_lable" title="Complete task">
                    <span class="text">${task.name}</span>
                </label>


                <div class="progress-bar-container">
                    <div class="progress-bar" title="${task.getRemainingDays()}">
                    </div>
                </div>

                <#--  ${remainingDays}  -->
                <span class="remainingDays">${task.getRemainingDays()}</span>
                <span class="units">天</span>
                <#--  binding button  -->
                <a href="/fruits/tasks/${task.id}/delete" class="dekete_button">
                <button type="button" class="delete" title="Delete task">
                    ╳
                </button>
                </a>
            </li>
            </#list>
        </ul>




    </form>
    
<#--  button.modern-button {
    background-color: #aa6de2;
    color: white;
    border-radius: 10px;
    /* padding: 10px 20px; */
    font-size: 14px;
    /* font-weight: bold; */
    text-transform: uppercase;
    border: none;
    cursor: pointer;
    transition: background-color 0.3s ease;
    /* width: 46%; */
    width: 45%;
    height: 30px;
    margin-right: 1.5rem;
}  -->
<#--  <button class="modern-button">
                    Go shopping
                </button>  -->
<#--  javascript  -->

    <script>
        const progressBarContainers = document.querySelectorAll('.progress-bar-container');
        const numTasks = progressBarContainers.length;

        for (let i = 0; i < numTasks; i++) {

            const container = progressBarContainers[i];

            const progressBar = container.querySelector('.progress-bar');
            const divTitle = progressBar.title;

            const percentComplete = parseFloat(divTitle);
            // 设置进度条宽度
            if (percentComplete/20 > 1) {
                progressBar.style.width = 100 + '%';
            }  else if (percentComplete > 0) {
                progressBar.style.width = (percentComplete/20)*100 + '%';
            }

        // 根据进度条宽度切换颜色 
            if (percentComplete/20 < 0.3) {
                container.classList.add('red');
            } else if (percentComplete/20 < 0.5) {
                container.classList.add('yellow');
            }
        }
    </script>


<@task.foot/>


