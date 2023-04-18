<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta type="viewport">
    <title>Task Manager</title>
</head>
<body>
    <form method="POST" action="/tasks">
        <label for="name">Task Name:</label>
        <input type="text" id="name" name="name" required><br><br>
    
        <label for="deadline" >Deadline:</label>
        <input type="date" id="deadline" name="deadline" required><br><br>
    
        <label for="isComplete">Complete:</label>
        <input type="checkbox" id="isComplete" name="isComplete"><br><br>
    
        <input type="submit" value="Add Task">

        
    </form>
    
    <ul>
        <#list tasks as task>
            <li>
                ${task.name} - ${task.deadline?string("yyyy-MM-dd")} 
                <a href="/tasks/${task.id}/edit">Edit</a> 
                <a href="/tasks/${task.id}/delete">Delete</a>
            </li>
        </#list>
    </ul>
    
</body>
</html>
