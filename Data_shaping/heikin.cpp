#include <iostream>
#include <algorithm>
#include <sstream>
#include <vector>
#include <string>
#include <fstream>
using namespace std;

int main(int argc, char **argv){

	ifstream ifs( argv[1] );

	int sum=0;
	int count=0;
	int num;
	int heikin;

	while(ifs >> num){
		sum += num;
		count++;
		cout << sum << endl;
	}

	heikin = sum / 200;

	cout << heikin << endl;

}