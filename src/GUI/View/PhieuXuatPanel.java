/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nb://SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package GUI.View;

import BUS.KhachHangBUS;
import BUS.NhanVienBUS;
import java.awt.*;
import javax.swing.*;
import BUS.PhieuXuatBUS;
import DTO.KhachHangDTO;
import DTO.NhanVienDTO;
import DTO.PhieuXuatDTO;
import GUI.Controller.PhieuXuatController;
import DTO.TaiKhoanDTO;
import GUI.WorkFrame;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import javax.swing.event.ChangeListener;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.DefaultTableModel;
import com.toedter.calendar.JDateChooser;
import java.beans.PropertyChangeListener;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;
import javax.swing.border.Border;
import javax.swing.event.DocumentListener;
import GUI.Format.*;

/**
 *
 * @author DELL
 */
public class PhieuXuatPanel extends JPanel {
    public ArrayList<PhieuXuatDTO> listPx;
    private PhieuXuatBUS pxBUS;
    private JDateChooser dateStart; // Ngày bắt đầu
    private JDateChooser dateEnd;   // Ngày kết thúc
    private JTextField txfPriceStart; // Giá bắt đầu
    private JTextField txfPriceEnd;   // Giá kết thúc
    private DefaultTableModel dataPhieuXuat;
    private JTable tablePhieuXuat;
    private WorkFrame Wf;
    private NhanVienBUS nvBUS;
    private KhachHangBUS khBUS;
    private JPanel PanelCenter;
    private JScrollPane SPPhieuXuat;
    private JTabbedPane tabbedPane;
    private ArrayList<String> listCBB_NV;
    private ArrayList<String> listCBB_KH;
    private JComboBox<String> cbb_nv;
    private JComboBox<String> cbb_kh;
    private JButton btnHome;
    private JButton btnAdd;
    private JButton btndelete;
    private JButton btndetail;
    private JButton btnexport;
    private  JPanel toolBar_Right;
    private TaiKhoanDTO taikhoan;
    
    public PhieuXuatPanel() {
        this.taikhoan=taikhoan;
        // Tạo Panel toolBar cho thanh công cụ trên cùng
        JPanel toolBar = new JPanel(new GridLayout(1, 2));
        JPanel toolBar_Left = new JPanel(new FlowLayout(FlowLayout.LEFT, 10, 20));
        toolBar_Right = new JPanel(new GridBagLayout()); // Sử dụng GridBagLayout cho toàn bộ toolBar_Right
        Font font = new Font("Arial", Font.BOLD, 16);

        // Thêm viền cho toolBar_Right
        Border border = BorderFactory.createTitledBorder("Tìm kiếm");
        toolBar_Right.setBorder(border);

        // Tạo các nút CRUD cho JPanel toolBar_Left
        btnHome = createToolBarButton("Trang chủ", "home.png");
        btnAdd = createToolBarButton("Thêm", "insert1.png");
        btndelete = createToolBarButton("Hủy bỏ", "delete.png");
        btndetail = new JButton("Chi tiết");
        btndetail.setIcon(new ImageIcon(getClass().getResource("/GUI/Image/detail1.png")));
        btndetail.setHorizontalTextPosition(SwingConstants.CENTER);
        btndetail.setVerticalTextPosition(SwingConstants.BOTTOM);
        btndetail.setFocusPainted(false);
        btndetail.setBorderPainted(false);
        btndetail.setBackground(new Color(240, 240, 240));
        btnexport = createToolBarButton("Xuất Excel", "export_excel.png");
        btnHome.setFont(font);
        btnAdd.setFont(font);
        btndelete.setFont(font);
        btndetail.setFont(font);
        btnexport.setFont(font);
        
        // Tạo phần tìm kiếm cho JPanel toolBar_Right
        GridBagConstraints gbc = new GridBagConstraints();
        gbc.insets = new Insets(5, 5, 5, 5); // Khoảng cách giữa các thành phần

        // Hàng 1: Nhân viên, Ngày bắt đầu, Ngày kết thúc
        JLabel lblEmployee = new JLabel("Nhân viên:");
        cbb_nv=new JComboBox<String>(getListNameNV().toArray(new String[0]));   // Jcombobox không nhân ArrayList chỉ nhận kiểu String[]
        cbb_nv.setPreferredSize(new Dimension(120, 30)); 
        
        JLabel lblDateStart = new JLabel("Từ:");
        dateStart = new JDateChooser();
        dateStart.setPreferredSize(new Dimension(100, 30)); 
        
        JLabel lblDateEnd = new JLabel("Đến:");
        dateEnd = new JDateChooser();
        dateEnd.setPreferredSize(new Dimension(100, 30)); 
        
        // Thêm vào toolBar_Right (Hàng 1)
        gbc.gridx = 0;
        gbc.gridy = 0;
        gbc.anchor = GridBagConstraints.WEST;
        gbc.fill = GridBagConstraints.NONE;
        gbc.weightx = 0.0;
        toolBar_Right.add(lblEmployee, gbc);

        gbc.gridx = 1;
        gbc.gridy = 0;
        gbc.fill = GridBagConstraints.HORIZONTAL;
        gbc.weightx = 1.0;
        toolBar_Right.add(cbb_nv, gbc);

        gbc.gridx = 2;
        gbc.gridy = 0;
        gbc.fill = GridBagConstraints.NONE;
        gbc.weightx = 0.0;
        toolBar_Right.add(Box.createHorizontalStrut(20), gbc);

        gbc.gridx = 3;
        gbc.gridy = 0;
        toolBar_Right.add(lblDateStart, gbc);

        gbc.gridx = 4;
        gbc.gridy = 0;
        gbc.fill = GridBagConstraints.HORIZONTAL;
        gbc.weightx = 1.0;
        toolBar_Right.add(dateStart, gbc);

        gbc.gridx = 5;
        gbc.gridy = 0;
        gbc.fill = GridBagConstraints.NONE;
        gbc.weightx = 0.0;
        toolBar_Right.add(lblDateEnd, gbc);

        gbc.gridx = 6;
        gbc.gridy = 0;
        gbc.fill = GridBagConstraints.HORIZONTAL;
        gbc.weightx = 1.0;
        toolBar_Right.add(dateEnd, gbc);

        // Hàng 2: Khách hàng, Tổng tiền từ, Đến
        JLabel lblCustomer = new JLabel("Khách hàng:");
        cbb_kh=new JComboBox<>(getListNameKH().toArray(new String[0]));
        cbb_kh.setPreferredSize(new Dimension(120, 30)); // Tăng kích thước để tận dụng không gian

        JLabel lblPriceStart = new JLabel("Giá từ:");
        txfPriceStart = new JTextField("");
        txfPriceStart.setPreferredSize(new Dimension(100, 30)); // Bằng với JDateChooser

        JLabel lblPriceEnd = new JLabel("Đến:");
        txfPriceEnd = new JTextField("");
        txfPriceEnd.setPreferredSize(new Dimension(100, 30)); // Bằng với JDateChooser

        // Thêm vào toolBar_Right (Hàng 2)
        gbc.gridx = 0;
        gbc.gridy = 1;
        gbc.anchor = GridBagConstraints.WEST;
        gbc.fill = GridBagConstraints.NONE;
        gbc.weightx = 0.0;
        toolBar_Right.add(lblCustomer, gbc);

        gbc.gridx = 1;
        gbc.gridy = 1;
        gbc.fill = GridBagConstraints.HORIZONTAL;
        gbc.weightx = 1.0;
        toolBar_Right.add(cbb_kh, gbc);

        gbc.gridx = 2;
        gbc.gridy = 1;
        gbc.fill = GridBagConstraints.NONE;
        gbc.weightx = 0.0;
        toolBar_Right.add(Box.createHorizontalStrut(20), gbc);

        gbc.gridx = 3;
        gbc.gridy = 1;
        toolBar_Right.add(lblPriceStart, gbc);

        gbc.gridx = 4;
        gbc.gridy = 1;
        gbc.fill = GridBagConstraints.HORIZONTAL;
        gbc.weightx = 1.0;
        toolBar_Right.add(txfPriceStart, gbc);

        gbc.gridx = 5;
        gbc.gridy = 1;
        gbc.fill = GridBagConstraints.NONE;
        gbc.weightx = 0.0;
        toolBar_Right.add(lblPriceEnd, gbc);

        gbc.gridx = 6;
        gbc.gridy = 1;
        gbc.fill = GridBagConstraints.HORIZONTAL;
        gbc.weightx = 1.0;
        toolBar_Right.add(txfPriceEnd, gbc);

        // Tạo JTable cho BookPanel
        listPx = new PhieuXuatBUS().getAll();
        String[] columnPhieuXuat = {"Mã phiếu xuất", "Nhân viên", "Khách hàng", "Thời gian", "Tổng tiền", "Trạng thái"};
        dataPhieuXuat = new DefaultTableModel(columnPhieuXuat, 0) {
            @Override
            public boolean isCellEditable(int row, int column) {
                return false; // Chặn chỉnh sửa tất cả các ô
            }
        };
        tablePhieuXuat = new JTable(dataPhieuXuat);
        tablePhieuXuat.getTableHeader().setBackground(Color.LIGHT_GRAY);
        tablePhieuXuat.getTableHeader().setForeground(Color.BLACK); // Màu chữ đen
        tablePhieuXuat.getTableHeader().setReorderingAllowed(false); // Ngăn kéo các cột
        tablePhieuXuat.setSelectionMode(ListSelectionModel.SINGLE_SELECTION); // Ngăn chọn nhiều row cùng 1 lúc

        nvBUS = new NhanVienBUS();
        khBUS = new KhachHangBUS();
        for (PhieuXuatDTO px : listPx) {  
            String hoTenNv = nvBUS.getHoTenNVById(px.getManv());
            String hoTenKh = khBUS.getFullNameKHById(px.getMakh());
            String trangThai = (px.getTrangthai() == 1) ? "Đã xử lý" : "Chưa được xử lý";
            dataPhieuXuat.addRow(new Object[]{px.getMaphieu(), hoTenNv, hoTenKh, 
                    DateFormat.fomat(px.getThoigiantao().toString()), 
                    NumberFormatter.format(px.getTongTien()), trangThai});
        }
        
        // Tạo renderer để căn giữa dữ liệu trong TableBook
        DefaultTableCellRenderer centerRenderer = new DefaultTableCellRenderer();
        centerRenderer.setHorizontalAlignment(JLabel.CENTER);
        int[] columnsToCenter = {0, 1, 2, 3, 4, 5}; // Căn giữa tất cả trừ tên sách và tên nbx
        for (int col : columnsToCenter) {
            tablePhieuXuat.getColumnModel().getColumn(col).setCellRenderer(centerRenderer);
        }
        
        // Điều chỉnh kích thước width và height của các cột tableBook 
        tablePhieuXuat.setRowHeight(30);
        tablePhieuXuat.getColumnModel().getColumn(0).setPreferredWidth(30);
        tablePhieuXuat.getColumnModel().getColumn(1).setPreferredWidth(150);
        tablePhieuXuat.getColumnModel().getColumn(2).setPreferredWidth(150);
        tablePhieuXuat.getColumnModel().getColumn(3).setPreferredWidth(165);
        tablePhieuXuat.getColumnModel().getColumn(4).setPreferredWidth(65);
        tablePhieuXuat.getColumnModel().getColumn(5).setPreferredWidth(30);
        
        // Tạo ScrollPane cho Table để tên cột column hiện
        SPPhieuXuat = new JScrollPane(tablePhieuXuat);

        toolBar_Left.add(btnHome);
        toolBar_Left.add(btnAdd);
        toolBar_Left.add(btndetail);
        toolBar_Left.add(btndelete);
        toolBar_Left.add(btnexport);

        toolBar.add(toolBar_Left);
        toolBar.add(toolBar_Right);
        
        PanelCenter = new JPanel();
        PanelCenter.setLayout(new GridLayout(1, 1));
        PanelCenter.add(SPPhieuXuat);
        
        setLayout(new BorderLayout());
        add(toolBar, BorderLayout.NORTH);
        add(PanelCenter, BorderLayout.CENTER);
        
        // Thêm ActionListener
        ActionListener action = new PhieuXuatController(this, Wf);
        btnAdd.addActionListener(action);
        btndetail.addActionListener(action);
        btndelete.addActionListener(action);
        btnexport.addActionListener(action);
        btnHome.addActionListener(action);
        // Thêm ChangedListner
        tabbedPane = new JTabbedPane();
        tabbedPane.addChangeListener((ChangeListener)action);
        
        // Thêm DocumentListener cho Price và add Action cho 2cbbox và JdateChosser
        txfPriceStart.getDocument().addDocumentListener((DocumentListener) action);
        txfPriceEnd.getDocument().addDocumentListener((DocumentListener) action);
        cbb_nv.addActionListener(action);
        cbb_kh.addActionListener(action);
        // Thêm PropertyChangeListener
        dateStart.addPropertyChangeListener((PropertyChangeListener)action);
        dateEnd.addPropertyChangeListener((PropertyChangeListener)action);

        // Set ngày mặc định tìm kiếm
         dateStart.setDateFormatString("dd-MM-yyyy");
        dateEnd.setDateFormatString("dd-MM-yyyy");
        Calendar cal = Calendar.getInstance();
        cal.set(2025, Calendar.JANUARY, 1);
        dateStart.setDate(cal.getTime());
        dateEnd.setDate(new Date());

    }
    
    private JButton createToolBarButton(String text, String imageLink) {
        ImageIcon imageIcon = new ImageIcon(getClass().getResource("/GUI/Image/" + imageLink));
        JButton button = new JButton(text, imageIcon); // Đặt ảnh và chữ
        button.setHorizontalTextPosition(SwingConstants.CENTER); // Căn chữ vào giữa
        button.setVerticalTextPosition(SwingConstants.BOTTOM); // Đặt chữ dưới ảnh
        button.setFocusPainted(false); // Bỏ viền khi click
        button.setBorderPainted(false); // Ẩn viền nút
        button.setBackground(new Color(240, 240, 240)); // Màu nền nhẹ
        return button;
    }

    public void refreshTablePx() {
        listPx = new PhieuXuatBUS().getAll();
        dataPhieuXuat.setRowCount(0);
        nvBUS = new NhanVienBUS();
        khBUS = new KhachHangBUS();
        for (PhieuXuatDTO px : listPx) {  
            String hoTenNv = nvBUS.getHoTenNVById(px.getManv());
            String hoTenKh = khBUS.getFullNameKHById(px.getMakh());
            String trangThai = (px.getTrangthai() == 1) ? "Đã xử lý" : "Chưa được xử lý";
            dataPhieuXuat.addRow(new Object[]{px.getMaphieu(), hoTenNv, hoTenKh, 
                    DateFormat.fomat(px.getThoigiantao().toString()), 
                    NumberFormatter.format(px.getTongTien()), trangThai});
        }
    }

    
    public JTable getTablePhieuXuat() {
        return tablePhieuXuat;
    }

    public JPanel getPanelCenter() {
        return PanelCenter;
    }

    public JScrollPane getScrollPanePhieuXuat() {
        return SPPhieuXuat;
    }

    public void setSPPhieuXuat(JScrollPane SPPhieuXuat) {
        this.SPPhieuXuat = SPPhieuXuat;
    }

    public JTabbedPane getTabbedPane() {
        return tabbedPane;
    }

    public void setTabbedPane(JTabbedPane tabbedPane) {
        this.tabbedPane = tabbedPane;
    }

    public JDateChooser getDateStart() {
        return dateStart;
    }

    public JDateChooser getDateEnd() {
        return dateEnd;
    }

    public JTextField getTxfPriceStart() {
        return txfPriceStart;
    }

    public JTextField getTxfPriceEnd() {
        return txfPriceEnd;
    }

    public JComboBox<String> getCbb_nv() {
        return cbb_nv;
    }

    public JComboBox<String> getCbb_kh() {
        return cbb_kh;
    }

    public JButton getBtnAdd() {
        return btnAdd;
    }

    public JButton getBtnHome() {
        return btnHome;
    }

    public JButton getBtndetail() {
        return btndetail;
    }

    public JButton getBtndelete() {
        return btndelete;
    }

    public JButton getBtnexport() {
        return btnexport;
    }

    public JPanel getToolBar_Right() {
        return toolBar_Right;
    }
    
    
    public ArrayList<String> getListNameNV(){
        nvBUS=new NhanVienBUS();
        ArrayList<NhanVienDTO> list_Nv=nvBUS.getNVAll();
        listCBB_NV=new ArrayList<>();
        listCBB_NV.add("Tất cả");
        for(NhanVienDTO nv:list_Nv){
            String FullName=nvBUS.getHoTenNVById(nv.getManv());
            listCBB_NV.add(FullName);
        }
        return  listCBB_NV;
    }
    public ArrayList<String> getListNameKH(){
        khBUS=new KhachHangBUS();
        ArrayList<KhachHangDTO> list_Kh=khBUS.getKhachHangAll();
        listCBB_KH=new ArrayList<>();
        listCBB_KH.add("Tất cả");
        for(KhachHangDTO kh: list_Kh){
            String FullName=khBUS.getFullNameKHById(kh.getMakh());
            listCBB_KH.add(FullName);
        }
        return  listCBB_KH;
    }
    public void Filter(){
        pxBUS=new PhieuXuatBUS();
        String nameNV=cbb_nv.getSelectedItem().toString();
        String nameKH=cbb_kh.getSelectedItem().toString();
        Date dateS=dateStart.getDate();
        Timestamp dateStart=new Timestamp(dateS.getTime());
        Date dateE=dateEnd.getDate();
        Timestamp dateEnd=new Timestamp(dateE.getTime());
        String minPrice=txfPriceStart.getText().toString();
        String maxPrice=txfPriceEnd.getText().toString();
        ArrayList<PhieuXuatDTO> List_sort=pxBUS.Filter(nameNV, nameKH, dateStart, dateEnd, minPrice, maxPrice);
        dataPhieuXuat.setRowCount(0);
        for (PhieuXuatDTO px : List_sort) {  
            String hoTenNv = nvBUS.getHoTenNVById(px.getManv());
            String hoTenKh = khBUS.getFullNameKHById(px.getMakh());
            String trangThai = (px.getTrangthai() == 1) ? "Đã xử lý" : "Chưa được xử lý";
            dataPhieuXuat.addRow(new Object[]{px.getMaphieu(), hoTenNv, hoTenKh, 
                    DateFormat.fomat(px.getThoigiantao().toString()), 
                    NumberFormatter.format(px.getTongTien()), trangThai});
        }
    }
}