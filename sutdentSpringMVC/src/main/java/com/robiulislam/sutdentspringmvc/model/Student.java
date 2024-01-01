package com.robiulislam.sutdentspringmvc.model;

public class Student {

    private int id;
    private String name;
    private String gender;
    private String department;
    private String hobby;

    public Student() {
    }

    public Student(int id, String name, String gender, String department, String hobby) {
        this.id = id;
        this.name = name;
        this.gender = gender;
        this.department = department;
        this.hobby = hobby;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getHobby() {
        return hobby;
    }

    public void setHobby(String hobby) {
        this.hobby = hobby;
    }

    @Override
    public String toString() {
        return "Student{" + "id=" + id + ", name=" + name + ", gender=" + gender + ", department=" + department + ", hobby=" + hobby + '}';
    }
    
    
}
