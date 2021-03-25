package controller.finecategory;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import repository.ProductDataBase;
import service.ProductService;


import java.io.IOException;

public class FineAlcohol  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("fruitsListProduct", new ProductService().fineCategoryForRead(ProductDataBase.listProduct, "ALCOHOLIC_BEVERAGES"));
        RequestDispatcher view = req.getRequestDispatcher("finealcohol.jsp");
        view.forward(req, resp);
    }
}