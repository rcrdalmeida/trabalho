using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace trabalhoPI
{
    public partial class FuncionarioInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormViewFuncionariosDetails_ModeChanged(object sender, EventArgs e)
        {
            switch (FormViewFuncionariosDetails.CurrentMode)
            {
                case FormViewMode.ReadOnly:
                    PanelGrid.Visible = true;
                    break;
                case FormViewMode.Edit:
                case FormViewMode.Insert:
                    PanelGrid.Visible = false;
                    break;
            }
        }

        protected void FormViewFuncionariosDetails_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            GridViewFuncionarios.DataBind();
        }

        protected void FormViewFuncionariosDetails_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
        {
            GridViewFuncionarios.DataBind();
        }

        protected void FormViewFuncionariosDetails_ItemDeleted(object sender, FormViewDeletedEventArgs e)
        {
            GridViewFuncionarios.DataBind();
        }

        protected void ButtonNovo_Click(object sender, EventArgs e)
        {
            PanelGrid.Visible = false;
            FormViewFuncionariosDetails.ChangeMode(FormViewMode.Insert);
        }

        protected void ButtonEditar_Click(object sender, EventArgs e)
        {
            PanelGrid.Visible = false;
            FormViewFuncionariosDetails.ChangeMode(FormViewMode.Edit);
        }

        protected void ButtonEliminar_Click(object sender, EventArgs e)
        {
            PanelGrid.Visible = false;
            PanelDelete.Visible = true;
        }

        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            TextBoxSearchFunc.Text = "";
        }

        protected void ButtonSim_Click(object sender, EventArgs e)
        {
            FormViewFuncionariosDetails.DeleteItem();
            PanelGrid.Visible = true;
            PanelDelete.Visible = false;
        }

        protected void ButtonNao_Click(object sender, EventArgs e)
        {
            PanelGrid.Visible = true;
            PanelDelete.Visible = false;
        }

        protected void GridViewFuncionarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (GridViewFuncionarios.SelectedIndex >= 0) { 
                ButtonEditar.Visible = true;
                ButtonEliminar.Visible = true;
            }
            else
            {
                ButtonEditar.Visible = false;
                ButtonEliminar.Visible = false;
            }
           
        }
    }
}