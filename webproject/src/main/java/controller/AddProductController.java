package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.ProductService;

import java.io.IOException;

public class AddProductController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("addproduct.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        new ProductService().save(req.getParameter("category"),
                req.getParameter("name"),
                Double.parseDouble(req.getParameter("price")),
                Double.parseDouble(req.getParameter("discount")));

        resp.sendRedirect("/webproject-1.0-SNAPSHOT/allproduct");
    }
}
