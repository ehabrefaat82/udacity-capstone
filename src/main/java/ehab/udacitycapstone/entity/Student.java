package ehab.udacitycapstone.entity;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "students")
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    Long id;
    @Column(name = "full_name")
    String fullName;
    @Column(name = "age")
    int age;
    @Column(name = "specialization")
    String specialization;
}
