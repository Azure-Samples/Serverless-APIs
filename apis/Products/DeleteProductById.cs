using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;

namespace Products
{
    public static class DeleteProductById
    {
        [FunctionName("DeleteProductById")]
        public static IActionResult Run(
            [HttpTrigger(AuthorizationLevel.Function, "delete", Route = "products/{id}")] HttpRequest req,
            ILogger log)
        {
            log.LogInformation("DeleteProductById HTTP trigger function invoked.");
            return new NoContentResult();
        }
    }
}
