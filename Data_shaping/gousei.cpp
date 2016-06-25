#include <iostream>
#include <algorithm>
#include <sstream>
#include <vector>
#include <string>
#include <fstream>
using namespace std;

int main(int argc, char **argv){

	ifstream ifs( argv[1] );
	ifstream ifs2( argv[2]);

	int sum=0;
	int count=0;
	int num;
	int num2;
	int heikin;

	while(ifs >> num && ifs2 >> num2){
		sum = num + num2;
		count++;
		//cout << num << endl;
		//cout << num2 << endl;
	}

	cout << sum << endl;

}