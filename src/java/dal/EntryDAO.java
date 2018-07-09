package dal;

import static dal.BaseDAO.connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Entry;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

public class EntryDAO extends BaseDAO {
    public ArrayList<Entry> Get3LatestEntries() throws Exception {
        ArrayList<Entry> entries = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String query = "SELECT TOP 3 [ID]\n"
                    + "      ,[Name]\n"
                    + "      ,[ImagePath]\n"
                    + "      ,[Content]\n"
                    + "      ,[PublishedDate]\n"
                    + "      ,[CategoryID]\n"
                    + "  FROM [Entry] order by PublishedDate DESC";
            connection = getConnection();
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Entry e = new Entry();
                e.setID(rs.getInt("ID"));
                e.setName(rs.getString("Name"));
                e.setImagePath(rs.getString("ImagePath"));
                e.setContent(rs.getString("Content"));
                e.setPublishedDate(rs.getDate("PublishedDate"));
                e.setCategoryID(rs.getInt("CategoryID"));
                entries.add(e);
            }
            close(connection, ps, rs);
        } catch (Exception ex) {
            close(connection, ps, rs);
            Logger.getLogger(EntryDAO.class.getName()).log(Level.SEVERE, null, ex);
            throw ex;
        }
        return entries;
    }
    public HashMap<String, ArrayList<Entry>> GetAllEntries(int start, int end) throws Exception {
        HashMap<String, ArrayList<Entry>> map = new HashMap<>();
        String months[] = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug",
        "Sep", "Oct", "Nov", "Dec"};
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String query = "SELECT RN, ID, Name, PublishedDate FROM (\n" +
                "SELECT ROW_NUMBER() over (ORDER BY PublishedDate DESC)  as RN, [ID]\n"
                    + "      ,[Name]\n"
                    + "      ,[ImagePath]\n"
                    + "      ,[Content]\n"
                    + "      ,[PublishedDate]\n"
                    + "      ,[CategoryID]\n"
                    + "  FROM [Entry] WHERE ID <> 12) AS X\n"
                    + "  WHERE  RN BETWEEN ? AND ?";
            connection = getConnection();
            ps = connection.prepareStatement(query);
            ps.setInt(1, start);
            ps.setInt(2, end);
            rs = ps.executeQuery();
            while (rs.next()) {
                Entry e = new Entry();
                e.setID(rs.getInt("ID"));
                e.setName(rs.getString("Name"));
                Date date = rs.getDate("PublishedDate");
                e.setPublishedDate(date);
                int monthIndex = date.getMonth();
                int year = date.getYear()+1900;
                String month = months[monthIndex];
                String monthYear = month + " " + year;
                if (map.containsKey(monthYear)) {
                    System.out.println("monthyear existed: " + monthYear + ", title: " + e.getName());
                    map.get(monthYear).add(e);
                } else {
                    System.out.println("monthyear new: " + monthYear + ", title: " + e.getName());
                    ArrayList<Entry> entries = new ArrayList<>();
                    entries.add(e);
                    map.put(monthYear, entries);
                }
            }
            close(connection, ps, rs);
        } catch (Exception ex) {
            close(connection, ps, rs);
            Logger.getLogger(EntryDAO.class.getName()).log(Level.SEVERE, null, ex);
            throw ex;
        }
        return map;
    }

    public Entry get(int ID) throws Exception {
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            String query = "SELECT [ID]\n"
                    + "      ,[Name]\n"
                    + "      ,[ImagePath]\n"
                    + "      ,[Content]\n"
                    + "      ,[PublishedDate]\n"
                    + "      ,[CategoryID]\n"
                    + "  FROM [Entry] WHERE ID= ?";
            connection = getConnection();
            ps = connection.prepareStatement(query);
            ps.setInt(1, ID);
            rs = ps.executeQuery();
            if (rs.next()) {
                Entry e = new Entry();
                e.setID(rs.getInt("ID"));
                e.setName(rs.getString("Name"));
                e.setImagePath(rs.getString("ImagePath"));
                e.setContent(rs.getString("Content"));
                e.setPublishedDate(rs.getDate("PublishedDate"));
                e.setCategoryID(rs.getInt("CategoryID"));
                return e;
            }
            close(connection, ps, rs);
        } catch (Exception ex) {
            close(connection, ps, rs);
            Logger.getLogger(EntryDAO.class.getName()).log(Level.SEVERE, null, ex);
            throw ex;
        }
        return null;
    }

    public int getTotal() throws Exception {
        PreparedStatement ps = null;
        ResultSet rs = null;
        int total = -1;
        try {
            String query = "SELECT COUNT([ID])as Total \n"
                    + "  FROM [Entry]";
            connection = getConnection();
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            if (rs.next()) {
                //minus one About Me article
                total = rs.getInt("Total")-1;
            }
            close(connection, ps, rs);
        } catch (Exception ex) {
            close(connection, ps, rs);
            Logger.getLogger(EntryDAO.class.getName()).log(Level.SEVERE, null, ex);
            throw ex;
        }
        return total;
    }
}
