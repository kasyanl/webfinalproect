package controller;

import bean.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import repository.ProductRepository;
import service.ProductService;

import java.io.IOException;
import java.util.Optional;

public class DeleteProductController extends HttpServlet implements ProductRepository {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Optional<Product> optionalProduct =
                new ProductService().findById(Integer.parseInt(req.getParameter("id")));
        if(optionalProduct.isEmpty()) {
            req.setAttribute("error", "This guy not found.");
            req.getRequestDispatcher("/error").forward(req, resp);
            return;
        }
        Product product = optionalProduct.get();
        req.setAttribute("product", product);
        req.getRequestDispatcher("deleteproduct.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ProductService productService = new ProductService();
        Optional<Product> optionalProduct =
                productService.findById(Integer.parseInt(req.getParameter("id")));
        if(optionalProduct.isEmpty()) {
            req.setAttribute("error", "This guy not found.");
            req.getRequestDispatcher("error.jsp").forward(req, resp);
            return;
        }
        Product product = optionalProduct.get();
        productService.delete(listProduct, product.getId());
        req.setAttribute("message", "You successfully deleted " + product.getCategory()
                + " " + product.getName());
        req.getRequestDispatcher("success.jsp").forward(req, resp);
    }
}
