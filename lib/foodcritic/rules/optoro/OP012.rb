rule 'OP012', 'Remove \'knife test\' from Thorfile' do
  tags %w(optoro)
  cookbook do |filename|
    filepath = File.join(filename, 'Thorfile')
    unless open(filepath).grep(/knife_test/)
      [file_match(filepath)]
    end
  end
end
