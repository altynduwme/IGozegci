unit Unit25;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, Data.Win.ADODB,comobj,dateutils;

type
  TForm25 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    lb1: TListBox;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    ADOTable1: TADOTable;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ComboBox1: TComboBox;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form25: TForm25;

implementation

{$R *.dfm}

uses Unit1, Unit7, Unit211, Unit23, Unit3, Unit26;

function ters(sd:string):string;
var t:integer;
begin
t:=pos('%',sd);
while t>1 do
     begin
       delete(sd,t,1);  dec(t);
       case sd[t] of
       'a':sd[t]:='ä';
       'c':sd[t]:='ç';
       'u':sd[t]:='ü';
       'y':sd[t]:='ý';
       's':sd[t]:='ş';
       'z':sd[t]:='ž';
       'o':sd[t]:='ö';
       'n':sd[t]:='ň';
       'A':sd[t]:='Ä';
       'C':sd[t]:='Ç';
       'U':sd[t]:='Ü';
       'Y':sd[t]:='Ý';
       'S':sd[t]:='Ş';
       'Z':sd[t]:='Ž';
       'O':sd[t]:='Ö';
       end;
       t:=pos('%',sd);
     end;
     result:=sd;
end;

function ayagec(nom:integer):string;
begin
result:=form25.combobox1.items[nom-1];
end;

function bayramcylyk(Bsene:Tdate):boolean;
var bzs,byyl,grn,nm:string;
kw,rw,bay,bgun:integer;
begin
nm:=extractfilepath(application.ExeName)+'Bayramcylyklar.mdb';
if not fileexists(nm) then begin result:=false; exit; end;

bgun:=strtoint(copy(datetostr(bsene),1,2));
bay:=strtoint(copy(datetostr(bsene),4,2));
byyl:=copy(datetostr(bsene),7,4);
with form211 do
begin
          adotable1.First;
          kw:=adotable1.RecordCount;
          for rw := 1 to kw do
            begin
            bzs:=adotable1.Fields[1].AsString; //mysal ucin:  1. Yanwar
            grn:=adotable1.Fields[2].AsString; // gornush
            if strtoint(copy(bzs,1,pos('.',bzs)-1))=bgun then   // gun
            if (grn[1]='H') or (pos(byyl,grn)<>0) then //yyl
            if pos(ayagec(bay),bzs)<>0 then //ay
              begin
                result:=true; exit;
              end;
            adotable1.Next;
            end;
result:=false;
end;

end;

function elip(sd:string):string;
label 1;
var q,g:integer;
b1:string; c:char;
begin    sd:=sd+' ';
g:=0;
1:case g of
0:c:='ç';
1:c:='ý';
2:c:='ü';
3:c:='ň';
4:c:='ö';
5:c:='ä';
6:c:='ž';
7:c:='ş';
8:c:='Ç';
9:c:='Ý';
10:c:='Ü';
11:c:='Ň';
12:c:='Ö';
13:c:='Ä';
14:c:='Ž';
15:c:='Ş';
end;

     q:=pos(c,sd);
     inc(g);
   while (q<>0) and (sd[q+1]<>'%') do
          begin
            b1:=copy(sd,1,q);
            delete(sd,1,q);
            case b1[q] of
            'ä':b1[q]:='a';
            'ň':b1[q]:='n';
            'ü':b1[q]:='u';
            'ç':b1[q]:='c';
            'ý':b1[q]:='y';
            'ž':b1[q]:='z';
            'ş':b1[q]:='s';
            'ö':b1[q]:='o';
            'Ä':b1[q]:='A';
            'Ň':b1[q]:='N';
            'Ü':b1[q]:='U';
            'Ç':b1[q]:='C';
            'Ý':b1[q]:='Y';
            'Ž':b1[q]:='Z';
            'Ş':b1[q]:='S';
            'Ö':b1[q]:='O';
            end;
            b1:=b1+'%';
            sd:=b1+sd;
            q:=pos(c,sd);
          end;
 if g<16 then goto 1;
         delete(sd,length(sd),1);
         result:=sd;
end;

function gelmedi(sh:string;dat:Tdate):boolean;
var sene,yyl,ay,fil,st:string;
gg,hh:integer;
begin
if bayramcylyk(dat) then
      begin
        result:=false; exit;
      end;
result:=true;
 sene:=datetostr(dat);
    yyl:=copy(sene,7,4);
   ay:=copy(sene,4,2);
   fil:=yyl+'\'+ay+'\'+sene+'.trh';
   if fileexists(fil) then
                begin
                st:='>'+elip(sh)+'>';
             form25.lb1.Items.Clear;
             form25.lb1.Items.LoadFromFile(fil);
              hh:=form25.lb1.Items.Count-1;
              for gg := 0 to hh do
                if pos(st,form25.lb1.Items[gg])<>0 then
                                   begin
                                     result:=false; exit;
                                   end;
                end;
end;

function kesgitle(st:string; dat:Tdate):string;
var tg,p:integer;
begin
tg:=dayofweek(dat)-1;
if tg=0 then tg:=7;
p:=pos(inttostr(tg)+'>',st);
delete(st,1,p+1);
p:=pos(';',st);
result:=copy(st,1,p-1);
end;

function aralykda(es,s1,s2:string):boolean;
var d1,d2,d3:Tdate;
begin
 d1:=strtodate(es); d2:=strtodate(s1); d3:=strtodate(s2);
 result:=(d1>=d2) and (d1<=d3);
end;

function belgisi(es:Tdate; sahsid:string):string;
var pp,kk,ps:integer;
dowur,sn,sb,filtr:string;
begin
 form23.ADOTable1.Filtered:=false;
filtr:='(ID LIKE ''%'+sahsid+'%'')';
form23.adotable1.Filter:=filtr;
form23.adotable1.Filtered:=true;

 form23.adotable1.First;
 kk:=form23.ADOTable1.RecordCount;
               for pp := 1 to kk do
               begin
               dowur:=form23.ADOTable1.Fields[1].AsString;
               ps:=pos('-',dowur);
               sn:=copy(dowur,1,ps-1);
               delete(dowur,1,ps);
               if aralykda(datetostr(es),sn,dowur) then
                    begin
                    sb:=form23.ADOTable1.Fields[2].AsString;
                    result:=sb;
                    exit;
                    end;
                 form23.ADOTable1.Next;
               end;
 result:='-';
end;

{function ishrezimkesgitle(sat:string):string;
var i,k:integer;
res:string;
begin
res:='';
  with form1 do
   begin
   adoconnection3.Connected:=true;
                adotable2.Open;
                adotable2.Filtered:=false;
                adotable2.First;
                k:=adotable2.RecordCount;
                for I := 1 to k do
                               begin
                               if adotable2.Fields[1].AsString=sat then
                                     begin
                              res:=adotable2.fields[6].AsString;
                              break;
                                     end;
                              adotable2.Next;
                               end;
   adotable2.Close;
   adoconnection3.Connected:=false;
   end;
result:=res;
end;            }

procedure TForm25.BitBtn1Click(Sender: TObject);
var cat:olevariant;
nm,dt,fil,sahs,wagt,gw,cw,wagt2,amal,ish,bolmALYSY,status,aa:string;
k,i,t,hg:integer;
j:Tdate;
a,bb,c:array [1..7] of Tstringlist;
begin
if adoconnection1.Connected then
begin
  adotable1.Close; adoconnection1.Connected:=false;
end;
nm:=extractfilepath(application.ExeName)+'GCTBuf.mdb';
if fileexists(nm) then deletefile(nm);

cat:=createoleobject('ADOX.Catalog');
 cat.create('Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+';');
 cat:=NULL;
 with form1 do
 begin
adoconnection2.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+';Persist Security Info=False';
adoconnection2.LoginPrompt:=false;
  adoconnection2.Connected:=true;
aa:='CREATE TABLE '+'Taryh'+'([Sene] string,[FAA] string,[Wagt] string,[Amal] string,[Yagday] string,[Fayl] string,[air] string)';
ADOCommand1.CommandText:=aa;
ADOCommand1.Execute;
 adoconnection2.Connected:=false;
 end;

adoconnection1.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+';Persist Security Info=False';
adoconnection1.Connected:=true;
  adotable1.Open;


 form7.Show;
nm:=extractfilepath(application.ExeName)+'Bayramcylyklar.mdb';
with form211 do
begin
  adoconnection1.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+
';Persist Security Info=False';
adoconnection1.LoginPrompt:=false;
  adoconnection1.Connected:=true;
          adotable1.Open;
end;

 nm:=extractfilepath(application.ExeName)+'shertliBelgiler.mdb';
form23.adoconnection1.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+
';Persist Security Info=False';
form23.adoconnection1.LoginPrompt:=false;
  form23.adoconnection1.Connected:=true;
  form23.adotable1.Open;

   for I := 1 to 7 do
   begin
   a[i]:=Tstringlist.Create;
   c[i]:=Tstringlist.Create;
   bb[i]:=Tstringlist.Create;
   end;


   with form1 do
   begin
   adoconnection3.Connected:=true;
                adotable2.Open;
                adotable2.Filtered:=false;
                adotable2.First;
                k:=adotable2.RecordCount;
                for I := 1 to k do
                               begin
                              ish:=adotable2.fields[6].AsString;

                              for t := 1 to 7 do
                               if pos(inttostr(t)+'>',ish)<>0 then
                               BEGIN
                                a[t].Add(adotable2.Fields[1].asstring); //ady
                                c[t].add(adotable2.Fields[0].asstring); //id
                                bb[t].add(ish);         // ish rezimi
                               END;
                                adotable2.Next;
                               end;
                               adotable2.Close;
                               adoconnection3.Connected:=false;
   end;

   j:=DateTimePicker1.Date;
     while j<=DateTimePicker4.Date do
                          begin
                             dt:=datetostr(j);
                            hg:=dayofweek(j)-1;
                        if hg=0 then hg:=7;
                        k:=a[hg].Count-1;
                        for I := 0 to k do
                         if gelmedi(a[hg].Strings[i],j) then
                                 begin
                          adotable1.Append;
                          status:=belgisi(j,c[hg].Strings[i]);
                          adotable1.Fields[0].asstring:=dt;
                          adotable1.Fields[1].asstring:=a[hg].Strings[i];
                          adotable1.Fields[3].asstring:=status;
                          adotable1.Fields[4].asstring:='Gelmedi';
                          adotable1.Fields[2].asstring:='-';
                          bolmalysy:=kesgitle(bb[hg].Strings[i],j);
                          adotable1.Fields[6].asstring:=bolmalysy;
                          adotable1.Fields[5].AsString:='-';
                          adotable1.Post;
                                 end;


      yyl:=copy(dt,7,4);
   ay:=copy(dt,4,2);
   fil:=yyl+'\'+ay+'\'+dt+'.gig';
if fileexists(fil) then
           begin
           lb1.Items.LoadFromFile(fil);
           k:=lb1.Items.Count-1;
             for I := 0 to k do
                 begin
                 dt:=lb1.Items[i];
                 t:=pos('>',dt);
                 wagt:=copy(dt,1,t-1);
                 delete(dt,1,t);
                  t:=pos('>',dt);
                 wagt2:=copy(dt,1,t-1);
                 delete(dt,1,t);
                  t:=pos('>',dt);
                 sahs:=ters(copy(dt,1,t-1));
                 delete(dt,1,t);
                 amal:=ters(dt);
                 if amal[1]='G' then
                        begin
                          adotable1.Append;
                          adotable1.Fields[0].asstring:=datetostr(j);
                          adotable1.Fields[1].asstring:=sahs;
                          adotable1.Fields[3].asstring:='Giriş';
                          adotable1.Fields[6].asstring:=wagt;
                          adotable1.Fields[2].asstring:=wagt2;
                          adotable1.Fields[4].asstring:=amal;
                          adotable1.Fields[5].asstring:=fil;
                          adotable1.Post;
                        end;
                 if amal[1]='I' then
                        begin
                              adotable1.Append;
                          adotable1.Fields[0].asstring:=datetostr(j);
                          adotable1.Fields[1].asstring:=sahs;
                          adotable1.Fields[3].asstring:='Çykyş';
                          adotable1.Fields[6].asstring:=wagt;
                          adotable1.Fields[2].asstring:=wagt2;
                          adotable1.Fields[4].asstring:=amal;
                          adotable1.Fields[5].asstring:=fil;
                          adotable1.Post;
                        end;
                 end;
           end;               j:=j+1;
                          end;

for I := 1 to 7 do
begin
 a[i].Free;
 bb[i].Free;
 c[i].Free;
end;

form211.ADOTable1.Close;
form211.ADOConnection1.Connected:=false;
  form23.adotable1.Close;
  form23.adoconnection1.Connected:=false;

  if radiobutton2.Checked then
                 begin
                 amal:='Ir çykdy';
  ADOTable1.Filtered:=false;
dt:='(Yagday LIKE ''%'+amal+'%'')';
adotable1.Filter:=dt;
adotable1.Filtered:=true;
                 end else
if radiobutton3.Checked then
                 begin
                 amal:='Giç geldi';
  ADOTable1.Filtered:=false;
dt:='(Yagday LIKE ''%'+amal+'%'')';
adotable1.Filter:=dt;
adotable1.Filtered:=true;
                 end else
                 if radiobutton4.Checked then
                 begin
                 amal:='Gelmedi';
  ADOTable1.Filtered:=false;
dt:='(Yagday LIKE ''%'+amal+'%'')';
adotable1.Filter:=dt;
adotable1.Filtered:=true;
                 end else   ADOTable1.Filtered:=false;

  adotable1.First;
form7.Close;
end;

procedure TForm25.BitBtn2Click(Sender: TObject);
var fil,wg:string;
begin
if adotable1.RecordCount<>0 then
  begin
  fil:=adotable1.Fields[5].AsString;
  if pos('.gig',fil)<>0 then    // gija galan ya-da ir giden
          begin
           konewagt:=adotable1.Fields[2].AsString;
           faylady:=fil;
           blms:= adotable1.Fields[6].AsString;
           gorc:=adotable1.Fields[3].AsString;
           form26.ShowModal;
          end else
          begin    // gelmedikler

          end;
  end;
end;

procedure TForm25.FormShow(Sender: TObject);
begin
form25.Left:=1;
form25.Top:=1;
form25.Height:=screen.Height-45;
dbgrid1.Height:=form25.Height-80;
dbgrid1.Columns[0].FieldName:='Sene';
dbgrid1.Columns[1].FieldName:='FAA';
dbgrid1.Columns[2].FieldName:='Wagt';
dbgrid1.Columns[3].FieldName:='Amal';
dbgrid1.Columns[4].FieldName:='air';
dbgrid1.Columns[5].FieldName:='Yagday';
radiobutton1.Checked:=true;
datetimepicker1.Date:=today;
datetimepicker4.Date:=today;
bitbtn1click(nil);
end;

end.
