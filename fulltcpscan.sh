echo "Select 1 for single IP/URL"
echo "Select 2 for IP/URL list"
read choice

if test $choice == 1
then
echo "Enter the IP/URL :- "
read sip
echo "Enter the name for OUTPUT file :- "
read opname
nmap -sS -Pn -p 1-65535 $sip -oA $opname -vv

elif test $choice == 2
then
echo "Enter the Filepath with IP/URL list :- "
read mip
echo "Enter the name for OUTPUT file :- "
read opname
nmap -sS -Pn -p 1-65535 -iL $mip -oA $opname -vv

fi