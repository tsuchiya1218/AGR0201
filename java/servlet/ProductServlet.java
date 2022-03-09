package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ProductDAO;

/**
 * Servlet implementation class Product_reg
 */
@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		HttpSession hs = request.getSession(true);
		try {
			ProductDAO dao = new ProductDAO();
			String[] goodsData = {
					(String) hs.getAttribute("goodsID"), (String) hs.getAttribute("goodsName"),
					(String) hs.getAttribute("categories"), (String) hs.getAttribute("maker"),
					(String) hs.getAttribute("goodsFeatures"), (String) hs.getAttribute("goodsStartDate"),
					(String) hs.getAttribute("goodsEndDate"), (String) hs.getAttribute("goodsPrice"),
					(String) hs.getAttribute("goodsValue"), (String) hs.getAttribute("goodsAbout"),
					(String) hs.getAttribute("goodsImg"), (String) hs.getAttribute("featImg"),
					(String) hs.getAttribute("stock")
			};

			if (((String) hs.getAttribute("categories")).equals("102")) {
				String[] deskData = {
						(String) hs.getAttribute("goodsID"),
						(String) hs.getAttribute("OS"), (String) hs.getAttribute("CPU"),
						(String) hs.getAttribute("CPUClock"), (String) hs.getAttribute("Memory"),
						(String) hs.getAttribute("Storage"), (String) hs.getAttribute("GraphicCard"),
						(String) hs.getAttribute("DisplayPort"), (String) hs.getAttribute("Wireless_LAN"),
						(String) hs.getAttribute("LAN_Cable"), (String) hs.getAttribute("Bluetooth"),
						(String) hs.getAttribute("USBPort"), (String) hs.getAttribute("Weight"),
						(String) hs.getAttribute("Width"), (String) hs.getAttribute("Height"),
						(String) hs.getAttribute("Depth")
				};
				boolean check = dao.insertDesk(goodsData, deskData);

			} else if (((String) hs.getAttribute("categories")).equals("101")) {
				String[] lapData = {
						(String) hs.getAttribute("goodsID"),
						(String) hs.getAttribute("display"), (String) hs.getAttribute("CPU"),
						(String) hs.getAttribute("clockSpeed"), (String) hs.getAttribute("graphicCard"),
						(String) hs.getAttribute("memory"),
						(String) hs.getAttribute("storage"), (String) hs.getAttribute("OS"),
						(String) hs.getAttribute("wirelessLAN"), (String) hs.getAttribute("LANCable"),
						(String) hs.getAttribute("bluetooth"), (String) hs.getAttribute("USBPort"),
						(String) hs.getAttribute("keyboard"), (String) hs.getAttribute("battery"),
						(String) hs.getAttribute("weight"), (String) hs.getAttribute("width"),
						(String) hs.getAttribute("height"), (String) hs.getAttribute("Depth"),
						(String) hs.getAttribute("color"), (String) hs.getAttribute("displayPort")
				};
				boolean check = dao.insertLaptop(goodsData, lapData);

			} else if (((String) hs.getAttribute("categories")).equals("202")) {
				String[] gpuData = {
						(String) hs.getAttribute("goodsID"),
						(String) hs.getAttribute("GraphicEngine"), (String) hs.getAttribute("BusStandard"),
						(String) hs.getAttribute("OpenGL"), (String) hs.getAttribute("VideoMemory"),
						(String) hs.getAttribute("EngineClock"), (String) hs.getAttribute("CUDACore"),
						(String) hs.getAttribute("MemorySpeed"), (String) hs.getAttribute("Resolution"),
						(String) hs.getAttribute("Interface"), (String) hs.getAttribute("Dimension")
				};
				boolean check = dao.insertGpu(goodsData, gpuData);
			} else {
				String[] mainData = {
						(String) hs.getAttribute("goodsID"),
						(String) hs.getAttribute("FormFactor"), (String) hs.getAttribute("Socket"),
						(String) hs.getAttribute("MemorySlot"), (String) hs.getAttribute("Chipset"),
						(String) hs.getAttribute("m.2"), (String) hs.getAttribute("sata3.0"),
						(String) hs.getAttribute("pcieSlot"), (String) hs.getAttribute("USBPort"),
						(String) hs.getAttribute("Audio"), (String) hs.getAttribute("OS")
				};
				boolean check = dao.insertMain(goodsData, mainData);
			}

			RequestDispatcher rd = null;

			rd = request.getRequestDispatcher("./productSearch.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}