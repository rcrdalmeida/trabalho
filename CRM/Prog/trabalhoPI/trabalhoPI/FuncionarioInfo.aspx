<%@ Page Title="" Language="C#" MasterPageFile="~/AmbienteProdução.master" AutoEventWireup="true" CodeBehind="FuncionarioInfo.aspx.cs" Inherits="trabalhoPI.FuncionarioInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderEdicaoProducao" runat="server">
    <asp:Panel ID="PanelGrid" runat="server" CssClass = "margemPanel">
        <asp:Panel ID="PanelSearch" runat="server">
            <table>
                <tr>
                    <td>Pesquisa:</td>
                    <td>
                        <asp:TextBox ID="TextBoxSearchFunc" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="ButtonOK" runat="server" Text="OK" />
                    </td>
                    <td>
                        <asp:Button ID="ButtonCancel" runat="server" Text="Cancelar" OnClick="ButtonCancel_Click" />
                    </td>
                    
                </tr>
            </table>
        </asp:Panel>
        <div width ="2ex"></div>
        <asp:GridView ID="GridViewFuncionarios" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID_FUNCIONARIO" DataSourceID="SqlDataSourceFuncionarios" ForeColor="#333333" GridLines="None" PageSize="5" OnSelectedIndexChanged="GridViewFuncionarios_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
             <Columns>
                <asp:CommandField ShowSelectButton="True" ButtonType="Button" SelectText="&gt;" />
                <asp:BoundField DataField="ID_FUNCIONARIO" HeaderText="ID Funcionário" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="NOME" HeaderText="Nome" SortExpression="Nome" />
                <asp:BoundField DataField="FUNCAO" HeaderText="Função" SortExpression="Função" />
            </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceFuncionarios" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [FUNCIONARIO] WHERE [ID_FUNCIONARIO] = @ID_FUNCIONARIO" InsertCommand="INSERT INTO [FUNCIONARIO] ([NOME], [FUNCAO]) VALUES (@NOME, @FUNCAO)" SelectCommand="SELECT ID_FUNCIONARIO, NOME, FUNCAO FROM FUNCIONARIO WHERE (NOME LIKE N'%' + @nome + N'%')" UpdateCommand="UPDATE [FUNCIONARIO] SET [NOME] = @NOME, [FUNCAO] = @FUNCAO WHERE [ID_FUNCIONARIO] = @ID_FUNCIONARIO">
    <DeleteParameters>
        <asp:Parameter Name="ID_FUNCIONARIO" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="NOME" Type="String" />
        <asp:Parameter Name="FUNCAO" Type="String" />
    </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBoxSearchFunc" DefaultValue="%" Name="nome" PropertyName="Text" />
        </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="NOME" Type="String" />
        <asp:Parameter Name="FUNCAO" Type="String" />
        <asp:Parameter Name="ID_FUNCIONARIO" Type="Int32" />
    </UpdateParameters>
    </asp:SqlDataSource>
        <asp:Button ID="ButtonNovo" runat="server" Text="Novo" Width="10ex" OnClick="ButtonNovo_Click" />
        <asp:Button ID="ButtonEditar" runat="server" Text="Editar" Width="10ex" visible = "false" onClick="ButtonEditar_Click" />
        <asp:Button ID="ButtonEliminar" runat="server" Text="Eliminar" Width="10ex" visible= "false" onClick="ButtonEliminar_Click" />
    </asp:Panel>
    <asp:Panel ID="PanelDelete" runat="server" Visible ="false">
       <div>
            Tem a certeza que quer eliminar este registo?
       </div>
        <asp:Button ID="ButtonSim" runat="server" Text="Sim" OnClick="ButtonSim_Click" />
        <asp:Button ID="ButtonNao" runat="server" Text="Não" OnClick="ButtonNao_Click" />
    </asp:Panel>
    <div>
    <asp:FormView ID="FormViewFuncionariosDetails" runat="server" DataKeyNames="ID_FUNCIONARIO" DataSourceID="SqlDataSourceFuncionariosDetails" OnItemDeleted="FormViewFuncionariosDetails_ItemDeleted" OnItemInserted="FormViewFuncionariosDetails_ItemInserted" OnItemUpdated="FormViewFuncionariosDetails_ItemUpdated" OnModeChanged="FormViewFuncionariosDetails_ModeChanged">
        <EditItemTemplate>
            <asp:ValidationSummary ID="ValidationSummaryInsert" runat="server" />
            <table>
                <tr>
                    <td>Nome:</td>
                    <td>
                        <asp:TextBox ID="NOMETextBox" runat="server" Text='<%# Bind("NOME") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNome" runat="server" ErrorMessage="Nome obrigatório!" ControlToValidate="NOMETextBox" SetFocusOnError="True" Text="* Campo obrigatório" ToolTip="Nome obrigatório!" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Contacto:</td>
                    <td>
                        <asp:TextBox ID="CONTACTOTextBox" runat="server" Text='<%# Bind("CONTACTO") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorContacto" runat="server" ErrorMessage="Contacto obrigatório!" ControlToValidate="CONTACTOTextBox" SetFocusOnError="True" Text="* Campo obrigatório" ToolTip="Contacto obrigatório!" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Morada:</td>
                    <td>
                        <asp:TextBox ID="MORADATextBox" runat="server" Text='<%# Bind("MORADA") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorMorada" runat="server" ErrorMessage="Morada obrigatória!" Display="Dynamic" Text="* Campo obrigatório" ControlToValidate="MORADATextBox" SetFocusOnError="True" ToolTip="Morada obrigatória!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Localidade:</td>
                    <td>
                        <asp:TextBox ID="LOCALIDADETextBox" runat="server" Text='<%# Bind("LOCALIDADE") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorLocalidade" runat="server" ErrorMessage="Localidade obrigatória!" ToolTip="Localidade obrigatória!" SetFocusOnError="True" Text="* Campo obrigatório" ControlToValidate="LOCALIDADETextBox" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                     <td>Código Postal:</td>
                     <td>
                         <asp:TextBox ID="CODIGO_POSTALTextBox" runat="server" Text='<%# Bind("CODIGO_POSTAL") %>' />
                     </td>
                     <td>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidatorPostal" runat="server" ErrorMessage="Código Postal obrigatório!" ToolTip="Código Postal obrigatório!" SetFocusOnError="True" Text="* Campo obrigatório" Display="Dynamic" ControlToValidate="CODIGO_POSTALTextBox"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
                <tr>
                    <td>Pais:</td>
                    <td>
                        <asp:TextBox ID="PAISTextBox" runat="server" Text='<%# Bind("PAIS") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPais" runat="server" ErrorMessage="País obrigatório!" SetFocusOnError="True" Text="* Campo obrigatório" Display="Dynamic" ToolTip="País obrigatório!" ControlToValidate="PAISTextBox"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>NIF:</td>
                    <td>
                         <asp:TextBox ID="NIFTextBox" runat="server" Text='<%# Bind("NIF") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNIF" runat="server" Display="Dynamic" ErrorMessage="NIF obrigatório!" Text="* Campo obrigatório" SetFocusOnError="True" ToolTip="NIF obrigatório!" ControlToValidate="NIFTextBox"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>NISS:</td>
                    <td>
                       <asp:TextBox ID="NISSTextBox" runat="server" Text='<%# Bind("NISS") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNISS" runat="server" ErrorMessage="NISS obrigatório" SetFocusOnError="True" ToolTip="NISS obrigatório!" ControlToValidate="NISSTextBox" Display="Dynamic" Text="* Campo obrigatório"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>E-mail:</td>
                    <td>
                        <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Função:</td>
                    <td>
                        <asp:TextBox ID="FUNCAOTextBox" runat="server" Text='<%# Bind("FUNCAO") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorFuncao" runat="server" ErrorMessage="NISS obrigatório!" SetFocusOnError="True" ControlToValidate="FUNCAOTextBox" Text="* Campo obrigatório" Display="Dynamic" ToolTip="Função obrigatória!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <asp:Button ID="ButtonSave" runat="server" Text="Guardar" CommandName="Update" />
            &nbsp;
            <asp:Button ID="ButtonCancel" runat="server" Text="Cancelar" CommandName="Cancel" CausesValidation="False" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <asp:ValidationSummary ID="ValidationSummaryInsert" runat="server" />
            <table>
                <tr>
                    <td>Nome:</td>
                    <td>
                        <asp:TextBox ID="NOMETextBox" runat="server" Text='<%# Bind("NOME") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNome" runat="server" ErrorMessage="Nome obrigatório!" ControlToValidate="NOMETextBox" SetFocusOnError="True" Text="* Campo obrigatório" ToolTip="Nome obrigatório!" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Contacto:</td>
                    <td>
                        <asp:TextBox ID="CONTACTOTextBox" runat="server" Text='<%# Bind("CONTACTO") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorContacto" runat="server" ErrorMessage="Contacto obrigatório!" ControlToValidate="CONTACTOTextBox" SetFocusOnError="True" Text="* Campo obrigatório" ToolTip="Contacto obrigatório!" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Morada:</td>
                    <td>
                        <asp:TextBox ID="MORADATextBox" runat="server" Text='<%# Bind("MORADA") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorMorada" runat="server" ErrorMessage="Morada obrigatória!" Display="Dynamic" Text="* Campo obrigatório" ControlToValidate="MORADATextBox" SetFocusOnError="True" ToolTip="Morada obrigatória!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Localidade:</td>
                    <td>
                        <asp:TextBox ID="LOCALIDADETextBox" runat="server" Text='<%# Bind("LOCALIDADE") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorLocalidade" runat="server" ErrorMessage="Localidade obrigatória!" ToolTip="Localidade obrigatória!" SetFocusOnError="True" Text="* Campo obrigatório" ControlToValidate="LOCALIDADETextBox" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                     <td>Código Postal:</td>
                     <td>
                         <asp:TextBox ID="CODIGO_POSTALTextBox" runat="server" Text='<%# Bind("CODIGO_POSTAL") %>' />
                     </td>
                     <td>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidatorPostal" runat="server" ErrorMessage="Código Postal obrigatório!" ToolTip="Código Postal obrigatório!" SetFocusOnError="True" Text="* Campo obrigatório" Display="Dynamic" ControlToValidate="CODIGO_POSTALTextBox"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
                <tr>
                    <td>Pais:</td>
                    <td>
                        <asp:TextBox ID="PAISTextBox" runat="server" Text='<%# Bind("PAIS") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPais" runat="server" ErrorMessage="País obrigatório!" SetFocusOnError="True" Text="* Campo obrigatório" Display="Dynamic" ToolTip="País obrigatório!" ControlToValidate="PAISTextBox"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>NIF:</td>
                    <td>
                         <asp:TextBox ID="NIFTextBox" runat="server" Text='<%# Bind("NIF") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNIF" runat="server" Display="Dynamic" ErrorMessage="NIF obrigatório!" Text="* Campo obrigatório" SetFocusOnError="True" ToolTip="NIF obrigatório!" ControlToValidate="NIFTextBox"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>NISS:</td>
                    <td>
                       <asp:TextBox ID="NISSTextBox" runat="server" Text='<%# Bind("NISS") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNISS" runat="server" ErrorMessage="NISS obrigatório" SetFocusOnError="True" ToolTip="NISS obrigatório!" ControlToValidate="NISSTextBox" Display="Dynamic" Text="* Campo obrigatório"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>E-mail:</td>
                    <td>
                        <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Função:</td>
                    <td>
                        <asp:TextBox ID="FUNCAOTextBox" runat="server" Text='<%# Bind("FUNCAO") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorFuncao" runat="server" ErrorMessage="NISS obrigatório!" SetFocusOnError="True" ControlToValidate="FUNCAOTextBox" Text="* Campo obrigatório" Display="Dynamic" ToolTip="Função obrigatória!"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <asp:Button ID="ButtonSave" runat="server" Text="Guardar" CommandName="Insert" />
            &nbsp;
            <asp:Button ID="ButtonCancel" runat="server" Text="Cancelar" CommandName="Cancel" CausesValidation="False" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table>
                <tr>
                    <td>ID Funcionário:</td>
                    <td>
                        <asp:Label ID="ID_FUNCIONARIOLabel" runat="server" Text='<%# Eval("ID_FUNCIONARIO") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Nome:</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("NOME") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Contacto:</td>
                    <td>
                        <asp:Label ID="CONTACTOLabel" runat="server" Text='<%# Bind("CONTACTO") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Morada:</tD>
                    <td>
                        <asp:Label ID="MORADALabel" runat="server" Text='<%# Bind("MORADA") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Localidade:</tD>
                    <td>
                        <asp:Label ID="LOCALIDADELabel" runat="server" Text='<%# Bind("LOCALIDADE") %>' />
                    </td>
                </tr>
                 <tr>
                     <td>Código Postal:</td>
                     <td>
                         <asp:Label ID="CODIGO_POSTALLabel" runat="server" Text='<%# Bind("CODIGO_POSTAL") %>' />
                     </td>
                 </tr>
                <tr>
                    <td>Pais:</td>
                    <td>
                        <asp:Label ID="PAISLabel" runat="server" Text='<%# Bind("PAIS") %>' />
                    </td>
                </tr>
                <tr>
                    <td>NIF:</td>
                    <td>
                        <asp:Label ID="NIFLabel" runat="server" Text='<%# Bind("NIF") %>' />
                    </td>
                </tr>
                <tr>
                    <td>NISS:</td>
                    <td>
                        <asp:Label ID="NISSLabel" runat="server" Text='<%# Bind("NISS") %>' />
                    </td>
                </tr>
                <tr>
                    <td>E-mail:</td>
                    <td>
                        <asp:Label ID="EMAILLabel" runat="server" Text='<%# Bind("EMAIL") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Função:</td>
                    <td>
                        <asp:Label ID="FUNCAOLabel" runat="server" Text='<%# Bind("FUNCAO") %>' />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <RowStyle BackColor="#6699FF" BorderColor="Blue" BorderStyle="Dotted" />
    </asp:FormView>
        </div>
    <asp:SqlDataSource ID="SqlDataSourceFuncionariosDetails" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [FUNCIONARIO] WHERE [ID_FUNCIONARIO] = @ID_FUNCIONARIO" InsertCommand="INSERT INTO [FUNCIONARIO] ([NOME], [CONTACTO], [MORADA], [LOCALIDADE], [CODIGO_POSTAL], [PAIS], [NIF], [NISS], [EMAIL], [FUNCAO]) VALUES (@NOME, @CONTACTO, @MORADA, @LOCALIDADE, @CODIGO_POSTAL, @PAIS, @NIF, @NISS, @EMAIL, @FUNCAO)" SelectCommand="SELECT * FROM [FUNCIONARIO] WHERE ([ID_FUNCIONARIO] = @ID_FUNCIONARIO)" UpdateCommand="UPDATE [FUNCIONARIO] SET [NOME] = @NOME, [CONTACTO] = @CONTACTO, [MORADA] = @MORADA, [LOCALIDADE] = @LOCALIDADE, [CODIGO_POSTAL] = @CODIGO_POSTAL, [PAIS] = @PAIS, [NIF] = @NIF, [NISS] = @NISS, [EMAIL] = @EMAIL, [FUNCAO] = @FUNCAO WHERE [ID_FUNCIONARIO] = @ID_FUNCIONARIO">
        <DeleteParameters>
            <asp:Parameter Name="ID_FUNCIONARIO" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NOME" Type="String" />
            <asp:Parameter Name="CONTACTO" Type="String" />
            <asp:Parameter Name="MORADA" Type="String" />
            <asp:Parameter Name="LOCALIDADE" Type="String" />
            <asp:Parameter Name="CODIGO_POSTAL" Type="String" />
            <asp:Parameter Name="PAIS" Type="String" />
            <asp:Parameter Name="NIF" Type="String" />
            <asp:Parameter Name="NISS" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
            <asp:Parameter Name="FUNCAO" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridViewFuncionarios" Name="ID_FUNCIONARIO" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="NOME" Type="String" />
            <asp:Parameter Name="CONTACTO" Type="String" />
            <asp:Parameter Name="MORADA" Type="String" />
            <asp:Parameter Name="LOCALIDADE" Type="String" />
            <asp:Parameter Name="CODIGO_POSTAL" Type="String" />
            <asp:Parameter Name="PAIS" Type="String" />
            <asp:Parameter Name="NIF" Type="String" />
            <asp:Parameter Name="NISS" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
            <asp:Parameter Name="FUNCAO" Type="String" />
            <asp:Parameter Name="ID_FUNCIONARIO" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
