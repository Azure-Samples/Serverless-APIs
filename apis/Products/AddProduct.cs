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
    public static class AddProduct
    {
        [FunctionName("AddProduct")]
        public static IActionResult Run(
            [HttpTrigger(AuthorizationLevel.Function, "post", Route = "products")] HttpRequest req,
            ILogger log)
        {
            log.LogInformation("AddProduct HTTP trigger function invoked.");

            // Retrieve the message body
            var requestBody = new StreamReader(req.Body).ReadToEnd();
            if (string.IsNullOrEmpty(requestBody))
            {
                return new BadRequestObjectResult("Not a valid request");
            }

            return new OkResult();
        }
    }
}
