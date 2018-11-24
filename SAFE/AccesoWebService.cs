using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SAFE
{
    public static class AccesoWebService
    {
        public static ServicioWeb.ServicioPaginaWebClient acceso
        {
            get
            {
                try
                {
                    return new ServicioWeb.ServicioPaginaWebClient();
                }
                catch (System.ServiceModel.EndpointNotFoundException ex)
                {
                    throw ex;
                }
            }
        }

    }
}