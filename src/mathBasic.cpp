
#include "../include/mathBasic.h"
namespace mbasic{
	mathBasic::mathBasic(){}
	
	mathBasic::~mathBasic(){}
	
	int mathBasic::add(int v1, int v2){
		return (v1 + v2);
	}
		
	int mathBasic::dif(int v1, int v2){
		return (v1 - v2);
	}		

	int mathBasic::mux(int v1, int v2){
		return (v1 * v2);
	}

	double mathBasic::div(int v1, int v2){
		if(v2 == 0)
			return 0;
		return (v1 / v2);
	}

}


