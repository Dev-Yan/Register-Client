<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadCliente.aspx.cs" Inherits="RegistroCliente.cadCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label>CNPJ</label>
            <br />
            <asp:TextBox ID="txtCNPJ" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <label>Razão Social</label>
            <br />
            <asp:TextBox ID="txtRS" runat="server"></asp:TextBox>
            <br />
            <label>CEP</label>
            <br />
            <asp:TextBox ID="txtCEP" runat="server"></asp:TextBox>
            <br />
            <label>Endereço</label>
            <br />
            <asp:TextBox ID="txtEndereço" runat="server"></asp:TextBox>
            <br />
            <label>Bairro</label>
            <br />
            <asp:TextBox ID="txtBairro" runat="server"></asp:TextBox>
            <br />
            <label>Cidade</label>
            <br />
            <asp:TextBox ID="txtCidade" runat="server"></asp:TextBox>
            <br />
            <label>UF</label>
            <asp:DropDownList ID="dpUF" runat="server">
                <asp:ListItem Text="Selecione" Value="0"></asp:ListItem>

                <asp:ListItem Text="AC" Value="AC"></asp:ListItem>
                <asp:ListItem Text="AL" Value="AL"></asp:ListItem>
                <asp:ListItem Text="AP" Value="AP"></asp:ListItem>
                <asp:ListItem Text="AM" Value="AM"></asp:ListItem>
                <asp:ListItem Text="BA" Value="BA"></asp:ListItem>
                <asp:ListItem Text="CE" Value="CE"></asp:ListItem>
                <asp:ListItem Text="DF" Value="DF"></asp:ListItem>
                <asp:ListItem Text="ES" Value="ES"></asp:ListItem>
                <asp:ListItem Text="GO" Value="GO"></asp:ListItem>
                <asp:ListItem Text="MA" Value="MA"></asp:ListItem>
                <asp:ListItem Text="MT" Value="MT"></asp:ListItem>
                <asp:ListItem Text="MS" Value="MS"></asp:ListItem>
                <asp:ListItem Text="MG" Value="MG"></asp:ListItem>
                <asp:ListItem Text="PA" Value="PA"></asp:ListItem>
                <asp:ListItem Text="PB" Value="PB"></asp:ListItem>
                <asp:ListItem Text="PR" Value="PR"></asp:ListItem>
                <asp:ListItem Text="PE" Value="PE"></asp:ListItem>
                <asp:ListItem Text="PI" Value="PI"></asp:ListItem>
                <asp:ListItem Text="RJ" Value="RJ"></asp:ListItem>
                <asp:ListItem Text="RN" Value="RN"></asp:ListItem>
                <asp:ListItem Text="RS" Value="RS"></asp:ListItem>
                <asp:ListItem Text="RO" Value="RO"></asp:ListItem>
                <asp:ListItem Text="RR" Value="RR"></asp:ListItem>
                <asp:ListItem Text="SC" Value="SC"></asp:ListItem>
                <asp:ListItem Text="SP" Value="SP"></asp:ListItem>
                <asp:ListItem Text="SE" Value="SE"></asp:ListItem>
                <asp:ListItem Text="TO" Value="TO"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Button ID="btnCadastrar" runat="server" Text="Registre" OnClick="btnCadastrar_Click" />
            <br />
            <asp:Label ID ="lbResultado" runat="server"></asp:Label>
            <br />
            <asp:GridView ID="gridCliente" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceCliente" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
                <Columns>
                    <asp:BoundField DataField="codigo" HeaderText="Codigo" SortExpression="codigo"></asp:BoundField>
                    <asp:BoundField DataField="CNPJ" HeaderText="CNPJ" SortExpression="CNPJ"></asp:BoundField>
                    <asp:BoundField DataField="razaoSocial" HeaderText="Razão Social" SortExpression="razaoSocial"></asp:BoundField>
                    <asp:BoundField DataField="endereco" HeaderText="Endereço" SortExpression="endereco"></asp:BoundField>
                    <asp:BoundField DataField="bairro" HeaderText="Bairro" SortExpression="bairro"></asp:BoundField>
                    <asp:BoundField DataField="cidade" HeaderText="Cidade" SortExpression="cidade"></asp:BoundField>
                    <asp:BoundField DataField="uf" HeaderText="UF" SortExpression="uf"></asp:BoundField>
                    <asp:BoundField DataField="CEP" HeaderText="CEP" SortExpression="CEP"></asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black"></FooterStyle>

                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF"></HeaderStyle>

                <PagerStyle HorizontalAlign="Right" BackColor="#C6C3C6" ForeColor="Black"></PagerStyle>

                <RowStyle BackColor="#DEDFDE" ForeColor="Black"></RowStyle>

                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#594B9C"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#33276A"></SortedDescendingHeaderStyle>
            </asp:GridView>

            <asp:SqlDataSource runat="server" ID="SqlDataSourceCliente" ConnectionString='<%$ ConnectionStrings:registerClienteConnectionString %>' SelectCommand="SELECT * FROM TABCLIENTE"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
