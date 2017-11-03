int findLength(int* A, int ASize, int* B, int BSize) {
    int dp[ASize+1][BSize+1];
    memset( dp, 0, (ASize+1)*(BSize+1)*sizeof(int) );
    int max =0;
    for(int i=1;i<=ASize;i++)
        for(int j=1;j<=BSize;j++)
        { 
            if(A[i-1]==B[j-1]){
                dp[i][j]=dp[i-1][j-1] + 1;
                if(dp[i][j]>max)
                    max=dp[i][j];       
            }  
        }
    return max;
}