package kasyan.controller;

import kasyan.exceptions.ProductNotFoundException;
import kasyan.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/product")
public class ProductController {

    private ProductService productService;

    @GetMapping(value = "/allproduct")
    public ModelAndView findAll() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("allproduct");
        modelAndView.addObject("product", productService.findAll());
        return modelAndView;
    }

    @GetMapping
    public ModelAndView findById(@RequestParam(value = "id") int id) throws ProductNotFoundException {
        ModelAndView modelAndView = new ModelAndView("productcard");
        modelAndView.addObject("product", productService.findById(id));
        return modelAndView;
    }

    @GetMapping(value = "/addproduct")
    public String addproduct() {
        return "addproduct";
    }

    @PostMapping(value = "/addproduct")
    public ModelAndView add(@RequestParam(value = "category") String category,
                            @RequestParam(value = "name") String name,
                            @RequestParam(value = "price") double price,
                            @RequestParam(value = "discount") double discount) {
        productService.save(category, name, price, discount);
        return new ModelAndView("redirect:allproduct");
    }

    @GetMapping(value = "/deleteproduct")
    public ModelAndView delete(@RequestParam(value = "id") int id) {
        productService.delete(id);
        return new ModelAndView("redirect:allproduct");
    }

    @GetMapping(value = "/editproduct")
    public ModelAndView edit(@RequestParam(value = "id") int id) throws ProductNotFoundException {
        ModelAndView modelAndView = new ModelAndView("editproduct");
        modelAndView.addObject("product", productService.findById(id));
        return modelAndView;
    }

    @PostMapping(value = "/editproduct")
    public ModelAndView edit(@RequestParam(value = "id") int id,
                             @RequestParam(value = "category") String category,
                             @RequestParam(value = "name") String name,
                             @RequestParam(value = "price") double price,
                             @RequestParam(value = "discount") double discount) throws ProductNotFoundException {
        productService.update(id, category, name, price, discount);
        return new ModelAndView("redirect:allproduct");
    }

    @GetMapping(value = "/sortbyid")
    public ModelAndView sortById() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("sort/sortbyid");
        modelAndView.addObject("product", productService.sortList(1));
        return modelAndView;
    }

    @GetMapping(value = "/sortbyidreverse")
    public ModelAndView sortByIdReverse() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("sort/sortbyidreverse");
        modelAndView.addObject("product", productService.sortList(2));
        return modelAndView;
    }

    @GetMapping(value = "/sortbycategory")
    public ModelAndView sortByCategory() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("sort/sortbycategory");
        modelAndView.addObject("product", productService.sortList(3));
        return modelAndView;
    }

    @GetMapping(value = "/sortbycategoryreverse")
    public ModelAndView sortByCategoryReverse() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("sort/sortbycategoryreverse");
        modelAndView.addObject("product", productService.sortList(4));
        return modelAndView;
    }

    @GetMapping(value = "/sortbyname")
    public ModelAndView sortByName() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("sort/sortbyname");
        modelAndView.addObject("product", productService.sortList(5));
        return modelAndView;
    }

    @GetMapping(value = "/sortbynamereverse")
    public ModelAndView sortByNameReverse() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("sort/sortbynamereverse");
        modelAndView.addObject("product", productService.sortList(6));
        return modelAndView;
    }

    @GetMapping(value = "/sortbyprice")
    public ModelAndView sortByPrice() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("sort/sortbyprice");
        modelAndView.addObject("product", productService.sortList(7));
        return modelAndView;
    }

    @GetMapping(value = "/sortbypricereverse")
    public ModelAndView sortByPriceReverse() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("sort/sortbypricereverse");
        modelAndView.addObject("product", productService.sortList(8));
        return modelAndView;
    }

    @GetMapping(value = "/sortbydiscount")
    public ModelAndView sortByDiscount() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("sort/sortbydiscount");
        modelAndView.addObject("product", productService.sortList(9));
        return modelAndView;
    }

    @GetMapping(value = "/sortbydiscountreverse")
    public ModelAndView sortByDiscountReverse() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("sort/sortbydiscountreverse");
        modelAndView.addObject("product", productService.sortList(10));
        return modelAndView;
    }

    @GetMapping(value = "/sortbyactualprice")
    public ModelAndView sortByActualPrice() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("sort/sortbyactualprice");
        modelAndView.addObject("product", productService.sortList(11));
        return modelAndView;
    }

    @GetMapping(value = "/sortbyactualpricereverse")
    public ModelAndView sortByActualPriceReverse() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("sort/sortbyactualpricereverse");
        modelAndView.addObject("product", productService.sortList(12));
        return modelAndView;
    }

    @GetMapping(value = "/finefruits")
    public ModelAndView fineFruits() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("finecategory/finefruits");
        modelAndView.addObject("product", productService.fineCategoryForRead("FRUITS"));
        return modelAndView;
    }

    @GetMapping(value = "/fineberries")
    public ModelAndView fineBerries() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("finecategory/fineberries");
        modelAndView.addObject("product", productService.fineCategoryForRead("BERRIES"));
        return modelAndView;
    }

    @GetMapping(value = "/finevegetables")
    public ModelAndView fineVegetables() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("finecategory/finevegetables");
        modelAndView.addObject("product", productService.fineCategoryForRead("VEGETABLES"));
        return modelAndView;
    }

    @GetMapping(value = "/finemilkproduct")
    public ModelAndView fineMilkProduct() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("finecategory/finemilkproduct");
        modelAndView.addObject("product", productService.fineCategoryForRead("MILK_PRODUCT"));
        return modelAndView;
    }

    @GetMapping(value = "/finealcohol")
    public ModelAndView fineAlcohol() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("finecategory/finealcohol");
        modelAndView.addObject("product", productService.fineCategoryForRead("ALCOHOLIC_BEVERAGES"));
        return modelAndView;
    }

    @GetMapping(value = "/finemeat")
    public ModelAndView fineMeat() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("finecategory/finemeat");
        modelAndView.addObject("product", productService.fineCategoryForRead("MEAT"));
        return modelAndView;
    }

    @ExceptionHandler(ProductNotFoundException.class)
    public ModelAndView handleStudentNotFoundException(ProductNotFoundException exception) {
        ModelAndView modelAndView = new ModelAndView("usernotfound");
        modelAndView.addObject("exception", exception.getMessage());
        return modelAndView;
    }

    @Autowired
    public void setStudentService(ProductService productService) {
        this.productService = productService;
    }

}

