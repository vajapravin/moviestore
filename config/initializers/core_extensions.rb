# monkey-patch timestamp to DateTime
Fixnum.include CoreExtensions::Fixnum
Hash.include CoreExtensions::Hash
Array.include CoreExtensions::Array