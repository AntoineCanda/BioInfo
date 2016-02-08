package windows;

import java.util.ArrayList;
import sequence.Sequence;


/**
 * la classe windows cree des fenetres afin de faciliter la recherche de
 * sequence dans le genome
 * 
 * @author Antoine
 * 
 */
public class Windows extends Sequence {

	private ArrayList<String> windows;

	public Windows() {
		this.windows = new ArrayList<String>();
	}

	public ArrayList<String> createWindows(int l, int p, String f) {
		String sequence = this.getSequence(this.createSequences(f));
		int i = 0;
		while (i < (sequence.length() / p)) {
			String win = new String();
			win = win.concat(String.valueOf((1 + i * p)));
			win = win.concat("  ");
			if ((p * i + l) < sequence.length()) {
				win = win.concat(sequence.substring(p * i, l + p * i));
				win = win.concat("  ");
				win = win.concat(String.valueOf((l + p * i)));
			} else {
				win = win.concat(sequence.substring((p * i)));
				win = win.concat("  ");
				win = win.concat(String.valueOf(sequence.length()));
			}
			this.windows.add(win);
			i++;
		}
		return this.windows;
	}
	
	public String getWindows(String seq){
		String res = new String();
		int indexBegin = 0;
		int indexEnd = seq.length()-1;
		while(seq.charAt(indexBegin) != ' '){
			indexBegin++;
		}
		indexBegin += 2;
		while(seq.charAt(indexEnd) != ' '){
			indexEnd--;
		}
		indexEnd -= 1;
		res = res.concat(seq.substring(indexBegin,indexEnd));
		return res;
	}

	public void windows(int l, int p, String file) {
		this.createWindows(l, p, file);
		for (String win : this.windows) {
			System.out.println(win);
			//System.out.println(getWindows(win));
			//System.out.println(getWindows(win).length());
		}
	}
	
}
