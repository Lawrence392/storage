package com.airblog.storage.task;

import java.time.LocalDate;
import java.time.ZoneId;
import java.time.temporal.ChronoUnit;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "tasks")
public class Task {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "deadline", nullable = false)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date deadline;

    @Column(name = "isComplete", nullable = false)
    private Boolean isComplete;


    public Task() {
        this.name = null;
        this.deadline = new Date();
        this.isComplete = false;
    }

    public Task(String name, Date deadline, Boolean isComplete) {
        this.name = name;
        this.deadline = deadline;
        this.isComplete = isComplete;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDeadline() {
        return deadline;
    }

    public void setDeadline(Date deadline) {
        this.deadline = deadline;
    }

    public boolean isCompletion() {
        return isComplete;
    }

    public void setCompletion(boolean isComplete) {
        this.isComplete = isComplete;
    }

    public long getRemainingDays() {
        LocalDate deadlineDate = LocalDate.ofInstant(deadline.toInstant(), ZoneId.systemDefault());
        LocalDate today = LocalDate.now();
        return ChronoUnit.DAYS.between(today, deadlineDate);
    }
    
}
