using System;
using System.Web.UI;

namespace PracticaClase04
{
    public partial class Registro : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Se ejecuta cada vez que se carga la página
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            // Verifica si la página pasa todas las validaciones
            if (Page.IsValid)
            {
                // Obtiene el texto ingresado en el campo Nombre
                string nombre = txtNombre.Text;

                // Obtiene el texto ingresado en el campo Correo
                string correo = txtCorreo.Text;

                // Obtiene la opción seleccionada en la lista de Género
                // Si no hay selección, se asigna "No especificado"
                string genero = rblG.SelectedItem != null ? rblG.SelectedItem.Text : "No especificado";

                // Obtiene el país seleccionado en el DropDownList
                string pais = ddlPais.SelectedValue;

                // Muestra un mensaje con los datos ingresados en la etiqueta lblMensaje
                lblMensaje.Text = $"Registro exitoso:<br/>" +
                                  $"<b>Nombre:</b> {nombre}<br/>" +
                                  $"<b>Correo:</b> {correo}<br/>" +
                                  $"<b>Género:</b> {genero}<br/>" +
                                  $"<b>País:</b> {pais}";
            }
        }
    }
}
