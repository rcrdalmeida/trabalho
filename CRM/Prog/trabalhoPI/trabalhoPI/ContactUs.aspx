<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="trabalhoPI.ContactUs" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentEdicao" runat="server">
    <div>
        <h2>Membros do grupo de trabalho:</h2>
            <table>
                <tr >
                    <td  class="contactos">
                       <p> <img src="Content/images/Ines.png" /></p>
                        <p class="nomeTabela">Inês Costa</p>
                        <p><a href="mailTo:inescosta28@gmail.com"  class="emailTabela">inescosta28@gmail.com</a></p>
                    </td>
                    <td  class="contactos">
                        <p>   <img src="Content/images/Ricardo.png" /></p>
                        <p class="nomeTabela">Ricardo Almeida</p>
                        <p><a href="mailTo:rcrdalmeida@outlook.pt" class="emailTabela"> rcrdalmeida@outlook.pt</a></p>
                    </td>
                    <td  class="contactos">
                        <p><img src="Content/images/rui.png" /></p>
                        <p class="nomeTabela">Rui Agostinho</p>
                        <p><a href="mailTo:rui.goncalves.agostinho@gmail.com" class="emailTabela"> rui.goncalves.agostinho@gmail.com</a></p>
                    </td>
                </tr>                
            </table>

    </div>
</asp:Content>
