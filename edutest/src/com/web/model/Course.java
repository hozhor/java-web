package com.web.model;

public class Course {
   private String cno;
   private String cname;
   private String cterm;
   private String cmajor;
   private int chour;
   private int ccredit;
   private int people;
   private String tno;
   private String cintro;
   private String tname;
   private String ttitle;
   private String score;
   
   public String getCno(){
	   return cno;
   }
   
   public void setCno(String cno){
	   this.cno=cno;
   }
  
   public String getCname(){
	   return cname;
   }
   
   public void setCname(String cname){
	   this.cname=cname;
   }
   public String getCterm(){
	   return cterm;
   }
   
   public void setCterm(String cterm){
	   this.cterm=cterm;
   }
   public String getCmajor(){
	   return cmajor;
   }
   
   public void setCmajor(String cmajor){
	   this.cmajor=cmajor;
   }
   public int getChour(){
	   return chour;
   }
   
   public void setChour(int chour){
	   this.chour=chour;
   }
   
   public int getCpeople(){
	   return people;
   }
   
   public void setCpeople(int people){
	   this.people=people;
   }
    
   
   public int getCcredit(){
	   return ccredit;
   }
   
   public void setCcredit(int ccredit){
	   this.ccredit=ccredit;
   }
   public String getCtno(){
	   return tno;
   }
   
   public void setCtno(String tno){
	   this.tno=tno;
   }
   public String getCintro(){
	   return cintro;
   }
   
   public void setCintro(String cintro){
	   this.cintro=cintro;
   }
   
   
   public String getCtname(){
	   return tname;
   }
   
   public void setCtname(String tname){
	   this.tname=tname;
   }
   
   public String getCscore(){
	   return score;
   }
   
   public void setCscore(String score){
	   this.score=score;
   }
   
   public String getCttitle(){
	   return ttitle;
   }
   
   public void setCttitle(String ttitle){
	   this.ttitle=ttitle;
   }
}
