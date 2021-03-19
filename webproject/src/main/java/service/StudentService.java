package service;

import bean.Product;
import bean.Student;
import enums.Category;
import exceptions.StudentForUpdateNotFoundException;

import java.util.List;
import java.util.Optional;

public class StudentService {
    public static int ID_COUNTER = Product.listProduct.size();

    public void save(String category, String name, double price, double discount){

        Product.listProduct.add(new Product(ID_COUNTER, category, name, price, discount, calculating(price, discount)));
        ID_COUNTER++;
    }
    public static double calculating(double price, double discount) {
        return (price - (price * discount / 100));
    }

    public Optional<Product> findById(int id){
        if(id >= Product.listProduct.size()) return Optional.empty();
        else return Optional.of(Product.listProduct.get(id));
    }

    public List<Product> findAll(){
        return Product.listProduct;
    }

    public void delete(int id){
        Product.listProduct.remove(id);
    }

    public void update(int id, String category, String name, double price, double discount) throws StudentForUpdateNotFoundException {
        Product product = findById(id).orElseThrow(StudentForUpdateNotFoundException::new);
        product.setCategory(category);
        product.setName(name);
        product.setPrice(price);
        product.setDiscount(discount);
    }
}