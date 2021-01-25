using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RegistroCliente.DAL
{
    public class ClienteDal
    {
        public void CadastrarCliete(tabCliente objCliente)
        {
            using (registerClienteEntities ctx = new registerClienteEntities())
            {
                ctx.tabCliente.Add(objCliente);
                ctx.SaveChanges(); 
            }
        }
    }
}