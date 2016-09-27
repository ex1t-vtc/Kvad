function Struktura=sredi_csv(ime)

%function creates csv file named 'blackbox.csv'. that is missing battery
%voltage and last 5 values. last values are used for debugging
%battery voltage is removed since it is the only floating point parametar.


fileID = fopen(ime);
Struktura=textscan(fileID, '%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s', 1, 'delimiter',',');
Struktura=[Struktura(1:15),Struktura(17:30)]';
i=0;
while ~feof(fileID)
    i=i+1
C =   textscan(fileID, '%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%f%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%s%s%d%d', 1, 'delimiter',',');
data(i,:)=C(1,1:30);
end
fclose(fileID);
%%
data2=[cell2mat(data(:,1:15)),cell2mat(data(:,17:30))]
csvwrite('blackbox.csv',data2)

end

