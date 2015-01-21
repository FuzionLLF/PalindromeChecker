public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String blah = new String();
  
  for (int i = 0; i < word.length(); i++)
  {
    if (Character.isLetter(word.charAt(i)))
    {
      blah = blah + word.charAt(i);
    }
  }
  blah = blah.toLowerCase();
  for (int i = 0; i < blah.length()/2; i++)
  {
    if (blah.charAt(i) != blah.charAt(blah.length()-(i+1)))
    {
      return false;
    }
  }
  return true;
}