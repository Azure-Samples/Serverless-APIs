#!/bin/bash
set -euo pipefail

IFS=$'\n\t'

echo "Logging into your account"
az login
echo

subscriptionId=$(az account show --query 'id' -o tsv)

while getopts ":s:" arg; do
    case "${arg}" in
        s)
            subscriptionId=${OPTARG}
        ;;
    esac
done

if [[ -z "$subscriptionId" ]]; then
    echo "Enter the Subscription ID:"
    read subscriptionId
    [[ "${subscriptionId:?}" ]] 
fi

location="eastus" 
rand=$(awk -v min=100000 -v max=999999 'BEGIN{srand(); print int(min+rand()*(max-min+1))}')
storageAccountName="serverlesssample$rand"
appInsightsName="serverless-sample$rand"
productsFunctionName="serverless-sample-products$rand"
reviewsFunctionName="serverless-sample-reviews$rand"
resourceGroup="serverless-sample$rand"
functionsRuntimeVersion=$(func --version > version && cut -c1 version)

green=`tput setaf 2`
red=`tput setaf 1`
reset=`tput sgr0`
echo $green'==========================================================' 
echo
echo   $red'WELCOME TO THE API MANAGEMENT AND AZURE FUNCTIONS WORKSHOP'
echo 
echo "Setting Subscription Id to: " $red$subscriptionId$reset
az account set --subscription $subscriptionId
echo
echo
echo $green'=========================================================='  
echo
echo 'LETS START'$green':)'$reset 
echo 
echo 'Output results will be saved to '$red'serverless-apim-setup.log'$reset' file ...'
echo
echo '- Creating Resource Group '$red$resourceGroup$reset'...'
az group create -n $resourceGroup -l $location --output json > serverless-apim-setup.log

echo '- Creating '$red$storageAccountName$reset' Storage Account ...' 
az storage account create -n $storageAccountName -l $location -g $resourceGroup --sku Standard_LRS --output json >> serverless-apim-setup.log

echo '- Creating '$red$appInsightsName$reset' Application Insights Service ...'
appInsightsInstrumentationKey=$(az resource create -g $resourceGroup -n $appInsightsName --resource-type "Microsoft.Insights/components" --properties '{"Application_Type":"web"}'  --query 'properties.InstrumentationKey')
echo '- Application Insights Instrumentation Key: '$red$appInsightsInstrumentationKey$reset

echo '- Creating '$red$productsFunctionName$reset' Function App ...' 
az functionapp create -n $productsFunctionName --storage-account $storageAccountName --consumption-plan-location $location --app-insights $appInsightsName --app-insights-key $appInsightsInstrumentationKey  -g $resourceGroup --runtime dotnet --functions-version $functionsRuntimeVersion  >> serverless-apim-setup.log

echo '- Creating '$red$reviewsFunctionName$reset' Function App ...'
az functionapp create -n $reviewsFunctionName --storage-account $storageAccountName --consumption-plan-location $location --app-insights $appInsightsName  -g $resourceGroup  --functions-version $functionsRuntimeVersion --runtime node >> serverless-apim-setup.log

echo '- Deploying '$red$productsFunctionName$reset' to '$red$productsFunctionName$reset' Function App ...'
cd apis/Products
func azure functionapp publish  $productsFunctionName --csharp --output json >> ../../serverless-apim-setup.log

echo '- Deploying '$red$reviewsFunctionName$reset' to '$red$reviewsFunctionName$reset' Function App ...'
cd ../Reviews
func azure functionapp publish $reviewsFunctionName --typescript --output json >> ../../serverless-apim-setup.log
cd ../..

echo $green'=============================================================='
echo
echo   $red'Done! Check your log information on serverless-apim-setup.log.'
echo
echo $green'=============================================================='
