package cn.itcast.web.struts2.baseinfo.textcode;

import java.util.List;

import org.junit.internal.runners.TestClass;

import cn.itcast.entity.ClassCode;
import cn.itcast.entity.TextCode;
import cn.itcast.entity.dao.ClassCodeDAO;
import cn.itcast.entity.dao.TextCodeDAO;
import cn.itcast.web.struts2._BaseStruts2Action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

public class TextCodeAction extends _BaseStruts2Action implements ModelDriven<TextCode>{

	private TextCode model = new TextCode();
	@Override
	public TextCode getModel() {
		return model;
	}
	
	public String list() {
		TextCodeDAO oDao = (TextCodeDAO)this.getDao("daoTextCodeDao");
		List<TextCode> dataList = oDao.find("from TextCode o");
		ActionContext.getContext().put("dataList", dataList);
		return "plist";
	}

	//保存
	public String save() {
		TextCodeDAO oDao = (TextCodeDAO)this.getDao("daoTextCodeDao");
		oDao.saveOrUpdate(model);
		
		return list();
	}
	
	//删除一条
	public String deleteone() {
		TextCodeDAO oDao = (TextCodeDAO)this.getDao("daoTextCodeDao");
		oDao.delete(model.getId(),TextCode.class);
		
		return list();
	}
	
	//删除一条
	public String delete() {
		TextCodeDAO oDao = (TextCodeDAO)this.getDao("daoTextCodeDao");
		String[] ids = model.getId().split(", ");
		oDao.deleteAllById(ids, TextCode.class);
		return list();
	}
	
	//转向新增页面
	public String tocreate() {
		
		ClassCodeDAO oDao = (ClassCodeDAO)this.getDao("daoClassCodeDao");
		List<ClassCode> classCode = oDao.find("FROM ClassCode o");
		ActionContext.getContext().put("classCode", classCode);
		
		return "pcreate";
	}
	
	//转向修改页面
	public String toupdate() {
		
		//准备分类信息
		ClassCodeDAO cDao = (ClassCodeDAO)this.getDao("daoClassCodeDao");
		List<ClassCode> classCodeList = cDao.find("FROM ClassCode o");
		ActionContext.getContext().put("classCodeList", classCodeList);
		
		TextCodeDAO oDao = (TextCodeDAO)this.getDao("daoTextCodeDao");
		TextCode textCode = (TextCode)oDao.get(TextCode.class, model.getId());
		
		//与model有关的存入值栈，便于操作
		ActionContext.getContext().getValueStack().push(textCode);

		return "pupdate";
	}
	
	//转向浏览页面
	public String toview() {
		
		ClassCodeDAO cDao = (ClassCodeDAO)this.getDao("daoClassCodeDao");
		List<ClassCode> classCode = cDao.find("FROM ClassCode o");
		ActionContext.getContext().put("classCode", classCode);
		
		TextCodeDAO oDao = (TextCodeDAO)this.getDao("daoTextCodeDao");
		TextCode textCode = (TextCode)oDao.get(TextCode.class, model.getId());
		
		//与model有关的存入值栈，便于操作
		ActionContext.getContext().getValueStack().push(textCode);
		
		return "pview";
	}
	
}
