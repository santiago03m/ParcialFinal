using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WebHtml.Modelo;

namespace WebHtml.Controlador
{
    public class ArticuloController
    {
        private string connectionString = "Server=localhost;Initial Catalog=ManejoAlmacenDB;Trusted_Connection=True;";

        public List<Articulo> ObtenerArticulos()
        {
            List<Articulo> articulos = new List<Articulo>();
            string query = "SELECT codigo, nombre, precio, seccion FROM Articulos";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Articulo articulo = new Articulo
                        {
                            Codigo = (int)reader["codigo"],
                            Nombre = (string)reader["nombre"],
                            Precio = (int)reader["precio"],
                            Seccion = (int)reader["seccion"]
                        };
                        articulos.Add(articulo);
                    }
                }
            }

            return articulos;
        }

        public Articulo ObtenerArticuloPorCodigo(int codigo)
        {
            Articulo articulo = null;
            string query = "SELECT codigo, nombre, precio, seccion FROM Articulos WHERE codigo = @codigo";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@codigo", codigo);
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        articulo = new Articulo
                        {
                            Codigo = (int)reader["codigo"],
                            Nombre = (string)reader["nombre"],
                            Precio = (int)reader["precio"],
                            Seccion = (int)reader["seccion"]
                        };
                    }
                }
            }

            return articulo;
        }

        public void AgregarArticulo(Articulo articulo)
        {
            string query = "INSERT INTO Articulos (nombre, precio, seccion) VALUES (@nombre, @precio, @seccion)";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@nombre", articulo.Nombre);
                    cmd.Parameters.AddWithValue("@precio", articulo.Precio);
                    cmd.Parameters.AddWithValue("@seccion", articulo.Seccion);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public void ActualizarArticulo(Articulo articulo)
        {
            string query = "UPDATE Articulos SET nombre = @nombre, precio = @precio, seccion = @seccion WHERE codigo = @codigo";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@codigo", articulo.Codigo);
                    cmd.Parameters.AddWithValue("@nombre", articulo.Nombre);
                    cmd.Parameters.AddWithValue("@precio", articulo.Precio);
                    cmd.Parameters.AddWithValue("@seccion", articulo.Seccion);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public void EliminarArticulo(int codigo)
        {
            string query = "DELETE FROM Articulos WHERE codigo = @codigo";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@codigo", codigo);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}