# tator::StateType

State type.
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**association** | **character** | Type of object this state type is associated with. | [optional] 
**attribute_types** | [**array[AttributeType]**](AttributeType.md) | Attribute type definitions. | [optional] 
**description** | **character** | Description of the state type. | [optional] 
**dtype** | **character** | String indicating data type. Always equal to \&quot;state\&quot;. | [optional] 
**id** | **integer** | Unique integer identifying a state type. | [optional] 
**interpolation** | **character** | Interpolation method used by the web interface. | [optional] [default to &#39;latest&#39;]
**media** | **array[integer]** | List of integers identifying media types that this state type may apply to. | [optional] 
**name** | **character** | Name of the state type. | [optional] 
**project** | **integer** | Unique integer identifying project for this state type. | [optional] 
**visible** | **character** | Whether this state type should be displayed. | [optional] 


