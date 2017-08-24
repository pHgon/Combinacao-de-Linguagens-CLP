SUBROUTINE ordenaVetor(x, tam) !*Bubblesort
	INTEGER, INTENT(IN) :: tam
	INTEGER, DIMENSION(tam), INTENT(INOUT) :: x
	INTEGER :: fim, continua, aux
	fim=SIZE(x)
	continua=-1
	DO WHILE (continua/=0)
		i=0
		continua=0
		DO WHILE(i<(fim))
			IF (x(i)>x(i+1)) THEN
				aux=x(i)
				x(i)=x(i+1)
				x(i+1)=aux
				continua=i
			END IF	
			i=i+1	
		END DO	
		fim=fim-1
	END DO
END SUBROUTINE ordenaVetor