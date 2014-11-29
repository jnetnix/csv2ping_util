#
## Ping stuff in a CSV File
#

Here is a CSV File with some addresses. 
```
csv2ping_util$ cat ./test/root_servers.csv
"Server","IP","Domain"
"a.root-servers.net","198.41.0.4","VeriSign Inc."
"b.root-servers.net","192.228.79.201","University of Southern California (ISI)"
"c.root-servers.net","192.33.4.12","Cogent Communications"
"d.root-servers.net","199.7.91.13","University of Maryland"
"e.root-servers.net","192.203.230.10","NASA (Ames Research Center)"
"f.root-servers.net","192.5.5.241","Internet Systems Consortium Inc."
"g.root-servers.net","192.112.36.4","US Department of Defence (NIC)"
"h.root-servers.net","128.63.2.53","US Army (Research Lab)"
"i.root-servers.net","192.36.148.17","Netnod"
"j.root-servers.net","192.58.128.30","VeriSign Inc."
"k.root-servers.net","193.0.14.129","RIPE NCC"
"l.root-servers.net","199.7.83.42","ICANN"
"m.root-servers.net","202.12.27.33","WIDE Project"
```

 Here is a ping of each address in each row.  
```
csv2ping_util$ cat ./test/root_servers.csv | sudo ./bin/pingcsv.pl
Password:
"Server","IP","Domain","PING-TEST"
"a.root-servers.net","198.41.0.4","VeriSign Inc.","UP"
"b.root-servers.net","192.228.79.201","University of Southern California (ISI)","UP"
"c.root-servers.net","192.33.4.12","Cogent Communications","UP"
"d.root-servers.net","199.7.91.13","University of Maryland","UP"
"e.root-servers.net","192.203.230.10","NASA (Ames Research Center)","UP"
"f.root-servers.net","192.5.5.241","Internet Systems Consortium Inc.","UP"
"g.root-servers.net","192.112.36.4","US Department of Defence (NIC)","DOWN"
"h.root-servers.net","128.63.2.53","US Army (Research Lab)","UP"
"i.root-servers.net","192.36.148.17","Netnod","UP"
"j.root-servers.net","192.58.128.30","VeriSign Inc.","UP"
"k.root-servers.net","193.0.14.129","RIPE NCC","UP"
"l.root-servers.net","199.7.83.42","ICANN","UP"
"m.root-servers.net","202.12.27.33","WIDE Project","UP"
```
