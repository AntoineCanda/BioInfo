package fasta;
import sequence.Sequence;

public class Fasta extends Sequence {

	public Fasta() {
	}
	
	/**
	 * Methode qui affiche la sequence d'ADN du fichier f
	 * @param f le fichier dont on extrait la sequence
	 */
	public void printFastaSequences(String f) {
		System.out.println(getSequence(this.createSequences(f)));
	}
	
	/**
	 * Methode qui affiche l'identifiant et la longueur de la sequence d'ADN
	 * @param f le fichier dont on extrait la sequence
	 */
	public void printFastaStats(String f) {
		String[] res = this.createSequences(f);
		String id = getIdentifiant(res);
		String seq = getSequence(res);
		System.out.println(id + " " + seq.length());
	}

}
