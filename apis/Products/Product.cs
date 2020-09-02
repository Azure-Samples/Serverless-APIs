using System.Collections.Generic;
using System.Threading.Tasks;
using Newtonsoft.Json;

public class Product
{
    [JsonProperty("id")]    
    public int Id { get; set; }

    [JsonProperty("name")]
    public string Name { get; set; }

    [JsonProperty("description")]
    public string Description { get; set; }

    public static IEnumerable<Product> GetAllProducts()
    {
        var products = new List<Product>();

        products.Add(new Product{
            Id = 1,
            Name = "Product1",
            Description = "Description1"
        });

        products.Add(new Product{
            Id = 2,
            Name = "Product2",
            Description = "Description2"
        });

        return products;
    }

}