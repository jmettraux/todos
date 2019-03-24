
Dir['*.md'].each do |path|

  next if path.match(/\AREADME\.md\z/)
  p path

  system("cp #{path} #{path}.bak")

  lines = File.readlines(path)

  File.open(path, 'wb') do |f|

    blank = false

    lines.each do |line|

      if blank && line == "## src\n"
        f.write(line)
        f.write("\n")
        break
      end

      blank = (line == "\n")

      f.write(line)
    end
  end

  system("rm #{path}.bak")
end

