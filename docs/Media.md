# tator::Media

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attributes** | [**map(AnyType)**](AnyType.md) | Object containing attribute values. | [optional] 
**codec** | **character** | Codec for videos. | [optional] 
**created_by** | **integer** | Unique integer identifying user who created this media. | [optional] 
**created_datetime** | **character** | Datetime when this media was created. | [optional] 
**file** | **character** | URL of the media file. Relative to https://&lt;domain&gt;/media/. | [optional] 
**fps** | **integer** | Frame rate for videos. | [optional] 
**height** | **integer** | Vertical resolution in pixels. | [optional] 
**id** | **integer** | Unique integer identifying this media. | [optional] 
**last_edit_end** | **character** | Datetime of the end of the session when this media or its annotations were last edited. | [optional] 
**last_edit_start** | **character** | Datetime of the start of the session when this media or its annotations were last edited. | [optional] 
**md5** | **character** | MD5 checksum of the media file. | [optional] 
**media_files** | [**MediaFiles**](MediaFiles.md) |  | [optional] 
**meta** | **integer** | Unique integer identifying entity type of this media. | [optional] 
**modified_by** | **integer** | Unique integer identifying user who last modified this media. | [optional] 
**modified_datetime** | **character** | Datetime when this media was last modified. | [optional] 
**name** | **character** | Name of the media. | [optional] 
**num_frames** | **integer** | Number of frames for videos. | [optional] 
**original** | **character** | DEPRECATED. Use media_files. Stores path to original media file. | [optional] 
**project** | **integer** | Unique integer identifying project of this media. | [optional] 
**segment_info** | **character** | Path to segment info. | [optional] 
**thumbnail** | **character** | URL of the thumbnail. Relative to https://&lt;domain&gt;/media/. | [optional] 
**thumbnail_gif** | **character** | URL of the thumbnail gif for videos. Relative to https://&lt;domain&gt;/media/. | [optional] 
**width** | **integer** | Horizontal resolution in pixels. | [optional] 


