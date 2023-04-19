package com.airblog.storage.task;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

@Service
public class TaskService {
    
    private final JdbcTemplate jdbcTemplate;

    public TaskService(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public List<Task> findShelf() {
        String sql = "SELECT * FROM tasks LEFT JOIN food ON tasks.name = food.name ";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Task.class));
    }



    public List<Task> getAllTasks() {
        String sql = "SELECT * FROM tasks";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Task.class));
    }


    public void deleteTaskById(Long id) {
        String sql = "DELETE FROM tasks WHERE id = ?";
        jdbcTemplate.update(sql, id);
    }
}
