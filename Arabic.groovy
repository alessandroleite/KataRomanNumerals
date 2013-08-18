def arabic_to_roman = Arabic.&to_roman

static String to_roman(arabic) {
	def VALUES = [1000:'M', 900:'CM', 500:'D', 400:'CD', 100:'C', 90:'XC', 50:'L', 40:'XL', 10:'X', 9:'IX', 5:'V', 4:'IV', 1:'I']
	def roman = ''

	VALUES.each { k, v ->
		while (arabic >= k ) {
			roman += v
			arabic -= k
		}
	}
	return roman
}

def values_to_test = [1:'I', 2:'II', 3:'III', 4:'IV', 5:'V', 6:'VI', 7:'VII', 8:'VIII', 9:'IX', 10:'X', 11:'XI', 14:'XIV', 20:'XX',
	29:'XXIX', 30:'XXX', 40:'XL', 50:'L', 69:'LXIX', 100:'C', 104:'CIV', 400:'CD', 500:'D', 900:'CM', 999:'CMXCIX', 1000:'M',
	2013:'MMXIII']

values_to_test.each { arabic, roman -> 	assert roman == arabic_to_roman (arabic)}