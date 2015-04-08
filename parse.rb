load 'cp.rb'
load 'macro.rb'

def parse_block(s, method="FunctionBody")
    p "parse using #{method}, #{s}"
    scanner = CScanner.new(s, false)
    error = MyError.new("whaterver", scanner)
    parser = Parser.new(scanner, error)
    parser.Get
    ret = parser.send(method)
    error.PrintListing
    return ret
end


# parse string
# preprocess - true: do preprocess first, false: no do preprocess, just parse
def parse(s, preprocess = true)
    p "parse #{s}"
    
    scanner = CScanner.new(s, false)
    error = MyError.new("whaterver", scanner)
    parser = Parser.new(scanner, error)
    # parser.Get
    if preprocess
        content = parser.Preprocess
            begin
                aFile = File.new("pre.#{Time.now.to_i}", "w+")
                aFile.puts content
                aFile.close
            rescue Exception=>e
                p e
            end
        
        scanner.Reset
        # parser.Get
    end
    p "===== start parsing ====="
    parser.Get
    ret = parser.C
    error.PrintListing
    p "===== end of parsing ====="
    return ret
end

def preprocess(s)
    scanner = CScanner.new(s, false)
    error = MyError.new("whaterver", scanner)
    parser = Preprocessor.new(scanner, error)
    content = parser.Preprocess
    begin
       aFile = File.new("pre.#{Time.now.to_i}", "w+")
       aFile.puts content
       aFile.close
    rescue Exception=>e
       p e
    end
    p "after preprocess:#{content}"
end

def preprocess_file(fname)
    s = read_file(fname)
    preprocess(s)
end

# parse file
# preprocess - true: do preprocess first, false: no do preprocess, just parse
def parse_file(fname, preprocess = true)
    content = read_file(fname)
    parse(content, preprocess)
end

def test
    # p parse_file("pre.1424096273", false)
    p parse_file("pre.1428384522", false)
end
# test