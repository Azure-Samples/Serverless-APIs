# Exercise 6: Publish a new version

In this final exercise, we will create and publish a new version of an API in Azure API Management.

## Why use API versions

Versions are often used when breaking changes are introduced to an API. Some examples that validate new versions may include:

- Changes in the format of the response for one or more operations
- Removal of operations or other key components
- Changes in the response type of an operation
- Release-based versions, such as **alpha** or **beta**, which are available for a limited time

Learn more about [versions in Azure API Management](https://docs.microsoft.com/azure/api-management/api-management-get-started-publish-versions).

## Steps

### Create a new version

1. Navigate to your API Management service in the Azure portal.
1. Go to **APIs** and select an existing API.
1. Open the context menu by selecting **...** next to the API name and choose **+ Add version**.
1. Follow the steps from the ["Choose a versioning scheme"](https://docs.microsoft.com/azure/api-management/api-management-get-started-publish-versions#choose-a-versioning-scheme) section of the official "Add multiple versions" tutorial to configure the scheme.

### Associate the version with a product

You can associate an API version with products at the time the version is created, or at a later time if necessary. To associate an API with products after the creation of a version, follow these steps:

1. Select **Products** from the menu of your API Management instance in the Azure portal.
1. Select one of the existing products in the list.
1. Click **Add API** from the menu at the top of the product overview.
1. Select the API with the version that you just created.
1. Click **Select**

## Related resources

- [Versions in Azure API Management](https://docs.microsoft.com/azure/api-management/api-management-versions)
- [Publish multiple versions of your API](https://docs.microsoft.com/azure/api-management/api-management-get-started-publish-versions)
- [Versions & Revisions](https://azure.microsoft.com/blog/versions-revisions/)

## Next step

**Congratulations!** :partying_face: :sunglasses: :tada:

You have just completed the whole serverless APIs workshop and you now know how to build and manage APIs with serverless technologies. Navigate [to the main readme file](https://aka.ms/serverlessapis/workshop) to explore more resources.