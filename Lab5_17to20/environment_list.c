#include&lt;stdio.h&gt;
int main(int argc, char* argv[ ])
{
int i;
char **ptr;
extern char **environ;
for( ptr = environ; *ptr != 0; ptr++ ) /*echo all env strings*/
printf(&quot;%s\n&quot;, *ptr);
return 0;
}
