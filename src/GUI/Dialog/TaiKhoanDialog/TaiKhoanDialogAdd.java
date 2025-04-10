/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package GUI.Dialog.TaiKhoanDialog;
import GUI.View.TaiKhoanPanel;
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.awt.RenderingHints;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.SwingConstants;

/**
 *
 * @author Hi
 */
public class TaiKhoanDialogAdd extends JDialog{
    private JTextField txTenDangNhap,txmatKhau,txmaNhomQuyen,txMaNhanVien;
    private TaiKhoanPanel tkPanel;
    private JButton btnXacNhan, btnHuy;

    public TaiKhoanDialogAdd(JFrame parent, TaiKhoanPanel tkPanel) {
        super(parent, "Thêm tài khoản", true);
        this.tkPanel = tkPanel;
        setSize(400, 300);
        setResizable(false);
        setLocationRelativeTo(parent);
        setLayout(new BorderLayout());

        // ======= Tiêu đề =======
        JLabel titleLabel = new JLabel("THÊM TÀI KHOẢN", SwingConstants.CENTER);
        titleLabel.setFont(new Font("Arial", Font.BOLD, 20));
        titleLabel.setForeground(Color.WHITE);

        JPanel titlePanel = new JPanel();
        titlePanel.setBackground(new Color(41, 128, 185)); // Xanh dương
        titlePanel.add(titleLabel);

        // ======= Panel nhập liệu =======
        JPanel pn_input = new JPanel(new GridBagLayout());
        GridBagConstraints gbc = new GridBagConstraints();
        gbc.insets = new Insets(10, 10, 10, 10);
        gbc.anchor = GridBagConstraints.WEST;
        gbc.fill = GridBagConstraints.HORIZONTAL;
        
        JLabel lb_manv = new JLabel("Mã nhân viên:");
        JLabel lb_ten = new JLabel("Tên đăng nhập:");
        JLabel lb_mk = new JLabel("Mật khẩu:");
        JLabel lb_maquyen = new JLabel("Mã nhóm quyền:");
        lb_manv.setFont(new Font("Arial", Font.BOLD, 14));
        lb_ten.setFont(new Font("Arial", Font.BOLD, 14));
        lb_mk.setFont(new Font("Arial", Font.BOLD, 14));
        lb_maquyen.setFont(new Font("Arial", Font.BOLD, 14));
        
        
        txMaNhanVien=new JTextField(20);
        txTenDangNhap = new JTextField(20);
        txmatKhau= new JTextField(20);
        txmaNhomQuyen= new JTextField(20);
        txMaNhanVien.setPreferredSize(new Dimension(200, 30));
        txTenDangNhap.setPreferredSize(new Dimension(200, 30));
        txmatKhau.setPreferredSize(new Dimension(200, 30));
        txmaNhomQuyen.setPreferredSize(new Dimension(200, 30));
        
//        gbc.gridx = 0; gbc.gridy = 0; gbc.weightx = 0.3;
//        pn_input.add(lb_manv, gbc);
//        gbc.gridx = 1; gbc.weightx = 0.7;
//        pn_input.add(txMaNhanVien, gbc);
        
        gbc.gridx = 0; gbc.gridy = 0; gbc.weightx = 0.3;
        pn_input.add(lb_ten, gbc);
        gbc.gridx = 1; gbc.weightx = 0.7;
        pn_input.add(txTenDangNhap, gbc);
        
        gbc.gridx = 0; gbc.gridy = 1; gbc.weightx = 0.3;
        pn_input.add(lb_mk, gbc);
        gbc.gridx = 1; gbc.weightx = 0.7;
        pn_input.add(txmatKhau, gbc);
        
        gbc.gridx = 0; gbc.gridy = 2; gbc.weightx = 0.3;
        pn_input.add(lb_maquyen, gbc);
        gbc.gridx = 1; gbc.weightx = 2.7;
        pn_input.add(txmaNhomQuyen, gbc);

        // ======= Panel nút bấm =======
        JPanel pn_button = new JPanel(new FlowLayout(FlowLayout.CENTER, 15, 10));

        btnXacNhan = createButton("Thêm dữ liệu", new Color(46, 204, 113)); // Xanh lá
        btnHuy = createButton("Hủy", new Color(231, 76, 60)); // Đỏ

        pn_button.add(btnXacNhan);
        pn_button.add(btnHuy);

        // ======= Thêm vào dialog =======
        add(titlePanel, BorderLayout.NORTH);
        add(pn_input, BorderLayout.CENTER);
        add(pn_button, BorderLayout.SOUTH);

        // Xử lý sự kiện nút "Hủy"
        btnHuy.addActionListener(e -> dispose());
    }

    public String getTenDangNhap() {
        return txTenDangNhap.getText().trim();
    }
    public String getMatKhau() {
        return txmatKhau.getText().trim();
    }
    public String getNhomQuyen() {
        return txmaNhomQuyen.getText().trim();
    }
    
//    public String getMaNhanVien() {
//        return txmaNhomQuyen.getText().trim();
//    }

    public void setController(TaiKhoanDialogAdd_Controller controller) {
        btnXacNhan.addActionListener(controller);
    }



    public TaiKhoanPanel getTkPanel() {
        return tkPanel;
    }

    // ======= Tạo button đồng bộ với phong cách UI =======
    private JButton createButton(String text, Color bgColor) {
        JButton button = new JButton(text) {
            @Override
            protected void paintComponent(Graphics g) {
                Graphics2D g2 = (Graphics2D) g.create();
                g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);

                // Xác định màu nền dựa trên trạng thái của button
                Color actualBgColor = bgColor;
                if (getModel().isPressed()) {
                    actualBgColor = bgColor.darker(); // Màu tối hơn khi nhấn
                } else if (getModel().isRollover()) {
                    actualBgColor = bgColor.brighter(); // Màu sáng hơn khi hover
                }
                // Vẽ bo tròn góc cho nút
                g2.setColor(actualBgColor);
                g2.fillRoundRect(0, 0, getWidth(), getHeight(), 15, 15); // Bo tròn góc 15px

                super.paintComponent(g2);
                g2.dispose();
            }
        };
        button.setFont(new Font("Arial", Font.BOLD, 14));
        button.setForeground(Color.WHITE);
        button.setFocusPainted(false);
        button.setBorderPainted(false);
        button.setContentAreaFilled(false);
        button.setOpaque(false);
        button.setPreferredSize(new Dimension(140, 40));

        return button;
    }
    
}
