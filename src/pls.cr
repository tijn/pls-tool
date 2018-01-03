require "./plstool/*"
require "pls"
require "option_parser"

module Plstool
  def self.parse_options
    options = {
      :all     => false,
      :verbose => false,
    }
    OptionParser.parse! do |parser|
      parser.banner = "Usage: pls [OPTION]... PLS-FILE...\n"

      parser.on("-a", "--all", "Show all information (by default it only shows the file entries)") do |path|
        options[:all] = true
      end

      parser.on("-h", "--help", "Display this screen") do
        puts parser
        exit
      end

      parser.on("-v", "--verbose", "Verbose output (also outputs the filename of the pls)") do
        options[:verbose] = true
      end
    end
    return options
  rescue error : OptionParser::InvalidOption
    STDERR.puts error
    exit 1
  end

  options = parse_options

  ARGV.each_with_index do |arg, index|
    puts "\n" if options[:verbose] && index > 0
    puts "# #{arg}:\n\n" if options[:verbose]
    pls = PLS::Playlist.parse(File.read(arg))
    if options[:all]
      puts pls.to_s
    else
      pls.files.values.each do |file|
        puts file
      end
    end
  end
end
