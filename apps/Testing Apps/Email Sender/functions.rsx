<GlobalFunctions>
  <SMTPQuery
    id="SendEmail"
    body="{{formatEmailBody.data}}"
    fromEmail="david.papamichael@retool.com"
    resourceName="26ca2264-37bf-4d21-9073-87b091ea86e4"
    resourceTypeOverride=""
    toEmail="{{formatEmailAddresses.data}}"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <JavascriptQuery
    id="formatEmailAddresses"
    query={include("./lib/formatEmailAddresses.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <JavascriptQuery
    id="formatEmailBody"
    query={include("./lib/formatEmailBody.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <JavascriptQuery
    id="query4"
    query={include("./lib/query4.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
</GlobalFunctions>
