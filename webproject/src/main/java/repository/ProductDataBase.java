package repository;

import bean.Product;
import service.ProductService;

import java.util.List;

public class ProductDataBase implements ProductRepository {

    private ProductDataBase() {
        throw new UnsupportedOperationException();
    }

    public static List<Product> createList() {

        return listProduct;
    }

    static {
        listProduct.add(ProductService.creatProduct(0,"FRUITS", "Apple", 10.0, 50.0));
        listProduct.add(ProductService.creatProduct(1,"FRUITS", "Orange", 12.10, 10.0));
        listProduct.add(ProductService.creatProduct(2,"FRUITS", "Banana", 9.50, 20.0));
        listProduct.add(ProductService.creatProduct(3,"BERRIES", "Cherry", 25.00, 5.0));
        listProduct.add(ProductService.creatProduct(4,"BERRIES", "Strawberry", 15.25, 60.0));
        listProduct.add(ProductService.creatProduct(5,"BERRIES", "Watermelon", 50.20, 15.0));
        listProduct.add(ProductService.creatProduct(6,"VEGETABLES", "Tomato", 5.50, 30.0));
        listProduct.add(ProductService.creatProduct(7,"VEGETABLES", "Cucumbers", 3.20, 20.0));
        listProduct.add(ProductService.creatProduct(8,"VEGETABLES", "Onion", 10.10, 40.0));
        listProduct.add(ProductService.creatProduct(9,"MILK_PRODUCT", "Cottage cheese", 15.10, 10.0));
        listProduct.add(ProductService.creatProduct(10,"MILK_PRODUCT", "Sour cream", 25.00, 00.0));
        listProduct.add(ProductService.creatProduct(11,"MILK_PRODUCT", "Yogurt", 20.50, 10.0));
        listProduct.add(ProductService.creatProduct(12,"MEAT", "Pork", 50.20, 30.0));
        listProduct.add(ProductService.creatProduct(13,"MEAT", "Beef", 66.15, 00.0));
        listProduct.add(ProductService.creatProduct(14,"MEAT", "Chicken meat", 15.10, 00.0));
        listProduct.add(ProductService.creatProduct(15,"ALCOHOLIC BEVERAGES", "Beer", 10.5, 00.0));
        listProduct.add(ProductService.creatProduct(16,"ALCOHOLIC BEVERAGES", "Whiskey", 100.00, 00.0));
        listProduct.add(ProductService.creatProduct(17,"ALCOHOLIC BEVERAGES", "Wine", 40.10, 00.0));
    }
}