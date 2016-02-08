package sequence;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;

/**
 * La classe Sequence contient les methodes qui cree les sequences de nucleotides. 
 * @author Antoine
 *
 */
public class Sequence {

	
	/**
	 * Methode qui cree un tableau de String contenant la sequence d'ADN en position 0 et l'identifiant en position 1
	 * @param file le fichier que l'on souhaite traiter
	 * @return un tableau de String contenant la sequence et l'identifiant de maniere separée
	 */
	public String[] createSequences(String file) {
		File f = new File(file);
		FileReader freader;
		String sequence = "";
		String identifiant = "";
		String res[] = new String[2];
		try {
			freader = new FileReader(f);
			BufferedReader buffer = new BufferedReader(freader);
			String tmp = new String();

			while ((tmp = buffer.readLine()) != null) {
				if (tmp.length() > 0) {
					if (tmp.charAt(0) == '>') {
						identifiant = identifiant.concat(tmp.substring(1));
					} else {
						sequence = sequence.concat(tmp);
					}
				}
			}
			buffer.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		res[0] = sequence;
		res[1] = identifiant;
		return res;
	}
	
	/**
	 * Methode permettant a partir du tableau contenant l'id et la sequence d'ADN de recuperer la sequence d'ADN
	 * @param t un tableau de String
	 * @return un String contenant la sequence d'ADN
	 */
	public String getSequence(String[] t) {
		String sequence = new String();
		if (t.length == 2) {
			sequence = t[0];
		}
		return sequence;
	}
	
	/**
	 * Methode permettant a partir du tableau contenant l'id et la sequence d'ADN de recuperer l'identifiant
	 * @param t un tableau de String
	 * @return un String contenant l'identifiant
	 */
	public String getIdentifiant(String[] t) {
		String identifiant = new String();
		if (t.length == 2) {
			identifiant = t[1];
		}
		return identifiant;
	}

	
}
