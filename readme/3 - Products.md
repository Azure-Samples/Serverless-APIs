# Exercise 3: Azure API Management Products

In the last exercise, we imported our serverless APIs into our API Management service. In doing so, we associated the APIs to **Starter** and **Unlimited** products. But what is a product?

In this exercise, we will look a little more closely at the API Management product concept and how it can help us organize our serverless APIs.

## What is an API Management product and why use it?

API Management Products are a way to organize and manage one or more APIs. You can include a number of APIs and offer them to developers (consumers of your APIs) through the API Management [developer portal](https://docs.microsoft.com/en-us/azure/api-management/api-management-key-concepts#--developer-portal). 

The benefits of products include:

- the ability to package one or more APIs to your developers (consumers)
- the ability to create both products requiring subscriptions (**Protected**) and products which do not (**Open**)
- the ability to publish/unpublish products for general availability
- the ability to control visibility and access to products within the API Management Developer Portal by associating to groups
- the ability to apply policy (such as usage quota), specify whether approval is required, legal terms at a product level when bundling APIs for business reasons

When a new API Management instance is created, it comes with two products by default (Starter and Unlimited). These products are only there to get you going and can be deleted if you want to create your own.

## Steps

### Explore Products

Perform the following steps to get familiar with Products in your API Management service.

1. Navigate to your API Management instance in the Azure portal.
1. Select **Products** section from the menu on the left.
1. Select the **Starter** product listed on the right which takes you to the product overview. Notice that your API is included as a result of the previous exercise, that the product is in the **Published** state and that it **requires a subscription**.
1. Select the product **Settings** menu option. Here is where we can configure whether a subscription and/or approval is required in order for a developer to use the product, whether the product is in a published or unpublished state which indicates whether it will be available through the developer portal, the ability to specify subscription limits, legal terms and a description of the product that will be shown on the developer portal.
1. Select the product **Policies** menu option. Because this product has been designated as a sample **Starter** product, notice that it includes both a **rate-limit** and a **quota** policy to limit usage. This could be because we would want to encourage developers to sign up for our **Unlimited** product or various other business reasons.
1. Select the product **Access control** menu option. Here we can see a list of API Management groups that have visibility to this product within the API Management Developer Portal.
1. Select the product **Subscriptions** menu option. Here we can see a list of all subscriptions to our product and we can also manage any approval requests if we specified that subscribing to this product requires approval.

## Related resources

- [Learn how to create and publish a product](https://docs.microsoft.com/en-us/azure/api-management/api-management-howto-add-products)
- [Learn more about API Management concepts](https://docs.microsoft.com/en-us/azure/api-management/api-management-key-concepts#--developer-portal)
- [Learn about policies in API Management](https://docs.microsoft.com/en-us/azure/api-management/api-management-howto-policies)

## Next steps

TODO: link to exercise 4