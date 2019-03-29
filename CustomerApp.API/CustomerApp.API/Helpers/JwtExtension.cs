
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CustomerApp.API.Helpers
{
    public static class JwtExtension
    {
        public static void AddApplicationError(this HttpResponse response, string meesage)
        {
            response.Headers.Add("Application-Error", meesage);
            response.Headers.Add("Access-Control-Allow-Origin", "*");
            response.Headers.Add("Access-Control-Expose-Header", "Application-Error");
        }

    }
}
