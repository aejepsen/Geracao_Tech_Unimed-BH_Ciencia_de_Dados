
#entrada = input('Entre com as distancias :')
#resultado = [int(x) for x in entrada.split(' ')]

#distancia, diametro1, diametro2 = resultado



#ICM = N/((X/2)+(Y/2))
#ICM = distancia/(diametro1+diametro2)


#entrada = input('Entre com as distancias :').split(' ')
#ICM = int(entrada[0])/(int(entrada[1])+int(entrada[2]))
#print(f'{ICM:,.2f}')
#print(f'{ICM:,.2f}')
#entrada = input().split(' ')
#distancia= (int(entrada[0])*int(entrada[1]))/12
#print(f'{distancia:,.3f}')

def build_person(first_name, last_name):
	person = {'first': first_name, 'last': last_name}
	return person
	
musician = build_person('Rod', 'Stuart')
print(musician)

def build_person(first_name, last_name, age=''):
	person = {'first': first_name, 'last': last_name}
	if age:
		person['age'] = age
	return person
	
musician = build_person('Rod', 'Stuart', age='55')
print(musician)

def get_formatted_name(first_name, last_name, middle_name=''):
	full_name = f'\n {first_name}  {last_name}'
	if middle_name:
		full_name =f'\n {first_name}  {middle_name} {last_name}'
	return full_name.title()
while True:
	f_name = input('First name:  ')
	l_name = input('Last name:  ')

	formatted_name = get_formatted_name(f_name, l_name, middle_name = input('First name:  '))
	print(f'\n {formatted_name} welcome !')
	break
	
	
	
	
