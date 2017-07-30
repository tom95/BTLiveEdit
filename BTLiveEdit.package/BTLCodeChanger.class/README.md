A BTLCodeChanger is responsible for changing code based on live-edit events. This class is abstract such that you may provide the most pretty code changer there is. Three methods have to be implemented, corresponding to the three operation modes below:

Inputs:
- affected application events that need to be updated after the change
- operation: in constructor, after construction, only replacing arguments
- where: class, instance, source interval
- message send source string

Outputs:
- updated/new application events with correct source intervals

The three operation methods all need to call `updateMethodWith:` once they know think they produced a valid string. That method will verify this and raise an exception if it was not valid. Only after `updateMethodWith:` returned, the methods may proceed to update the affected application events.