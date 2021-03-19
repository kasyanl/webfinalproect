package service;

import bean.Product;
import proccesor.InputNumber;
import proccesor.ProductService;
import repository.ProductRepository;
import lombok.extern.slf4j.Slf4j;
import java.util.List;

import static enums.MessageFormat.EMPTY_STRING;
import static enums.MessageFormat.LINE_STRING;

@Slf4j
public class DeleteProduct implements ProductRepository {

    private DeleteProduct() {
        throw new UnsupportedOperationException();
    }

    public static List<Product> deleteProductService(List<Product> listProduct, InputNumber inputNumber) {
        log.info("{}{} Введите ID продукта {}", EMPTY_STRING, LINE_STRING, LINE_STRING);
        int id = inputNumber.readNumber();
        ProductService.deleteProduct(listProduct, id);
        return listProduct;
    }
}