package service;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public final class CreateProduct {

    private CreateProduct() {
        throw new UnsupportedOperationException();
    }
//
//    public static Product createNewProduct(InputNumber inputNumber) {
//
//        String selectCategory = UpdateCategoryService.updateCategory(inputNumber);
//       // Category category = Category.valueOf(selectCategory);
//        log.info("{}{} Введите название продукта: {}", EMPTY_STRING, LINE_STRING, LINE_STRING);
//        String name = inputNumber.readString();
//        log.info("{}{} Введите цену продукта (BYN): {}", EMPTY_STRING, LINE_STRING, LINE_STRING);
//        double price = inputNumber.readDouble();
//        log.info("{}{} Введите скидку продукта (%): {}", EMPTY_STRING, LINE_STRING, LINE_STRING);
//        double discount = inputNumber.readDouble();
//
//        return ProductService.creatProduct(category, name, price, discount);
//    }
}