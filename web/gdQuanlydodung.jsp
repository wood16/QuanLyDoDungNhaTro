<%-- 
    Document   : gdQuanlydodung
    Created on : 14/12/2020, 12:46:14 PM
    Author     : HoangLam
--%>

<%@page import="model.DoDung"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.DoDungDAO"%>
<%@page pageEncoding="UTF-8" language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý đồ dùng</title>
        <style>
            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 50%;
            }

            td, th {
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;
            }
            tr:nth-child(even) {

                background-color: #dddddd;
            }
            tr:nth-child(even):hover{

                background-color: #95a5a6;
            }
            button{
                width: 100px;
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
            a {
                color: #2eb82e;
            }
            

        </style>
    </head>
    <body>

        <%
            DoDungDAO ddDAO = new DoDungDAO();
            ArrayList<DoDung> listDD = new ArrayList<DoDung>();
            String name = "";
            // check click
            if ((String) request.getParameter("timkiem") != null) {
                name = (String) request.getParameter("timkiem");
                listDD = ddDAO.getDoDungTheoTen(name);
                session.setAttribute("DSDoDung", listDD);
            }
        %>
        <h2>Quản lý đồ dùng</h2>

        <form action="/Quanlynhatro/gdQuanlydodung.jsp" method="get">
            <label>Tìm đồ dùng:</label></td>
            <input type="text" name="timkiem" value="<%=name%>">
            <button>Tìm kiếm</button>
                
            
        </form>
        </br>
        <h4>Danh sách đồ dùng</h4>
        <div>
            <table>
                <tr>
                    <th>Tên</th>
                    <th>Giá</th>
                    <th>Số lượng</th>                 
                    
                    <th>Mô tả</th>
                    <th>Chi tiết</th>
                </tr>
                <%
                    if (listDD != null) {
                        for (int i = 0; i < listDD.size(); i++) {%>
                <tr>
                    <td><%=listDD.get(i).getTen()%></td>
                    <td><%=listDD.get(i).getGia()%></td>
                    <td><%=listDD.get(i).getSoluong()%></td>
                    
                    <td><%=listDD.get(i).getMota()%></td>
                    <td><a href="gdThongtinchitietdodung.jsp?index=<%=i%>">Xem</a></td>

                </tr>
                <% }
                    }%>
            </table>
        </div>
    </body>
</html>
