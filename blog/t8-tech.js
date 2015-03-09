var numQues = 5;

var numChoi = 3;

var answers = new Array(5);


answers[0] = "Open Source";
answers[1] = "True";
answers[2] = "David Heinemeier Hansson";
answers[3] = "4.2";
answers[4] = "True";


function getScore(form) {
  var score = 0;
  var currElt;
  var currSelection;
  for (i=0; i<numQues; i++) {
    currElt = i*numChoi;
    for (j=0; j<numChoi; j++) {
      currSelection = form.elements[currElt + j];
      if (currSelection.checked) {
        if (currSelection.value == answers[i]) {
          score++;
          break;
        }
      }
    }
  }
  var score = Math.round(score/numQues*100);
  if(score == 100){
	alert("You are a rails master!")
}
else{
alert("Sorry, but you need some work. Review your answers below")};
  form.percentage.value = score + "%";
  var correctAnswers = "";
  for (i=1; i<=numQues; i++) {
    correctAnswers += i + ". " + answers[i-1] + "\r\n";
  }
  form.solutions.value = correctAnswers;
}


