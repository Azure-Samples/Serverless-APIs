using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;

namespace Products
{
    public static class UpdateProduct
    {
        [FunctionName("UpdateProduct")]
        public static IActionResult Run(
            [HttpTrigger(AuthorizationLevel.Function, "put", Route = "products/{id}")] HttpRequest req,
            int id,
            ILogger log)
        {
            log.LogInformation("UpdateProduct HTTP trigger function invoked.");
            return new NoContentResult();
        }
    }
}
