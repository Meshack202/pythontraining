print('Hello World')


num1 = 15
num2 = 12.98
name = 'Uju'
X = True

#Escape Character
word = 'We\'re brothers from the other side of the town'
print(word)

# NEW LINE
word2 = 'Python is fun\nPython is easy\nPython is fun and Great'
print(word2)

#Multi Line '''
print('\n')
word3 = '''Python is fun
Python is easy
Python is fun and great
'''
print(word3)
#String Concatenation
print('Hello' + ' '+ 'World')
course = 'Python'

print('Welcome to', course, 'Class')

#String Formatting
price1 = 45000
price2 = 85000
price3 = 4500
report = 'I sold 4 pairs of shirt for {}, a suit for {} and 5 jackets for {}'
print(report.format(price1,price2,price3))

print(f'I sold 4 pairs of shirt for {price1}, a suit for {price2} and 5 jackets for {price3}')

#STRING METHOD
word1 = 'python'
word2 = 'PYTHON'
word3 = 'python is fun to learn'
word4 = '      info'
print(word1.upper())
print(word2.lower())
print(word3.capitalize())
print(word3.title())
print(word3.split())
print(word4.strip())
