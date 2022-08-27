package ehab.udacitycapstone.service;

import ehab.udacitycapstone.entity.Student;
import org.springframework.stereotype.Service;

import java.util.List;


public interface StudentService {

    List<Student> findAll();

}
