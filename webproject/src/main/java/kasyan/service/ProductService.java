package kasyan.service;

import kasyan.bean.Product;

import kasyan.exceptions.ProductNotFoundException;
import kasyan.repository.ProductDataBase;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

import static kasyan.repository.ProductRepository.listProduct;

@Service
public class ProductService {

    private ProductDataBase productDataBase;

    public void save(String category, String name, double price, double discount) {
        int id = 0;
        if (!listProduct.isEmpty()) {
            SortDataBase.sortById(listProduct);
            int i = 1;
            for (Product product : listProduct) {
                if (product.getId() == i) i++;
                id = i;
            }
        } else id = listProduct.size();
        double actualPrice = calculating(price, discount);
        productDataBase.save(new Product(id, category, name, price, discount, actualPrice));
    }

    public static Product creatProduct(String category, String name, double price, double discount) {
        int id = 0;
        if (!listProduct.isEmpty()) {
            SortDataBase.sortById(listProduct);
            int i = 1;
            for (Product product : listProduct) {
                if (product.getId() == i) i++;
                id = i;
            }
        } else id = listProduct.size();
        double actualPrice = calculating(price, discount);
        return new Product(id, category, name, price, discount, actualPrice);
    }

    public static double calculating(double price, double discount) {
        return (price - (price * discount / 100));
    }

    public Product findById(int id) throws ProductNotFoundException {
        return productDataBase.findById(id);
    }

    public static List<Product> findAll() {
        return ProductDataBase.findAll();
    }

    public void delete(int id) {
        productDataBase.deleteById(id);
    }

    public void update(int id, String category, String name, double price, double discount) throws ProductNotFoundException {
        Product product = findById(id);
        product.setCategory(category);
        product.setName(name);
        product.setPrice(price);
        product.setDiscount(discount);
        product.setActualPrice(calculating(product.getPrice(), product.getDiscount()));
    }

    public static List<Product> fineCategoryForRead(String category) {
        List<Product> newListForRead = new ArrayList<>();
        for (Product product : listProduct) {
            if (product.getCategory().equals(category)) {
                newListForRead.add(product);
            }
        }
        return newListForRead;
    }

    public List<Product> sortList(int sort) {
        switch (sort) {
            case 1:
                SortDataBase.sortById(listProduct);
                break;
            case 2:
                SortDataBase.sortByIdReverse(listProduct);
                break;
            case 3:
                SortDataBase.sortByCategory(listProduct);
                break;
            case 4:
                SortDataBase.sortByCategoryReverse(listProduct);
                break;
            case 5:
                SortDataBase.sortByName(listProduct);
                break;
            case 6:
                SortDataBase.sortByNameReverse(listProduct);
                break;
            case 7:
                SortDataBase.sortByPrice(listProduct);
                break;
            case 8:
                SortDataBase.sortByPriceReverse(listProduct);
                break;
            case 9:
                SortDataBase.sortByDiscount(listProduct);
                break;
            case 10:
                SortDataBase.sortByDiscountReverse(listProduct);
                break;
            case 11:
                SortDataBase.sortByActualPrice(listProduct);
                break;
            case 12:
                SortDataBase.sortByActualPriceReverse(listProduct);
                break;
        }
        return listProduct;
    }

    @Autowired
    public void setProductDataBase(ProductDataBase productDataBase) {
        this.productDataBase = productDataBase;
    }
}
