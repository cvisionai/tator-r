# tator::Version

Version object.
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bases** | **array[integer]** | Array of other version IDs that are dependencies of this version. | [optional] 
**created_by** | **character** | Name of user who created the last unmodified annotation in this version. | [optional] 
**created_datetime** | **character** | Datetime when the last unmodified annotation was created. | [optional] 
**description** | **character** | Description of the version. | [optional] [default to &#39;&#39;]
**id** | **integer** | Unique integer identifying a membership. | [optional] 
**modified_by** | **character** | Name of user who modified annotations in this version most recently. | [optional] 
**modified_datetime** | **character** | Datetime when last annotation was modified in the web interface. | [optional] 
**name** | **character** | Name of the version. | [optional] 
**num_created** | **integer** | Number of created annotations in this version. | [optional] 
**num_modified** | **integer** | Number of modified annotations in this version. | [optional] 
**number** | **integer** | Version number. | [optional] 
**project** | **integer** | Unique integer identifying a project. | [optional] 
**show_empty** | **character** | Whether to show this version on media for which no annotations exist. | [optional] [default to TRUE]


