# Exercise 5: Monitoring APIs

In this exercise, we will look at how we can monitor our APIs for insights.

## Why use Application Insights with API Management

As an Azure service, Azure API Management can leverage the capabilities of [Azure Monitor](https://docs.microsoft.com/en-us/azure/azure-monitor/overview) for collecting, analyzing, and acting on your APIs' telemetry. You can think of Azure Monitor as an umbrella of monitoring and management services that leverage a common, powerful data collection and analysis platform.

For instance, it is possible to integrate Azure API Management with Azure Application Insights, which is a service that monitors the availability, performance, and usage of your Web apps and APIs.

When starting with an existing API Management service, you can [How to integrate Azure API Management with Azure Application Insights](https://docs.microsoft.com/en-us/azure/api-management/api-management-howto-app-insights) read for specific steps.

However, for our purposes, when we provisioned our Azure services, we also configured both our API Management service and our Function Apps to leverage a common Application Insights resource. This means that our API calls should already be sending telemetry to Application Insights.

In this exercise, we will scratch the surface of what is available to us when monitoring our APIs using API Management and Application Insights.

## Steps

### Explore the Azure API Management Overview Dashboard

1. Navigate to your API Management service in the Azure portal.
1. On the overview section, notice there is a already a dashboard available with some basic metric charts, such as **Capacity**, **Gateway requests**, and **request duration**. This is a useful starting point for a general overview of API Management telemetry and can provide useful insights for taking action. Capacity, for instance, can be a useful indicator for deciding whether to upgrade a tier or scale out the number of units (for dedicated API Management tiers).

### Explore Application Insights Integration

Sometimes you need more detailed telemetry than the standard API Management overview dashboard.

1. Navigate to your API Management service in the Azure portal.
1. On the left, go to **Application Insights**. You should see the name of an associated Application Insights resource listed in a table on the right.
1. On the row containing the name of the Application Insights resource, click on the ellipses (**...**) and select **Go to**. This will take you to the Application Insights resource overview page. Notice that Application Insights also has a small dashboard on its Overview section.
1. Click on **Logs** at the top.
1. You should now see a dialog of **Example queries** that you can use to try on the data collected by Application Insights from the associated API Management and Function App instances. The query syntax is in a language called Kusto Query Language or KQL for short. You can learn more about KQL [here](https://docs.microsoft.com/en-us/azure/azure-monitor/log-query/query-language).
1. Find the **Failed requests - top 10** example query and click **Run**. Recall that we added a rate-limit policy from a previous exercise. If the rate-limit was triggered, it would result in a failed request.
1. Click on **Example queries** at the top and then find the **Exceptions causing request failures** sample query and click **Run**. We should now see a count of the tracked HTTP 429 status codes caused by triggering the rate-limit policy.

## Related resources

- [Monitor published APIs](https://docs.microsoft.com/en-us/azure/api-management/api-management-howto-use-azure-monitor)
- [How to integrate Azure API Management with Azure Application Insights](https://docs.microsoft.com/en-us/azure/api-management/api-management-howto-app-insights)
- [KQL Query Language Documentation](https://docs.microsoft.com/en-us/azure/azure-monitor/log-query/query-language)

## Next steps

[Publish a new version](./6%20-%20Versions.md)
