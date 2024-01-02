
package com.robiulislam.springcrudexam.controller;

import com.robiulislam.springcrudexam.dao.EmployeeDao;
import com.robiulislam.springcrudexam.model.Employee;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EmployeeController {
    
    
    
    @Autowired
    private EmployeeDao ed;
    
    
<<<<<<< HEAD
    @RequestMapping("/")
    public String index() {
        return "index";
    }
=======
//    @RequestMapping("/")
//    public String index() {
//        return "index";
//    }
    
    
    
    
>>>>>>> b6a6aeae6c03bea2f765b20f80b5350b2cfa1d76
    @GetMapping("/viewallemp")
    public String viewAllEmp(Model m){
    
        List<Employee> empList=ed.getAllEmp();
<<<<<<< HEAD
=======
        
>>>>>>> b6a6aeae6c03bea2f765b20f80b5350b2cfa1d76
        m.addAttribute("empList", empList);
        return "viewAllEmp";
    }
    
    
    @GetMapping("/empsaveform")
    public String saveForm(Model m){
    
        m.addAttribute("employee", new Employee());
        return "empsaveform";
    
    }
    
    
    @PostMapping("/empsave")
    public String saveEmp(@ModelAttribute Employee e){
    
        ed.saveEmp(e);
        return "redirect:/viewallemp";
    }
    
    @RequestMapping("/deleteemp/{id}")
    
    public String deleteEmp(@PathVariable ("id") int id){

        ed.deleteEmp(id);
        
       return "redirect:/viewallemp";
   
}
    
    
    @RequestMapping("/empeditform/{id}")
    public String empEditForm(@PathVariable ("id") int id, Model m){
    
        Employee employee = ed.getEmpById(id);
        m.addAttribute("employee", employee);
        
        return "empEdit";
    } 
    
    
    @RequestMapping("/editempsave")
    public String editEmpSave(@ModelAttribute ("employee") Employee employee){
    
        ed.updateEmp(employee);
        
        return "redirect:/viewallemp";
    
    }
    
    
    
}
