rule 'OP002', 'Missing MIT license' do
  tags %w(optoro)
  cookbook do |filename|
   # unless File.exist?(File.join(filename, 'LICENSE'))
    unless File.exist?(File.join(filename, 'LICENSE')) && File.open(File.join(filename, 'LICENSE')).read =~ /MIT/
      [file_match(File.join(filename, 'LICENSE'))]
    end
  end
end
