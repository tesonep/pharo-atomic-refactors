I am responsible for removing a message send inside a method. In this implementation, only the selector of the message is necessary to execute this transformation.

Usage:
refactoring := (RBRemoveMessageSendRefactoring
			messageSend: #byteAt:
			inMethod: #methodBefore
			inClass: #RBRemoveMessageSendTransformationTest)
			transform.
(ChangesBrowser changes: refactoring model changes changes) open

Preconditions:
- Check whether this method ever calls the given message.

Observations about the transformation:
- If the method contains more than one message send like the one specified in this transformation, all of these message sends will be removed.
- Removing the message send means removing the receiver, too. The only exception occurs when the receiver is another message send (e.g., in a cascade)