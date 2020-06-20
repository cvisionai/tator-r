# tator::MediaTypeUpdate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **character** | Description of the media type. | [optional] [default to &#39;&#39;]
**file_format** | **character** | File extension. If omitted, any recognized file extension for the given dtype is accepted for upload. Do not include a dot prefix. | [optional] 
**keep_original** | **character** | For video dtype, whether to keep the original video file for archival purposes after transcoding. If true, the originally uploaded file will be available for download, otherwise downloads will use the transcoded videos. | [optional] [default to TRUE]
**name** | **character** | Name of the media type. | [optional] 


