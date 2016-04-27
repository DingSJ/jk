package cn.itcast.web.struts2.baseinfo.classcode;

import java.util.List;

import cn.itcast.entity.ClassCode;
import cn.itcast.entity.dao.ClassCodeDAO;
import cn.itcast.web.struts2._BaseStruts2Action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

public class ClassCodeAction extends _BaseStruts2Action implements ModelDriven<ClassCode>{

	private ClassCode model = new ClassCode();
	@Override
	public ClassCode getModel() {
		return model;
	}
	
	public String list() {
		ClassCodeDAO oDao = (ClassCodeDAO)this.getDao("daoClassCodeDao");
		List<ClassCode> dataList = oDao.find("from ClassCode o");
		ActionContext.getContext().put("dataList", dataList);
		return "plist";
	}

	//保存
	public String save() {
		ClassCodeDAO oDao = (ClassCodeDAO)this.getDao("daoClassCodeDao");
		oDao.saveOrUpdate(model);
		
		return list();
	}
	
	//删除一条
	public String delete() {
		ClassCodeDAO oDao = (ClassCodeDAO)this.getDao("daoClassCodeDao");
		oDao.delete(model.getId(),ClassCode.class);
		
		return list();
	}
	
	//转向新增页面
	public String tocreate() {
		return "pcreate";
	}
	
	//转向修改页面
	public String toupdate() {
		ClassCodeDAO oDao = (ClassCodeDAO)this.getDao("daoClassCodeDao");
		ClassCode classCode = (ClassCode)oDao.get(ClassCode.class, model.getId());
		
		//与model有关的存入值栈，便于操作
		ActionContext.getContext().getValueStack().push(classCode);
		
		return "pupdate";
	}
	
}
