#list the subject accession for all HSPs
while read query acc_ver subject acc_ver identity alignment_length mismatches gap_opens q_start q_end s_start s_end evalue bitscore blastoutput2.out;do
	if ${acc_ver:1:1} == 
