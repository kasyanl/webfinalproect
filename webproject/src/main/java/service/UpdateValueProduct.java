package service;

import bean.Product;
import proccesor.FinePersonalProduct;
import proccesor.InputNumber;
import proccesor.UpdateProductFromID;
import lombok.extern.slf4j.Slf4j;

import java.util.List;

import static enums.MessageFormat.EMPTY_STRING;
import static enums.MessageFormat.LINE_STRING;

@Slf4j
public final class UpdateValueProduct {

    private UpdateValueProduct() {
        throw new UnsupportedOperationException();
    }

//    public static Product updateAnyProduct(InputNumber input, List<Product> listProduct) {
//        log.info("{}{} Введите ID продукта {}", EMPTY_STRING, LINE_STRING, LINE_STRING);
//        int id = input.readNumber();
//        return UpdateProductFromID.fineProductByID(input, FinePersonalProduct.personalProductProcessor(listProduct, id));
//    }
}