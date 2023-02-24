package com.bit.struts.action;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.bit.struts.model.DeptDao;
import com.bit.struts.model.DeptVo;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.opensymphony.xwork2.Validateable;

public class InsertAction extends ActionSupport implements Action,Validateable
,ModelDriven<DeptVo>,Preparable{
   DeptVo bean =null;
   
   @Override
   public void prepare() throws Exception {
      bean = new DeptVo();
   }
   
   @Override
   public DeptVo getModel() {
      return bean;
   }
   
   @Override
   public void validate() {
      if(bean.getDeptno()==0) {
         addFieldError("deptno","빈칸입력");
      }
      if(bean.getDname().isEmpty()) {
         addFieldError("dname","빈칸입력");
      }
      if(bean.getDname().trim().isEmpty()) {
         addFieldError("dname","띄어쓰기만 입력");
      }
      if(bean.getLoc().isEmpty()) {
         addFieldError("loc","빈칸입력");
      }
   }

   @Override
   public String execute() throws Exception {
     System.out.println("call execute");
     
     if(hasErrors())return Action.INPUT;
     
      new DeptDao().insertOne(bean.getDeptno(),bean.getDname(),bean.getLoc());
      return Action.SUCCESS;
   }

}