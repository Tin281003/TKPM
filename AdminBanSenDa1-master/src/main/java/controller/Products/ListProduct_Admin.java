package controller.Products;

import model.Product;
import service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

@WebServlet(name = "ListProduct_Admin", value = "/ListProduct_Admin")
public class ListProduct_Admin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

// 5.Hệ thống lấy ra được danh sách các sản phẩm từ CSDL được xử lý ở ProductService.
        List<Product> list = ProductService.getListProductForAdmin();
        request.setAttribute("listpro", list);
        String sort = request.getParameter("sortValue");
       // 6. Hệ thống dựa vào tiêu chí ( sắp xếp theo tên,sắp xếp theo giá, sắp xếp theo loại)
        // người dùng chọn để so sánh các tham số(tên sản phẩm 1, tên sản phẩm 2) của tiêu chí đó.
        //7.Hệ thống lấy xác nhận và xử lý dữ liệu.
        if (sort != null) {
            if (sort.equals("Sắp xếp theo tên")) {
                Collections.sort(list, new Comparator<Product>() {
                    @Override
                    public int compare(Product o1, Product o2) {
                        return o1.getName().compareTo(o2.getName());
                    }
                });
            }
            if (sort.equals("Sắp xếp theo loại")) {
                Collections.sort(list, new Comparator<Product>() {
                    @Override
                    public int compare(Product o1, Product o2) {
                        return o1.getType().compareTo(o2.getType());
                    }
                });
            }
            if (sort.equals("Giá từ cao đến thấp")) {
                list.sort((Product o1, Product o2) -> o2.getPrice() - o1.getPrice());
            }
            if (sort.equals("Giá từ thấp đến cao")) {
                list.sort((Product o1, Product o2) -> o1.getPrice() - o2.getPrice());
            }
        }

        String numPage = request.getParameter("page");
        if(numPage == null || numPage.equals("0")){
            numPage = "1";
        }
        int page = Integer.parseInt(numPage);
        List<Product> listPa = ProductService.getPaginationPageOwn(page, list);
        int totalProduct = ProductService.getToTalProduct();
        int endPage = totalProduct / 15;
        if(totalProduct % 15 != 0){
            endPage++;
        }

        //8.Hệ thống trả về danh sách sản phẩm đã được sắp xếp thành công theo tiêu chí người dùng chọn.
        request.setAttribute("endPage", endPage);
        request.setAttribute("tag", page);
        request.setAttribute("listPa", listPa);
        request.getRequestDispatcher("list-products.jsp").forward(request,response);

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    public static void main(String[] args) {

    }
}

