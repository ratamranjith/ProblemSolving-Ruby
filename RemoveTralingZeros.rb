#----------------------
# Remove Trailing Zeros
input = "216.800.0940.1960"
p input.gsub(/[0]$/, "")

#----------------------------------------
# Remove Trailing Zeros after each period
val = ""
input.split(".").each_with_index do |x, index|
	period = (index.eql? 0)? "": "."
	val += period + x.gsub(/[0]$/, "") 
end
p val