require 'minitest/autorun'
require_relative 'complement'

class ComplementTest < MiniTest::Unit::TestCase
  def test_rna_complement_of_cytosine_is_guanine
    assert_equal 'G', DNAComplement.of_dna('C')
  end

  def test_rna_complement_of_guanine_is_cytosine
    skip
    assert_equal 'C', DNAComplement.of_dna('G')
  end

  def test_rna_complement_of_thymine_is_adenine
    skip
    assert_equal 'A', DNAComplement.of_dna('T')
  end

  def test_rna_complement_of_adenine_is_uracil
    skip
    assert_equal 'U', DNAComplement.of_dna('A')
  end

  def test_rna_complement
    skip
    assert_equal 'UGCACCAGAAUU', DNAComplement.of_dna('ACGTGGTCTTAA')
  end

  def test_dna_complement_of_cytosine_is_guanine
    skip
    assert_equal 'G', RNAComplement.of_rna('C')
  end

  def test_dna_complement_of_guanine_is_cytosine
    skip
    assert_equal 'C', RNAComplement.of_rna('G')
  end

  def test_dna_complement_of_uracil_is_adenine
    skip
    assert_equal 'A', RNAComplement.of_rna('U')
  end

  def test_dna_complement_of_adenine_is_thymine
    skip
    assert_equal 'T', RNAComplement.of_rna('A')
  end

  def test_dna_complement
    skip
    assert_equal 'ACTTGGGCTGTAC', RNAComplement.of_rna('UGAACCCGACAUG')
  end
end
