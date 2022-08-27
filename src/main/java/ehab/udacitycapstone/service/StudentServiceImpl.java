package ehab.udacitycapstone.service;

import ehab.udacitycapstone.entity.Student;
import ehab.udacitycapstone.repository.StudentRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@AllArgsConstructor
@Service
public class StudentServiceImpl implements StudentService{
    private StudentRepository repository;

    @Override
    public List<Student> findAll(){
        return repository.findAll();
    }
}
