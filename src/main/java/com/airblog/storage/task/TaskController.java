package com.airblog.storage.task;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;
@Controller
@RequestMapping("/fruits")
public class TaskController {

    // private final TaskService taskService;
    // public TaskController(TaskService taskService) {
    //     this.taskService = taskService;
    // }


    @Autowired
    private TaskRepository taskRepository;
    
    @GetMapping(value = { "/", "" })
    public String getTasks(Model model) {
        List<Task> tasks = taskRepository.findAll();
        model.addAttribute("tasks", tasks);
        return "/pages/tasks"; 
    }

    // @GetMapping("test")
    // public String getTasks2(Model model) {
    //     List<Task> tasks = taskService.findShelf();
    //     model.addAttribute("tasks", tasks);
    //     return "/pages/tasks"; 

    // }





    
    @PostMapping("/tasks")
    public String addTask(@ModelAttribute Task task) {
        taskRepository.save(task);
        return "redirect:/fruits";
    }
    // @GetMapping("/tasks/new")
    // public String newTask(Model model) {
    //     model.addAttribute("task", new Task());
    //     return "/new_task";
    // }
    
    // @GetMapping("/tasks/{id}/edit")
    // public String editTask(@PathVariable Long id, Model model) {
    //     Optional<Task> task = taskRepository.findById(id);
    //     model.addAttribute("task", task.orElse(null));
    //     return "/edit_task";
    // }

    // @PostMapping("/tasks/{id}")
    // public String updateTask(@PathVariable Long id, @ModelAttribute Task task) {
    //     task.setId(id);
    //     taskRepository.save(task);
    //     return "redirect:/index";
    // }

    @GetMapping("/tasks/{id}/delete")
    public String deleteTask(@PathVariable Long id) {
        Optional<Task> task = taskRepository.findById(id);
        task.ifPresent(taskRepository::delete);
        return "redirect:/fruits";
    }




}
