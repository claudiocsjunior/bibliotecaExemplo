#include <iostream>
#include "../include/mathBasic.h"

using namespace mbasic;
int main(){
	mathBasic * teste = new mathBasic();
	std::cout << "Resultado de teste para 20 e 10:" << std::endl; 
	std::cout << "soma: ";
	int valor = teste->add(20, 10);
	std::cout << valor << std::endl;

	std::cout << "Subtração: ";
	valor = teste->dif(20, 10);
	std::cout << valor << std::endl;

	std::cout << "multiplicação: ";
	valor = teste->mux(20, 10);
	std::cout << valor << std::endl;

	std::cout << "divisão: ";
	valor = teste->div(20, 10);
	std::cout << valor << std::endl;
	return 0;
}