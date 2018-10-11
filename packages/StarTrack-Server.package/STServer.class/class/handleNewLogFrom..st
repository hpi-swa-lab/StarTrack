request handling
handleNewLogFrom: aWebRequest

	aWebRequest isPostRequest ifFalse: [aWebRequest send400Response].
	
	[self readAndStoreLogFrom: aWebRequest content readStream]
		on: Error
		do: [:e | 
				aWebRequest send500Response: e messageText. 
				Transcript show: e messageText. 
				^ aWebRequest].
		
	aWebRequest send200Response: 'success' contentType: MIMEDocument contentTypePlainText.
	^ aWebRequest