Program modFortran
	INTEGER :: vet(100)
	print *,"----IMPLEMENTACAO EM FORTRAN !!"
	WRITE(*,*)
	call geraVetor(vet)
	print *,"Vetor Fora de Ordem"
	call imprimeVetor(vet)
	call ordenaVetor(vet, 100)
	print *,"Vetor Ordenado"
	call imprimeVetor(vet)
End Program modFortran


Subroutine geraVetor (x)
	INTEGER, INTENT(OUT):: x(100)
	INTEGER i
	REAL aux
	i = 0
	CALL RANDOM_SEED()
	do while (i<100)
		CALL RANDOM_NUMBER(aux)
		x(i) = aux * 1000
		i = i + 1
	end do
End Subroutine geraVetor


Subroutine imprimeVetor (x)
	INTEGER, INTENT(OUT):: x(100)
	i = 0
	Do While (i<100)
		WRITE (*,'(1x, i0)', advance="no") x(i)
		i = i + 1
	End Do
	WRITE (*,*)
	WRITE (*,*)
End Subroutine imprimeVetor


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
