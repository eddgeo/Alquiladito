package seguridad;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.*;


public class JEncriptador {
    public String generarMD5(String cadena)
    {
        try{
            final char[] valorHexadecimal = {'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};
            MessageDigest objetoMD = MessageDigest.getInstance("MD5");
            byte[] bytes = objetoMD.digest(cadena.getBytes());
            StringBuilder strCryptMD5 = new StringBuilder(2 * bytes.length);
            for (int i=0; i < bytes.length; i++)
            {
                int low = (int)(bytes[i]& 0x0f);
                int high = (int)((bytes[i] & 0xf0) >> 4);
                strCryptMD5.append(valorHexadecimal[high]);
                strCryptMD5.append(valorHexadecimal[low]);
            }
            return strCryptMD5.toString();
        } catch (NoSuchAlgorithmException e) {
            return null;            
        }
    }
    //funciones para conectarnos
    private String baseDatos= "alquiladito_bd";
    private String servidor="jdbc:mysql://127.0.0.1/" + baseDatos;
    private String usuario="root", password = "";
    
    public Connection abrirConexion(){
        Connection mySQLConexion = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            mySQLConexion = DriverManager.getConnection(servidor,usuario,password);
        }catch(SQLException er){
            System.out.println("Error SQL: "+ er.getMessage());
        }catch(ClassNotFoundException er){
            System.out.println("Error Driver: "+ er.getMessage());
        }catch(Exception er){
            System.out.println("Error Interno: "+ er.getMessage());
        }
        return mySQLConexion;
    }
    
    public int obtenerFilasConsulta(ResultSet rs){
        int contador =0;
        try{
            while (rs.next()){
                contador++;
            }
            rs.first();
        }catch(SQLException er){
            System.out.println("Error de Conexion: " + er.getMessage());
        }catch(Exception er){
            System.out.println("Error de Interno: " + er.getMessage());    
        }
        return contador;
    }
    
    public void cerrarConexion(Connection mySQLConexion){
        try{
            mySQLConexion.close();
        }catch(Exception er){
            System.out.println("Error Interno: "+ er.getMessage());
        }
    }
    //fin funciones conexion
}