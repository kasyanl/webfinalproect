package service;

import bean.Product;
import lombok.extern.slf4j.Slf4j;
import menu.MainMenu;
import proccesor.FinePersonalProduct;
import proccesor.FineProductOfCategory;
import proccesor.InputNumber;
import proccesor.ProductService2;
import repository.ProductRepository;

import java.util.List;

import static enums.MessageFormat.EMPTY_STRING;
import static enums.MessageFormat.LINE_STRING;

@Slf4j
public final class ReadProduct implements ProductRepository {

    private ReadProduct() {
        throw new UnsupportedOperationException();
    }

    public static List<Product> fineAllProduct(List<Product> listProduct) {
        if (listProduct.isEmpty()) {
            log.info("{}{} В базе отсутствуют элементы!{}", EMPTY_STRING, LINE_STRING, LINE_STRING);
        }
        for (Product product : listProduct) ProductService2.readProduct(product);
        return listProduct;
    }

    public static List<Product> fineCategoryProduct(List<Product> listProduct, InputNumber input) {
        MainMenu.menuCategory();
        int categoryNumber = input.readNumber();
        return FineProductOfCategory.selectCategoryByAllList(listProduct, categoryNumber);
    }

    public static Product finePersonalProduct(List<Product> listProduct, InputNumber input) {
        log.info("{}{} Введите ID продукта {}", EMPTY_STRING, LINE_STRING, LINE_STRING);
        int id = input.readNumber();
        return FinePersonalProduct.personalProductProcessor(listProduct, id);
    }
}