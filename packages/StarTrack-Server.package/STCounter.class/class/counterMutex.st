accessing
counterMutex

	^ CounterMutex ifNil: [CounterMutex := Mutex new]