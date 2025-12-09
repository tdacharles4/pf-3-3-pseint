subproceso resul <- sumar(i)
	definir j, num Como Entero;
	definir nums, resul como real;
	
	dimension nums[i];
	escribir "Indique los ", i, " numeros que desea SUMAR";
	para cada num de nums
		leer num;
	FinPara
	resul <- nums[0];
	para j<-1 hasta i-1
		resul <- resul + nums[j];
	FinPara
	escribir "Su resultado es ", resul;
FinSubProceso

subproceso resta <- restar(i)
	definir j, num Como Entero;
	definir nums, resul como real;
	
	dimension nums[i];
	escribir "Indique los ", i, " numeros que desea RESTAR";
	para cada num de nums
		leer num;
	FinPara
	resul <- nums[0];
	para j<-1 hasta i-1
		resul <- resul - nums[j];
	FinPara
	escribir "Su resultado es ", resul;
FinSubProceso

subproceso div <- dividir(i)
	definir j, num Como Entero;
	definir nums, resul como real;
	
	dimension nums[i];
	escribir "Indique los ", i, " numeros que desea DIVIDIR";
	para cada num de nums
		leer num;
	FinPara
	resul <- nums[0];
	para j<-1 hasta i-1
		resul <- resul / nums[j];
	FinPara
	escribir "Su resultado es ", resul;
FinSubProceso

subproceso mult <- multiplicar(i)
	definir j, num Como Entero;
	definir nums, resul como real;
	
	dimension nums[i];
	escribir "Indique los ", i, " numeros que desea MULTIPLICAR";
	para cada num de nums
		leer num;
	FinPara
	resul <- nums[0];
	para j<-1 hasta i-1
		resul <- resul * nums[j];
	FinPara
	escribir "Su resultado es ", resul;
FinSubProceso

Algoritmo Laboratorio3
	definir menu, menus como caracter;
	definir selector, i, activos como entero;
	definir resul como real;
	definir activo como logico;
	dimension menus[6];
	menus[0] <- "Bienvenido al menu principal de la calculadora";
	menus[1] <- "Para iniciar, por favor seleccione una de las siguientes modalidades:";
	menus[2] <- "1.- Sumar";
	menus[3] <- "2.- Restar";
	menus[4] <- "3.- Dividir";
	menus[5] <- "4.- Multiplicar";
	activo <- verdadero;
	
	mientras activo = verdadero
		activos <- 1;
		para cada menu de menus
			escribir menu;
		finpara
		leer selector;
		escribir "Antes de continuar, defina con cuantos numeros quiere trabajar";
		leer i;
		
		segun selector hacer
			1:
				resul <- sumar(i);
			2:
				resul <- restar(i);
			3:
				resul <- dividir(i);
			4: 
				resul <- multiplicar(i);
			De otro modo:
				escribir "La opcion seleccionada no existe en el menu.";
		FinSegun
		escribir "Presione 0 para salir de la calculadora. Presione cualquier otro numero para regresar al menu principal.";
		leer activos;
		si activos = 0 Entonces
			activo <- Falso;
		SiNo
			activo <- Verdadero;
		FinSi
	FinMientras
FinAlgoritmo
