/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import context.DBContext;
import entity.Category;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class CategoryDB 
{
    DBContext dbContext;
    Connection conect;
    
    public CategoryDB()
    {
        dbContext = new DBContext();
        try
        {
            conect = dbContext.getConnection();
        } 
        catch (Exception ex)
        {
            System.out.println(ex);
        }
    }
    
    public ArrayList<Category> getAllCategories()
    {
        ArrayList<Category> list = new ArrayList<>();
        
        String sql = "select * from Categories";
        try 
        {
            PreparedStatement statement = conect.prepareStatement(sql);
            ResultSet result = statement.executeQuery();
            while(result.next())
            {
                Category category = new Category();
                category.setId(result.getString(1));
                category.setName(result.getString(2));
                category.setDescrible(result.getString(3));
                list.add(category);
            }
            return list;
        } 
        catch (SQLException ex)
        {
            System.out.println(ex);
        }
        return null;
    }
    
    public void delete(Category c)
    {
        String sql = "delete from Categories where id = ?";
        if(c.getId().equalsIgnoreCase("inu"))
        {
            return;
        }
        else
            try 
            {
                PreparedStatement st = conect.prepareStatement(sql);
                st.setString(1, c.getId());
                st.executeUpdate();
            } 
            catch (SQLException ex)
            {
                System.out.println(ex);
            }
    }
    
    public boolean exsitedCategory(String id)
    {
        String sql = "select * from Categories where id = ?";
        try 
        {
            PreparedStatement st = conect.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            if(rs.next())
                return true;
        }
        catch (SQLException ex)
        {
            System.out.println(ex);
        }
        return false;
    }
    
    public void add(Category c)
    {
        String sql = "insert into Categories values(?, ?, ?)";
        try 
        {
            PreparedStatement st = conect.prepareStatement(sql);
            st.setString(1, c.getId());
            st.setString(2, c.getName());
            st.setString(3, c.getDescrible());
            st.executeUpdate();
        } 
        catch (SQLException ex)
        {
            System.out.println(ex);
        }
    }
    
    public void update(Category c)
    {
        String sql = "update Categories set name = ?, describe = ? where id = ?";
        if(c.getId().equalsIgnoreCase("inu"))
        {
            return;
        }
        else
            try 
            {
                PreparedStatement st = conect.prepareStatement(sql);
                st.setString(1, c.getName());
                st.setString(2, c.getDescrible());
                st.setString(3, c.getId());
                st.executeUpdate();
            } 
            catch (SQLException ex)
            {
                System.out.println(ex);
            }
    }
    
    public ArrayList<Category> sortByID()
    {
        ArrayList<Category> list = new ArrayList<>();
        String sql = "select * from Categories order by id";
        try 
        {
            PreparedStatement st = conect.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next())
            {
                list.add(new Category(rs.getString(1), rs.getString(2), rs.getString(3)));
            }
        } 
        catch (SQLException ex)
        {
            System.out.println(ex);
        }
        return list;
    }
    
    public ArrayList<Category> sortByName()
    {
        ArrayList<Category> list = new ArrayList<>();
        String sql = "select * from Categories order by name";
        try 
        {
            PreparedStatement st = conect.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next())
            {
                list.add(new Category(rs.getString(1), rs.getString(2), rs.getString(3)));
            }
        } 
        catch (SQLException ex)
        {
            System.out.println(ex);
        }
        return list;
    }
    
    public ArrayList<Category> sortByDescribe()
    {
        ArrayList<Category> list = new ArrayList<>();
        String sql = "select * from Categories order by describe";
        try 
        {
            PreparedStatement st = conect.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next())
            {
                list.add(new Category(rs.getString(1), rs.getString(2), rs.getString(3)));
            }
        } 
        catch (SQLException ex)
        {
            System.out.println(ex);
        }
        return list;
    }
    
    public ArrayList<Category> search(String object, String key)
    {
        ArrayList<Category> list = new ArrayList<>();
        String sql = "select * from Categories where " + object + " like '%' + ? + '%'";
        try 
        {
            PreparedStatement st = conect.prepareStatement(sql);
            st.setString(1, key);
            ResultSet rs = st.executeQuery();
            while(rs.next())
            {
                list.add(new Category(rs.getString(1), rs.getString(2), rs.getString(3)));
            }
        } 
        catch (SQLException ex) 
        {
            System.out.println(ex);
        }
        
        return list;
    }
}
