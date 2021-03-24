package controller.sort;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.ProductService;

import java.io.IOException;

import static repository.ProductRepository.listProduct;

public class SortByName extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("listProduct", new ProductService().sortList(listProduct, 5));
        RequestDispatcher view = req.getRequestDispatcher("sortbyname.jsp");
        view.forward(req, resp);
    }
}