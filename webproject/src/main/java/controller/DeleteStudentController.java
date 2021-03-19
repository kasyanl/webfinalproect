package controller;

import bean.Student;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.StudentService;

import java.io.IOException;
import java.util.Optional;

public class DeleteStudentController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Optional<Student> optionalStudent =
                new StudentService().findById(Integer.parseInt(req.getParameter("id")));
        if(optionalStudent.isEmpty()) {
            req.setAttribute("error", "This guy not found.");
            req.getRequestDispatcher("/error").forward(req, resp);
            return;
        }
        Student student = optionalStudent.get();
        req.setAttribute("student", student);
        req.getRequestDispatcher("deletestudent.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StudentService studentService = new StudentService();
        Optional<Student> optionalStudent =
                studentService.findById(Integer.parseInt(req.getParameter("id")));
        if(optionalStudent.isEmpty()) {
            req.setAttribute("error", "This guy not found.");
            req.getRequestDispatcher("error.jsp").forward(req, resp);
            return;
        }
        Student student = optionalStudent.get();
        studentService.delete(student.getId());
        req.setAttribute("message", "You successfully deleted " + student.getFirstName()
                + " " + student.getLastName());
        req.getRequestDispatcher("success.jsp").forward(req, resp);
    }
}
