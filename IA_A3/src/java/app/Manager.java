/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app;

import java.util.HashMap;
import javax.servlet.http.HttpSession;

/**
 *
 * @author amrfo_000
 */
public class Manager {
HashMap<String, HttpSession>manager=null;
public Manager()
{
    manager=new HashMap<String, HttpSession>();
}
public void addsession(String id,HttpSession session)
{
    manager.put(id, session);
}
public void deletesession(String id)
{
    manager.remove(id);
}
public int getsize()
{
    return manager.size();
}
public HttpSession getsession(String id)
{
    
        if(manager.get(id)==null)
            return null;
        else
        {
         return manager.get(id);
        }   
}

}
