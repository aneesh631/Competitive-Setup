#!/bin/bash
FILENAME=$1
mkdir "$FILENAME"
cd "$FILENAME"
> input.txt
> "$FILENAME".cpp
> output.txt
echo -e "#include <iostream>
#include <cstring>
#define read(n) scanf(\"%lld\",&n)
#define write(x) printf(\"%lld\",x)
#define F(i,n) for(int i = 0;i < n;i++)
#define ll long long
#define MX 100005
#define set_dp(dp) memset(dp,-1,sizeof(dp))
using namespace std;
int main(){
	#ifndef ONLINE_JUDGE
	freopen(\"input.txt\",\"r\",stdin);
	freopen(\"output.txt\",\"w\",stdout);
	#endif
	return 0;
}" > "$FILENAME".cpp
sublime "$FILENAME".cpp input.txt output.txt
