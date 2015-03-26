rule 'OP001', 'All Cookbooks must have an MIT license in metadata' do
  tags %w(optoro metadata style)
  metadata do |ast|
    ast.xpath(%Q(//command[ident/@value='license']/descendant::tstring_content[@value != 'MIT']))
  end
end
