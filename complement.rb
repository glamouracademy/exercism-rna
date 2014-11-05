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

	def self.of_dna(dna_strand)
		dna_nucleotide_array = dna_strand.split("")
		dna_nucleotide_array.map do |nucleotide| 
			convert_dna(dna)
			# method_name = :convert_dna
			# send(method_name, dna)
		end	
		
		rna = dna_nucleotide_array.join
	end

	def self.of_rna(rna_strand)
		rna_nucleotide_array = rna_strand.split("")

		rna_nucleotide_array.map do |nucleotide| 
			convert_rna(rna)
		end

		dna = rna_nucleotide_array.join
	end
end