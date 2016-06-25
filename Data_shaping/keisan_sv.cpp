#include <iostream>
#include <algorithm>
#include <sstream>
#include <vector>
#include <string>
#include <fstream>
using namespace std;

int CountNumbersOfTextLines( const char* filePath )
{
	// 行数をカウントするための変数を用意する。型は戻り値に合わせて long 型とする。
    int i = 0;

	// ファイルを開く。
   	ifstream ifs( filePath );

	// ファイルのオープンに成功していれば、これは file は true を返す。
    if( ifs )
    {
		// 1行ごとの文字列を格納するための string オブジェクト。
        string line;

		// 何行あるかわからないので、while文を使って繰り返す。条件を true としておけば、処理がずっと繰り返される。
        while( true )
        {
			// 1行読み取る。
        	getline( ifs, line );

			// 1行読み取ったので、インクリメントする。
            i++;

			// ファイルが終端まで来たら、break 文を実行して while 文を抜ける。
            if( ifs.eof() )
                break;
        }
    }

	// カウントした行数を返す。
	return i;
}


int main (int argc, char **argv){

	
	string std;
	std::vector<int> data;
	int count=0;
	int i=0;
	string in_str;
	string str;
	static string s[63000][21];
	int yuukou = 0;

	ifstream ifs( argv[1] );


	for (int i = 0; i<62900; i++){
		for(int j =0 ; j < 21; j++){
			s[i][j] = "a";
		}
	}

    
    count = CountNumbersOfTextLines(argv[1]);
    //cout << CountNumbersOfTextLines("keisoku1.txt") << endl;
	
    for(int j=0; j< count; j++){	
    	getline(ifs, in_str);

	    stringstream ss(in_str);
	    char delim = ' ';
	    
	    while(getline(ss, str, delim)){
	    	
	    		s[j][i] = str;
	    		//cout << s[j][i] << endl;
	    		i++;
	    }
	    //count=j;
	    i=0;
	}

	for(int i = 0; i < count+1; i++){
		//for(int j = 0; j < 8; j++){
			//if((s[i][1] == "IP" && s[i][4] == "djembe04.cse.kyoto-su.ac.jp.53958:" )
				//||(s[i][1] == "IP" && s[i][4] =="djembe04.cse.kyoto-su.ac.jp.62057:"))
			if(s[i][19] == "length"){
				data.push_back(stoi(s[i][20]));
				//cout << s[i][7] << endl;
			}
			//if(s[i][5] == "UDP,"){
			//	data.push_back(stoi(s[i][7]));

				//cout << s[i][7] << endl;
			//}
		//}
	}
	
	
	std::sort(data.begin(),data.end(),std::greater<int>());

	//yuukou = count * 0.05;
	yuukou = 0;
	//cout << count << ' ' << yuukou << endl;

	for(int i=yuukou;i<data.size()-yuukou;i++){
		cout << data[i] << endl; 
	}
	
	


    return 0;

	
}