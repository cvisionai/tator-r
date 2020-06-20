# tator::LocalizationSpec

Localization creation spec. Attribute key/values must be included in the base object.
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**frame** | **integer** | Frame number of this localization if it is in a video. | 
**height** | **numeric** | Normalized height of bounding box for &#x60;box&#x60; localization types. | [optional] 
**media_id** | **integer** | Unique integer identifying a media. | 
**modified** | **character** | Whether this localization was created in the web UI. | [optional] 
**parent** | **numeric** | If a clone, the pk of the parent. | [optional] 
**type** | **integer** | Unique integer identifying a localization type. | 
**u** | **numeric** | Horizontal vector component for &#x60;line&#x60; localization types. | [optional] 
**v** | **numeric** | Vertical vector component for &#x60;line&#x60; localization types. | [optional] 
**version** | **integer** | Unique integer identifying the version. | [optional] 
**width** | **numeric** | Normalized width of bounding box for &#x60;box&#x60; localization types. | [optional] 
**x** | **numeric** | Normalized horizontal position of left edge of bounding box for &#x60;box&#x60; localization types, start of line for &#x60;line&#x60; localization types, or position of dot for &#x60;dot&#x60; localization types. | [optional] 
**y** | **numeric** | Normalized vertical position of top edge of bounding box for &#x60;box&#x60; localization types, start of line for &#x60;line&#x60; localization types, or position of dot for &#x60;dot&#x60; localization types. | [optional] 


