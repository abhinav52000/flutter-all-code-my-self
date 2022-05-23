class Question {
  String questiontext = '';
  bool questionanswer = true;

  Question({String q = '', bool a = true}) {
    questiontext = q;
    questionanswer = a;
  }

  // Question(this.questiontext, this.questionanswer); this is one more way of creating the constructor
  // it will directly copy the passed value to the given variables.
}
