package bioseq;
/**
 * Classe contenant la fonction main du programme
 * @author Antoine
 */

import fasta.Fasta;
import mutation.Mutation;
import windows.Windows;
import graines.Graines;

public class Bioseq {

	public static void main(String[] args) {
		switch (args[0]) {
		case "print-fasta-sequences":
			Fasta fas = new Fasta(args[1]);
			fas.printFastaSequences(args[1]);
			break;
		case "print-fasta-stats":
			Fasta fas1 = new Fasta(args[1]);
			fas1.printFastaStats(args[1]);
			break;
		case "list-kmers":
			Graines graines1 = new Graines();
			graines1.listKmers(args[2], Integer.parseInt(args[1]));
			break;
		case "common-kmers":
			Graines graines2 = new Graines();
			graines2.commonKmers(args[2], args[3], Integer.parseInt(args[1]));
			break;
		case "ratio-common-kmers":
			Graines graines3 = new Graines();
			graines3.ratioCommonKmers(args[2], args[3], Integer.parseInt(args[1]));
			break;
		case "random-mutations":
			Mutation mutation = new Mutation(args[2]);
			mutation.randomMutations(args[2], Integer.parseInt(args[1]));
			break;
		case "list-spaced-kmers":
			Graines graine1 = new Graines();
			graine1.listSpacedKmers(args[2], args[1]);
			break;
		case "common-spaced-kmers":
			Graines graine2 = new Graines();
			graine2.commonSpacedKmers(args[2], args[3], args[1]);
			break;
		case "ratio-common-spaced-kmers":
			Graines graine3 = new Graines();
			graine3.ratioCommonSpacedKmers(args[2], args[3], args[1]);
			break;
		case "windows":
			Windows win1 = new Windows(args[3]);
			win1.windows(Integer.parseInt(args[1]),Integer.parseInt(args[2]) , args[3]);
			break;
		case "mapper-windows-kmers":
			Graines graine4 = new Graines();
			graine4.mapperWindowsKmers(Integer.parseInt(args[1]), Integer.parseInt(args[2]), Integer.parseInt(args[3]),Double.parseDouble(args[4]), args[5], args[6]);
			break;
		case "mapper-windows-spaced-kmers":
			Graines graine5 = new Graines();
			graine5.mapperWindowsSpacedKmers(Integer.parseInt(args[1]), Integer.parseInt(args[2]), args[3],Double.parseDouble(args[4]), args[5], args[6]);
			break;
		case "best-matches":
			Graines graine6 = new Graines();
			graine6.bestMatches(Integer.parseInt(args[1]),args[2],args[3],args[4]);
			break; 
		case "VJ-discover":
			Graines graine7 = new Graines();
			graine7.VJDiscover(args[1],args[2],args[3], args[4]);
			break; 
		default:
			System.out.println(
					"Erreur\n Usage: - args[0] correspond a la fonction souhaite\n args[1] a args[n] aux arguments de args[0]\n");
		}

	}

}
