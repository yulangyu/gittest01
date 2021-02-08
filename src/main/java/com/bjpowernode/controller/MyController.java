package com.bjpowernode.controller;

import com.bjpowernode.domain.Student;
import com.bjpowernode.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@RequestMapping("/student")
@Controller
public class MyController {

    @Resource
    private StudentService service;
    @RequestMapping("/add.do")
    public ModelAndView addStudent(Student student){
    //  String tips = "";
        int nums = service.addStudent(student);
        ModelAndView mv = new ModelAndView();
        mv.addObject("key","成功添加"+student.getName()+",共"+nums+"位。");
        mv.setViewName("jieguo");
        return mv;
    }

    @ResponseBody
    @RequestMapping("/selectStudents.do")
    public List<Student> selectStudents(){
        ModelAndView mv = new ModelAndView();
        List<Student> list = service.findStudents();
        return list;
    }
}
