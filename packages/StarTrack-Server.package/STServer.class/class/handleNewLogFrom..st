request handling
handleNewLogFrom: aWebRequest

	aWebRequest isPostRequest ifFalse: [aWebRequest send400Response].
	
	[self readAndStoreLogFrom: aWebRequest content readStream]
		on: Error
		do: [:e | 
				aWebRequest send500Response: e description. 
				Transcript showln: e description. 
				^ aWebRequest].
		
	aWebRequest send200Response: 'success' contentType: MIMEDocument contentTypePlainText.
	Transcript showln: '[server] Handled a request successfully'.
	^ aWebRequest