# tator::AttributeType

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**autocomplete** | [**AutocompleteService**](AutocompleteService.md) |  | [optional] 
**choices** | **array[character]** | Array of possible values for enum dtype. | [optional] 
**default** | [**AnyType**](.md) | Boolean, integer, float, string, datetime, or [lon, lat]. | [optional] 
**description** | **character** | Description of the attribute. | [optional] [default to &#39;&#39;]
**dtype** | **character** | Data type of the attribute. | [optional] 
**labels** | **array[character]** | Array of labels for enum dtype. | [optional] 
**maximum** | **numeric** | Upper bound for int or float dtype. | [optional] 
**minimum** | **numeric** | Lower bound for int or float dtype. | [optional] 
**name** | **character** | Name of the attribute. | [optional] 
**order** | **integer** | Integer specifying relative order this attribute is displayed in the UI. Negative values are hidden by default. | [optional] [default to 0]
**required** | **character** | True if this attribute is required for POST requests. | [optional] [default to FALSE]
**use_current** | **character** | True to use current datetime as default for datetime dtype. | [optional] 


