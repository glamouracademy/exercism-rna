class Complement


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
		nucleotide_array = strand.split("")
		nucleotide_array.map do |nucleotide| 
			send(method, nucleotide)
		end	
		
		new_strand = nucleotide_array.join
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