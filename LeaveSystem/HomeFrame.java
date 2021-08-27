package LeaveSystem;
import java.awt.*;
import javax.swing.*;
import java.awt.event.*;

public class HomeFrame implements ActionListener {
    ImageIcon klogo = new ImageIcon("kanco.png");
    ImageIcon vlogo = new ImageIcon("view.png");
    ImageIcon alogo = new ImageIcon("admin.png");
    ImageIcon llogo = new ImageIcon("leave.png");

    JFrame frame;

    JButton view;
    JButton admin;
    JButton leaves;
    JButton back;

    HomeFrame() {
        frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setTitle("KANCO LEAVE MANAGEMENT SYSTEM");
        frame.setSize(800, 600);
        frame.setIconImage(klogo.getImage());
        frame.setResizable(false);

        view = new JButton("View");
        admin = new JButton("Admin");
        leaves = new JButton("Leave.Mgr");

        view.setIcon(vlogo);
        view.setVerticalTextPosition(JButton.BOTTOM);
        view.setHorizontalTextPosition(JButton.CENTER);

        admin.setIcon(alogo);
        admin.setVerticalTextPosition(JButton.BOTTOM);
        admin.setHorizontalTextPosition(JButton.CENTER);

        leaves.setIcon(llogo);
        leaves.setVerticalTextPosition(JButton.BOTTOM);
        leaves.setHorizontalTextPosition(JButton.CENTER);

        view.setBounds(50, 60, 150, 50);
        admin.setBounds(250, 60, 150, 50);
        leaves.setBounds(450, 60, 150, 50);

        view.setFocusable(false);
        admin.setFocusable(false);
        leaves.setFocusable(false);

        leaves.addActionListener(this);
        admin.addActionListener(this);
        view.addActionListener(this);

        JPanel panel = new JPanel();
        //panel.setBackground(Color.decode("#1b9ce5"));
        panel.setBackground(Color.decode("#97aabd"));
        panel.setLayout(new FlowLayout(FlowLayout.CENTER, 100, 150));
        panel.setBounds(0, 0, 500, 500);
        panel.add(view);
        panel.add(admin);
        panel.add(leaves);

        frame.add(panel);
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);

    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == leaves) {
            frame.dispose();
             new LeaveFrame();
        }else if(e.getSource()== admin){
            frame.dispose();
            new AdminFrame();
        }else if(e.getSource() == view){
            frame.dispose();
            new ViewFrame();
        }

    }

}