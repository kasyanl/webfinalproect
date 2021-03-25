package service;

import bean.Product;

import exceptions.ProductForUpdateNotFoundException;
import repository.ProductDataBase;
import repository.ProductRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class ProductService {


    public void save(String category, String name, double price, double discount) {
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

    public List<Product> findAll() {
        return ProductDataBase.listProduct;
    }

    public void delete(List<Product> listProduct, long idProduct) {
        listProduct.removeIf(nextProduct -> nextProduct.getId() == idProduct);
    }

    public static void read (List<Product> listProduct, int id) {
        List<Product> newListForRead = new ArrayList<>();
        for (Product product : listProduct) {
            if (product.getId() == id) {
                newListForRead.add(product);
            }
        }
    }

    public void update(int id, String category, String name, double price, double discount) throws ProductForUpdateNotFoundException {
        Product product = findById(id).orElseThrow(ProductForUpdateNotFoundException::new);
        product.setCategory(category);
        product.setName(name);
        product.setPrice(price);
        product.setDiscount(discount);
    }

    public List<Product> fineCategoryForRead(List<Product> listProduct, String category) {
        List<Product> newListForRead = new ArrayList<>();
        for (Product product : listProduct) {
            if (product.getCategory().equals(category)) {
                newListForRead.add(product);
            }
        }
        return newListForRead;
    }

    public List<Product> sortList(List<Product> listProduct, int sort) {
        switch (sort) {
            case 1 -> SortDataBase.sortById(listProduct);
            case 2 -> SortDataBase.sortByIdReverse(listProduct);
            case 3 -> SortDataBase.sortByCategory(listProduct);
            case 4 -> SortDataBase.sortByCategoryReverse(listProduct);
            case 5 -> SortDataBase.sortByName(listProduct);
            case 6 -> SortDataBase.sortByNameReverse(listProduct);
            case 7 -> SortDataBase.sortByPrice(listProduct);
            case 8 -> SortDataBase.sortByPriceReverse(listProduct);
            case 9 -> SortDataBase.sortByDiscount(listProduct);
            case 10 -> SortDataBase.sortByDiscountReverse(listProduct);
            case 11 -> SortDataBase.sortByActualPrice(listProduct);
            case 12 -> SortDataBase.sortByActualPriceReverse(listProduct);
        }
        return listProduct;
    }
}
