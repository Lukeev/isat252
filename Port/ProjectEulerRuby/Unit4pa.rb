class Unit4pa
include Math
# Ruby pa for unit 4 written by Luke Everett
# I certify that this work complies with the JMU honor code-Luke

=begin
This method takes in a number,n, and returns the
factors of n excluding itself.
=end
def factors(n)
  fact = []
  for i in 1..n/2
    if n%i==0
      fact.push(i)
    end
  end
  return fact
end

=begin
Prints the a number followed by a list of its factors.
=end
def print_factors(n)
  puts n.to_s() + " " + self.factors(n).inspect()+"\n"
end

=begin
Tells whether a given number n is a perfect number
i.e. n is the sum of its factors.
=end
def perfect?(n)
  perf = factors(n)
  sum = 0
  for each in perf
    sum+=each
  end
  if sum==n
    return true
  else
    return false
  end
end

=begin
Tells whether or not a given number n is a prime number
=end
def prime?(n)
  for i in 2..Math.sqrt(n).to_i
    if n%i==0
      return false
    end
  end
  return true
end

def print_prime_factors(n) 
    print n.to_s() + "  " + self.prime_factors(n).inspect() +"\n"
end
def prime_factors(n)
  fact = factors(n)
  prime_fact = []
    for each in fact
      if self.prime?(each)
        prime_fact.push(each)
        prime_fact.delete(1)
      end
    end
    return prime_fact
  end

=begin
Prints the first n primes with p primes per line.
=end
def print_primes(n,p)
  counter=0
  rowNum=0
  num = 1
  while counter != n
    num+=1
    if prime?(num)
      if rowNum.eql?(p)
        rowNum = 0
        print "\n"
      end
     printf(num.to_s().rjust(5))
     counter += 1
     rowNum += 1
    end
   end
  end
end

=begin
Returns an array of the prime factors of a given number n
=end



if __FILE__ == $0
   x = Unit4pa.new()
   print "Printing factors of the numbers between 1000 and 1010.\n\n"
   for i in 1000..1010
     x.print_factors(i)
   end
   print"\n"
   print "Printing the perfect numbers less than 10000 and their factors.\n"
   for i in 1..10000
     if x.perfect?(i)
       x.print_factors(i)
     end
   end
   print"\n"
   print "Printing the first 200 primes 20 per line.\n"
   x.print_primes(200,20)
   print "\n"
   print "\nPrinting the prime factors of the numbers between 1000 and 1010 \n"
   for i in 1000..1010
     x.print_prime_factors(i)
   end
   
end