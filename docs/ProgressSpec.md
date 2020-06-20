# tator::ProgressSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**gid** | **character** | UUID generated for the job group. This value is returned in the response of the &#x60;AlgorithmLaunch&#x60; and &#x60;Transcode&#x60; endpoints. | 
**job_type** | **character** | Type of background job. | 
**media_ids** | **character** | Comma separated string of media ids, one for each media that this job applies to. Required only for &#x60;job_type&#x60; of &#x60;algorithm&#x60;. | [optional] 
**message** | **character** | Progress message. This should be short to fit in the UI. | 
**name** | **character** | Name of the job. | 
**progress** | **numeric** | Progress percent completion. This is used to display the progress bar associated with the job. | 
**section** | **character** | Media section name. Required only for &#x60;job_type&#x60; of &#x60;upload&#x60;. | [optional] 
**sections** | **character** | Comma separated string of media sections, one for each media ID that this job applies to. Required only for &#x60;job_type&#x60; of &#x60;algorithm&#x60;. | [optional] 
**state** | **character** | State of the job. | 
**swid** | **character** | UUID generated for the service worker that is doing an upload. This field is required if the &#x60;job_type&#x60; is &#x60;upload&#x60;. | [optional] 
**uid** | **character** | UUID generated for the individual job. This value is returned in the response of the &#x60;AlgorithmLaunch&#x60; and &#x60;Transcode&#x60; endpoints. | 


