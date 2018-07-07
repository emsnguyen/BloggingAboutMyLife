package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

public class BaseDAO {

    static Connection connection;
    public static String dbName;
    public static String servername;
    public static String port;
    public static String url;
    public static String username;
    public static String password;
    public static String imgFolder;
    public static String pageSize;
    public static String pageGap;
    static {
        try {
            InitialContext ic = new InitialContext();
            Context context = (Context) ic.lookup("java:comp/env");
            dbName = (String) context.lookup("dbName");
            servername = (String) context.lookup("servername");
            port = (String) context.lookup("port");
            url = "jdbc:sqlserver://" + servername + ":" + port + ";databaseName=" + dbName;
            username = (String) context.lookup("username");
            password = (String) context.lookup("password");
            imgFolder = (String) context.lookup("imgFolder");
            pageSize = (String) context.lookup("pageSize");
            pageGap = (String) context.lookup("pageGap");
        } catch (NamingException ex) {
            Logger.getLogger(BaseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public Connection getConnection() throws Exception {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            return DriverManager.getConnection(url, username, password);
        } catch (Exception ex) {
            Logger.getLogger(BaseDAO.class.getName()).log(Level.SEVERE, null, ex);
            throw ex;
        }
    }
    public void close(Connection con, PreparedStatement ps, ResultSet rs) throws Exception{
        try {
            if (connection != null && !connection.isClosed()) {
                connection.close();
            }
            if (ps != null && !ps.isClosed()) {
                ps.close();
            }
            if (rs != null && !rs.isClosed()) {
                rs.close();
            }
        } catch (Exception ex) {
            Logger.getLogger(BaseDAO.class.getName()).log(Level.SEVERE, null, ex);
            throw ex;
        }
    }
}
