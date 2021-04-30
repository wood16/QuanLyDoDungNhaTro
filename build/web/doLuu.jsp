<%-- 
    Document   : doLuu
    Created on : 15/12/2020, 7:46:11 AM
    Author     : HoangLam
--%>

<%@page import="dao.DoDungDAO"%>
<%@page import="model.DoDung"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
 
<%
    DoDungDAO ddDAO = new DoDungDAO();
    DoDung dodung = (DoDung)session.getAttribute("dodungSua");
    request.setCharacterEncoding("UTF-8");
    
    if(dodung != null){
        dodung.setTen((String)request.getParameter("ten"));
        dodung.setGia(Double.parseDouble((String)request.getParameter("gia")));
        dodung.setSoluong(Integer.parseInt((String)request.getParameter("soluong")));
        dodung.setId_loai(Integer.parseInt((String)request.getParameter("loaidodung")));
        dodung.setId_danhmuc(Integer.parseInt((String)request.getParameter("danhmuc")));
        dodung.setTinhtrang((String)request.getParameter("tinhtrang"));
        dodung.setMota((String)request.getParameter("mota"));
        ddDAO.luuThongtindodung(dodung);
        response.sendRedirect("gdQuanlydodung.jsp");
    }
    
%>
