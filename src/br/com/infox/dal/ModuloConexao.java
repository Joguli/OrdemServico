/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.infox.dal;

import java.sql.*;

/**
 *
 * @author jogul
 */
public class ModuloConexao {
    public static Connection conector(){
        java.sql.Connection conexao = null;
        String driver = "com.msql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/infox";
        String user = "root";
        String password = "";
        try {
            Class.forName(driver);//run the driver.
            //get the connection through the parameters and store it in the variable 'connection'.
            conexao = DriverManager.getConnection(url, user, password);
            return conexao;
        } catch (Exception e) {
            return null;
        }
    }
}
