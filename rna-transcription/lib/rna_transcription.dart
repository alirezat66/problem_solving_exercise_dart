class RnaTranscription {
  String toRna(String dna) {
    List<String> listDna = dna.split('');
    String rna = listDna.fold(
        '',
        (rna, element) => rna += element == 'G'
            ? 'C'
            : element == 'C'
                ? 'G'
                : element == 'T'
                    ? 'A'
                    : 'U');
    return rna;
  }
}
