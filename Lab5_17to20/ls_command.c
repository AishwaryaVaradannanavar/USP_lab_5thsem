#include&lt;stdio.h&gt;
#include&lt;sys/types.h&gt;
#include&lt;unistd.h&gt;
#include&lt;string.h&gt;
int main(int argc, char * argv[])
{
if(argc &lt; 3 || argc &gt; 4 || (argc == 4 &amp;&amp; strcmp(argv[1],”-s”)))
{
printf(“Usage: ./a.out [-s] &lt;org_file&gt; &lt;new_link&gt;\n”);
return 1;
}
if(argc == 4)
{
if((symlink(argv[2], argv[3])) == -1)
printf(“Cannot create symbolic link\n”) ;
else
printf(“Symbolic link created\n”) ;
}
else
{
if((link(argv[1], argv[2])) == -1)
printf(“Cannot create hard link\n”) ;
else
printf(“Hard link created\n”) ;
}
return 0;
}
