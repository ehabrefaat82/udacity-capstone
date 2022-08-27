package ehab.udacitycapstone.controller;

import ehab.udacitycapstone.entity.Student;
import ehab.udacitycapstone.service.StudentService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@AllArgsConstructor
@RestController
@RequestMapping("/api")
public class StudentController {

    private StudentService service;

    @GetMapping("/students")
    public List<Student> listAllStudents(){
        return service.findAll();
    }
}
