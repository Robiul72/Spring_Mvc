package com.robiulislam.sutdentspringmvc.dao;

import com.robiulislam.sutdentspringmvc.model.Student;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class StudentDao {

    JdbcTemplate jdbcTemplate;

    public JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public int saveStu(Student s) {

        String sql = "insert into student(name, gender, department, hobby)"
                + "values('" + s.getName() + "', '" + s.getGender() + "', '" + s.getDepartment() + "','" + s.getHobby() + "')";

        return jdbcTemplate.update(sql);
    }

    public int deleteStu(int id) {

        String sql = "delete from student where id=" + id + " ";

        return jdbcTemplate.update(sql);
    }

    public int updateStu(Student s) {

        String sql = "update  student set name='" + s.getName() + "', gender='" + s.getGender() + "', department='" + s.getDepartment() + "', hobby='" + s.getHobby() + "' where id='" + s.getId() + "' ";

        return jdbcTemplate.update(sql);
    }

    public List<Student> getAllStu() {
        return jdbcTemplate.query("select * from student", new RowMapper<Student>() {
            public Student mapRow(ResultSet rs, int row) throws SQLException {
                Student e = new Student(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("gender"),
                        rs.getString("department"),
                        rs.getString("hobby")
                );

                return e;
            }
        });

    }

    public Student getStuById(int id) {
        String sql = "select * from student where id=?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<Student>(Student.class));
    }

}
