using RegistroCliente.DAL;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistroCliente
{
    public partial class cadCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            if (txtBairro.Text == "")
            {
                lbResultado.Text = "Insira um bairro!";
                txtBairro.BorderColor = Color.Red;
            }
            if(txtCEP.Text == "")
            {
                lbResultado.Text = "Insira um CEP!";
                txtCEP.BorderColor = Color.Red;
            }
            if(txtCidade.Text == "")
            {
                lbResultado.Text = "Insira uma Cidade!";
                txtCidade.BorderColor = Color.Red;
            }
            if(txtCNPJ.Text == "")
            {
                lbResultado.Text = "Insira um CNPJ";
                txtCNPJ.BorderColor = Color.Red;
            }
            else { 
            tabCliente objCliente = new tabCliente();
            objCliente.bairro = txtBairro.Text;
            objCliente.CEP = Convert.ToInt32(txtCEP.Text);
            objCliente.cidade = txtCidade.Text;                          // 32 & 64 diferença do int & bigint 
            objCliente.CNPJ = Convert.ToInt64(txtCNPJ.Text);
            objCliente.endereco = txtEndereço.Text;
            objCliente.razaoSocial = txtRS.Text;
            objCliente.uf = dpUF.SelectedValue;

            ClienteDal cliDal = new ClienteDal();
            cliDal.CadastrarCliete(objCliente);

            gridCliente.DataBind();

            txtBairro.Text = "";
            txtCEP.Text = "";
            txtCidade.Text = "";
            txtCNPJ.Text = "";
            txtEndereço.Text = "";
            txtRS.Text = "";
            dpUF.SelectedValue = "0"; // 0 this select
            }
        }
    }
}