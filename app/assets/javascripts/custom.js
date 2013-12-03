$(document).ready(function(start, stop){
	myAudio = document.getElementById('segment');
	myAudio.addEventListener('canplaythrough', function() {
		this.playbackRate = 0.6; 
		var start = $(this).data('start');
		var stop = $(this).data('stop'); 
		if(this.currentTime < start){this.currentTime = start;}
		myAudio.onClick=function(){
			this.play();
			};   
		myAudio.addEventListener('timeupdate', function() {
			if (this.currentTime >=stop) {this.pause();}
		});
	});
}); 