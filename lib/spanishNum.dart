class SpanishNumber {
  int counter;
  String defaultText;
  List spanishNumbers, englishNumbers;
  SpanishNumber() {
    counter = 1;
    defaultText = "Spanish Numbers";
    spanishNumbers = [
      'Uno',
      'Dos',
      'Tres',
      'Cuatro',
      'Cinco',
      'Seies',
      'Seite',
      'Ocho',
      'Nueve',
      'Dietz'
    ];
    englishNumbers = [
      'One',
      'Two',
      'Three',
      'Four',
      'Five',
      'Six',
      'Seven',
      'Eight',
      'Nine',
      'Ten'
    ];
  }
  int increamentCounter() {
    if (this.counter >= 11) {
      this.counter = 1;
    }

    print(this.counter);
    return this.counter++;
  }

  int counterSetter(int counter) {
    return this.counter = counter - 1;
  }

  int counterGetter() {
    return this.counter + 1;
  }

  List getCurrentValue([int counter]) {
    if (counter != Null) {
      return [
        this.spanishNumbers[counter - 1],
        this.englishNumbers[counter - 1]
      ];
    } else {
      return [
        this.spanishNumbers[this.counter - 1],
        this.englishNumbers[this.counter - 1]
      ];
    }
  }
}
