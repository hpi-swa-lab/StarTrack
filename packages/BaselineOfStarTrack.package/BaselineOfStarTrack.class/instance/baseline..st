as yet unclassified
baseline: spec
	<baseline>
	spec for: #common do: [
		spec package: 'StarTrack' with: [spec requires: #('libraries')].
		
		spec package: 'JSON' with: [
			spec repository: 'http://www.squeaksource.com/JSON'].
		
		spec baseline: 'Scheduler' with: [
			spec repository: 'github://codeZeilen/Scheduler/packages'].
			
		spec
			group: 'default' with: #('StarTrack');
			group: 'libraries' with: #('JSON' 'Scheduler')].