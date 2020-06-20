# tator::TranscodeSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**gid** | **character** | UUID generated for the job group. This value may be associated with messages generated during upload via the &#x60;Progress&#x60; endpoint, or it may be newly generated. The transcode workflow will use this value to generate progress messages. | 
**md5** | **character** | MD5 sum of the media file. | 
**name** | **character** | Name of the file. | 
**section** | **character** | Media section name to upload to. | 
**type** | **integer** | Unique integer identifying a video type. | 
**uid** | **character** | UUID generated for the individual job. This value may be associated with messages generated during upload via the &#x60;Progress&#x60; endpoint, or it may be newly generated. The transcode workflow will use this value to generate progress messages. | 
**url** | **character** | Upload URL for the raw video. | 


