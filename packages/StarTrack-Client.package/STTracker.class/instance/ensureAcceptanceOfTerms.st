user information
ensureAcceptanceOfTerms

	| answer |
	termsAccepted ifNil: [termsAccepted := false].
	
	termsAccepted ifFalse: [
		answer := UIManager default
			confirm: self termsText 
			title: 'Terms of Use'
			trueChoice: 'Yes, I accept the terms and want to participate'
			falseChoice: 'No, I do not want to participate'.
		(answer ifNil: [false])
			ifFalse: [
				UIManager default inform: 'As you did not accept the terms, you can unfortunately not use this image.
Please download the basic SWA image. 
This image will shutdown now'.
				Smalltalk snapshot: false andQuit: true.]
			ifTrue: [
				termsAccepted := true.
				UIManager default inform: 'Thank you! and have fun! :)
Should any issues arise, just come by in C-E.5 or write to us.']].
	