package bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Student {
    public static List<Student> studentList = new ArrayList<>();

    private int id;
    private String firstName;
    private String lastName;
    private int age;

    static {
        studentList.add(new Student(0, "Egor", "Barilo", 25));
        studentList.add(new Student(studentList.size(), "Elon", "Mask", 25));
        studentList.add(new Student(studentList.size(), "Bill", "Gates", 25));
        studentList.add(new Student(studentList.size(), "Jeff", "Bezoss", 25));
    }
}
