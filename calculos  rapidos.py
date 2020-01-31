import math
import time
import os

def km_cm(u):
	return 100000*u

def km_m(u):
	return 1000*u

def m_km(u):
	return u*0.001


def calcular_altitud(lat, lon):
	api_key="AIzaSyC9QKBcDPx-r1y23IHE-Wf3ZjNZZJ1I6H4"
	url="https://maps.googleapis.com/maps/api/elevation/json?locations=%s,%s&key=%s"%(lat,lon,api_key)
	req = requests.get(url)
	req_json=req.json()
	altitud_m=req_json["results"][0]["elevation"]
	return m_km(float(altitud_m))



def calcular_landa(frecuencia):
	#entra en Ghz

	frecuencia=frecuencia*10**9
	#land=c/f
	vel_luz=3*(10**8)
	#print(frecuencia, vel_luz)
	landa=vel_luz/frecuencia
	#print(frecuencia, landa, frecuencia/10**9, (frecuencia/10**9)/0.36)
	#landa=(frecuencia/10**9)/0.3
	print("landa", landa, "en [m]")
	return landa



def ganancia_max(eficiencia, diametro, landa):
	return eficiencia*((math.pi*diametro)/landa)**2


def theta_3db(landa, diametro):
	#70 es un valor tipico, antes 65
	return 70*(landa/diametro)


def ganancia(eficiencia, theta3db):
	return eficiencia*(48360/(theta3db**2))

def otra_ganancia(eficiencia, diametro, landa):
	theta3db=theta_3db(landa,diametro)
	res=eficiencia*(48360/(theta3db**2))
	print("Gx: ", res, "-----> tambien: ", 10*math.log10(res), " en [dB]")
	return res

def c_band():
	#Standard C Band	5.850–6.425	3.625–4.200 en GHz
	#polarizacion horizontal, oder vertical, circular
	#Ascendente: 6 GHz Descendente: 4 Ghz. BW disponible: 500Mhz
	pass

def ku_band():
	"""enlaces descendentes desde 11,7 a 12,2 GHz (con frecuencia de oscilador local
	desde 10,750 hasta 11,250 GHz) y enlaces ascendentes desde 14 hasta 14,5 GHz"""
	#12 – 18 GHz
	#polarizacion lineal
	#Ascendente: 14 Ghz Descendente: 12 Ghz. BW disponible: 500Mhz
	pass

def ka_band():
	#26,5 – 40 GHz
	#uplink in either the 27.5 GHz and 31 GHz bands
	#polarizacion circular
	#Ascendente: 30 Ghz  Descendente: 20 Ghz. BW disponible: 2500Mhz.
	pass


def freq_band(banda):
	freq_up=0
	freq_d=0
	if banda=="c":
		freq_up=6*10**9
		freq_d=4*10**9
	elif banda=="ku":
		freq_up=14*10**9
		freq_d=12*10**9
	elif banda=="ka":
		freq_up=30*10**9
		freq_d=20*10**9
	else:
		print("incorrecto...")
	return freq_up, freq_d






def prueba1():
	f=12*10**9 #12GHZ
	landa=calcular_landa(f) #resultado en km.
	print(km_cm(landa)) #resultado en cm


def veces_dB(param):
	res=10*math.log10(param)
	print(param, " es ", res, " [dB]")
	return res

def veces_dBm(param):
	res=10*math.log10(param*1000)
	print(param, " es ", res, " [dBm]")
	return res

def dB_veces(param):
	res=10**(param/10)
	print(param, " es ", res, " veces")
	return res

def temperatura_equivalente(param):
	#f=1+te/to -> te=to(f-1)
	to=290
	figura_ruido=param
	te=to*(figura_ruido-1)
	print(param, " temperatura equivalente ", te, " grados")
	return te

def prueba2():
	veces_dB(10/5)
	dB_veces(veces_dB(10/5))
	dB_veces(30)

	veces_dBm(1)
	bucle(True)

def menu():
    """
    Función que limpia la pantalla y muestra nuevamente el menu
    """
    os.system('cls') # NOTA para windows tienes que cambiar clear por cls
    print ("Selecciona una opción")
    print ("\t1 - dB a Veces")
    print ("\t2 - Veces a dB")
    print ("\t3 - Veces a dBm")
    print ("\t4 - Te si Fig_ruido")
    print ("\t5 - Landa")
    print ("\t6 - G_x si eficiencia, diametro, landa")
    print("------------")
 


def bucle(flag):
    while flag==True:
        print("---------------------")
        print("CALCULOS RAPIDOS")
        print("---------------------")
        menu()
        opcion_menu=input("Elige>> ")
        if opcion_menu==str(1):
        	cantidad=input("Cantidad>> ")
        	try:
        		dB_veces(float(cantidad))
        		time.sleep(2)
        	except Exception as e:
        		print(e)
        		time.sleep(2)

        elif opcion_menu==str(2):
        	cantidad=input("Cantidad>> ")
        	veces_dB(float(cantidad))
        	time.sleep(2)           
        elif opcion_menu==str(3):
        	cantidad=input("Cantidad>> ")
        	veces_dBm(float(cantidad))
        	time.sleep(2)

        elif opcion_menu==str(4):
        	cantidad=input("Cantidad>> ")
        	temperatura_equivalente(float(cantidad))
        	time.sleep(2)
        elif opcion_menu==str(5):
        	cantidad=input("Freq en [Ghz]>> ")
        	calcular_landa(float(cantidad))
        	time.sleep(2) 
        elif opcion_menu==str(6):
        	cantidad1=input("Eficiencia>> ")
        	cantidad2=input("Diametro en [m]>> ")
        	cantidad3=input("Landa en [m]>> ")
        	otra_ganancia(float(cantidad1), float(cantidad2), float(cantidad3))
        	time.sleep(5)   

            
        elif opcion_menu==str(9):
            print("")
            input(" Terminado ")
            
            flag=False
            break
        else:
            print("")
            print("Incorrecto, menu principal...")
            bucle(True, )
        
        
if __name__ == "__main__":
	print("-----------------------")
	print("Simulación de pérdidas")
	print("-----------------------")
	RADIO_TIERRA=8500 #km
	VEL_LUZ=300000 #km/s
	prueba2()
	#ejercicio_1()
	#f_up, f_d=freq_band("c")
	#k,a=diccionarios("vertical")
	#coeficientes_gama_p838(k,a, f_up)
	
else:
	print("modulo perdidas importado")