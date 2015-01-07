require 'benchmark'

Benchmark.bmbm(7) do |x|
	N = 100_000
	x.report 'plus' do
		str = ''
		N.times { str += 'a' }
	end

	x.report 'append' do
		str = ''
		N.times { str << 'a' }
	end
end
