Program modFortran
	INTEGER :: vet(100)
	print *,"----IMPLEMENTACAO EM FORTRAN ORDENACAO EM C!!"
	WRITE(*,*)
	call geraVetor(vet)
	print *,"Vetor Fora de Ordem"
	call imprimeVetor(vet)
	call ordenavetor(vet, 100)
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
