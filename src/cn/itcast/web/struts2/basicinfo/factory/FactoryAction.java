package cn.itcast.web.struts2.basicinfo.factory;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import cn.itcast.entity.Factory;
import cn.itcast.entity.dao.FactoryDAO;
import cn.itcast.entity.dao.TextCodeDAO;
import cn.itcast.web.struts2._BaseStruts2Action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

public class FactoryAction extends _BaseStruts2Action implements ModelDriven<Factory> {
	private Factory model = new Factory();
	public Factory getModel() {
		return model;
	}
	
	//列表
	public String list(){
		FactoryDAO oDao = (FactoryDAO) this.getDao("daoFactory");
		List dataList = oDao.find("from Factory o");
		ActionContext.getContext().put("dataList", dataList);
		
		return "plist";
	}
	
	//保存
	public String save(){
		FactoryDAO oDao = (FactoryDAO) this.getDao("daoFactory");
		if(model.getId()==null){
			model.setState("1");		//1正常0停用
		}
		oDao.saveOrUpdate(model);
		
		return list();
	}
	
	//转向新增页面
	public String tocreate(){
		//准备分类数据
		TextCodeDAO tDao = (TextCodeDAO) this.getDao("daoTextCodeDao");
		List ctypeList = tDao.find("from TextCode o where o.classCode='297e702953f6321d0153f634aef30002'");				//厂家分类
		ActionContext.getContext().put("ctypeList", ctypeList);
		
		return "pcreate";
	}
	
	//转向修改页面
	public String toupdate(){
		//准备分类数据
		TextCodeDAO tDao = (TextCodeDAO) this.getDao("daoTextCodeDao");
		List ctypeList = tDao.find("from TextCode o where o.classCode='297e702953f6321d0153f634aef30002'");				//厂家分类
		ActionContext.getContext().put("ctypeList", ctypeList);
		
		
		FactoryDAO oDao = (FactoryDAO) this.getDao("daoFactory");
		Factory obj = (Factory) oDao.get(Factory.class, model.getId());
		ActionContext.getContext().getValueStack().push(obj);
		
		return "pupdate";
	}
	
	//转向查看页面
	public String toview(){
		FactoryDAO oDao = (FactoryDAO) this.getDao("daoFactory");
		Factory obj = (Factory) oDao.get(Factory.class, model.getId());
		ActionContext.getContext().getValueStack().push(obj);
		
		return "pview";
	}
	
	//批量删除
	public String delete(){
		String[] ids = model.getId().split(", ");
		FactoryDAO oDao = (FactoryDAO) this.getDao("daoFactory");
		oDao.deleteAllById(ids, Factory.class);
		
		return list();
	}
	
	
	//改变状态
	private void state(String value){
		String[] ids = model.getId().split(", ");
		FactoryDAO oDao = (FactoryDAO) this.getDao("daoFactory");
		Set oSet = new HashSet();
		for(int i=0;i<ids.length;i++){
			Factory obj = (Factory) oDao.get(Factory.class,ids[i]);
			obj.setState(value);		//1正常0停用
			oSet.add(obj);
		}
		oDao.saveOrUpdateAll(oSet);		//批量提交
	}
	
	//启用
	public String start(){
		state("1");
		return list();
	}
	
	//停用
	public String stop(){
		state("0");
		return list();
	}

}
