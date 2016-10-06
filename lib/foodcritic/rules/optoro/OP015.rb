rule 'OP015', 'Must have source_url in metadata pointing to the repository containing the code' do
  tags %w(optoro metadata style)
  metadata do |ast, filename|
    unless ast.xpath('descendant::stmts_add/command/ident/@value="source_url"')
      [file_match(filename)]
    end
  end
end
