package org.jeecg.modules.ecategory.controller;

import lombok.extern.slf4j.Slf4j;
import org.jeecg.modules.ecategory.service.IECategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/ecategory")
@Slf4j
public class ECategoryController {

    @Autowired
    IECategoryService ieCategoryService;

}
