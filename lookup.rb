def get_command_line_argument
  # ARGV is an array that Ruby defines for us,
  # which contains all the arguments we passed to it
  # when invoking the script from the command line.
  # https://docs.ruby-lang.org/en/2.4.0/ARGF.html
  if ARGV.empty?
    puts "Usage: ruby lookup.rb <domain>"
    exit
  end
  ARGV.first
end

# `domain` contains the domain name we have to look up.
domain = get_command_line_argument

# File.readlines reads a file and returns an
# array of string, where each element is a line
# https://www.rubydoc.info/stdlib/core/IO:readlines
dns_raw = File.readlines("zone")

def parse_dns(dns_raw)
  dns_records = {}
  dns_intermediate1 = dns_raw.map{|x| x.split(",")}
  dns_intermediate2 = dns_intermediate1.map{|x| x.map{|i| i.strip}}
  dns_intermediate2.each{|array| dns_records[array[1]] = {:type => array[0], :ip_address => array[2]}}
  dns_records
end

def resolve(dns_records, lookup_chain, domain)
  key = dns_records.keys
  if !(key.include?(domain))
    puts "Record Not Found"
    lookup_chain
  elsif dns_records[domain][:type]=="A"
    lookup_chain.push(dns_records[domain][:ip_address])
    lookup_chain
  elsif dns_records[domain][:type]=="CNAME"
    lookup_chain.push(dns_records[domain][:ip_address])
    resolve(dns_records, lookup_chain, dns_records[domain][:ip_address])
  end
end

# To complete the assignment, implement `parse_dns` and `resolve`.
# Remember to implement them above this line since in Ruby
# you can invoke a function only after it is defined.

dns_records = parse_dns(dns_raw)
lookup_chain = [domain]
lookup_chain = resolve(dns_records, lookup_chain, domain)
puts lookup_chain.join(" => ")
