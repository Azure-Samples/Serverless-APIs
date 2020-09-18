# Exercise 5: Apply API policies

In this exercise we will protect our API from abuse by applying a throttling policy. We will also explore the Visual Studio Code extension and learn its capabilities.

## Why use policies API Management

In Azure API Management, policies are a powerful capability that allows API publisher to change the behavior of APIs - while processing requests or responses. Popular policies include format conversion from XML to JSON, rate limiting to restrict the amount of incoming calls, validation of JWT tokens or certificates to secure APIs, caching to accelerate API calls, CORS to allow cross-origin resource sharing, and more. API Management comes with around 45 built-in policies, which can be further extended with policy expressions - snippets of C# code.

Learn about policies in [the official Azure documentation](https://docs.microsoft.com/azure/api-management/api-management-howto-policies), [browse the available policies](https://docs.microsoft.com/azure/api-management/api-management-policies), and [understand the policy expressions](https://docs.microsoft.com/azure/api-management/api-management-policy-expressions).

## Steps

### Apply and test the `rate-limit` policy

In this exercise, we will apply a `rate-limit` policy to protect our API from abnormal usage. We will limit the number of API calls to 3 per 15s per API subscription key.

1. Navigate to your API Management service in the Azure portal.
1. Go to **APIs** and select an API.
1. Apply the following `rate-limit` policy on your API (all operations level):
    
    ```XML
       <rate-limit calls="3" renewal-period="15" />
    ```

    Check [the "Protect an API by adding rate limit policy (throttling)" section of the official "Protect your API" tutorial](https://docs.microsoft.com/azure/api-management/transform-api#protect-an-api-by-adding-rate-limit-policy-throttling) for more precise steps.

    Note: use the `rate-limit` policy; `rate-limit-by-key` isn't available in the Consumption tier.

1. Follow the steps from the ["Test the rate limit (throttling)" section](https://docs.microsoft.com/azure/api-management/transform-api#test-the-rate-limit-throttling) to test the throttling policy.

### Explore Visual Studio Code extension

You can also apply policies in Visual Studio Code, using [API Management's Visual Studio Code extension](https://aka.ms/apim/vscext). Refer to the ["Garnish and serve your APIs in 45 minutes with Azure API Management" session recording](https://youtu.be/bik8JJVNNmk?t=264) for an example of applying rate-limit policy in Visual Studio Code and stress-testing it with the Artillery script. Visual Studio Code extension also lets you debug policies in real time and configure other settings of your API Management service.

## Related resources

- [Browse available policies](https://docs.microsoft.com/azure/api-management/api-management-policies)
- [Understand policy expressions](https://docs.microsoft.com/azure/api-management/api-management-policy-expressions).
- [Get API Management's Visual Studio Code extension](https://aka.ms/apim/vscext)
- [Explore examples of advanced policies and get the policy expressions cheatsheet](https://aka.ms/apimpolicyexamples)

## Next steps

TODO: link to exercise 6