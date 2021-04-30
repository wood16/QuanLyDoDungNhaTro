<%-- 
    Document   : gdThongtinchitietdodung
    Created on : 14/12/2020, 8:50:06 PM
    Author     : HoangLam
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.DoDung"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
        <title>JSP Page</title>
        <style>
            
            button{
                width: 100%;
                background-color: #4CAF50;
                color: white;
                padding: 5px 20px;
                margin: 8px 0;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }
            button:hover{
                background-color: #45a049;
            }
        </style>
    </head>
    <body>
        <%  
           DoDung dodung = new DoDung();
           String indexStr = (String)request.getParameter("index");
           if(indexStr != null) {
               int index = Integer.parseInt(indexStr);
               ArrayList<DoDung> listDD = (ArrayList<DoDung>)session.getAttribute("DSDoDung");
               dodung = listDD.get(index);
               session.setAttribute("dodungSua", dodung);
           }   
        %>
        <form action="/Quanlynhatro/doLuu.jsp" method="post">
        <table>
                <tr>
                    <th>Tên</th>
                    <td><input type="text" name="ten" value="<%=dodung.getTen()%>"></td>
                </tr>
                <tr>
                    <th>Giá</th>
                    <td><input type="text" name="gia" value="<%=dodung.getGia()%>"></td>
                </tr>
                <tr>
                    <th>Số lượng</th>
                    <td><input type="text" name="soluong" value="<%=dodung.getSoluong()%>"></td>
                </tr>
                <tr>
                    <th>Loại đồ dùng</th>
                    <td><input type="text" name="loaidodung" value="<%=dodung.getId_loai()%>"></td>
                </tr>
                <tr>
                    <th>Danh mục</th>
                    <td><input type="text" name="danhmuc" value="<%=dodung.getId_danhmuc()%>"></td>
                </tr>
                <tr>
                    <th>Tình trạng</th>
                    <td><input type="text" name="tinhtrang" value="<%=dodung.getTinhtrang()%>"></td>
                </tr>
                <tr>
                    <th>Mô tả</th>
                    <td><input type="text" name="mota" value="<%=dodung.getMota()%>"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><button>Cập nhật</button></td>
                </tr>
        </table>
        </form>
        <form action="/Quanlynhatro/gdQuanlydodung.jsp" >    
            <table>
                <tr>
                    <td></td>
                    <td><button>Quay Lại</button></td>
                </tr>
            </table>
        </form>    
    </body>
</html>
