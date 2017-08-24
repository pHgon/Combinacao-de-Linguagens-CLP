#Executa Trabalho

all: start clean

start:
	@gcc -o execC implementC.c 
	@./execC

	@gfortran -c implementFortran.f90 -fno-underscoring 
	@gfortran implementFortran.o -o execF -lgfortran
	@./execF

	@gfortran -c modOrdenaFortran.f90 -fno-underscoring 
	@gcc -c modMainC.c 
	@gcc modOrdenaFortran.o modMainC.o -o execCF -lgfortran	
	@./execCF

	@gfortran -c modMainFortran.f90 -fno-underscoring 
	@gcc -c modOrdenaC.c 
	@gcc modMainFortran.o modOrdenaC.o -o execFC -lgfortran	
	@./execFC

clean:
	@rm -rf *.o
	@rm -rf execC
	@rm -rf execF
	@rm -rf execCF
	@rm -rf execFC
