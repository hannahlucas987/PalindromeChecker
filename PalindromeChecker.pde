public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
  public boolean palindrome(String word) {
    word = word.toLowerCase();
    word = onlyLetters(word);
    String drow = new String("");
    drow = reverse(word);
    for(int i = 0; i<word.length(); i++){
      if(word.charAt(i) != drow.charAt(i)){
        return false;
      }
    }
    return true;
  }
  
  public String onlyLetters(String w){
    String n = new String("");
    for (int i = 0; i < w.length(); i++) {
      if (Character.isLetter(w.charAt(i)) == true) {
        n = n + w.charAt(i);
      }
    }
    return n;
  }
  
  public String reverse(String str) {
    String sNew = new String();
    for (int i = str.length(); i > 0; i--) {
      sNew = sNew + str.substring(i - 1, i);
    }
    return sNew;
  }


