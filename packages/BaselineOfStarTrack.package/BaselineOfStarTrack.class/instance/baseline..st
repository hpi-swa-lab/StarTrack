baseilne
baseline: spec
	<baseline>
	spec for: #common do: [
		
		spec 
			package: 'StarTrack-Core' with: [];
			package: 'StarTrack-Client' with: [spec requires: #('StarTrack-Core' 'libraries')];
			package: 'StarTrack-Server' with: [spec requires: #('StarTrack-Core' 'libraries')].
		
		spec package: 'JSON' with: [
			spec repository: 'http://www.squeaksource.com/JSON'].
			
		spec
			group: 'default' with: #('StarTrack-Client');
			group: 'client' with: #('StarTrack-Client');
			group: 'server' with: #('StarTrack-Server');
			group: 'libraries' with: #('JSON' )].