package service;

import bean.Product;
import exceptions.StudentForUpdateNotFoundException;
import proccesor.SortDataBase;
import repository.ProductDataBase;
import repository.ProductRepository;

import java.util.List;
import java.util.Optional;

public class ProductService {


    public void save(String category, String name, double price, double discount){
        int id = 0;
       if (!ProductRepository.listProduct.isEmpty()) {
            SortDataBase.sortById(ProductRepository.listProduct);
            int i = 1;
            for (Product product : ProductRepository.listProduct) {
                if (product.getId() == i) i++;
                id = i;
            }
        } else id = ProductRepository.listProduct.size();
        double actualPrice = calculating(price, discount);
        ProductDataBase.listProduct.add(new Product(id, category, name, price, discount, actualPrice));
    }

    public static Product creatProduct(String category, String name, double price, double discount) {
        int id = 0;
        if (!ProductRepository.listProduct.isEmpty()) {
            SortDataBase.sortById(ProductRepository.listProduct);
            int i = 1;
            for (Product product : ProductRepository.listProduct) {
                if (product.getId() == i) i++;
                id = i;
            }
        } else id = ProductRepository.listProduct.size();
        double actualPrice = calculating(price, discount);
        return new Product(id, category, name, price, discount, actualPrice);
    }

    public static double calculating(double price, double discount) {
        return (price - (price * discount / 100));
    }

    public Optional<Product> findById(int id) {
        for (Product product : ProductRepository.listProduct) {
            if (product.getId() == id) return Optional.of(product);
        }
        return Optional.empty();
    }

    public List<Product> findAll(){
        return ProductDataBase.listProduct;
    }

    public void delete(List<Product> listProduct, long id) {
        listProduct.removeIf(nextProduct -> nextProduct.getId() == id);
    }

    public void update(int id, String category, String name, double price, double discount) throws StudentForUpdateNotFoundException {
        Product product = findById(id).orElseThrow(StudentForUpdateNotFoundException::new);
        product.setCategory(category);
        product.setName(name);
        product.setPrice(price);
        product.setDiscount(discount);
    }
}