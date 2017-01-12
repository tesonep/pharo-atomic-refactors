I am responsible for adding a message send inside a method. In this implementation, all the message send, e.g., 'variable message: (arg)' shall be described as a string. It was implemented this way to avoid having another transformation just to add the receiver as a literal node.

Usage:
transformation := (RBAddMessageSendTransformation
				messageSend: 'variable byteAt: 1'
				inMethod: #methodBefore
				inClass: #RBAddMessageSendTransformationTest)
				transform.
(ChangesBrowser changes: transformation model changes changes) open

Observations about the transformation:
- The transformation does not know the location on which it will place the message send. Therefore, it extracts all the accesses in the message to be added, and adds the message after all the accesses are assigned.
- If there is no access, the message send will be the first statement of the method.