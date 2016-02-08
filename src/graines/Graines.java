package graines;
/**
 * La classe represente les fonctions de base sur les kmers en utilisant le concept de graines
 * @author Antoine 
 */
import java.util.ArrayList;
import windows.Windows;

public class Graines extends Windows {
	private ArrayList<String> ssq1;
	private ArrayList<String> ssq2;
	private ArrayList<String> res;

	public Graines() {
		ssq1 = new ArrayList<String>();
		ssq2 = new ArrayList<String>();
		res = new ArrayList<String>();
	}

	
	public String createGraine(int taille){
		String graine = new String();
		for(int i=0; i<taille;i++){
			graine = graine.concat("#");
		}
		return graine;
	}
	
	/**
	 * La fonction creer des k mers reprenant le format de la graine et les ajoute dans une liste
	 * @param f1 le fichier dont on tire la sequence d'adn
	 * @param format la graine representant un kmer 
	 * @return une liste de kmers
	 */
	
	/*
	 * Le principe est le suivant :
	 * On obtient la taille du kmers en calculant la longueur de la graine. 
	 * On utilise une boucle for de l'indice 0 a l'indice = taille de la sequence - taille graine +1.
	 * On utilise la methode subString commencant a l'indice i de la boucle et pour les j caracteres la suivant (j = taille graine)
	 *  on test si le caractere correpondant de la graine = '#' ou pas si oui on ajoute a la sous chaine sinon non. 
	 *  On ajoute la sequence obtenue dans une liste.
	 */
	public ArrayList<String> createSubSequenceGraines(String f1, String format) {
		int taille = format.length();
		String sequence = new String();
		if(f1.endsWith(".fasta")){
		sequence = getSequence(this.createSequences(f1));
		}
		else {//if(!f1.endsWith(".fasta")){
			sequence = sequence.concat(f1);
		}
		ArrayList<String> resultat = new ArrayList<String>();
		for (int i = 0; i < (sequence.length() - taille + 1); i++) {
			String subseq = new String();
			for (int j = 0; j < taille; j++) {
				if (format.charAt(j) == '#') {
					subseq = subseq.concat(String.valueOf(sequence.charAt(i + j)));
				} else if (format.charAt(j) != '#') {
					subseq = subseq.concat("");
				}
			}
			resultat.add(subseq);
		}
		return resultat;
	}
	
	public String createGraineBis(String graine){
		String graineBis = new String();
		int poidsGraine = 0;
		for(int i=0; i<graine.length(); i++){
			if (graine.charAt(i)== '#'){
				poidsGraine++;
			}
		}
		for(int i=0; i<poidsGraine; i++){
			graineBis = graineBis.concat("#");
		}
		return graineBis;
	}
	/**
	 * La fonction initialise les deux listes de kmers des fichiers pour preparer le traitement
	 * @param f1 fichier 1 dont on extrait la sequence 1
	 * @param f2 fichier 2 dont on extrait la sequence 2
	 * @param graine presentant le format des kmers
	 */
	public void initializeGraine(String f1, String f2, String graine) {
		String graineBis = this.createGraineBis(graine);
		if(this.ssq1.isEmpty()){
		this.ssq1 = this.createSubSequenceGraines(f1, graine);
		}
		if(this.ssq2.isEmpty()){
		this.ssq2 = this.createSubSequenceGraines(f2, graineBis);
		}
	}	

	/**
	 * La fonction compare les kmers des deux sequences obtenues et ajoute les communs a la liste res
	 * @param f1 fichier1 dont on extrait la sequence 1
	 * @param f2 fichier2 dont on extrait la sequence 2
	 * @param graine le format de la graine
	 */
	public void compareKmersGraines(String f1, String f2, String graine) {
		this.initializeGraine(f1, f2, graine);
		for (String str : this.ssq1) {
			if (this.ssq2.contains(str)) {
				this.res.add(str);
			}
		}
	}
	
	/**
	 * Calculate the ratio of kmers
	 * @return the ratio : a double
	 */
	public double calculateRatio(){
		double ratio = (double)this.res.size()/this.ssq1.size();
		return ratio;
	}
	
	public ArrayList<String> calculateMapperWindows(int lw, int sw,String graine, double rk, String f1, String f2){
		ArrayList<String> resWin = new ArrayList<String>();
		ArrayList<String> winList = this.createWindows(lw, sw, f2);
		for(String win: winList){
			String realWin = this.getWindows(win);
			this.compareKmersGraines(f1, realWin, graine);
			double ratioWin = this.calculateRatio();
			if(ratioWin >= rk){
				resWin.add(win);
			}
			this.ssq2.clear();
			this.res.clear();	
		}
		return resWin;
	}
	
	/**
	 * La methode qui affiche la liste des kmers de la sequence
	 * @param f le fichier dont on extrait la sequence
	 * @param n la taille des kmers souhaites
	 */
	
	public void listKmers(String f, int taille) {
		String graine = this.createGraine(taille);
		ArrayList<String> sseq = this.createSubSequenceGraines(f, graine);
		for (String str : sseq) {
			System.out.println(str);
		}
	}
	
	/**
	 * methode qui va afficher les kmers communs entre les deux sequences
	 * @param f1 le fichier dont on extrait la premiere sequence
	 * @param f2 le fichier dont on extrait la seconde sequence
	 * @param taille la taille des kmers souhaites
	 */
	public void commonKmers(String f1,String f2, int taille){
		String graine = this.createGraine(taille);
		
		this.compareKmersGraines(f1, f2, graine);
		for(String str: this.res){
			System.out.println(str);
		}
	}
	
	/**
	 * methode qui va afficher le ratio des kmers communs entre les deux sequences
	 * @param f1 le fichier dont on extrait la premiere sequence
	 * @param f2 le fichier dont on extrait la seconde sequence
	 * @param taille la taille des kmers souhaites
	 * @return 
	 */
	public double ratioCommonKmers(String f1, String f2, int taille){
		String graine = this.createGraine(taille);
		
		this.compareKmersGraines(f1, f2, graine);
		double ratio = calculateRatio();
		System.out.println("Ratio = " + ratio);
		return ratio;
	}
	
	/**
	 * La methode qui gere l'affichage des kmers obtenus d'apres le format de la graine
	 * @param f1 le fichier dont on souhaite obtenir la sequence d'ADN a traiter
	 * @param graine le format des kmers
	 */
	public void listSpacedKmers(String f1, String graine) {
		ArrayList<String> subseq = this.createSubSequenceGraines(f1, graine);
		for (String ssq : subseq) {
			System.out.println(ssq);
		}
	}
	
	/**
	 * La methode qui gere l'affichage des kmers en commun entre les deux sequences
	 * @param f1 le fichier 1 dont on obtient la sequence d'ADN 1
	 * @param f2 le fichier 2 dont on obtient la sequence d'ADN 2
	 * @param graine le format des kmers 
	 */
	public void commonSpacedKmers(String f1, String f2, String graine) {
		this.compareKmersGraines(f1, f2, graine);
		for (String str : this.res) {
			System.out.println(str);
		}
	}
	
	/**
	 * La methode affiche le ratio obtenu entre les deux sequences pour un format de kmers donne. 
	 * @param f1 le fichier 1 dont on obtient la sequence d'ADN 1
	 * @param f2 le fichier 2 dont on obtient la sequence d'ADN 2
	 * @param graine le format des kmers
	 */
	public double ratioCommonSpacedKmers(String f1, String f2, String graine) {
		this.compareKmersGraines(f1, f2, graine);
		double ratio = calculateRatio();
		System.out.println("Ratio = " + ratio);
		return ratio;
	}

	public void mapperWindowsKmers (int lw, int sw, int lk, double rk, String f1, String f2){
		String graine = createGraine(lk);
		ArrayList<String> resWin = this.calculateMapperWindows(lw, sw, graine , rk, f1, f2);
		for(String win: resWin){
			System.out.println(win);
		}
	}
	
	public void mapperWindowsSpacedKmers (int lw, int sw, String graine, double rk, String f1, String f2){
		ArrayList<String> resWin = this.calculateMapperWindows(lw, sw, graine , rk, f1, f2);
		for(String win: resWin){
			System.out.println(win);
		}
	}
}
