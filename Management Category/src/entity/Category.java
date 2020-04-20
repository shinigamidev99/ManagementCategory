/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author Admin
 */
public class Category 
{
    private String id;
    private String name;
    private String describle;
    
    public Category()
    {
        
    }

    public Category(String id, String name, String describle) 
    {
        this.id = id;
        this.name = name;
        this.describle = describle;
    }

    public String getId() 
    {
        return id;
    }

    public void setId(String id)
    {
        this.id = id;
    }

    public String getName() 
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public String getDescrible() 
    {
        return describle;
    }

    public void setDescrible(String describle) 
    {
        this.describle = describle;
    }
    
    public Object[] toObject()
    {
        return new Object[]
        {
            id, name, describle
        };
    }
}
