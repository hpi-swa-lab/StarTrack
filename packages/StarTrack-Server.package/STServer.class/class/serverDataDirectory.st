constants
serverDataDirectory

	FileDirectory default assureExistenceOfPath: self serverDataDirectoryPath.
	^ FileDirectory default / self serverDataDirectoryPath 