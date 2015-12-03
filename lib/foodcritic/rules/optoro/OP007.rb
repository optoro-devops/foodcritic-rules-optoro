rule 'OP007', 'Must have Thorfile' do
  tags %w(optoro)
  cookbook do |filename|
    unless File.exists?(File.join(filename, 'Thorfile'))
      [file_match(File.join(filename, 'Thorfile'))]
    end
  end
end
