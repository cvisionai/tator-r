# tator::ImageSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**gid** | **character** | UUID generated for the job group. This value is returned in the response of the &#x60;AlgorithmLaunch&#x60; and &#x60;Transcode&#x60; endpoints. | 
**md5** | **character** | MD5 sum of the media file. | 
**name** | **character** | Name of the file. | 
**section** | **character** | Media section name. | 
**thumbnail_url** | **character** | Upload URL for the thumbnail if already generated. | [optional] 
**type** | **integer** | Unique integer identifying an image type. Use -1 to automatically select the image type if only one image type exists in a project. | 
**uid** | **character** | UUID generated for the individual job. This value is returned in the response of the &#x60;AlgorithmLaunch&#x60; and &#x60;Transcode&#x60; endpoints. | 
**url** | **character** | Upload URL for the image. | 


