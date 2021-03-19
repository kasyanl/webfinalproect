package controller;

import enums.Category;
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
            new StudentService().update(Integer.parseInt(req.getParameter("id")), req.getParameter("category"),
                    req.getParameter("name"), Double.parseDouble(req.getParameter("price")), Double.parseDouble(req.getParameter("discount")));
            req.setAttribute("message", "Product " + req.getParameter("category") + " "
                    + req.getParameter("name") + " successfully edited.");
            req.getRequestDispatcher("success.jsp").forward(req, resp);
        } catch (StudentForUpdateNotFoundException e) {
            e.printStackTrace();
            req.setAttribute("message", "Product not found...");
            req.getRequestDispatcher("error.jsp").forward(req, resp);
        }
    }
}