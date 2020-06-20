# tator::VideoSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**codec** | **character** | Codec of the original video. | 
**fps** | **numeric** | Frame rate of the video. | 
**gid** | **character** | UUID generated for the job group. This value is returned in the response of the &#x60;AlgorithmLaunch&#x60; and &#x60;Transcode&#x60; endpoints. | 
**height** | **integer** | Pixel height of the video. | 
**md5** | **character** | MD5 sum of the media file. | 
**media_files** | [**MediaFiles**](MediaFiles.md) |  | 
**name** | **character** | Name of the file. | 
**num_frames** | **integer** | Number of frames in the video. | 
**progressName** | **character** | Name to use for progress update. | [optional] 
**section** | **character** | Media section name. | 
**thumbnail_gif_url** | **character** | Upload URL for the thumbnail gif. | 
**thumbnail_url** | **character** | Upload URL for the thumbnail. | 
**type** | **integer** | Unique integer identifying a video type. Use -1 to automatically select the video type if only one video type exists in a project. | 
**uid** | **character** | UUID generated for the individual job. This value is returned in the response of the &#x60;AlgorithmLaunch&#x60; and &#x60;Transcode&#x60; endpoints. | 
**width** | **integer** | Pixel width of the video. | 


