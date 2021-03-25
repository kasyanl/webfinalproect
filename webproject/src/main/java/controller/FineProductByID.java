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

public class FineProductByID extends HttpServlet implements ProductRepository {

    ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Optional<Product> optionalProduct = productService.findById(Integer.parseInt(req.getParameter("id")));
        if(optionalProduct.isEmpty()) {
            req.setAttribute("error", "This product not found.");
            req.getRequestDispatcher("/error").forward(req, resp);
            return;
        }
        Product product = optionalProduct.get();
        req.setAttribute("product", product);
        req.getRequestDispatcher("fineproductbyid.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Optional<Product> optionalProduct = productService.findById(Integer.parseInt(req.getParameter("id")));
        if(optionalProduct.isEmpty()) {
            req.setAttribute("error", "This product not found.");
            req.getRequestDispatcher("error.jsp").forward(req, resp);
            return;
        }
        Product product = optionalProduct.get();
        ProductService.read(listProduct, product.getId());
        req.setAttribute("message", "You product is fine!");
        req.getRequestDispatcher("fineproductbyid.jsp").forward(req, resp);
    }
}
