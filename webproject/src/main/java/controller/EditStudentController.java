package controller;

import exceptions.StudentForUpdateNotFoundException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.StudentService;

import java.io.IOException;

public class EditStudentController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("student", new StudentService().findById(Integer.parseInt(req.getParameter("id"))).get()); //todo
        req.getRequestDispatcher("editstudent.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            new StudentService().update(Integer.parseInt(req.getParameter("id")), req.getParameter("firstName"),
                    req.getParameter("lastName"), Integer.parseInt(req.getParameter("age")));
            req.setAttribute("message", "Student " + req.getParameter("firstName") + " "
                    + req.getParameter("lastName") + " successfully edited.");
            req.getRequestDispatcher("success.jsp").forward(req, resp);
        } catch (StudentForUpdateNotFoundException e) {
            e.printStackTrace();
            req.setAttribute("message", "Student not found...");
            req.getRequestDispatcher("error.jsp").forward(req, resp);
        }
    }
}