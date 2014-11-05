class Complement
	# DNA_TO_RNA_MATCHES = {
	# 	'G' => 'C',
	# 	'C' => 'G',
	# 	'T' => 'A',
	# 	'A' => 'U'
	# }

	def self.convert_dna(dna)
		if dna == 'C'
			dna.replace 'G'
		elsif dna == 'G'
			dna.replace 'C'
		elsif dna == 'T'
			dna.replace 'A'
		else dna == 'A'
			dna.replace 'U'
		end
	end

	def self.convert_rna(rna)
		if rna == 'G'
			rna.replace 'C'
		elsif rna == 'C'
			rna.replace 'G'
		elsif rna == 'A'
			rna.replace 'T'
		else rna == 'U'
			rna.replace 'A'
		end
	end		

	def self.nucleotide_constructor(strand, method)
		strand.chars.map { |nucleotide| 
			send(method, nucleotide) }.join
	end

	def self.of_dna(strand)			
		method = :convert_dna
		self.nucleotide_constructor(strand, method)
	end

	def self.of_rna(strand)
		method = :convert_rna
		self.nucleotide_constructor(strand, method)
	end
end