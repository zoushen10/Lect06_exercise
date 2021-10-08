cat nem.fasta | awk '{
# Is this line a fasta header
if(substr($1,1,1)==">")
 {
 print "this is a header line: " $0; 
 hline=FNR ;
  }
  # Identify the first line of the sequence
  # ...and then the first character of that line
  if(FNR==hline+1)
   {
   print "Protein "FNR" First line is:" $0;
   first_seq_character=substr($0,1,1)
   print "First character is: " first_seq_character
   print first_seq_character > "first_seq_character.txt" 
    }
	}'
