package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.StudentService;


import java.io.IOException;

public class AllStudentsController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("studentList", new StudentService().findAll());
        RequestDispatcher view = req.getRequestDispatcher("allstudents.jsp");
        view.forward(req, resp);
    }
}