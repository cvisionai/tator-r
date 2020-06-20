# tator::AudioDefinition

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**codec** | **character** | Human readable codec. | 
**codec_description** | **character** | Description other than codec. | [optional] 
**codec_mime** | **character** | Example mime: \&quot;video/mp4; codecs&#x3D;\&quot;avc1.64001e\&quot;\&quot;. Only relevant for streaming files, will assume example above if not present. | [optional] 
**host** | **character** | If supplied will use this instead of currently connected host, e.g. https://example.com | [optional] 
**http_auth** | **character** | If specified will be used for HTTP authorization in request for media, i.e. \&quot;bearer &lt;token&gt;\&quot;. | [optional] 
**path** | **character** | Path to file. | [optional] 


