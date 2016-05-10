EMAIL = kyclark@email.arizona.edu

clean:
	find . \( -name \*.conf -o -name \*.out -o -name \*.log -o -name \*.params -o -name launcher-\* \) -exec rm {} \;

reilly1:
	sbatch --mail-user=$(EMAIL) --mail-type=END,FAIL -n 1 -N 1 -A iPlant-Collabs -p development -t "02:00:00" ./run-velvet.sh -f $(WORK)/reilly/RNA17_Klugipaussus_RawReads.fa.gz -o $(WORK)/reilly/velvet-out

test:
	./run-velvet.pl -d $(SCRATCH)/data/assembly/generic/test_long.fa -s 29 -o $(SCRATCH)/velvet-out --debug --cov_cutoff 4 --min_contig_lgth 100 -a yes 

testall:
	./run-velvet.pl -d $(SCRATCH)/data/assembly/generic -s 29 -o $(SCRATCH)/velvet-out --debug

submit:
	sbatch --mail-type BEGIN,END,FAIL --mail-user $(EMAIL) test-velvet.sh

update:
	apps-addupdate -F app.json

upload:
	files-upload -F $(WORK)/velvet-1.2.07 kyclark/applications
