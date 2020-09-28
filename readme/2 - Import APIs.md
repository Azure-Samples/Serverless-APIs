# Exercise 2: Import serverless APIs in Azure API Management

In this exercise we will import just-created Function Apps into API Management to set the ground for the remaining exercises. After importing the APIs, we will test them end-to-end with interactive console in the Azure portal.

## Why use API Management

[Azure API Management](https://aka.ms/apimlearn) is a globally available cloud service, which lets you simplify management and publishing of your APIs. In our workshop, we will explore its benefits and use it to:

- Abstract our APIs from their implementation
- Aggregate them in a single location for easier governance
- Expose them under a common domain or a static IP address
- Publish them to external consumers or application developers
- Control their lifecycle - from design phase to introduction of new versions with breaking changes
- Observe their usage and behavior
- Execute API-specific logic on requests and responses (for example, caching, throttling, JWT token validation, and more)

[Learn more about the benefits of API Management in serverless architectures](https://aka.ms/apimserverlessblog).

## Steps

### Import APIs

Perform the following steps **for both Function Apps you provisioned in the previous exercise** in order to import them into your API Management service. [The official Azure Functions tutorial](https://docs.microsoft.com/azure/azure-functions/functions-openapi-definition#generate-the-openapi-definition) describes similar steps in more detail.

1. Navigate to your Function App in the Azure portal.
1. Select **API Management** section from the menu on the left.
1. If you're performing this step for the first Function App, select **Create new service**. Otherwise, skip the step - you should already have your API Management service provisioned.
1. Pick the API Management service name from the dropdown.
1. Leave the default **Create new API** option in the API dropdown.
1. Select the option **Enable Application Insights**.
1. Select the **Link API** button.
1. Make sure all the Functions are selected and confirm the action with the **Select** button.
1. Go to the **Full** view of the pop-up and specify the **Display name**, **Name**, **Descriptions**, and **API URL suffix**. [[Learn more about these settings in the official Azure documentation](https://docs.microsoft.com/azure/api-management/import-and-publish).
1. Select **Create**.

### Test APIs

Perform the following steps to make sure your API has been imported correctly. Refer to [the official Azure documentation](https://docs.microsoft.com/azure/api-management/import-and-publish#test-the-new-api-in-the-azure-portal) for more verbose instructions.

1. Navigate to your API Management service in the Azure portal.
1. Go to **APIs** and select an API and a GET operation.
1. Select the **Test** tab.
1. Click on the **Send** button.
1. You should see a **200 OK** response.

## Related resources

- [Learn more about Azure API Management](https://aka.ms/apimlearn)
- [Learn more about Function App import in API Management](https://docs.microsoft.com/azure/api-management/import-function-app-as-api)
- [Learn how to import your first API from an OpenAPI file in API Management](https://docs.microsoft.com/azure/api-management/import-and-publish)

## Next steps

[Package APIs with Products](./3%20-%20Products.md)