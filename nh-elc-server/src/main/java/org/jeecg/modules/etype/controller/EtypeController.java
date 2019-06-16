package org.jeecg.modules.etype.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.extern.slf4j.Slf4j;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.system.query.QueryGenerator;
import org.jeecg.modules.ecategory.service.IECategoryService;
import org.jeecg.modules.etype.entity.Etype;
import org.jeecg.modules.etype.service.IEtypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * @Title: Controller
 * @Description: 设备种类表
 * @author： jeecg-boot
 * @date：   2019-05-15
 * @version： V1.0
 */
@RestController
@RequestMapping("/etype")
@Slf4j
public class EtypeController {
	@Autowired
	private IEtypeService etypeService;
	@Autowired
	private IECategoryService ecategoryService;
	/**
	  * 分页列表查询
	 * @param etype
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@GetMapping(value = "/list")
	public Result<IPage<Etype>> queryPageList(Etype etype,
									  @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
									  @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
									  HttpServletRequest req) {
		Result<IPage<Etype>> result = new Result<IPage<Etype>>();
		QueryWrapper<Etype> queryWrapper = QueryGenerator.initQueryWrapper(etype, req.getParameterMap());
		Page<Etype> page = new Page<Etype>(pageNo, pageSize);
		IPage<Etype> pageList = etypeService.page(page, queryWrapper);
		result.setSuccess(true);
		result.setResult(pageList);
		return result;
	}
	
	/**
	  *   添加
	 * @param etype
	 * @return
	 */
	@PostMapping(value = "/add")
	public Result<Etype> add(@RequestBody Etype etype) {
		Result<Etype> result = new Result<Etype>();
		try {
			etypeService.save(etype);
			result.success("添加成功！");
		} catch (Exception e) {
			e.printStackTrace();
			log.info(e.getMessage());
			result.error500("操作失败");
		}
		return result;
	}
	
	/**
	  *  编辑
	 * @param etype
	 * @return
	 */
	@PutMapping(value = "/edit")
	public Result<Etype> edit(@RequestBody Etype etype) {
		Result<Etype> result = new Result<Etype>();
		Etype etypeEntity = etypeService.getById(etype.getId());
		if(etypeEntity==null) {
			result.error500("未找到对应实体");
		}else {
			boolean ok = etypeService.updateById(etype);
			//TODO 返回false说明什么？
			if(ok) {
				result.success("修改成功!");
			}
		}
		
		return result;
	}
	
	/**
	  *   通过id删除
	 * @param id
	 * @return
	 */
	@DeleteMapping(value = "/delete")
	public Result<Etype> delete(@RequestParam(name="id",required=true) String id) {
		Result<Etype> result = new Result<Etype>();
		Etype etype = etypeService.getById(id);
		if(etype==null) {
			result.error500("未找到对应实体");
		}else {
			boolean ok = etypeService.removeById(id);
			if(ok) {
				result.success("删除成功!");
			}
		}
		
		return result;
	}
	
	/**
	  * 通过id查询
	 * @param id
	 * @return
	 */
	@GetMapping(value = "/queryById")
	public Result<Etype> queryById(@RequestParam(name="id",required=true) String id) {
		Result<Etype> result = new Result<Etype>();
		Etype etype = etypeService.getById(id);
		if(etype==null) {
			result.error500("未找到对应实体");
		}else {
			result.setResult(etype);
			result.setSuccess(true);
		}
		return result;
	}

	 /**
      * 查询  id  name  设备种类  提供查询下拉
	  * @return
	  */
	 @GetMapping(value = "/queryItemsEType")
	 public Result<List<Map<String,Object>>> queryItemsEType() {
         Result<List<Map<String,Object>>> result = new Result<List<Map<String,Object>>>();
         List<Map<String,Object>> all=etypeService.queryItemsEType();
		 result.setResult(all);
		 result.setSuccess(true);
         return result;
	 }

	/**
	 * 查询  id  name 设备类别  提供查询下拉  根据种类id查询
	 * @return
	 */
	@GetMapping(value = "/queryItemsECateGory")
	 public Result<List<Map<String,Object>>> queryItemsECateGory( @RequestParam("eTypeId") Integer eTypeId){
        Result<List<Map<String,Object>>> result = new Result<List<Map<String,Object>>>();
        List<Map<String,Object>> all=ecategoryService.queryItemsECateGory(eTypeId);
        result.setResult(all);
		result.setSuccess(true);
		return result;
    }

	/**
	 * 查询  id  name 设备类别  提供查询下拉
	 * @return
	 */
	@GetMapping(value = "/queryECateGoryItems")
	public Result<List<Map<String,Object>>> queryECateGoryItems(){
		Result<List<Map<String,Object>>> result = new Result<List<Map<String,Object>>>();
		List<Map<String,Object>> all=ecategoryService.queryECateGoryItems();
		result.setResult(all);
		result.setSuccess(true);
		return result;
	}
}
