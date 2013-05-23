/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model.dao;

import com.model.entity.Roles;
import java.util.List;

/**
 *
 * @author tavan_000
 */
public interface RolesDao {
    
    public List<Roles> getRoles();
    public boolean insertRole(Roles role);
    public boolean updateRole(Roles role);
    public boolean deleteRole(int roleId);
    public Roles getRole(Integer id);
}
