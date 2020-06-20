# TatorApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AlgorithmLaunch**](TatorApi.md#AlgorithmLaunch) | **POST** /rest/AlgorithmLaunch/{project} | 
[**CreateAnalysis**](TatorApi.md#CreateAnalysis) | **POST** /rest/Analyses/{project} | 
[**CreateLeafList**](TatorApi.md#CreateLeafList) | **POST** /rest/Leaves/{project} | 
[**CreateLeafType**](TatorApi.md#CreateLeafType) | **POST** /rest/LeafTypes/{project} | 
[**CreateLocalizationList**](TatorApi.md#CreateLocalizationList) | **POST** /rest/Localizations/{project} | 
[**CreateLocalizationType**](TatorApi.md#CreateLocalizationType) | **POST** /rest/LocalizationTypes/{project} | 
[**CreateMediaType**](TatorApi.md#CreateMediaType) | **POST** /rest/MediaTypes/{project} | 
[**CreateMembership**](TatorApi.md#CreateMembership) | **POST** /rest/Memberships/{project} | 
[**CreateObtainAuthToken**](TatorApi.md#CreateObtainAuthToken) | **POST** /rest/Token | 
[**CreateProgressSummaryAPI**](TatorApi.md#CreateProgressSummaryAPI) | **POST** /rest/ProgressSummary/{project} | 
[**CreateProject**](TatorApi.md#CreateProject) | **POST** /rest/Projects | 
[**CreateStateList**](TatorApi.md#CreateStateList) | **POST** /rest/States/{project} | 
[**CreateStateType**](TatorApi.md#CreateStateType) | **POST** /rest/StateTypes/{project} | 
[**CreateTemporaryFile**](TatorApi.md#CreateTemporaryFile) | **POST** /rest/TemporaryFiles/{project} | 
[**CreateVersion**](TatorApi.md#CreateVersion) | **POST** /rest/Versions/{project} | 
[**DeleteJob**](TatorApi.md#DeleteJob) | **DELETE** /rest/Job/{run_uid} | 
[**DeleteJobGroup**](TatorApi.md#DeleteJobGroup) | **DELETE** /rest/JobGroup/{group_id} | 
[**DeleteLeaf**](TatorApi.md#DeleteLeaf) | **DELETE** /rest/Leaf/{id} | 
[**DeleteLeafList**](TatorApi.md#DeleteLeafList) | **DELETE** /rest/Leaves/{project} | 
[**DeleteLeafType**](TatorApi.md#DeleteLeafType) | **DELETE** /rest/LeafType/{id} | 
[**DeleteLocalization**](TatorApi.md#DeleteLocalization) | **DELETE** /rest/Localization/{id} | 
[**DeleteLocalizationList**](TatorApi.md#DeleteLocalizationList) | **DELETE** /rest/Localizations/{project} | 
[**DeleteLocalizationType**](TatorApi.md#DeleteLocalizationType) | **DELETE** /rest/LocalizationType/{id} | 
[**DeleteMedia**](TatorApi.md#DeleteMedia) | **DELETE** /rest/Media/{id} | 
[**DeleteMediaList**](TatorApi.md#DeleteMediaList) | **DELETE** /rest/Medias/{project} | 
[**DeleteMediaType**](TatorApi.md#DeleteMediaType) | **DELETE** /rest/MediaType/{id} | 
[**DeleteMembership**](TatorApi.md#DeleteMembership) | **DELETE** /rest/Membership/{id} | 
[**DeleteProject**](TatorApi.md#DeleteProject) | **DELETE** /rest/Project/{id} | 
[**DeleteState**](TatorApi.md#DeleteState) | **DELETE** /rest/State/{id} | 
[**DeleteStateList**](TatorApi.md#DeleteStateList) | **DELETE** /rest/States/{project} | 
[**DeleteStateType**](TatorApi.md#DeleteStateType) | **DELETE** /rest/StateType/{id} | 
[**DeleteTemporaryFile**](TatorApi.md#DeleteTemporaryFile) | **DELETE** /rest/TemporaryFile/{id} | 
[**DeleteTemporaryFileList**](TatorApi.md#DeleteTemporaryFileList) | **DELETE** /rest/TemporaryFiles/{project} | 
[**DeleteVersion**](TatorApi.md#DeleteVersion) | **DELETE** /rest/Version/{id} | 
[**GetAlgorithmList**](TatorApi.md#GetAlgorithmList) | **GET** /rest/Algorithms/{project} | 
[**GetAnalysisList**](TatorApi.md#GetAnalysisList) | **GET** /rest/Analyses/{project} | 
[**GetClip**](TatorApi.md#GetClip) | **GET** /rest/GetClip/{id} | 
[**GetFrame**](TatorApi.md#GetFrame) | **GET** /rest/GetFrame/{id} | 
[**GetLeaf**](TatorApi.md#GetLeaf) | **GET** /rest/Leaf/{id} | 
[**GetLeafList**](TatorApi.md#GetLeafList) | **GET** /rest/Leaves/{project} | 
[**GetLeafType**](TatorApi.md#GetLeafType) | **GET** /rest/LeafType/{id} | 
[**GetLeafTypeList**](TatorApi.md#GetLeafTypeList) | **GET** /rest/LeafTypes/{project} | 
[**GetLocalization**](TatorApi.md#GetLocalization) | **GET** /rest/Localization/{id} | 
[**GetLocalizationList**](TatorApi.md#GetLocalizationList) | **GET** /rest/Localizations/{project} | 
[**GetLocalizationType**](TatorApi.md#GetLocalizationType) | **GET** /rest/LocalizationType/{id} | 
[**GetLocalizationTypeList**](TatorApi.md#GetLocalizationTypeList) | **GET** /rest/LocalizationTypes/{project} | 
[**GetMedia**](TatorApi.md#GetMedia) | **GET** /rest/Media/{id} | 
[**GetMediaList**](TatorApi.md#GetMediaList) | **GET** /rest/Medias/{project} | 
[**GetMediaNext**](TatorApi.md#GetMediaNext) | **GET** /rest/MediaNext/{id} | 
[**GetMediaPrev**](TatorApi.md#GetMediaPrev) | **GET** /rest/MediaPrev/{id} | 
[**GetMediaSections**](TatorApi.md#GetMediaSections) | **GET** /rest/MediaSections/{project} | 
[**GetMediaType**](TatorApi.md#GetMediaType) | **GET** /rest/MediaType/{id} | 
[**GetMediaTypeList**](TatorApi.md#GetMediaTypeList) | **GET** /rest/MediaTypes/{project} | 
[**GetMembership**](TatorApi.md#GetMembership) | **GET** /rest/Membership/{id} | 
[**GetMembershipList**](TatorApi.md#GetMembershipList) | **GET** /rest/Memberships/{project} | 
[**GetProject**](TatorApi.md#GetProject) | **GET** /rest/Project/{id} | 
[**GetProjectList**](TatorApi.md#GetProjectList) | **GET** /rest/Projects | 
[**GetSectionAnalysis**](TatorApi.md#GetSectionAnalysis) | **GET** /rest/SectionAnalysis/{project} | 
[**GetState**](TatorApi.md#GetState) | **GET** /rest/State/{id} | 
[**GetStateGraphic**](TatorApi.md#GetStateGraphic) | **GET** /rest/StateGraphic/{id} | 
[**GetStateList**](TatorApi.md#GetStateList) | **GET** /rest/States/{project} | 
[**GetStateType**](TatorApi.md#GetStateType) | **GET** /rest/StateType/{id} | 
[**GetStateTypeList**](TatorApi.md#GetStateTypeList) | **GET** /rest/StateTypes/{project} | 
[**GetTemporaryFile**](TatorApi.md#GetTemporaryFile) | **GET** /rest/TemporaryFile/{id} | 
[**GetTemporaryFileList**](TatorApi.md#GetTemporaryFileList) | **GET** /rest/TemporaryFiles/{project} | 
[**GetUser**](TatorApi.md#GetUser) | **GET** /rest/User/{id} | 
[**GetVersion**](TatorApi.md#GetVersion) | **GET** /rest/Version/{id} | 
[**GetVersionList**](TatorApi.md#GetVersionList) | **GET** /rest/Versions/{project} | 
[**LeafSuggestion**](TatorApi.md#LeafSuggestion) | **GET** /rest/Leaves/Suggestion/{ancestor}/{project} | 
[**Notify**](TatorApi.md#Notify) | **POST** /rest/Notify | 
[**Progress**](TatorApi.md#Progress) | **POST** /rest/Progress/{project} | 
[**SaveImage**](TatorApi.md#SaveImage) | **POST** /rest/SaveImage/{project} | 
[**SaveVideo**](TatorApi.md#SaveVideo) | **POST** /rest/SaveVideo/{project} | 
[**Transcode**](TatorApi.md#Transcode) | **POST** /rest/Transcode/{project} | 
[**UpdateLeaf**](TatorApi.md#UpdateLeaf) | **PATCH** /rest/Leaf/{id} | 
[**UpdateLeafList**](TatorApi.md#UpdateLeafList) | **PATCH** /rest/Leaves/{project} | 
[**UpdateLeafType**](TatorApi.md#UpdateLeafType) | **PATCH** /rest/LeafType/{id} | 
[**UpdateLocalization**](TatorApi.md#UpdateLocalization) | **PATCH** /rest/Localization/{id} | 
[**UpdateLocalizationList**](TatorApi.md#UpdateLocalizationList) | **PATCH** /rest/Localizations/{project} | 
[**UpdateLocalizationType**](TatorApi.md#UpdateLocalizationType) | **PATCH** /rest/LocalizationType/{id} | 
[**UpdateMedia**](TatorApi.md#UpdateMedia) | **PATCH** /rest/Media/{id} | 
[**UpdateMediaList**](TatorApi.md#UpdateMediaList) | **PATCH** /rest/Medias/{project} | 
[**UpdateMediaType**](TatorApi.md#UpdateMediaType) | **PATCH** /rest/MediaType/{id} | 
[**UpdateMembership**](TatorApi.md#UpdateMembership) | **PATCH** /rest/Membership/{id} | 
[**UpdateProject**](TatorApi.md#UpdateProject) | **PATCH** /rest/Project/{id} | 
[**UpdateState**](TatorApi.md#UpdateState) | **PATCH** /rest/State/{id} | 
[**UpdateStateList**](TatorApi.md#UpdateStateList) | **PATCH** /rest/States/{project} | 
[**UpdateStateType**](TatorApi.md#UpdateStateType) | **PATCH** /rest/StateType/{id} | 
[**UpdateUser**](TatorApi.md#UpdateUser) | **PATCH** /rest/User/{id} | 
[**UpdateVersion**](TatorApi.md#UpdateVersion) | **PATCH** /rest/Version/{id} | 
[**UpdateVideo**](TatorApi.md#UpdateVideo) | **PATCH** /rest/SaveVideo/{project} | 
[**Whoami**](TatorApi.md#Whoami) | **GET** /rest/User/GetCurrent | 


# **AlgorithmLaunch**
> AlgorithmLaunch AlgorithmLaunch(project, algorithm.launch.spec=var.algorithm.launch.spec)



Launch a registered algorithm.  This will create one or more Argo workflows that execute the named algorithm registration. To get a list of available algorithms, use the `Algorithms` endpoint. A media list will be submitted for processing using either a query string or  a list of media IDs. If neither are included, the algorithm will be launched on all media in the project.   Media is divided into batches for based on the `files_per_job` field of the  `Algorithm` object. One batch is submitted to each Argo workflow.  Submitted algorithm jobs may be cancelled via the `Job` or `JobGroup` endpoints. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.algorithm.launch.spec <- AlgorithmLaunchSpec$new("algorithm_name_example", list(123), "media_query_example") # AlgorithmLaunchSpec | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$AlgorithmLaunch(var.project, algorithm.launch.spec=var.algorithm.launch.spec)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **algorithm.launch.spec** | [**AlgorithmLaunchSpec**](AlgorithmLaunchSpec.md)|  | [optional] 

### Return type

[**AlgorithmLaunch**](AlgorithmLaunch.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Successful launch of algorithm. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **CreateAnalysis**
> CreateResponse CreateAnalysis(project, analysis.spec=var.analysis.spec)



Create analysis.  Analysis objects are used to display information about filtered media lists and/or annotations on the project detail page of the web UI. Currently only counting analysis is supported. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.analysis.spec <- AnalysisSpec$new("data_query_example", "name_example") # AnalysisSpec | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CreateAnalysis(var.project, analysis.spec=var.analysis.spec)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **analysis.spec** | [**AnalysisSpec**](AnalysisSpec.md)|  | [optional] 

### Return type

[**CreateResponse**](CreateResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Successful creation of analysis. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **CreateLeafList**
> CreateListResponse CreateLeafList(project, leaf.spec=var.leaf.spec)



Create leaf list.  Leaves are used to define label hierarchies that can be used for autocompletion of string attribute types. Leaves are a type of entity in Tator, meaning they can be described by user-defined attributes.   This method does a bulk create on a list of `LeafSpec` objects. A  maximum of 500 leaves may be created in one request. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.leaf.spec <- list(LeafSpec$new("name_example", 123, 123)) # array[LeafSpec] | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CreateLeafList(var.project, leaf.spec=var.leaf.spec)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **leaf.spec** | list( [**LeafSpec**](LeafSpec.md) )|  | [optional] 

### Return type

[**CreateListResponse**](CreateListResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Successful creation of leaf. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **CreateLeafType**
> CreateResponse CreateLeafType(project, leaf.type.spec=var.leaf.type.spec)



Create leaf type.  A leaf type is the metadata definition object for a leaf. It includes name, description, and may have any number of user-defined attribute types associated with it. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.leaf.type.spec <- LeafTypeSpec$new(list(AttributeType$new(AutocompleteService$new("serviceUrl_example"), list("choices_example"), TODO, "description_example", "dtype_example", list("labels_example"), 123, 123, "name_example", 123, "required_example", "use_current_example")), "description_example", "name_example") # LeafTypeSpec | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CreateLeafType(var.project, leaf.type.spec=var.leaf.type.spec)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **leaf.type.spec** | [**LeafTypeSpec**](LeafTypeSpec.md)|  | [optional] 

### Return type

[**CreateResponse**](CreateResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Successful creation of leaf type. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **CreateLocalizationList**
> CreateListResponse CreateLocalizationList(project, localization.spec=var.localization.spec)



Create localiazation list.  Localizations are shape annotations drawn on a video or image. Available shapes (`dtype`) are  box, line, or dot. Each shape is parameterized by a different subset of data members: - `box` uses `x`, `y`, `width`, `height`. - `line` uses `x`, `y`, `u`, `v`. - `dot` uses `x` and `y`.  Geometry members may be left null when creating a localization, in which case the shapes may be  drawn later using the redraw capability in the web UI. Localizations are a type of entity in Tator, meaning they can be described by user defined attributes.   This method does a bulk create on a list of `LocalizationSpec` objects. A  maximum of 500 localizations may be created in one request. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.localization.spec <- list(LocalizationSpec$new(123, 123, 123, "modified_example", 123, 123, 123, 123, 123, 123, 123, 123)) # array[LocalizationSpec] | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CreateLocalizationList(var.project, localization.spec=var.localization.spec)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **localization.spec** | list( [**LocalizationSpec**](LocalizationSpec.md) )|  | [optional] 

### Return type

[**CreateListResponse**](CreateListResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Successful creation of localization(s). |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **CreateLocalizationType**
> CreateResponse CreateLocalizationType(project, localization.type.spec=var.localization.type.spec)



Create localization type.  A localization type is the metadata definition object for a localization. It includes shape, name, description, and may have any number of user-defined attribute types associated with it. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.localization.type.spec <- LocalizationTypeSpec$new(list(AttributeType$new(AutocompleteService$new("serviceUrl_example"), list("choices_example"), TODO, "description_example", "dtype_example", list("labels_example"), 123, 123, "name_example", 123, "required_example", "use_current_example")), ColorMap$new(TODO, TODO, "key_example", TODO, TODO), "description_example", "dtype_example", 123, list(123), "name_example", "visible_example") # LocalizationTypeSpec | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CreateLocalizationType(var.project, localization.type.spec=var.localization.type.spec)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **localization.type.spec** | [**LocalizationTypeSpec**](LocalizationTypeSpec.md)|  | [optional] 

### Return type

[**CreateResponse**](CreateResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Successful creation of localization type. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **CreateMediaType**
> CreateResponse CreateMediaType(project, media.type.spec=var.media.type.spec)



Create media type.  A media type is the metadata definition object for media. It includes file format, name, description, and may have any number of user defined attribute types associated with it. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.media.type.spec <- MediaTypeSpec$new(list(AttributeType$new(AutocompleteService$new("serviceUrl_example"), list("choices_example"), TODO, "description_example", "dtype_example", list("labels_example"), 123, 123, "name_example", 123, "required_example", "use_current_example")), 123, "description_example", "dtype_example", "file_format_example", "keep_original_example", "name_example") # MediaTypeSpec | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CreateMediaType(var.project, media.type.spec=var.media.type.spec)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **media.type.spec** | [**MediaTypeSpec**](MediaTypeSpec.md)|  | [optional] 

### Return type

[**CreateResponse**](CreateResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Successful creation of media type. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **CreateMembership**
> CreateResponse CreateMembership(project, membership.spec=var.membership.spec)



Create membership.  Memberships specify a permission level of a user to a project. There are currently five cumulative permission levels: - `View Only` can only view a project and not change any data. - `Can Edit` can create, modify, and delete annotations. - `Can Transfer` can upload and download media. - `Can Execute` can launch algorithm workflows. - `Full Control` can change project settings, including inviting new members, project name, and    project metadata schema. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.membership.spec <- MembershipSpec$new("permission_example", 123) # MembershipSpec | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CreateMembership(var.project, membership.spec=var.membership.spec)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **membership.spec** | [**MembershipSpec**](MembershipSpec.md)|  | [optional] 

### Return type

[**CreateResponse**](CreateResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Successful creation of membership. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **CreateObtainAuthToken**
> Token CreateObtainAuthToken(credentials=var.credentials)



### Example
```R
library(tator)

var.credentials <- Credentials$new("password_example", "username_example") # Credentials | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CreateObtainAuthToken(credentials=var.credentials)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credentials** | [**Credentials**](Credentials.md)|  | [optional] 

### Return type

[**Token**](Token.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Login credentials accepted. |  -  |
| **400** | Login credentials invalid. |  -  |

# **CreateProgressSummaryAPI**
> MessageResponse CreateProgressSummaryAPI(project, progress.summary.spec=var.progress.summary.spec)



Create or update a progress summary.  This endpoint sets a key in redis that indicates how many jobs are in a job group as well as how many are completed. This is used to display summary progress in the progress bar. If not used for a given job group, the job completion is computed from the status of individual jobs in the group. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.progress.summary.spec <- ProgressSummarySpec$new("gid_example", 123, 123) # ProgressSummarySpec | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CreateProgressSummaryAPI(var.project, progress.summary.spec=var.progress.summary.spec)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **progress.summary.spec** | [**ProgressSummarySpec**](ProgressSummarySpec.md)|  | [optional] 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Successful creation of progress summary message. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **CreateProject**
> CreateResponse CreateProject(project.spec=var.project.spec)



Create project.  Projects are the object under which all data in Tator is grouped, including user access, metadata definitions, media, and annotations. Data does not cross boundaries between projects.   

### Example
```R
library(tator)

var.project.spec <- ProjectSpec$new("name_example", "summary_example") # ProjectSpec | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CreateProject(project.spec=var.project.spec)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project.spec** | [**ProjectSpec**](ProjectSpec.md)|  | [optional] 

### Return type

[**CreateResponse**](CreateResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Successful creation of project. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **CreateStateList**
> CreateListResponse CreateStateList(project, state.spec=var.state.spec)



Create state list.  A state is a description of a collection of other objects. The objects a state describes could be media (image or video), video frames, or localizations. A state referring to a collection of localizations is often referred to as a track. States are a type of entity in Tator, meaning they can be described by user defined attributes.   This method does a bulk create on a list of `StateSpec` objects. A  maximum of 500 states may be created in one request. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.state.spec <- list(StateSpec$new(123, list(123), list(123), "modified_example", 123, 123)) # array[StateSpec] | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CreateStateList(var.project, state.spec=var.state.spec)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **state.spec** | list( [**StateSpec**](StateSpec.md) )|  | [optional] 

### Return type

[**CreateListResponse**](CreateListResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Successful creation of state(s). |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **CreateStateType**
> CreateResponse CreateStateType(project, state.type.spec=var.state.type.spec)



Create state type.  A state type is the metadata definition object for a state. It includes association type, name, description, and may have any number of user-defined attribute types associated with it. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.state.type.spec <- StateTypeSpec$new("association_example", list(AttributeType$new(AutocompleteService$new("serviceUrl_example"), list("choices_example"), TODO, "description_example", "dtype_example", list("labels_example"), 123, 123, "name_example", 123, "required_example", "use_current_example")), "description_example", list(123), "name_example") # StateTypeSpec | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CreateStateType(var.project, state.type.spec=var.state.type.spec)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **state.type.spec** | [**StateTypeSpec**](StateTypeSpec.md)|  | [optional] 

### Return type

[**CreateResponse**](CreateResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Successful creation of state type. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **CreateTemporaryFile**
> CreateResponse CreateTemporaryFile(project, temporary.file.spec=var.temporary.file.spec)



Create temporary file.  Temporary files are files stored server side for a defined duration.   The file must first be uploaded via tus, and can subsequently be saved using this endpoint.

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.temporary.file.spec <- TemporaryFileSpec$new(123, "lookup_example", "name_example", "url_example") # TemporaryFileSpec | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CreateTemporaryFile(var.project, temporary.file.spec=var.temporary.file.spec)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **temporary.file.spec** | [**TemporaryFileSpec**](TemporaryFileSpec.md)|  | [optional] 

### Return type

[**CreateResponse**](CreateResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Successful creation of temporary file. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **CreateVersion**
> CreateResponse CreateVersion(project, version.spec=var.version.spec)



Create version.  Versions allow for multiple \"layers\" of annotations on the same media. Versions are created at the project level, but are only displayed for a given media if that media contains annotations in that version. The version of an annotation can be set by providing it in a POST operation. Currently only localizations and states can have versions.  Versions are used in conjunction with the `modified` flag to determine whether an annotation should be displayed for a given media while annotating. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.version.spec <- VersionSpec$new(list(123), "description_example", "name_example", "show_empty_example") # VersionSpec | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CreateVersion(var.project, version.spec=var.version.spec)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **version.spec** | [**VersionSpec**](VersionSpec.md)|  | [optional] 

### Return type

[**CreateResponse**](CreateResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Successful creation of version. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **DeleteJob**
> MessageResponse DeleteJob(run.uid)



Cancel a background job.  Algorithms and transcodes create argo workflows that are annotated with two uuid1 strings, one identifying the run and the other identifying the group. Jobs that are submitted together have the same group id, but each workflow has a unique run id.  This endpoint allows the user to cancel a job using the `run_uid` returned by either the `AlgorithmLaunch` or `Transcode` endpoints. 

### Example
```R
library(tator)

var.run.uid <- 'run.uid_example' # character | A uuid1 string identifying to single Job.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$DeleteJob(var.run.uid)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **run.uid** | **character**| A uuid1 string identifying to single Job. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful cancellation of job. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **DeleteJobGroup**
> MessageResponse DeleteJobGroup(group.id)



Cancel a group of background jobs.  Algorithms and transcodes create argo workflows that are annotated with two uuid1 strings, one identifying the run and the other identifying the group. Jobs that are submitted together have the same group id, but each workflow has a unique run id.  This endpoint allows the user to cancel a group of jobs using the `group_id`  returned by either the `AlgorithmLaunch` or `Transcode` endpoints. 

### Example
```R
library(tator)

var.group.id <- 'group.id_example' # character | A uuid1 string identifying a group of jobs.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$DeleteJobGroup(var.group.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group.id** | **character**| A uuid1 string identifying a group of jobs. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful cancellation of job group. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **DeleteLeaf**
> DeleteLeaf(id)



Delete leaf.  Leaves are used to define label hierarchies that can be used for autocompletion of string attribute types. Leaves are a type of entity in Tator, meaning they can be described by user-defined attributes. 

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a leaf.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$DeleteLeaf(var.id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a leaf. | 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful deletion of leaf. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **DeleteLeafList**
> MessageResponse DeleteLeafList(project, ancestor=var.ancestor, type=var.type, name=var.name, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop)



Delete leaf list.  Leaves are used to define label hierarchies that can be used for autocompletion of string attribute types. Leaves are a type of entity in Tator, meaning they can be described by user-defined attributes.   This method performs a bulk delete on all leaves matching a query. It is  recommended to use a GET request first to check what is being deleted. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.ancestor <- 'ancestor_example' # character | Get descendents of a leaf element (inclusive), by path (i.e. ITIS.Animalia).
var.type <- 56 # integer | Unique integer identifying a leaf type.
var.name <- 'name_example' # character | Name of the leaf element.
var.attribute <- 'attribute_example' # character | Attribute equality filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lt <- 'attribute.lt_example' # character | Attribute less than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lte <- 'attribute.lte_example' # character | Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gt <- 'attribute.gt_example' # character | Attribute greater than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gte <- 'attribute.gte_example' # character | Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.contains <- 'attribute.contains_example' # character | Attribute contains filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.distance <- 'attribute.distance_example' # character | Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2].
var.attribute.null <- 'attribute.null_example' # character | Attribute null filter. Returns elements for which a given attribute is not defined.
var.operation <- 'operation_example' # character | Set to \"count\" to return a count of objects instead of the objects.
var.start <- 56 # integer | Pagination start index. Index of the first item in a larger list to return.
var.stop <- 56 # integer | Pagination start index. Non-inclusive ndex of the last item in a larger list to return.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$DeleteLeafList(var.project, ancestor=var.ancestor, type=var.type, name=var.name, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **ancestor** | **character**| Get descendents of a leaf element (inclusive), by path (i.e. ITIS.Animalia). | [optional] 
 **type** | **integer**| Unique integer identifying a leaf type. | [optional] 
 **name** | **character**| Name of the leaf element. | [optional] 
 **attribute** | **character**| Attribute equality filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lt** | **character**| Attribute less than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lte** | **character**| Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gt** | **character**| Attribute greater than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gte** | **character**| Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.contains** | **character**| Attribute contains filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.distance** | **character**| Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2]. | [optional] 
 **attribute.null** | **character**| Attribute null filter. Returns elements for which a given attribute is not defined. | [optional] 
 **operation** | Enum [count] | Set to \&quot;count\&quot; to return a count of objects instead of the objects. | [optional] 
 **start** | **integer**| Pagination start index. Index of the first item in a larger list to return. | [optional] 
 **stop** | **integer**| Pagination start index. Non-inclusive ndex of the last item in a larger list to return. | [optional] 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful deletion of leaf list. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **DeleteLeafType**
> MessageResponse DeleteLeafType(id)



Delete leaf type.  A leaf type is the metadata definition object for a leaf. It includes name, description, and may have any number of user-defined attribute types associated with it. 

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying an leaf type.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$DeleteLeafType(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying an leaf type. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful deletion of leaf type. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **DeleteLocalization**
> MessageResponse DeleteLocalization(id)



Delete localization.  Localizations are shape annotations drawn on a video or image. Available shapes (`dtype`) are  box, line, or dot. Each shape is parameterized by a different subset of data members: - `box` uses `x`, `y`, `width`, `height`. - `line` uses `x`, `y`, `u`, `v`. - `dot` uses `x` and `y`.  Geometry members may be left null when creating a localization, in which case the shapes may be  drawn later using the redraw capability in the web UI. Localizations are a type of entity in Tator, meaning they can be described by user defined attributes. 

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a localization.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$DeleteLocalization(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a localization. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful deletion of localization. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **DeleteLocalizationList**
> MessageResponse DeleteLocalizationList(project, media.query=var.media.query, media.id=var.media.id, type=var.type, version=var.version, modified=1, after=var.after, search=var.search, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop, exclude.parents=0, frame=var.frame)



Delete localiazation list.  Localizations are shape annotations drawn on a video or image. Available shapes (`dtype`) are  box, line, or dot. Each shape is parameterized by a different subset of data members: - `box` uses `x`, `y`, `width`, `height`. - `line` uses `x`, `y`, `u`, `v`. - `dot` uses `x` and `y`.  Geometry members may be left null when creating a localization, in which case the shapes may be  drawn later using the redraw capability in the web UI. Localizations are a type of entity in Tator, meaning they can be described by user defined attributes.   This method performs a bulk delete on all localizations matching a query. It is  recommended to use a GET request first to check what is being deleted. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.media.query <- 'media.query_example' # character | Query string used to filter media IDs. If supplied, media_id will be ignored.
var.media.id <- list(123) # array[integer] | Comma-separated list of media IDs.
var.type <- 56 # integer | Unique integer identifying a annotation type.
var.version <- list(123) # array[integer] | List of integers representing versions to fetch
var.modified <- 1 # integer | Whether to return original or modified annotations, 0 or 1.
var.after <- 56 # integer | If given, all results returned will be after the localization with this ID. The `start` and `stop` parameters are relative to this modified range.
var.search <- '\"My search string\"' # character | Lucene query syntax string for use with Elasticsearch. See `reference <https://lucene.apache.org/core/2_9_4/queryparsersyntax.html>`_.
var.attribute <- 'attribute_example' # character | Attribute equality filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lt <- 'attribute.lt_example' # character | Attribute less than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lte <- 'attribute.lte_example' # character | Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gt <- 'attribute.gt_example' # character | Attribute greater than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gte <- 'attribute.gte_example' # character | Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.contains <- 'attribute.contains_example' # character | Attribute contains filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.distance <- 'attribute.distance_example' # character | Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2].
var.attribute.null <- 'attribute.null_example' # character | Attribute null filter. Returns elements for which a given attribute is not defined.
var.operation <- 'operation_example' # character | Set to \"count\" to return a count of objects instead of the objects.
var.start <- 56 # integer | Pagination start index. Index of the first item in a larger list to return.
var.stop <- 56 # integer | Pagination start index. Non-inclusive ndex of the last item in a larger list to return.
var.exclude.parents <- 0 # integer | If a clone is present, do not send parent. (0 or 1)
var.frame <- 56 # integer | Frame number of this localization if it is in a video.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$DeleteLocalizationList(var.project, media.query=var.media.query, media.id=var.media.id, type=var.type, version=var.version, modified=var.modified, after=var.after, search=var.search, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop, exclude.parents=var.exclude.parents, frame=var.frame)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **media.query** | **character**| Query string used to filter media IDs. If supplied, media_id will be ignored. | [optional] 
 **media.id** | list( **integer** )| Comma-separated list of media IDs. | [optional] 
 **type** | **integer**| Unique integer identifying a annotation type. | [optional] 
 **version** | list( **integer** )| List of integers representing versions to fetch | [optional] 
 **modified** | Enum [0, 1] | Whether to return original or modified annotations, 0 or 1. | [optional] [default to 1]
 **after** | **integer**| If given, all results returned will be after the localization with this ID. The &#x60;start&#x60; and &#x60;stop&#x60; parameters are relative to this modified range. | [optional] 
 **search** | **character**| Lucene query syntax string for use with Elasticsearch. See &#x60;reference &lt;https://lucene.apache.org/core/2_9_4/queryparsersyntax.html&gt;&#x60;_. | [optional] 
 **attribute** | **character**| Attribute equality filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lt** | **character**| Attribute less than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lte** | **character**| Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gt** | **character**| Attribute greater than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gte** | **character**| Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.contains** | **character**| Attribute contains filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.distance** | **character**| Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2]. | [optional] 
 **attribute.null** | **character**| Attribute null filter. Returns elements for which a given attribute is not defined. | [optional] 
 **operation** | Enum [count] | Set to \&quot;count\&quot; to return a count of objects instead of the objects. | [optional] 
 **start** | **integer**| Pagination start index. Index of the first item in a larger list to return. | [optional] 
 **stop** | **integer**| Pagination start index. Non-inclusive ndex of the last item in a larger list to return. | [optional] 
 **exclude.parents** | **integer**| If a clone is present, do not send parent. (0 or 1) | [optional] [default to 0]
 **frame** | **integer**| Frame number of this localization if it is in a video. | [optional] 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful deletion of localization list. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **DeleteLocalizationType**
> MessageResponse DeleteLocalizationType(id)



Delete localization type.  A localization type is the metadata definition object for a localization. It includes shape, name, description, and may have any number of user-defined attribute types associated with it.   Note that this will also delete any localizations associated with the localization type. 

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying an localization type.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$DeleteLocalizationType(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying an localization type. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful deletion of localization type. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **DeleteMedia**
> MessageResponse DeleteMedia(id)



Delete media.  A media may be an image or a video. Media are a type of entity in Tator, meaning they can be described by user defined attributes.   

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a media.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$DeleteMedia(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a media. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful deletion of media. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **DeleteMediaList**
> MessageResponse DeleteMediaList(project, media.id=var.media.id, type=var.type, name=var.name, md5=var.md5, after=var.after, search=var.search, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop)



Delete media list.  A media may be an image or a video. Media are a type of entity in Tator, meaning they can be described by user defined attributes.   This method performs a bulk delete on all media matching a query. It is  recommended to use a GET request first to check what is being deleted. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.media.id <- list(123) # array[integer] | List of integers identifying media.
var.type <- 56 # integer | Unique integer identifying media type.
var.name <- 'name_example' # character | Name of the media to filter on.
var.md5 <- 'md5_example' # character | MD5 sum of the media file.
var.after <- 'after_example' # character | If given, all results returned will be after the file with this filename. The `start` and `stop` parameters are relative to this modified range.
var.search <- '\"My search string\"' # character | Lucene query syntax string for use with Elasticsearch. See `reference <https://lucene.apache.org/core/2_9_4/queryparsersyntax.html>`_.
var.attribute <- 'attribute_example' # character | Attribute equality filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lt <- 'attribute.lt_example' # character | Attribute less than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lte <- 'attribute.lte_example' # character | Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gt <- 'attribute.gt_example' # character | Attribute greater than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gte <- 'attribute.gte_example' # character | Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.contains <- 'attribute.contains_example' # character | Attribute contains filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.distance <- 'attribute.distance_example' # character | Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2].
var.attribute.null <- 'attribute.null_example' # character | Attribute null filter. Returns elements for which a given attribute is not defined.
var.operation <- 'operation_example' # character | Set to \"count\" to return a count of objects instead of the objects.
var.start <- 56 # integer | Pagination start index. Index of the first item in a larger list to return.
var.stop <- 56 # integer | Pagination start index. Non-inclusive ndex of the last item in a larger list to return.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$DeleteMediaList(var.project, media.id=var.media.id, type=var.type, name=var.name, md5=var.md5, after=var.after, search=var.search, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **media.id** | list( **integer** )| List of integers identifying media. | [optional] 
 **type** | **integer**| Unique integer identifying media type. | [optional] 
 **name** | **character**| Name of the media to filter on. | [optional] 
 **md5** | **character**| MD5 sum of the media file. | [optional] 
 **after** | **character**| If given, all results returned will be after the file with this filename. The &#x60;start&#x60; and &#x60;stop&#x60; parameters are relative to this modified range. | [optional] 
 **search** | **character**| Lucene query syntax string for use with Elasticsearch. See &#x60;reference &lt;https://lucene.apache.org/core/2_9_4/queryparsersyntax.html&gt;&#x60;_. | [optional] 
 **attribute** | **character**| Attribute equality filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lt** | **character**| Attribute less than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lte** | **character**| Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gt** | **character**| Attribute greater than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gte** | **character**| Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.contains** | **character**| Attribute contains filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.distance** | **character**| Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2]. | [optional] 
 **attribute.null** | **character**| Attribute null filter. Returns elements for which a given attribute is not defined. | [optional] 
 **operation** | Enum [count] | Set to \&quot;count\&quot; to return a count of objects instead of the objects. | [optional] 
 **start** | **integer**| Pagination start index. Index of the first item in a larger list to return. | [optional] 
 **stop** | **integer**| Pagination start index. Non-inclusive ndex of the last item in a larger list to return. | [optional] 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful deletion of media list. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **DeleteMediaType**
> MessageResponse DeleteMediaType(id)



Delete media type.  A media type is the metadata definition object for media. It includes file format, name, description, and may have any number of user defined attribute types associated with it.   Note that this will also delete any media associated with the media type. 

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying an media type.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$DeleteMediaType(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying an media type. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful deletion of media type. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **DeleteMembership**
> MessageResponse DeleteMembership(id)



Delete membership.  Memberships specify a permission level of a user to a project. There are currently five cumulative permission levels: - `View Only` can only view a project and not change any data. - `Can Edit` can create, modify, and delete annotations. - `Can Transfer` can upload and download media. - `Can Execute` can launch algorithm workflows. - `Full Control` can change project settings, including inviting new members, project name, and    project metadata schema. 

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a membership.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$DeleteMembership(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a membership. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful deletion of membership. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **DeleteProject**
> MessageResponse DeleteProject(id)



Delete project.  Projects are the object under which all data in Tator is grouped, including user access, metadata definitions, media, and annotations. Data does not cross boundaries between projects.   Only project owners may delete a project. Note that deleting a project will also delete all media and annotations within a project. 

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a project.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$DeleteProject(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a project. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful deletion of project. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **DeleteState**
> MessageResponse DeleteState(id)



Delete state.  A state is a description of a collection of other objects. The objects a state describes could be media (image or video), video frames, or localizations. A state referring to a collection of localizations is often referred to as a track. States are a type of entity in Tator, meaning they can be described by user defined attributes. 

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a state.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$DeleteState(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a state. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful deletion of state. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **DeleteStateList**
> MessageResponse DeleteStateList(project, media.query=var.media.query, media.id=var.media.id, type=var.type, version=var.version, modified=1, after=var.after, search=var.search, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop)



Delete state list.  A state is a description of a collection of other objects. The objects a state describes could be media (image or video), video frames, or localizations. A state referring to a collection of localizations is often referred to as a track. States are a type of entity in Tator, meaning they can be described by user defined attributes.   This method performs a bulk delete on all states matching a query. It is  recommended to use a GET request first to check what is being deleted. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.media.query <- 'media.query_example' # character | Query string used to filter media IDs. If supplied, media_id will be ignored.
var.media.id <- list(123) # array[integer] | Comma-separated list of media IDs.
var.type <- 56 # integer | Unique integer identifying a annotation type.
var.version <- list(123) # array[integer] | List of integers representing versions to fetch
var.modified <- 1 # integer | Whether to return original or modified annotations, 0 or 1.
var.after <- 56 # integer | If given, all results returned will be after the localization with this ID. The `start` and `stop` parameters are relative to this modified range.
var.search <- '\"My search string\"' # character | Lucene query syntax string for use with Elasticsearch. See `reference <https://lucene.apache.org/core/2_9_4/queryparsersyntax.html>`_.
var.attribute <- 'attribute_example' # character | Attribute equality filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lt <- 'attribute.lt_example' # character | Attribute less than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lte <- 'attribute.lte_example' # character | Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gt <- 'attribute.gt_example' # character | Attribute greater than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gte <- 'attribute.gte_example' # character | Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.contains <- 'attribute.contains_example' # character | Attribute contains filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.distance <- 'attribute.distance_example' # character | Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2].
var.attribute.null <- 'attribute.null_example' # character | Attribute null filter. Returns elements for which a given attribute is not defined.
var.operation <- 'operation_example' # character | Set to \"count\" to return a count of objects instead of the objects.
var.start <- 56 # integer | Pagination start index. Index of the first item in a larger list to return.
var.stop <- 56 # integer | Pagination start index. Non-inclusive ndex of the last item in a larger list to return.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$DeleteStateList(var.project, media.query=var.media.query, media.id=var.media.id, type=var.type, version=var.version, modified=var.modified, after=var.after, search=var.search, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **media.query** | **character**| Query string used to filter media IDs. If supplied, media_id will be ignored. | [optional] 
 **media.id** | list( **integer** )| Comma-separated list of media IDs. | [optional] 
 **type** | **integer**| Unique integer identifying a annotation type. | [optional] 
 **version** | list( **integer** )| List of integers representing versions to fetch | [optional] 
 **modified** | Enum [0, 1] | Whether to return original or modified annotations, 0 or 1. | [optional] [default to 1]
 **after** | **integer**| If given, all results returned will be after the localization with this ID. The &#x60;start&#x60; and &#x60;stop&#x60; parameters are relative to this modified range. | [optional] 
 **search** | **character**| Lucene query syntax string for use with Elasticsearch. See &#x60;reference &lt;https://lucene.apache.org/core/2_9_4/queryparsersyntax.html&gt;&#x60;_. | [optional] 
 **attribute** | **character**| Attribute equality filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lt** | **character**| Attribute less than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lte** | **character**| Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gt** | **character**| Attribute greater than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gte** | **character**| Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.contains** | **character**| Attribute contains filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.distance** | **character**| Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2]. | [optional] 
 **attribute.null** | **character**| Attribute null filter. Returns elements for which a given attribute is not defined. | [optional] 
 **operation** | Enum [count] | Set to \&quot;count\&quot; to return a count of objects instead of the objects. | [optional] 
 **start** | **integer**| Pagination start index. Index of the first item in a larger list to return. | [optional] 
 **stop** | **integer**| Pagination start index. Non-inclusive ndex of the last item in a larger list to return. | [optional] 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful deletion of state list. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **DeleteStateType**
> MessageResponse DeleteStateType(id)



Delete state type.  A state type is the metadata definition object for a state. It includes association type, name, description, and may have any number of user-defined attribute types associated with it.   Note that this will also delete any states associated with the state type. 

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a state type.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$DeleteStateType(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a state type. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful deletion of state type. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **DeleteTemporaryFile**
> MessageResponse DeleteTemporaryFile(id)



Delete temporary file.  Temporary files are files stored server side for a defined duration. 

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a temporary file.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$DeleteTemporaryFile(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a temporary file. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful deletion of temporary file. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **DeleteTemporaryFileList**
> DeleteTemporaryFileList(project, expired=0)



Delete temporary file list.  Temporary files are files stored server side for a defined duration.   

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.expired <- 0 # integer | If greater than 0 will return only expired files

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$DeleteTemporaryFileList(var.project, expired=var.expired)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **expired** | **integer**| If greater than 0 will return only expired files | [optional] [default to 0]

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **DeleteVersion**
> MessageResponse DeleteVersion(id)



Delete version.  Versions allow for multiple \"layers\" of annotations on the same media. Versions are created at the project level, but are only displayed for a given media if that media contains annotations in that version. The version of an annotation can be set by providing it in a POST operation. Currently only localizations and states can have versions.  Versions are used in conjunction with the `modified` flag to determine whether an annotation should be displayed for a given media while annotating.   Note that this will also delete any localizations or states associated with the deleted version. 

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a version.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$DeleteVersion(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a version. | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful deletion of version. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetAlgorithmList**
> array[Algorithm] GetAlgorithmList(project)



Get algorithms.  Algorithms must be registered to a project as an argo workflow. For  instructions on how to register an algorithm, see the documentation:   <https://github.com/cvisionai/tator/tree/master/examples/algorithms> 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetAlgorithmList(var.project)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 

### Return type

[**array[Algorithm]**](Algorithm.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of registered algorithms. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetAnalysisList**
> array[Analysis] GetAnalysisList(project)



Get analysis.  Analysis objects are used to display information about filtered media lists and/or annotations on the project detail page of the web UI. Currently only counting analysis is supported. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetAnalysisList(var.project)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 

### Return type

[**array[Analysis]**](Analysis.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of analyses. |  -  |
| **400** | Bad request. |  -  |
| **404** | Failure to find project with given ID. |  -  |

# **GetClip**
> TemporaryFile GetClip(id, frame.ranges, quality=var.quality)



Get video clip.  Facility to get a clip from the server. Returns a temporary file object that expires in 24 hours. 

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a media object.
var.frame.ranges <- list("inner_example") # array[character] | Comma-seperated list of frame ranges to capture.
var.quality <- 56 # integer | Source resolution to use (default to highest quality)

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetClip(var.id, var.frame.ranges, quality=var.quality)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a media object. | 
 **frame.ranges** | list( **character** )| Comma-seperated list of frame ranges to capture. | 
 **quality** | **integer**| Source resolution to use (default to highest quality) | [optional] 

### Return type

[**TemporaryFile**](TemporaryFile.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of video clip. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetFrame**
> data.frame GetFrame(id, frames=[0], tile=var.tile, roi=var.roi, animate=var.animate, quality=var.quality)



Get frame(s) from a video.  Facility to get a frame(jpg/png) of a given video frame, returns a square tile of frames based on the input parameter. 

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a media object.
var.frames <- list(123) # array[integer] | Comma-seperated list of frames to capture.
var.tile <- 'tile_example' # character | wxh, if not supplied is made as squarish as possible.
var.roi <- 'roi_example' # character | w:h:x:y, optionally crop each frame to a given roi in relative coordinates.
var.animate <- 56 # integer | If not tiling, animate each frame at a given fps in a gif.
var.quality <- 56 # integer | Source resolution to use (default to highest quality)

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetFrame(var.id, frames=var.frames, tile=var.tile, roi=var.roi, animate=var.animate, quality=var.quality)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a media object. | 
 **frames** | list( **integer** )| Comma-seperated list of frames to capture. | [optional] [default to [0]]
 **tile** | **character**| wxh, if not supplied is made as squarish as possible. | [optional] 
 **roi** | **character**| w:h:x:y, optionally crop each frame to a given roi in relative coordinates. | [optional] 
 **animate** | **integer**| If not tiling, animate each frame at a given fps in a gif. | [optional] 
 **quality** | **integer**| Source resolution to use (default to highest quality) | [optional] 

### Return type

**data.frame**

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/*

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of frame image. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetLeaf**
> Leaf GetLeaf(id)



Get leaf.  Leaves are used to define label hierarchies that can be used for autocompletion of string attribute types. Leaves are a type of entity in Tator, meaning they can be described by user-defined attributes. 

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a leaf.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetLeaf(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a leaf. | 

### Return type

[**Leaf**](Leaf.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of leaf. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetLeafList**
> array[Leaf] GetLeafList(project, ancestor=var.ancestor, type=var.type, name=var.name, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop)



Get leaf list.  Leaves are used to define label hierarchies that can be used for autocompletion of string attribute types. Leaves are a type of entity in Tator, meaning they can be described by user-defined attributes.   

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.ancestor <- 'ancestor_example' # character | Get descendents of a leaf element (inclusive), by path (i.e. ITIS.Animalia).
var.type <- 56 # integer | Unique integer identifying a leaf type.
var.name <- 'name_example' # character | Name of the leaf element.
var.attribute <- 'attribute_example' # character | Attribute equality filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lt <- 'attribute.lt_example' # character | Attribute less than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lte <- 'attribute.lte_example' # character | Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gt <- 'attribute.gt_example' # character | Attribute greater than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gte <- 'attribute.gte_example' # character | Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.contains <- 'attribute.contains_example' # character | Attribute contains filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.distance <- 'attribute.distance_example' # character | Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2].
var.attribute.null <- 'attribute.null_example' # character | Attribute null filter. Returns elements for which a given attribute is not defined.
var.operation <- 'operation_example' # character | Set to \"count\" to return a count of objects instead of the objects.
var.start <- 56 # integer | Pagination start index. Index of the first item in a larger list to return.
var.stop <- 56 # integer | Pagination start index. Non-inclusive ndex of the last item in a larger list to return.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetLeafList(var.project, ancestor=var.ancestor, type=var.type, name=var.name, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **ancestor** | **character**| Get descendents of a leaf element (inclusive), by path (i.e. ITIS.Animalia). | [optional] 
 **type** | **integer**| Unique integer identifying a leaf type. | [optional] 
 **name** | **character**| Name of the leaf element. | [optional] 
 **attribute** | **character**| Attribute equality filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lt** | **character**| Attribute less than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lte** | **character**| Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gt** | **character**| Attribute greater than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gte** | **character**| Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.contains** | **character**| Attribute contains filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.distance** | **character**| Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2]. | [optional] 
 **attribute.null** | **character**| Attribute null filter. Returns elements for which a given attribute is not defined. | [optional] 
 **operation** | Enum [count] | Set to \&quot;count\&quot; to return a count of objects instead of the objects. | [optional] 
 **start** | **integer**| Pagination start index. Index of the first item in a larger list to return. | [optional] 
 **stop** | **integer**| Pagination start index. Non-inclusive ndex of the last item in a larger list to return. | [optional] 

### Return type

[**array[Leaf]**](Leaf.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of leaf list. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetLeafType**
> LeafType GetLeafType(id)



Get leaf type.  A leaf type is the metadata definition object for a leaf. It includes name, description, and may have any number of user-defined attribute types associated with it. 

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying an leaf type.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetLeafType(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying an leaf type. | 

### Return type

[**LeafType**](LeafType.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of leaf type. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetLeafTypeList**
> array[LeafType] GetLeafTypeList(project)



Get leaf type list.  A leaf type is the metadata definition object for a leaf. It includes name, description, and may have any number of user-defined attribute types associated with it. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetLeafTypeList(var.project)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 

### Return type

[**array[LeafType]**](LeafType.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of leaf type list. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetLocalization**
> Localization GetLocalization(id)



Get localization.  Localizations are shape annotations drawn on a video or image. Available shapes (`dtype`) are  box, line, or dot. Each shape is parameterized by a different subset of data members: - `box` uses `x`, `y`, `width`, `height`. - `line` uses `x`, `y`, `u`, `v`. - `dot` uses `x` and `y`.  Geometry members may be left null when creating a localization, in which case the shapes may be  drawn later using the redraw capability in the web UI. Localizations are a type of entity in Tator, meaning they can be described by user defined attributes. 

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a localization.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetLocalization(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a localization. | 

### Return type

[**Localization**](Localization.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of localization. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetLocalizationList**
> array[Localization] GetLocalizationList(project, media.query=var.media.query, media.id=var.media.id, type=var.type, version=var.version, modified=1, after=var.after, search=var.search, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop, exclude.parents=0, frame=var.frame)



Get localization list.  Localizations are shape annotations drawn on a video or image. Available shapes (`dtype`) are  box, line, or dot. Each shape is parameterized by a different subset of data members: - `box` uses `x`, `y`, `width`, `height`. - `line` uses `x`, `y`, `u`, `v`. - `dot` uses `x` and `y`.  Geometry members may be left null when creating a localization, in which case the shapes may be  drawn later using the redraw capability in the web UI. Localizations are a type of entity in Tator, meaning they can be described by user defined attributes.   

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.media.query <- 'media.query_example' # character | Query string used to filter media IDs. If supplied, media_id will be ignored.
var.media.id <- list(123) # array[integer] | Comma-separated list of media IDs.
var.type <- 56 # integer | Unique integer identifying a annotation type.
var.version <- list(123) # array[integer] | List of integers representing versions to fetch
var.modified <- 1 # integer | Whether to return original or modified annotations, 0 or 1.
var.after <- 56 # integer | If given, all results returned will be after the localization with this ID. The `start` and `stop` parameters are relative to this modified range.
var.search <- '\"My search string\"' # character | Lucene query syntax string for use with Elasticsearch. See `reference <https://lucene.apache.org/core/2_9_4/queryparsersyntax.html>`_.
var.attribute <- 'attribute_example' # character | Attribute equality filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lt <- 'attribute.lt_example' # character | Attribute less than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lte <- 'attribute.lte_example' # character | Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gt <- 'attribute.gt_example' # character | Attribute greater than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gte <- 'attribute.gte_example' # character | Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.contains <- 'attribute.contains_example' # character | Attribute contains filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.distance <- 'attribute.distance_example' # character | Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2].
var.attribute.null <- 'attribute.null_example' # character | Attribute null filter. Returns elements for which a given attribute is not defined.
var.operation <- 'operation_example' # character | Set to \"count\" to return a count of objects instead of the objects.
var.start <- 56 # integer | Pagination start index. Index of the first item in a larger list to return.
var.stop <- 56 # integer | Pagination start index. Non-inclusive ndex of the last item in a larger list to return.
var.exclude.parents <- 0 # integer | If a clone is present, do not send parent. (0 or 1)
var.frame <- 56 # integer | Frame number of this localization if it is in a video.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetLocalizationList(var.project, media.query=var.media.query, media.id=var.media.id, type=var.type, version=var.version, modified=var.modified, after=var.after, search=var.search, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop, exclude.parents=var.exclude.parents, frame=var.frame)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **media.query** | **character**| Query string used to filter media IDs. If supplied, media_id will be ignored. | [optional] 
 **media.id** | list( **integer** )| Comma-separated list of media IDs. | [optional] 
 **type** | **integer**| Unique integer identifying a annotation type. | [optional] 
 **version** | list( **integer** )| List of integers representing versions to fetch | [optional] 
 **modified** | Enum [0, 1] | Whether to return original or modified annotations, 0 or 1. | [optional] [default to 1]
 **after** | **integer**| If given, all results returned will be after the localization with this ID. The &#x60;start&#x60; and &#x60;stop&#x60; parameters are relative to this modified range. | [optional] 
 **search** | **character**| Lucene query syntax string for use with Elasticsearch. See &#x60;reference &lt;https://lucene.apache.org/core/2_9_4/queryparsersyntax.html&gt;&#x60;_. | [optional] 
 **attribute** | **character**| Attribute equality filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lt** | **character**| Attribute less than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lte** | **character**| Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gt** | **character**| Attribute greater than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gte** | **character**| Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.contains** | **character**| Attribute contains filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.distance** | **character**| Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2]. | [optional] 
 **attribute.null** | **character**| Attribute null filter. Returns elements for which a given attribute is not defined. | [optional] 
 **operation** | Enum [count] | Set to \&quot;count\&quot; to return a count of objects instead of the objects. | [optional] 
 **start** | **integer**| Pagination start index. Index of the first item in a larger list to return. | [optional] 
 **stop** | **integer**| Pagination start index. Non-inclusive ndex of the last item in a larger list to return. | [optional] 
 **exclude.parents** | **integer**| If a clone is present, do not send parent. (0 or 1) | [optional] [default to 0]
 **frame** | **integer**| Frame number of this localization if it is in a video. | [optional] 

### Return type

[**array[Localization]**](Localization.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of localization list. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetLocalizationType**
> LocalizationType GetLocalizationType(id)



Get localization type.  A localization type is the metadata definition object for a localization. It includes shape, name, description, and may have any number of user-defined attribute types associated with it.   

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying an localization type.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetLocalizationType(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying an localization type. | 

### Return type

[**LocalizationType**](LocalizationType.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of localization type. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetLocalizationTypeList**
> array[LocalizationType] GetLocalizationTypeList(project, media.id=var.media.id, type=var.type)



Get localization type list.  A localization type is the metadata definition object for a localization. It includes shape, name, description, and may have any number of user-defined attribute types associated with it. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.media.id <- list(123) # array[integer] | List of unique integers identifying a media.
var.type <- 56 # integer | Deprecated. Use `LocalizationType` endpoint to retrieve individual localization type by ID.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetLocalizationTypeList(var.project, media.id=var.media.id, type=var.type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **media.id** | list( **integer** )| List of unique integers identifying a media. | [optional] 
 **type** | **integer**| Deprecated. Use &#x60;LocalizationType&#x60; endpoint to retrieve individual localization type by ID. | [optional] 

### Return type

[**array[LocalizationType]**](LocalizationType.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of localization type list. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetMedia**
> Media GetMedia(id)



Get media.  A media may be an image or a video. Media are a type of entity in Tator, meaning they can be described by user defined attributes.   

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a media.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetMedia(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a media. | 

### Return type

[**Media**](Media.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of media. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetMediaList**
> array[Media] GetMediaList(project, media.id=var.media.id, type=var.type, name=var.name, md5=var.md5, after=var.after, search=var.search, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop)



Get media list.  A media may be an image or a video. Media are a type of entity in Tator, meaning they can be described by user defined attributes.   

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.media.id <- list(123) # array[integer] | List of integers identifying media.
var.type <- 56 # integer | Unique integer identifying media type.
var.name <- 'name_example' # character | Name of the media to filter on.
var.md5 <- 'md5_example' # character | MD5 sum of the media file.
var.after <- 'after_example' # character | If given, all results returned will be after the file with this filename. The `start` and `stop` parameters are relative to this modified range.
var.search <- '\"My search string\"' # character | Lucene query syntax string for use with Elasticsearch. See `reference <https://lucene.apache.org/core/2_9_4/queryparsersyntax.html>`_.
var.attribute <- 'attribute_example' # character | Attribute equality filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lt <- 'attribute.lt_example' # character | Attribute less than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lte <- 'attribute.lte_example' # character | Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gt <- 'attribute.gt_example' # character | Attribute greater than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gte <- 'attribute.gte_example' # character | Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.contains <- 'attribute.contains_example' # character | Attribute contains filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.distance <- 'attribute.distance_example' # character | Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2].
var.attribute.null <- 'attribute.null_example' # character | Attribute null filter. Returns elements for which a given attribute is not defined.
var.operation <- 'operation_example' # character | Set to \"count\" to return a count of objects instead of the objects.
var.start <- 56 # integer | Pagination start index. Index of the first item in a larger list to return.
var.stop <- 56 # integer | Pagination start index. Non-inclusive ndex of the last item in a larger list to return.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetMediaList(var.project, media.id=var.media.id, type=var.type, name=var.name, md5=var.md5, after=var.after, search=var.search, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **media.id** | list( **integer** )| List of integers identifying media. | [optional] 
 **type** | **integer**| Unique integer identifying media type. | [optional] 
 **name** | **character**| Name of the media to filter on. | [optional] 
 **md5** | **character**| MD5 sum of the media file. | [optional] 
 **after** | **character**| If given, all results returned will be after the file with this filename. The &#x60;start&#x60; and &#x60;stop&#x60; parameters are relative to this modified range. | [optional] 
 **search** | **character**| Lucene query syntax string for use with Elasticsearch. See &#x60;reference &lt;https://lucene.apache.org/core/2_9_4/queryparsersyntax.html&gt;&#x60;_. | [optional] 
 **attribute** | **character**| Attribute equality filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lt** | **character**| Attribute less than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lte** | **character**| Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gt** | **character**| Attribute greater than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gte** | **character**| Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.contains** | **character**| Attribute contains filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.distance** | **character**| Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2]. | [optional] 
 **attribute.null** | **character**| Attribute null filter. Returns elements for which a given attribute is not defined. | [optional] 
 **operation** | Enum [count] | Set to \&quot;count\&quot; to return a count of objects instead of the objects. | [optional] 
 **start** | **integer**| Pagination start index. Index of the first item in a larger list to return. | [optional] 
 **stop** | **integer**| Pagination start index. Non-inclusive ndex of the last item in a larger list to return. | [optional] 

### Return type

[**array[Media]**](Media.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of media list. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetMediaNext**
> MediaNext GetMediaNext(id, media.id=var.media.id, type=var.type, name=var.name, md5=var.md5, after=var.after, search=var.search, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop)



Retrieve ID of next media in a media list.  This endpoint accepts the same query parameters as a GET request to the `Medias` endpoint, but only returns the next media ID from the media passed as a path parameter. This allows iteration through a media list without serializing the entire list, which may be large. 

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a media object.
var.media.id <- list(123) # array[integer] | List of integers identifying media.
var.type <- 56 # integer | Unique integer identifying media type.
var.name <- 'name_example' # character | Name of the media to filter on.
var.md5 <- 'md5_example' # character | MD5 sum of the media file.
var.after <- 'after_example' # character | If given, all results returned will be after the file with this filename. The `start` and `stop` parameters are relative to this modified range.
var.search <- '\"My search string\"' # character | Lucene query syntax string for use with Elasticsearch. See `reference <https://lucene.apache.org/core/2_9_4/queryparsersyntax.html>`_.
var.attribute <- 'attribute_example' # character | Attribute equality filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lt <- 'attribute.lt_example' # character | Attribute less than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lte <- 'attribute.lte_example' # character | Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gt <- 'attribute.gt_example' # character | Attribute greater than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gte <- 'attribute.gte_example' # character | Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.contains <- 'attribute.contains_example' # character | Attribute contains filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.distance <- 'attribute.distance_example' # character | Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2].
var.attribute.null <- 'attribute.null_example' # character | Attribute null filter. Returns elements for which a given attribute is not defined.
var.operation <- 'operation_example' # character | Set to \"count\" to return a count of objects instead of the objects.
var.start <- 56 # integer | Pagination start index. Index of the first item in a larger list to return.
var.stop <- 56 # integer | Pagination start index. Non-inclusive ndex of the last item in a larger list to return.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetMediaNext(var.id, media.id=var.media.id, type=var.type, name=var.name, md5=var.md5, after=var.after, search=var.search, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a media object. | 
 **media.id** | list( **integer** )| List of integers identifying media. | [optional] 
 **type** | **integer**| Unique integer identifying media type. | [optional] 
 **name** | **character**| Name of the media to filter on. | [optional] 
 **md5** | **character**| MD5 sum of the media file. | [optional] 
 **after** | **character**| If given, all results returned will be after the file with this filename. The &#x60;start&#x60; and &#x60;stop&#x60; parameters are relative to this modified range. | [optional] 
 **search** | **character**| Lucene query syntax string for use with Elasticsearch. See &#x60;reference &lt;https://lucene.apache.org/core/2_9_4/queryparsersyntax.html&gt;&#x60;_. | [optional] 
 **attribute** | **character**| Attribute equality filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lt** | **character**| Attribute less than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lte** | **character**| Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gt** | **character**| Attribute greater than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gte** | **character**| Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.contains** | **character**| Attribute contains filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.distance** | **character**| Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2]. | [optional] 
 **attribute.null** | **character**| Attribute null filter. Returns elements for which a given attribute is not defined. | [optional] 
 **operation** | Enum [count] | Set to \&quot;count\&quot; to return a count of objects instead of the objects. | [optional] 
 **start** | **integer**| Pagination start index. Index of the first item in a larger list to return. | [optional] 
 **stop** | **integer**| Pagination start index. Non-inclusive ndex of the last item in a larger list to return. | [optional] 

### Return type

[**MediaNext**](MediaNext.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | ID of next media in the list corresponding to query. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetMediaPrev**
> MediaPrev GetMediaPrev(id, media.id=var.media.id, type=var.type, name=var.name, md5=var.md5, after=var.after, search=var.search, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop)



Retrieve ID of previous media in a media list.  This endpoint accepts the same query parameters as a GET request to the `Medias` endpoint, but only returns the previous media ID from the media passed as a path parameter. This  allows iteration through a media list without serializing the entire list, which may be  large. 

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a media object.
var.media.id <- list(123) # array[integer] | List of integers identifying media.
var.type <- 56 # integer | Unique integer identifying media type.
var.name <- 'name_example' # character | Name of the media to filter on.
var.md5 <- 'md5_example' # character | MD5 sum of the media file.
var.after <- 'after_example' # character | If given, all results returned will be after the file with this filename. The `start` and `stop` parameters are relative to this modified range.
var.search <- '\"My search string\"' # character | Lucene query syntax string for use with Elasticsearch. See `reference <https://lucene.apache.org/core/2_9_4/queryparsersyntax.html>`_.
var.attribute <- 'attribute_example' # character | Attribute equality filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lt <- 'attribute.lt_example' # character | Attribute less than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lte <- 'attribute.lte_example' # character | Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gt <- 'attribute.gt_example' # character | Attribute greater than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gte <- 'attribute.gte_example' # character | Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.contains <- 'attribute.contains_example' # character | Attribute contains filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.distance <- 'attribute.distance_example' # character | Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2].
var.attribute.null <- 'attribute.null_example' # character | Attribute null filter. Returns elements for which a given attribute is not defined.
var.operation <- 'operation_example' # character | Set to \"count\" to return a count of objects instead of the objects.
var.start <- 56 # integer | Pagination start index. Index of the first item in a larger list to return.
var.stop <- 56 # integer | Pagination start index. Non-inclusive ndex of the last item in a larger list to return.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetMediaPrev(var.id, media.id=var.media.id, type=var.type, name=var.name, md5=var.md5, after=var.after, search=var.search, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a media object. | 
 **media.id** | list( **integer** )| List of integers identifying media. | [optional] 
 **type** | **integer**| Unique integer identifying media type. | [optional] 
 **name** | **character**| Name of the media to filter on. | [optional] 
 **md5** | **character**| MD5 sum of the media file. | [optional] 
 **after** | **character**| If given, all results returned will be after the file with this filename. The &#x60;start&#x60; and &#x60;stop&#x60; parameters are relative to this modified range. | [optional] 
 **search** | **character**| Lucene query syntax string for use with Elasticsearch. See &#x60;reference &lt;https://lucene.apache.org/core/2_9_4/queryparsersyntax.html&gt;&#x60;_. | [optional] 
 **attribute** | **character**| Attribute equality filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lt** | **character**| Attribute less than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lte** | **character**| Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gt** | **character**| Attribute greater than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gte** | **character**| Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.contains** | **character**| Attribute contains filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.distance** | **character**| Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2]. | [optional] 
 **attribute.null** | **character**| Attribute null filter. Returns elements for which a given attribute is not defined. | [optional] 
 **operation** | Enum [count] | Set to \&quot;count\&quot; to return a count of objects instead of the objects. | [optional] 
 **start** | **integer**| Pagination start index. Index of the first item in a larger list to return. | [optional] 
 **stop** | **integer**| Pagination start index. Non-inclusive ndex of the last item in a larger list to return. | [optional] 

### Return type

[**MediaPrev**](MediaPrev.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | ID of previous media in the list corresponding to query. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetMediaSections**
> map(object) GetMediaSections(project, media.id=var.media.id, type=var.type, name=var.name, md5=var.md5, after=var.after, search=var.search, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop)



Retrieve media counts by section.  This endpoint accepts the same query parameters as a GET request to the `Medias` endpoint, but only returns the number of images and videos per sections. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.media.id <- list(123) # array[integer] | List of integers identifying media.
var.type <- 56 # integer | Unique integer identifying media type.
var.name <- 'name_example' # character | Name of the media to filter on.
var.md5 <- 'md5_example' # character | MD5 sum of the media file.
var.after <- 'after_example' # character | If given, all results returned will be after the file with this filename. The `start` and `stop` parameters are relative to this modified range.
var.search <- '\"My search string\"' # character | Lucene query syntax string for use with Elasticsearch. See `reference <https://lucene.apache.org/core/2_9_4/queryparsersyntax.html>`_.
var.attribute <- 'attribute_example' # character | Attribute equality filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lt <- 'attribute.lt_example' # character | Attribute less than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lte <- 'attribute.lte_example' # character | Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gt <- 'attribute.gt_example' # character | Attribute greater than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gte <- 'attribute.gte_example' # character | Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.contains <- 'attribute.contains_example' # character | Attribute contains filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.distance <- 'attribute.distance_example' # character | Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2].
var.attribute.null <- 'attribute.null_example' # character | Attribute null filter. Returns elements for which a given attribute is not defined.
var.operation <- 'operation_example' # character | Set to \"count\" to return a count of objects instead of the objects.
var.start <- 56 # integer | Pagination start index. Index of the first item in a larger list to return.
var.stop <- 56 # integer | Pagination start index. Non-inclusive ndex of the last item in a larger list to return.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetMediaSections(var.project, media.id=var.media.id, type=var.type, name=var.name, md5=var.md5, after=var.after, search=var.search, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **media.id** | list( **integer** )| List of integers identifying media. | [optional] 
 **type** | **integer**| Unique integer identifying media type. | [optional] 
 **name** | **character**| Name of the media to filter on. | [optional] 
 **md5** | **character**| MD5 sum of the media file. | [optional] 
 **after** | **character**| If given, all results returned will be after the file with this filename. The &#x60;start&#x60; and &#x60;stop&#x60; parameters are relative to this modified range. | [optional] 
 **search** | **character**| Lucene query syntax string for use with Elasticsearch. See &#x60;reference &lt;https://lucene.apache.org/core/2_9_4/queryparsersyntax.html&gt;&#x60;_. | [optional] 
 **attribute** | **character**| Attribute equality filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lt** | **character**| Attribute less than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lte** | **character**| Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gt** | **character**| Attribute greater than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gte** | **character**| Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.contains** | **character**| Attribute contains filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.distance** | **character**| Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2]. | [optional] 
 **attribute.null** | **character**| Attribute null filter. Returns elements for which a given attribute is not defined. | [optional] 
 **operation** | Enum [count] | Set to \&quot;count\&quot; to return a count of objects instead of the objects. | [optional] 
 **start** | **integer**| Pagination start index. Index of the first item in a larger list to return. | [optional] 
 **stop** | **integer**| Pagination start index. Non-inclusive ndex of the last item in a larger list to return. | [optional] 

### Return type

**map(object)**

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of media count per section. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetMediaType**
> MediaType GetMediaType(id)



Get media type.  A media type is the metadata definition object for media. It includes file format, name, description, and may have any number of user defined attribute types associated with it.   

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying an media type.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetMediaType(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying an media type. | 

### Return type

[**MediaType**](MediaType.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of media type. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetMediaTypeList**
> array[MediaType] GetMediaTypeList(project)



Get media type list.  A media type is the metadata definition object for media. It includes file format, name, description, and may have any number of user defined attribute types associated with it. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetMediaTypeList(var.project)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 

### Return type

[**array[MediaType]**](MediaType.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of media type list. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetMembership**
> Membership GetMembership(id)



Get membership.  Memberships specify a permission level of a user to a project. There are currently five cumulative permission levels: - `View Only` can only view a project and not change any data. - `Can Edit` can create, modify, and delete annotations. - `Can Transfer` can upload and download media. - `Can Execute` can launch algorithm workflows. - `Full Control` can change project settings, including inviting new members, project name, and    project metadata schema. 

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a membership.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetMembership(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a membership. | 

### Return type

[**Membership**](Membership.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of membership. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetMembershipList**
> array[Membership] GetMembershipList(project)



Get membership list.  Memberships specify a permission level of a user to a project. There are currently five cumulative permission levels: - `View Only` can only view a project and not change any data. - `Can Edit` can create, modify, and delete annotations. - `Can Transfer` can upload and download media. - `Can Execute` can launch algorithm workflows. - `Full Control` can change project settings, including inviting new members, project name, and    project metadata schema. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetMembershipList(var.project)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 

### Return type

[**array[Membership]**](Membership.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of membership list. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetProject**
> Project GetProject(id)



Get project.  Projects are the object under which all data in Tator is grouped, including user access, metadata definitions, media, and annotations. Data does not cross boundaries between projects.   

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a project.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetProject(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a project. | 

### Return type

[**Project**](Project.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of project. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetProjectList**
> array[Project] GetProjectList()



Get project list.  Projects are the object under which all data in Tator is grouped, including user access, metadata definitions, media, and annotations. Data does not cross boundaries between projects.   Returns all projects that a user has access to.

### Example
```R
library(tator)


api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetProjectList()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[Project]**](Project.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of project list. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetSectionAnalysis**
> map(AnyType) GetSectionAnalysis(project, media.id=var.media.id, search=var.search, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop)



Retrieve analysis results for a media list.  This endpoint uses objects created with the `Analysis` endpoint to perform analysis on filtered media lists. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.media.id <- list(123) # array[integer] | Unique integer identifying a media. Use this to do analyis on a single file instead of sections.
var.search <- '\"My search string\"' # character | Lucene query syntax string for use with Elasticsearch. See `reference <https://lucene.apache.org/core/2_9_4/queryparsersyntax.html>`_.
var.attribute <- 'attribute_example' # character | Attribute equality filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lt <- 'attribute.lt_example' # character | Attribute less than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lte <- 'attribute.lte_example' # character | Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gt <- 'attribute.gt_example' # character | Attribute greater than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gte <- 'attribute.gte_example' # character | Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.contains <- 'attribute.contains_example' # character | Attribute contains filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.distance <- 'attribute.distance_example' # character | Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2].
var.attribute.null <- 'attribute.null_example' # character | Attribute null filter. Returns elements for which a given attribute is not defined.
var.operation <- 'operation_example' # character | Set to \"count\" to return a count of objects instead of the objects.
var.start <- 56 # integer | Pagination start index. Index of the first item in a larger list to return.
var.stop <- 56 # integer | Pagination start index. Non-inclusive ndex of the last item in a larger list to return.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetSectionAnalysis(var.project, media.id=var.media.id, search=var.search, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **media.id** | list( **integer** )| Unique integer identifying a media. Use this to do analyis on a single file instead of sections. | [optional] 
 **search** | **character**| Lucene query syntax string for use with Elasticsearch. See &#x60;reference &lt;https://lucene.apache.org/core/2_9_4/queryparsersyntax.html&gt;&#x60;_. | [optional] 
 **attribute** | **character**| Attribute equality filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lt** | **character**| Attribute less than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lte** | **character**| Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gt** | **character**| Attribute greater than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gte** | **character**| Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.contains** | **character**| Attribute contains filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.distance** | **character**| Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2]. | [optional] 
 **attribute.null** | **character**| Attribute null filter. Returns elements for which a given attribute is not defined. | [optional] 
 **operation** | Enum [count] | Set to \&quot;count\&quot; to return a count of objects instead of the objects. | [optional] 
 **start** | **integer**| Pagination start index. Index of the first item in a larger list to return. | [optional] 
 **stop** | **integer**| Pagination start index. Non-inclusive ndex of the last item in a larger list to return. | [optional] 

### Return type

[**map(AnyType)**](AnyType.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of section analysis. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetState**
> State GetState(id)



Get state.  A state is a description of a collection of other objects. The objects a state describes could be media (image or video), video frames, or localizations. A state referring to a collection of localizations is often referred to as a track. States are a type of entity in Tator, meaning they can be described by user defined attributes. 

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a state.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetState(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a state. | 

### Return type

[**State**](State.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of state. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetStateGraphic**
> data.frame GetStateGraphic(id, mode='animate', fps=2, force.scale=var.force.scale)



 Get frame(s) of a given localization-associated state.  Use the mode argument to control whether it is an animated gif or a tiled jpg. 

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a state.
var.mode <- 'animate' # character | Whether to animate or tile.
var.fps <- 2 # numeric | Frame rate if `mode` is `animate`.
var.force.scale <- '240x240' # character | wxh to force each tile prior to stich

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetStateGraphic(var.id, mode=var.mode, fps=var.fps, force.scale=var.force.scale)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a state. | 
 **mode** | Enum [animate, tile] | Whether to animate or tile. | [optional] [default to &#39;animate&#39;]
 **fps** | **numeric**| Frame rate if &#x60;mode&#x60; is &#x60;animate&#x60;. | [optional] [default to 2]
 **force.scale** | **character**| wxh to force each tile prior to stich | [optional] 

### Return type

**data.frame**

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/*

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of state graphic. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetStateList**
> array[State] GetStateList(project, media.query=var.media.query, media.id=var.media.id, type=var.type, version=var.version, modified=1, after=var.after, search=var.search, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop)



Get state list.  A state is a description of a collection of other objects. The objects a state describes could be media (image or video), video frames, or localizations. A state referring to a collection of localizations is often referred to as a track. States are a type of entity in Tator, meaning they can be described by user defined attributes.   

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.media.query <- 'media.query_example' # character | Query string used to filter media IDs. If supplied, media_id will be ignored.
var.media.id <- list(123) # array[integer] | Comma-separated list of media IDs.
var.type <- 56 # integer | Unique integer identifying a annotation type.
var.version <- list(123) # array[integer] | List of integers representing versions to fetch
var.modified <- 1 # integer | Whether to return original or modified annotations, 0 or 1.
var.after <- 56 # integer | If given, all results returned will be after the localization with this ID. The `start` and `stop` parameters are relative to this modified range.
var.search <- '\"My search string\"' # character | Lucene query syntax string for use with Elasticsearch. See `reference <https://lucene.apache.org/core/2_9_4/queryparsersyntax.html>`_.
var.attribute <- 'attribute_example' # character | Attribute equality filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lt <- 'attribute.lt_example' # character | Attribute less than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lte <- 'attribute.lte_example' # character | Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gt <- 'attribute.gt_example' # character | Attribute greater than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gte <- 'attribute.gte_example' # character | Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.contains <- 'attribute.contains_example' # character | Attribute contains filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.distance <- 'attribute.distance_example' # character | Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2].
var.attribute.null <- 'attribute.null_example' # character | Attribute null filter. Returns elements for which a given attribute is not defined.
var.operation <- 'operation_example' # character | Set to \"count\" to return a count of objects instead of the objects.
var.start <- 56 # integer | Pagination start index. Index of the first item in a larger list to return.
var.stop <- 56 # integer | Pagination start index. Non-inclusive ndex of the last item in a larger list to return.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetStateList(var.project, media.query=var.media.query, media.id=var.media.id, type=var.type, version=var.version, modified=var.modified, after=var.after, search=var.search, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **media.query** | **character**| Query string used to filter media IDs. If supplied, media_id will be ignored. | [optional] 
 **media.id** | list( **integer** )| Comma-separated list of media IDs. | [optional] 
 **type** | **integer**| Unique integer identifying a annotation type. | [optional] 
 **version** | list( **integer** )| List of integers representing versions to fetch | [optional] 
 **modified** | Enum [0, 1] | Whether to return original or modified annotations, 0 or 1. | [optional] [default to 1]
 **after** | **integer**| If given, all results returned will be after the localization with this ID. The &#x60;start&#x60; and &#x60;stop&#x60; parameters are relative to this modified range. | [optional] 
 **search** | **character**| Lucene query syntax string for use with Elasticsearch. See &#x60;reference &lt;https://lucene.apache.org/core/2_9_4/queryparsersyntax.html&gt;&#x60;_. | [optional] 
 **attribute** | **character**| Attribute equality filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lt** | **character**| Attribute less than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lte** | **character**| Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gt** | **character**| Attribute greater than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gte** | **character**| Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.contains** | **character**| Attribute contains filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.distance** | **character**| Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2]. | [optional] 
 **attribute.null** | **character**| Attribute null filter. Returns elements for which a given attribute is not defined. | [optional] 
 **operation** | Enum [count] | Set to \&quot;count\&quot; to return a count of objects instead of the objects. | [optional] 
 **start** | **integer**| Pagination start index. Index of the first item in a larger list to return. | [optional] 
 **stop** | **integer**| Pagination start index. Non-inclusive ndex of the last item in a larger list to return. | [optional] 

### Return type

[**array[State]**](State.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of state list. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetStateType**
> StateType GetStateType(id)



Get state type.  A state type is the metadata definition object for a state. It includes association type, name, description, and may have any number of user-defined attribute types associated with it.   

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a state type.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetStateType(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a state type. | 

### Return type

[**StateType**](StateType.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of state type. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetStateTypeList**
> array[StateType] GetStateTypeList(project, media.id=var.media.id, type=var.type)



Get state type list.  A state type is the metadata definition object for a state. It includes association type, name, description, and may have any number of user-defined attribute types associated with it. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.media.id <- list(123) # array[integer] | List of unique integers identifying a media.
var.type <- 56 # integer | Deprecated. Use `LocalizationType` endpoint to retrieve individual localization type by ID.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetStateTypeList(var.project, media.id=var.media.id, type=var.type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **media.id** | list( **integer** )| List of unique integers identifying a media. | [optional] 
 **type** | **integer**| Deprecated. Use &#x60;LocalizationType&#x60; endpoint to retrieve individual localization type by ID. | [optional] 

### Return type

[**array[StateType]**](StateType.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of state type list. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetTemporaryFile**
> TemporaryFile GetTemporaryFile(id)



Get temporary file.  Temporary files are files stored server side for a defined duration. 

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a temporary file.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetTemporaryFile(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a temporary file. | 

### Return type

[**TemporaryFile**](TemporaryFile.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of temporary file. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetTemporaryFileList**
> array[TemporaryFile] GetTemporaryFileList(project, expired=0)



Get temporary file list.  Temporary files are files stored server side for a defined duration.   

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.expired <- 0 # integer | If greater than 0 will return only expired files

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetTemporaryFileList(var.project, expired=var.expired)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **expired** | **integer**| If greater than 0 will return only expired files | [optional] [default to 0]

### Return type

[**array[TemporaryFile]**](TemporaryFile.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of temporary file list. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetUser**
> User GetUser(id)



Get user.

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a localization association.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetUser(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a localization association. | 

### Return type

[**User**](User.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of user. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetVersion**
> Version GetVersion(id)



Get version.  Versions allow for multiple \"layers\" of annotations on the same media. Versions are created at the project level, but are only displayed for a given media if that media contains annotations in that version. The version of an annotation can be set by providing it in a POST operation. Currently only localizations and states can have versions.  Versions are used in conjunction with the `modified` flag to determine whether an annotation should be displayed for a given media while annotating.   

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a version.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetVersion(var.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a version. | 

### Return type

[**Version**](Version.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of version. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **GetVersionList**
> array[Version] GetVersionList(project, media.id=var.media.id)



Get version list.  Versions allow for multiple \"layers\" of annotations on the same media. Versions are created at the project level, but are only displayed for a given media if that media contains annotations in that version. The version of an annotation can be set by providing it in a POST operation. Currently only localizations and states can have versions.  Versions are used in conjunction with the `modified` flag to determine whether an annotation should be displayed for a given media while annotating. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.media.id <- 56 # integer | Unique integer identifying a media.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetVersionList(var.project, media.id=var.media.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **media.id** | **integer**| Unique integer identifying a media. | [optional] 

### Return type

[**array[Version]**](Version.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of version list. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **LeafSuggestion**
> array[LeafSuggestion] LeafSuggestion(project, ancestor, query, min.level=var.min.level)



Get list of autocomplete suggestions.  This endpoint is compatible with devbridge suggestion format. It performs a glob search on leaf objects in the project.  <https://github.com/kraaden/autocomplete> 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.ancestor <- 'ancestor_example' # character | Get descendents of a leaf element (inclusive), by path (i.e. ITIS.Animalia).
var.query <- 'query_example' # character | String to search for matching names.
var.min.level <- 56 # integer | Integer specifying level of results that may be returned. For example, 2 refers to grandchildren of the level specified by the `ancestor` parameter.

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$LeafSuggestion(var.project, var.ancestor, var.query, min.level=var.min.level)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **ancestor** | **character**| Get descendents of a leaf element (inclusive), by path (i.e. ITIS.Animalia). | 
 **query** | **character**| String to search for matching names. | 
 **min.level** | **integer**| Integer specifying level of results that may be returned. For example, 2 refers to grandchildren of the level specified by the &#x60;ancestor&#x60; parameter. | [optional] 

### Return type

[**array[LeafSuggestion]**](LeafSuggestion.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of suggestions. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **Notify**
> Notify(notify.spec=var.notify.spec)



Send a notification to administrators.  Uses the Slack API to send a notification to system administrators. This endpoint can only be used by system administrators and must be configured in a Tator deployment's settings. 

### Example
```R
library(tator)

var.notify.spec <- NotifySpec$new("message_example", 123) # NotifySpec | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$Notify(notify.spec=var.notify.spec)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notify.spec** | [**NotifySpec**](NotifySpec.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Message sent successfully. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |
| **503** | Service not available. |  -  |

# **Progress**
> MessageResponse Progress(project, progress.spec=var.progress.spec)



Broadcast progress update.  Progress messages are sent in the web UI via WebSocket, and are displayed as progress bars associated with individual media files and as a summary in the webpage header. All members of a project can see progress bars from uploads and background jobs initiated by other users within the project. This endpoint accepts an array of messages, allowing for progress messages to be batched into a single request. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.progress.spec <- list(ProgressSpec$new("gid_example", "job_type_example", "media_ids_example", "message_example", "name_example", 123, "section_example", "sections_example", "state_example", "swid_example", "uid_example")) # array[ProgressSpec] | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$Progress(var.project, progress.spec=var.progress.spec)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **progress.spec** | list( [**ProgressSpec**](ProgressSpec.md) )|  | [optional] 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful creation of progress message. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **SaveImage**
> CreateResponse SaveImage(project, image.spec=var.image.spec)



Saves an uploaded image.  Media is uploaded via tus, a separate mechanism from the REST API. Once an image upload is complete, the image must be saved to the database using this endpoint. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.image.spec <- ImageSpec$new("gid_example", "md5_example", "name_example", "section_example", "thumbnail_url_example", 123, "uid_example", "url_example") # ImageSpec | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SaveImage(var.project, image.spec=var.image.spec)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **image.spec** | [**ImageSpec**](ImageSpec.md)|  | [optional] 

### Return type

[**CreateResponse**](CreateResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Successful creation of image. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **SaveVideo**
> CreateResponse SaveVideo(project, video.spec=var.video.spec)



Saves a transcoded video.  Videos in Tator must be transcoded to a multi-resolution streaming format before they can be viewed or annotated. To launch a transcode on raw uploaded video, use the `Transcode` endpoint, which will create an Argo workflow to perform the transcode and save the video using this endpoint; no further REST calls are required. However, if you would like to perform transcodes locally, this endpoint enables that. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.video.spec <- VideoSpec$new("codec_example", 123, "gid_example", 123, "md5_example", MediaFiles$new(list(VideoDefinition$new("codec_example", "codec_description_example", "codec_mime_example", "host_example", "http_auth_example", "path_example", list(123), "segment_info_example")), list(AudioDefinition$new("codec_example", "codec_description_example", "codec_mime_example", "host_example", "http_auth_example", "path_example")), list(VideoDefinition$new("codec_example", "codec_description_example", "codec_mime_example", "host_example", "http_auth_example", "path_example", list(123), "segment_info_example"))), "name_example", 123, "progressName_example", "section_example", "thumbnail_gif_url_example", "thumbnail_url_example", 123, "uid_example", 123) # VideoSpec | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SaveVideo(var.project, video.spec=var.video.spec)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **video.spec** | [**VideoSpec**](VideoSpec.md)|  | [optional] 

### Return type

[**CreateResponse**](CreateResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Successful creation of video. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **Transcode**
> Transcode Transcode(project, transcode.spec=var.transcode.spec)



Start a transcode.  Videos in Tator must be transcoded to a multi-resolution streaming format before they can be viewed or annotated. This endpoint launches a transcode on raw uploaded video by creating an Argo workflow. The workflow will download the uploaded raw video, transcode it to the proper format, upload the transcoded video, and save the video using the  `SaveVideo` endpoint.  Note that the raw video must be uploaded first via tus, which is a separate mechanism  from the REST API. This endpoint requires a group and run UUID associated with this  upload. If no progress messages were generated during upload, then the group and run  UUIDs can be newly generated.  Transcodes may be cancelled via the `Job` or `JobGroup` endpoints. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.transcode.spec <- TranscodeSpec$new("gid_example", "md5_example", "name_example", "section_example", 123, "uid_example", "url_example") # TranscodeSpec | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$Transcode(var.project, transcode.spec=var.transcode.spec)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **transcode.spec** | [**TranscodeSpec**](TranscodeSpec.md)|  | [optional] 

### Return type

[**Transcode**](Transcode.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | Successful save of the video in the database. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **UpdateLeaf**
> MessageResponse UpdateLeaf(id, leaf.update=var.leaf.update)



Update leaf.  Leaves are used to define label hierarchies that can be used for autocompletion of string attribute types. Leaves are a type of entity in Tator, meaning they can be described by user-defined attributes. 

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a leaf.
var.leaf.update <- LeafUpdate$new(TODO, "name_example") # LeafUpdate | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$UpdateLeaf(var.id, leaf.update=var.leaf.update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a leaf. | 
 **leaf.update** | [**LeafUpdate**](LeafUpdate.md)|  | [optional] 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful update of leaf. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **UpdateLeafList**
> MessageResponse UpdateLeafList(project, ancestor=var.ancestor, type=var.type, name=var.name, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop, attribute.bulk.update=var.attribute.bulk.update)



Update leaf list.  Leaves are used to define label hierarchies that can be used for autocompletion of string attribute types. Leaves are a type of entity in Tator, meaning they can be described by user-defined attributes.   This method does a bulk update on all leaves matching a query. Only  user-defined attributes may be bulk updated. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.ancestor <- 'ancestor_example' # character | Get descendents of a leaf element (inclusive), by path (i.e. ITIS.Animalia).
var.type <- 56 # integer | Unique integer identifying a leaf type.
var.name <- 'name_example' # character | Name of the leaf element.
var.attribute <- 'attribute_example' # character | Attribute equality filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lt <- 'attribute.lt_example' # character | Attribute less than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lte <- 'attribute.lte_example' # character | Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gt <- 'attribute.gt_example' # character | Attribute greater than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gte <- 'attribute.gte_example' # character | Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.contains <- 'attribute.contains_example' # character | Attribute contains filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.distance <- 'attribute.distance_example' # character | Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2].
var.attribute.null <- 'attribute.null_example' # character | Attribute null filter. Returns elements for which a given attribute is not defined.
var.operation <- 'operation_example' # character | Set to \"count\" to return a count of objects instead of the objects.
var.start <- 56 # integer | Pagination start index. Index of the first item in a larger list to return.
var.stop <- 56 # integer | Pagination start index. Non-inclusive ndex of the last item in a larger list to return.
var.attribute.bulk.update <- AttributeBulkUpdate$new(TODO) # AttributeBulkUpdate | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$UpdateLeafList(var.project, ancestor=var.ancestor, type=var.type, name=var.name, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop, attribute.bulk.update=var.attribute.bulk.update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **ancestor** | **character**| Get descendents of a leaf element (inclusive), by path (i.e. ITIS.Animalia). | [optional] 
 **type** | **integer**| Unique integer identifying a leaf type. | [optional] 
 **name** | **character**| Name of the leaf element. | [optional] 
 **attribute** | **character**| Attribute equality filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lt** | **character**| Attribute less than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lte** | **character**| Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gt** | **character**| Attribute greater than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gte** | **character**| Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.contains** | **character**| Attribute contains filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.distance** | **character**| Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2]. | [optional] 
 **attribute.null** | **character**| Attribute null filter. Returns elements for which a given attribute is not defined. | [optional] 
 **operation** | Enum [count] | Set to \&quot;count\&quot; to return a count of objects instead of the objects. | [optional] 
 **start** | **integer**| Pagination start index. Index of the first item in a larger list to return. | [optional] 
 **stop** | **integer**| Pagination start index. Non-inclusive ndex of the last item in a larger list to return. | [optional] 
 **attribute.bulk.update** | [**AttributeBulkUpdate**](AttributeBulkUpdate.md)|  | [optional] 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful update of leaf list. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **UpdateLeafType**
> MessageResponse UpdateLeafType(id, leaf.type.update=var.leaf.type.update)



Update leaf type.  A leaf type is the metadata definition object for a leaf. It includes name, description, and may have any number of user-defined attribute types associated with it. 

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying an leaf type.
var.leaf.type.update <- LeafTypeUpdate$new("description_example", "name_example") # LeafTypeUpdate | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$UpdateLeafType(var.id, leaf.type.update=var.leaf.type.update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying an leaf type. | 
 **leaf.type.update** | [**LeafTypeUpdate**](LeafTypeUpdate.md)|  | [optional] 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful update of leaf type. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **UpdateLocalization**
> MessageResponse UpdateLocalization(id, localization.update=var.localization.update)



Update localization.  Localizations are shape annotations drawn on a video or image. Available shapes (`dtype`) are  box, line, or dot. Each shape is parameterized by a different subset of data members: - `box` uses `x`, `y`, `width`, `height`. - `line` uses `x`, `y`, `u`, `v`. - `dot` uses `x` and `y`.  Geometry members may be left null when creating a localization, in which case the shapes may be  drawn later using the redraw capability in the web UI. Localizations are a type of entity in Tator, meaning they can be described by user defined attributes. 

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a localization.
var.localization.update <- LocalizationUpdate$new(TODO, 123, 123, "modified_example", 123, 123, 123, 123, 123, 123) # LocalizationUpdate | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$UpdateLocalization(var.id, localization.update=var.localization.update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a localization. | 
 **localization.update** | [**LocalizationUpdate**](LocalizationUpdate.md)|  | [optional] 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful update of localization. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **UpdateLocalizationList**
> MessageResponse UpdateLocalizationList(project, media.query=var.media.query, media.id=var.media.id, type=var.type, version=var.version, modified=1, after=var.after, search=var.search, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop, exclude.parents=0, frame=var.frame, attribute.bulk.update=var.attribute.bulk.update)



Update localiazation list.  Localizations are shape annotations drawn on a video or image. Available shapes (`dtype`) are  box, line, or dot. Each shape is parameterized by a different subset of data members: - `box` uses `x`, `y`, `width`, `height`. - `line` uses `x`, `y`, `u`, `v`. - `dot` uses `x` and `y`.  Geometry members may be left null when creating a localization, in which case the shapes may be  drawn later using the redraw capability in the web UI. Localizations are a type of entity in Tator, meaning they can be described by user defined attributes.   This method does a bulk update on all localizations matching a query. Only  user-defined attributes may be bulk updated. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.media.query <- 'media.query_example' # character | Query string used to filter media IDs. If supplied, media_id will be ignored.
var.media.id <- list(123) # array[integer] | Comma-separated list of media IDs.
var.type <- 56 # integer | Unique integer identifying a annotation type.
var.version <- list(123) # array[integer] | List of integers representing versions to fetch
var.modified <- 1 # integer | Whether to return original or modified annotations, 0 or 1.
var.after <- 56 # integer | If given, all results returned will be after the localization with this ID. The `start` and `stop` parameters are relative to this modified range.
var.search <- '\"My search string\"' # character | Lucene query syntax string for use with Elasticsearch. See `reference <https://lucene.apache.org/core/2_9_4/queryparsersyntax.html>`_.
var.attribute <- 'attribute_example' # character | Attribute equality filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lt <- 'attribute.lt_example' # character | Attribute less than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lte <- 'attribute.lte_example' # character | Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gt <- 'attribute.gt_example' # character | Attribute greater than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gte <- 'attribute.gte_example' # character | Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.contains <- 'attribute.contains_example' # character | Attribute contains filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.distance <- 'attribute.distance_example' # character | Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2].
var.attribute.null <- 'attribute.null_example' # character | Attribute null filter. Returns elements for which a given attribute is not defined.
var.operation <- 'operation_example' # character | Set to \"count\" to return a count of objects instead of the objects.
var.start <- 56 # integer | Pagination start index. Index of the first item in a larger list to return.
var.stop <- 56 # integer | Pagination start index. Non-inclusive ndex of the last item in a larger list to return.
var.exclude.parents <- 0 # integer | If a clone is present, do not send parent. (0 or 1)
var.frame <- 56 # integer | Frame number of this localization if it is in a video.
var.attribute.bulk.update <- AttributeBulkUpdate$new(TODO) # AttributeBulkUpdate | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$UpdateLocalizationList(var.project, media.query=var.media.query, media.id=var.media.id, type=var.type, version=var.version, modified=var.modified, after=var.after, search=var.search, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop, exclude.parents=var.exclude.parents, frame=var.frame, attribute.bulk.update=var.attribute.bulk.update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **media.query** | **character**| Query string used to filter media IDs. If supplied, media_id will be ignored. | [optional] 
 **media.id** | list( **integer** )| Comma-separated list of media IDs. | [optional] 
 **type** | **integer**| Unique integer identifying a annotation type. | [optional] 
 **version** | list( **integer** )| List of integers representing versions to fetch | [optional] 
 **modified** | Enum [0, 1] | Whether to return original or modified annotations, 0 or 1. | [optional] [default to 1]
 **after** | **integer**| If given, all results returned will be after the localization with this ID. The &#x60;start&#x60; and &#x60;stop&#x60; parameters are relative to this modified range. | [optional] 
 **search** | **character**| Lucene query syntax string for use with Elasticsearch. See &#x60;reference &lt;https://lucene.apache.org/core/2_9_4/queryparsersyntax.html&gt;&#x60;_. | [optional] 
 **attribute** | **character**| Attribute equality filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lt** | **character**| Attribute less than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lte** | **character**| Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gt** | **character**| Attribute greater than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gte** | **character**| Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.contains** | **character**| Attribute contains filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.distance** | **character**| Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2]. | [optional] 
 **attribute.null** | **character**| Attribute null filter. Returns elements for which a given attribute is not defined. | [optional] 
 **operation** | Enum [count] | Set to \&quot;count\&quot; to return a count of objects instead of the objects. | [optional] 
 **start** | **integer**| Pagination start index. Index of the first item in a larger list to return. | [optional] 
 **stop** | **integer**| Pagination start index. Non-inclusive ndex of the last item in a larger list to return. | [optional] 
 **exclude.parents** | **integer**| If a clone is present, do not send parent. (0 or 1) | [optional] [default to 0]
 **frame** | **integer**| Frame number of this localization if it is in a video. | [optional] 
 **attribute.bulk.update** | [**AttributeBulkUpdate**](AttributeBulkUpdate.md)|  | [optional] 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful update of localization list. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **UpdateLocalizationType**
> MessageResponse UpdateLocalizationType(id, localization.type.update=var.localization.type.update)



Update localization type.  A localization type is the metadata definition object for a localization. It includes shape, name, description, and may have any number of user-defined attribute types associated with it.   

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying an localization type.
var.localization.type.update <- LocalizationTypeUpdate$new(ColorMap$new(TODO, TODO, "key_example", TODO, TODO), "description_example", 123, "name_example", "visible_example") # LocalizationTypeUpdate | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$UpdateLocalizationType(var.id, localization.type.update=var.localization.type.update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying an localization type. | 
 **localization.type.update** | [**LocalizationTypeUpdate**](LocalizationTypeUpdate.md)|  | [optional] 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful update of localization type. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **UpdateMedia**
> MessageResponse UpdateMedia(id, media.update=var.media.update)



Update media.  A media may be an image or a video. Media are a type of entity in Tator, meaning they can be described by user defined attributes.   

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a media.
var.media.update <- MediaUpdate$new(TODO, "last_edit_end_example", "last_edit_start_example", MediaFiles$new(list(VideoDefinition$new("codec_example", "codec_description_example", "codec_mime_example", "host_example", "http_auth_example", "path_example", list(123), "segment_info_example")), list(AudioDefinition$new("codec_example", "codec_description_example", "codec_mime_example", "host_example", "http_auth_example", "path_example")), list(VideoDefinition$new("codec_example", "codec_description_example", "codec_mime_example", "host_example", "http_auth_example", "path_example", list(123), "segment_info_example"))), "name_example") # MediaUpdate | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$UpdateMedia(var.id, media.update=var.media.update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a media. | 
 **media.update** | [**MediaUpdate**](MediaUpdate.md)|  | [optional] 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful update of media. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **UpdateMediaList**
> MessageResponse UpdateMediaList(project, media.id=var.media.id, type=var.type, name=var.name, md5=var.md5, after=var.after, search=var.search, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop, attribute.bulk.update=var.attribute.bulk.update)



Update media list.  A media may be an image or a video. Media are a type of entity in Tator, meaning they can be described by user defined attributes.   This method does a bulk update on all media matching a query. Only  user-defined attributes may be bulk updated. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.media.id <- list(123) # array[integer] | List of integers identifying media.
var.type <- 56 # integer | Unique integer identifying media type.
var.name <- 'name_example' # character | Name of the media to filter on.
var.md5 <- 'md5_example' # character | MD5 sum of the media file.
var.after <- 'after_example' # character | If given, all results returned will be after the file with this filename. The `start` and `stop` parameters are relative to this modified range.
var.search <- '\"My search string\"' # character | Lucene query syntax string for use with Elasticsearch. See `reference <https://lucene.apache.org/core/2_9_4/queryparsersyntax.html>`_.
var.attribute <- 'attribute_example' # character | Attribute equality filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lt <- 'attribute.lt_example' # character | Attribute less than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lte <- 'attribute.lte_example' # character | Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gt <- 'attribute.gt_example' # character | Attribute greater than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gte <- 'attribute.gte_example' # character | Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.contains <- 'attribute.contains_example' # character | Attribute contains filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.distance <- 'attribute.distance_example' # character | Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2].
var.attribute.null <- 'attribute.null_example' # character | Attribute null filter. Returns elements for which a given attribute is not defined.
var.operation <- 'operation_example' # character | Set to \"count\" to return a count of objects instead of the objects.
var.start <- 56 # integer | Pagination start index. Index of the first item in a larger list to return.
var.stop <- 56 # integer | Pagination start index. Non-inclusive ndex of the last item in a larger list to return.
var.attribute.bulk.update <- AttributeBulkUpdate$new(TODO) # AttributeBulkUpdate | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$UpdateMediaList(var.project, media.id=var.media.id, type=var.type, name=var.name, md5=var.md5, after=var.after, search=var.search, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop, attribute.bulk.update=var.attribute.bulk.update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **media.id** | list( **integer** )| List of integers identifying media. | [optional] 
 **type** | **integer**| Unique integer identifying media type. | [optional] 
 **name** | **character**| Name of the media to filter on. | [optional] 
 **md5** | **character**| MD5 sum of the media file. | [optional] 
 **after** | **character**| If given, all results returned will be after the file with this filename. The &#x60;start&#x60; and &#x60;stop&#x60; parameters are relative to this modified range. | [optional] 
 **search** | **character**| Lucene query syntax string for use with Elasticsearch. See &#x60;reference &lt;https://lucene.apache.org/core/2_9_4/queryparsersyntax.html&gt;&#x60;_. | [optional] 
 **attribute** | **character**| Attribute equality filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lt** | **character**| Attribute less than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lte** | **character**| Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gt** | **character**| Attribute greater than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gte** | **character**| Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.contains** | **character**| Attribute contains filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.distance** | **character**| Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2]. | [optional] 
 **attribute.null** | **character**| Attribute null filter. Returns elements for which a given attribute is not defined. | [optional] 
 **operation** | Enum [count] | Set to \&quot;count\&quot; to return a count of objects instead of the objects. | [optional] 
 **start** | **integer**| Pagination start index. Index of the first item in a larger list to return. | [optional] 
 **stop** | **integer**| Pagination start index. Non-inclusive ndex of the last item in a larger list to return. | [optional] 
 **attribute.bulk.update** | [**AttributeBulkUpdate**](AttributeBulkUpdate.md)|  | [optional] 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful update of media list. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **UpdateMediaType**
> MessageResponse UpdateMediaType(id, media.type.update=var.media.type.update)



Update media type.  A media type is the metadata definition object for media. It includes file format, name, description, and may have any number of user defined attribute types associated with it.   

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying an media type.
var.media.type.update <- MediaTypeUpdate$new("description_example", "file_format_example", "keep_original_example", "name_example") # MediaTypeUpdate | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$UpdateMediaType(var.id, media.type.update=var.media.type.update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying an media type. | 
 **media.type.update** | [**MediaTypeUpdate**](MediaTypeUpdate.md)|  | [optional] 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful update of media type. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **UpdateMembership**
> MessageResponse UpdateMembership(id, membership.update=var.membership.update)



Update membership.  Memberships specify a permission level of a user to a project. There are currently five cumulative permission levels: - `View Only` can only view a project and not change any data. - `Can Edit` can create, modify, and delete annotations. - `Can Transfer` can upload and download media. - `Can Execute` can launch algorithm workflows. - `Full Control` can change project settings, including inviting new members, project name, and    project metadata schema. 

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a membership.
var.membership.update <- MembershipUpdate$new("permission_example") # MembershipUpdate | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$UpdateMembership(var.id, membership.update=var.membership.update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a membership. | 
 **membership.update** | [**MembershipUpdate**](MembershipUpdate.md)|  | [optional] 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful update of membership. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **UpdateProject**
> MessageResponse UpdateProject(id, project.spec=var.project.spec)



Update project.  Projects are the object under which all data in Tator is grouped, including user access, metadata definitions, media, and annotations. Data does not cross boundaries between projects.   

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a project.
var.project.spec <- ProjectSpec$new("name_example", "summary_example") # ProjectSpec | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$UpdateProject(var.id, project.spec=var.project.spec)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a project. | 
 **project.spec** | [**ProjectSpec**](ProjectSpec.md)|  | [optional] 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful update of project. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **UpdateState**
> MessageResponse UpdateState(id, state.update=var.state.update)



Update state.  A state is a description of a collection of other objects. The objects a state describes could be media (image or video), video frames, or localizations. A state referring to a collection of localizations is often referred to as a track. States are a type of entity in Tator, meaning they can be described by user defined attributes. 

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a state.
var.state.update <- StateUpdate$new(TODO, 123, "modified_example") # StateUpdate | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$UpdateState(var.id, state.update=var.state.update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a state. | 
 **state.update** | [**StateUpdate**](StateUpdate.md)|  | [optional] 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful update of state. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **UpdateStateList**
> MessageResponse UpdateStateList(project, media.query=var.media.query, media.id=var.media.id, type=var.type, version=var.version, modified=1, after=var.after, search=var.search, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop, attribute.bulk.update=var.attribute.bulk.update)



Update state list.  A state is a description of a collection of other objects. The objects a state describes could be media (image or video), video frames, or localizations. A state referring to a collection of localizations is often referred to as a track. States are a type of entity in Tator, meaning they can be described by user defined attributes.   This method does a bulk update on all states matching a query. Only  user-defined attributes may be bulk updated. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.media.query <- 'media.query_example' # character | Query string used to filter media IDs. If supplied, media_id will be ignored.
var.media.id <- list(123) # array[integer] | Comma-separated list of media IDs.
var.type <- 56 # integer | Unique integer identifying a annotation type.
var.version <- list(123) # array[integer] | List of integers representing versions to fetch
var.modified <- 1 # integer | Whether to return original or modified annotations, 0 or 1.
var.after <- 56 # integer | If given, all results returned will be after the localization with this ID. The `start` and `stop` parameters are relative to this modified range.
var.search <- '\"My search string\"' # character | Lucene query syntax string for use with Elasticsearch. See `reference <https://lucene.apache.org/core/2_9_4/queryparsersyntax.html>`_.
var.attribute <- 'attribute_example' # character | Attribute equality filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lt <- 'attribute.lt_example' # character | Attribute less than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.lte <- 'attribute.lte_example' # character | Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gt <- 'attribute.gt_example' # character | Attribute greater than filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.gte <- 'attribute.gte_example' # character | Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.contains <- 'attribute.contains_example' # character | Attribute contains filter. Format is attribute1::value1,[attribute2::value2].
var.attribute.distance <- 'attribute.distance_example' # character | Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2].
var.attribute.null <- 'attribute.null_example' # character | Attribute null filter. Returns elements for which a given attribute is not defined.
var.operation <- 'operation_example' # character | Set to \"count\" to return a count of objects instead of the objects.
var.start <- 56 # integer | Pagination start index. Index of the first item in a larger list to return.
var.stop <- 56 # integer | Pagination start index. Non-inclusive ndex of the last item in a larger list to return.
var.attribute.bulk.update <- AttributeBulkUpdate$new(TODO) # AttributeBulkUpdate | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$UpdateStateList(var.project, media.query=var.media.query, media.id=var.media.id, type=var.type, version=var.version, modified=var.modified, after=var.after, search=var.search, attribute=var.attribute, attribute.lt=var.attribute.lt, attribute.lte=var.attribute.lte, attribute.gt=var.attribute.gt, attribute.gte=var.attribute.gte, attribute.contains=var.attribute.contains, attribute.distance=var.attribute.distance, attribute.null=var.attribute.null, operation=var.operation, start=var.start, stop=var.stop, attribute.bulk.update=var.attribute.bulk.update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **media.query** | **character**| Query string used to filter media IDs. If supplied, media_id will be ignored. | [optional] 
 **media.id** | list( **integer** )| Comma-separated list of media IDs. | [optional] 
 **type** | **integer**| Unique integer identifying a annotation type. | [optional] 
 **version** | list( **integer** )| List of integers representing versions to fetch | [optional] 
 **modified** | Enum [0, 1] | Whether to return original or modified annotations, 0 or 1. | [optional] [default to 1]
 **after** | **integer**| If given, all results returned will be after the localization with this ID. The &#x60;start&#x60; and &#x60;stop&#x60; parameters are relative to this modified range. | [optional] 
 **search** | **character**| Lucene query syntax string for use with Elasticsearch. See &#x60;reference &lt;https://lucene.apache.org/core/2_9_4/queryparsersyntax.html&gt;&#x60;_. | [optional] 
 **attribute** | **character**| Attribute equality filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lt** | **character**| Attribute less than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.lte** | **character**| Attribute less than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gt** | **character**| Attribute greater than filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.gte** | **character**| Attribute greater than or equal filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.contains** | **character**| Attribute contains filter. Format is attribute1::value1,[attribute2::value2]. | [optional] 
 **attribute.distance** | **character**| Range filter for geoposition attributes. Format is attribute1::distance_km2::lat2::lon2,[attribute2::distancekm2::lat2::lon2]. | [optional] 
 **attribute.null** | **character**| Attribute null filter. Returns elements for which a given attribute is not defined. | [optional] 
 **operation** | Enum [count] | Set to \&quot;count\&quot; to return a count of objects instead of the objects. | [optional] 
 **start** | **integer**| Pagination start index. Index of the first item in a larger list to return. | [optional] 
 **stop** | **integer**| Pagination start index. Non-inclusive ndex of the last item in a larger list to return. | [optional] 
 **attribute.bulk.update** | [**AttributeBulkUpdate**](AttributeBulkUpdate.md)|  | [optional] 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful update of state list. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **UpdateStateType**
> MessageResponse UpdateStateType(id, state.type.update=var.state.type.update)



Update state type.  A state type is the metadata definition object for a state. It includes association type, name, description, and may have any number of user-defined attribute types associated with it.   

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a state type.
var.state.type.update <- StateTypeUpdate$new("description_example", "name_example") # StateTypeUpdate | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$UpdateStateType(var.id, state.type.update=var.state.type.update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a state type. | 
 **state.type.update** | [**StateTypeUpdate**](StateTypeUpdate.md)|  | [optional] 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful update of state type. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **UpdateUser**
> UpdateUser(id, user.update=var.user.update)



Update user.

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a localization association.
var.user.update <- UserUpdate$new("email_example", "first_name_example", "last_name_example", "username_example") # UserUpdate | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$UpdateUser(var.id, user.update=var.user.update)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a localization association. | 
 **user.update** | [**UserUpdate**](UserUpdate.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **UpdateVersion**
> MessageResponse UpdateVersion(id, version.update=var.version.update)



Update version.  Versions allow for multiple \"layers\" of annotations on the same media. Versions are created at the project level, but are only displayed for a given media if that media contains annotations in that version. The version of an annotation can be set by providing it in a POST operation. Currently only localizations and states can have versions.  Versions are used in conjunction with the `modified` flag to determine whether an annotation should be displayed for a given media while annotating.   

### Example
```R
library(tator)

var.id <- 56 # integer | A unique integer identifying a version.
var.version.update <- VersionUpdate$new(list(123), "description_example", "name_example", "show_empty_example") # VersionUpdate | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$UpdateVersion(var.id, version.update=var.version.update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer identifying a version. | 
 **version.update** | [**VersionUpdate**](VersionUpdate.md)|  | [optional] 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful update of version. |  -  |
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **UpdateVideo**
> UpdateVideo(project, video.update=var.video.update)



Saves a transcoded video.  Videos in Tator must be transcoded to a multi-resolution streaming format before they can be viewed or annotated. To launch a transcode on raw uploaded video, use the `Transcode` endpoint, which will create an Argo workflow to perform the transcode and save the video using this endpoint; no further REST calls are required. However, if you would like to perform transcodes locally, this endpoint enables that. 

### Example
```R
library(tator)

var.project <- 56 # integer | A unique integer identifying a project.
var.video.update <- VideoUpdate$new("gid_example", 123, MediaFiles$new(list(VideoDefinition$new("codec_example", "codec_description_example", "codec_mime_example", "host_example", "http_auth_example", "path_example", list(123), "segment_info_example")), list(AudioDefinition$new("codec_example", "codec_description_example", "codec_mime_example", "host_example", "http_auth_example", "path_example")), list(VideoDefinition$new("codec_example", "codec_description_example", "codec_mime_example", "host_example", "http_auth_example", "path_example", list(123), "segment_info_example"))), "uid_example") # VideoUpdate | 

api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$UpdateVideo(var.project, video.update=var.video.update)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | **integer**| A unique integer identifying a project. | 
 **video.update** | [**VideoUpdate**](VideoUpdate.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **400** | Bad request. |  -  |
| **404** | Not found. |  -  |

# **Whoami**
> User Whoami()



Get current user.  Retrieves user making the request. 

### Example
```R
library(tator)


api.instance <- TatorApi$new()
# Configure API key authorization: TokenAuth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$Whoami()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**User**](User.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful retrieval of user who sent request. |  -  |

