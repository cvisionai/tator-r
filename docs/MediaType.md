# tator::MediaType

Media type.
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attribute_types** | [**array[AttributeType]**](AttributeType.md) | Attribute type definitions. | [optional] 
**default_volume** | **integer** | Default audio volume for this media type. | [optional] 
**description** | **character** | Description of the media type. | [optional] [default to &#39;&#39;]
**dtype** | **character** | Type of the media, image or video. | [optional] 
**file_format** | **character** | File extension. If omitted, any recognized file extension for the given dtype is accepted for upload. Do not include a dot prefix. | [optional] 
**id** | **integer** | Unique integer identifying a media type. | [optional] 
**keep_original** | **character** | For video dtype, whether to keep the original video file for archival purposes after transcoding. If true, the originally uploaded file will be available for download, otherwise downloads will use the transcoded videos. | [optional] [default to TRUE]
**name** | **character** | Name of the media type. | [optional] 
**project** | **integer** | Unique integer identifying project for this media type. | [optional] 


