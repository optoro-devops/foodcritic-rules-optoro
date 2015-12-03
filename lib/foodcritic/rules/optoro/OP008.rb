rule 'OP008', 'No Strainerfile allowed' do
  tags %w(optoro)
  cookbook do |filename|
    filepath = File.join(filename, 'Strainerfile')
    if File.exists?(filepath)
      [file_match(filepath)]
    end
  end
end
