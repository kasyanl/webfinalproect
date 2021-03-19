package service;

import bean.Student;
import exceptions.StudentForUpdateNotFoundException;

import java.util.List;
import java.util.Optional;

public class StudentService {
    public static int ID_COUNTER = Student.studentList.size();

    public void save(String firstName, String lastName, int age){
        Student.studentList.add(new Student(ID_COUNTER, firstName, lastName, age));
        ID_COUNTER++;
    }

    public Optional<Student> findById(int id){
        if(id >= Student.studentList.size()) return Optional.empty();
        else return Optional.of(Student.studentList.get(id));
    }

    public List<Student> findAll(){
        return Student.studentList;
    }

    public void delete(int id){
        Student.studentList.remove(id);
    }

    public void update(int id, String firstName, String lastName, int age) throws StudentForUpdateNotFoundException {
        Student student = findById(id).orElseThrow(StudentForUpdateNotFoundException::new);
        student.setFirstName(firstName);
        student.setLastName(lastName);
        student.setAge(age);
    }
}