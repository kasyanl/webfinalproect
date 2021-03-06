package kasyan.controller;

import kasyan.service.ExportToExcel;
import kasyan.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/")
public class IndexController {

    @RequestMapping(method = RequestMethod.GET)
    public String index() {
        return "index";
    }

    @GetMapping(value = "/content")
    public String content() {
        return "adminpages/content";
    }

    @GetMapping(value = "/contentguest")
    public String contentguest() {
        return "guestpages/contentguest";
    }
//    @GetMapping(value = "/sidebar")
//    public String sidebar() {
//        return "sidebar";
//    }

    @GetMapping(value = "/selectcategorybyread")
    public String selectCategoryByRead() {
        return "adminpages/selectcategorybyread";
    }

    @GetMapping(value = "/selectcategorybyreadguest")
    public String selectCategoryByReadGuest() {
        return "guestpages/selectcategorybyreadguest";
    }

    @GetMapping(value = "/exportexcel")
    public ModelAndView exportExcel() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("adminpages/exportexcel");
        modelAndView.addObject("product", ExportToExcel.exportAllList(ProductService.findAll()));
        return modelAndView;
    }
    @GetMapping(value = "/exportexcelguest")
    public ModelAndView exportExcelGuest() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("guestpages/exportexcelguest");
        modelAndView.addObject("product", ExportToExcel.exportAllList(ProductService.findAll()));
        return modelAndView;
    }
}