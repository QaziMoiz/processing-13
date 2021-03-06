/*------------------------------------------------------------
Copyright (c) 2013, Friends of Ed (An Apress Company)
All rights reserved.

The code provided here accompanies the book:

Processing: Creative Coding and Generative Art in Processing 2
By Ira Greenberg, Dianna Xu, and Deepak Kumar
Friends of Ed (An APress Company), 2013
ISBN-13 978-1430244646
Please refer to the associated README for a full disclaimer.
------------------------------------------------------------*/

// Sketch 7-11: Word Cloud Visualization
// Sketch 7-11: The Word class
class Word implements Comparable<Word> {

  // Each Word is a pair: the word, and its frequency
  String word;
  int freq;

  Word(String newWord) {  // Constructor
    word = newWord;
    freq = 1;
  } // Word()

  String getWord() {
    return word;
  } // getWord()

  int getFreq() {
    return freq;
  } // getFreq()

  void incr() {  // increments the word count
    freq++;
  } // incr()

  public int compareTo(Word w) {
    //return word.compareTo(w.word);
    return freq - w.freq;
  }
  
  String toString() {  // print representation of Word objects
    return "<"+word+", "+freq+">";
  }
} // class Word

