package controller;

import exceptions.StudentForUpdateNotFoundException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.ProductService;

import java.io.IOException;

public class EditProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("product", new ProductService().findById(Integer.parseInt(req.getParameter("id"))).get()); //todo
        req.getRequestDispatcher("editproduct.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            new ProductService().update(Integer.parseInt(req.getParameter("id")),
                    req.getParameter("category"),
                    req.getParameter("name"),
                    Double.parseDouble(req.getParameter("price")),
                    Double.parseDouble(req.getParameter("discount")));
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