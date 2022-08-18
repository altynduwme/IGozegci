unit Unit13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxExportImage, frxClass, frxDBSet,
  Data.DB, Data.Win.ADODB, frxExportPDF, frxPreview, Vcl.Buttons, Vcl.StdCtrls,shellapi;

type
  TForm13 = class(TForm)
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton1: TSpeedButton;
    frxPreview1: TfrxPreview;
    pdf: TfrxPDFExport;
    frxReport1: TfrxReport;
    ADOTable1: TADOTable;
    ADOConnection1: TADOConnection;
    frxDBDataset1: TfrxDBDataset;
    frxUserDataSet1: TfrxUserDataSet;
    fsd: TFileSaveDialog;
    tiff: TfrxTIFFExport;
    lb1: TListBox;
    ComboBox1: TComboBox;
    procedure frxUserDataSet1GetValue(const VarName: string;
      var Value: Variant);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

{$R *.dfm}

uses Unit12, Unit1, Unit7, Unit211, Unit23;

function params:string;
var rs:string;
b,len,r:integer;
begin
  with form12 do
  begin
   rs:='';
   if checkbox1.Checked then rs:='işe gijä galan';
   if checkbox2.Checked then
      begin
      if rs<>'' then rs:=rs+', ';
      rs:=rs+'işden ir giden';
      end;
      if checkbox3.Checked then
      begin
      if rs<>'' then rs:=rs+', ';
      rs:=rs+'işe gelmedik';
      end;
  end;
  r:=-1;
    len:=length(rs);
    for b := 1 to len do
      if rs[b]=',' then  r:=b;
           if r<>-1 then
             begin
               delete(rs,r,1);
               insert(' we',rs,r);
             end;
  rs:='- ' + rs+' şahslaryň';
  result:=rs;
end;

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


procedure TForm13.FormClose(Sender: TObject; var Action: TCloseAction);
begin
adotable1.Close;
adoconnection1.Connected:=false;
frxuserdataset1.Clear;
end;

function sekunt(wgt:ttime):integer;
var sw:string;
sag,mn,po:integer;
begin
 sw:=timetostr(wgt);
 po:=pos(':',sw);
 sag:=strtoint(copy(sw,1,po-1));
  delete(sw,1,po);
  po:=pos(':',sw);
 mn:=strtoint(copy(sw,1,po-1));
  delete(sw,1,po);
  result:=sag*3600+mn*60+strtoint(sw)
end;

function wagtagec(sk:integer):string;
var rs:string;
sag,min:integer;
begin
rs:='';
 sag:=sk div 3600;
 if sag<>0 then
          begin
            sk:=sk mod 3600;
            rs:=inttostr(sag)+' sag ';
          end;
 min:=sk div 60;
 if min<>0 then rs:=rs+inttostr(min)+' min.';
    result:=rs;
end;

function tpwt(w1,w2:TTime):string;
begin
  result:=wagtagec(abs(sekunt(w2)-sekunt(w1)));
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

function ayagec(nom:integer):string;
begin
result:=form13.combobox1.items[nom-1];
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
             form13.lb1.Items.Clear;
             form13.lb1.Items.LoadFromFile(fil);
              hh:=form13.lb1.Items.Count-1;
              for gg := 0 to hh do
                if pos(st,form13.lb1.Items[gg])<>0 then
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
 result:='Sebäpsiz';
end;

procedure TForm13.FormShow(Sender: TObject);
var nm,dt,fil,sahs,wagt,gw,cw,wagt2,amal,ish,bolmALYSY,status:string;
k,i,t,hg:integer;
j:Tdate;
a,bb,c:array [1..7] of Tstringlist;
begin
form13.Caption:=params+' hasabaty';
form13.Left:=0;
form13.top:=0;
form13.Height:=screen.Height-45;
frxpreview1.Height:=form13.Height-50;
form13.Width:=screen.Width;
frxpreview1.Width:=form13.Width-140;
speedbutton1.Left:=frxpreview1.Width+10;
speedbutton2.Left:=speedbutton1.Left;
speedbutton4.Left:=speedbutton1.Left;
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

   nm:=extractfilepath(application.ExeName)+'buf4.mdb';
adoconnection1.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+';Persist Security Info=False';
adoconnection1.LoginPrompt:=false;
   adoconnection1.Connected:=true;
    adotable1.Open;
   adotable1.First;
   k:=adotable1.RecordCount;
   for I := 1 to k do  adotable1.Delete;

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

   j:=form12.DateTimePicker1.Date;
     while j<=form12.DateTimePicker4.Date do
                          begin
                             dt:=datetostr(j);
     if form12.CheckBox3.Checked then
                        begin
                        hg:=dayofweek(j)-1;
                        if hg=0 then hg:=7;
                        k:=a[hg].Count-1;
                        for I := 0 to k do
                        if bb[hg].Strings[i]<>'Ds' then
                         if gelmedi(a[hg].Strings[i],j) then
                                 begin
                          adotable1.Append;
                          status:=belgisi(j,c[hg].Strings[i]);
                          adotable1.Fields[0].asstring:=a[hg].Strings[i];
                          adotable1.Fields[2].asstring:=status;
                          adotable1.Fields[1].asstring:=datetostr(j);
                          bolmalysy:=kesgitle(bb[hg].Strings[i],j);
                          adotable1.Fields[3].asstring:=bolmalysy;
                          adotable1.Fields[4].asstring:='-';
                           t:=pos('-',bolmalysy);
                           wagt:=copy(bolmalysy,1,t-1);
                           delete(bolmalysy,1,t);
                          adotable1.Fields[5].asstring:=tpwt(strtotime(wagt),strtotime(bolmalysy));
                          adotable1.Post;
                                 end;
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
                 if form12.CheckBox1.Checked then
                 if amal[1]='G' then
                        begin
                          adotable1.Append;
                          adotable1.Fields[0].asstring:=sahs;
                          adotable1.Fields[2].asstring:=amal;
                          adotable1.Fields[1].asstring:=datetostr(j);
                          adotable1.Fields[3].asstring:=wagt;
                          adotable1.Fields[4].asstring:=wagt2;
                          adotable1.Fields[5].asstring:=tpwt(strtotime(wagt),strtotime(wagt2));
                          adotable1.Post;
                        end;
                 if form12.CheckBox2.Checked then
                 if amal[1]='I' then
                        begin
                          adotable1.Append;
                          adotable1.Fields[0].asstring:=sahs;
                          adotable1.Fields[2].asstring:=amal;
                          adotable1.Fields[1].asstring:=datetostr(j);
                          adotable1.Fields[3].asstring:=wagt;
                          adotable1.Fields[4].asstring:=wagt2;
                          adotable1.Fields[5].asstring:=tpwt(strtotime(wagt),strtotime(wagt2));
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


frxreport1.ShowReport();
form7.Close;
end;

procedure TForm13.frxUserDataSet1GetValue(const VarName: string;
  var Value: Variant);
begin
with form12 do
begin
if varname='wagt1' then value:=datetostr(datetimepicker1.Date);
if varname='wagt2' then value:=datetostr(datetimepicker4.Date);
if varname='bolum' then value:=form1.kateg.caption;
if varname='param' then value:=params;
if form1.gol.Checked then
                    begin
if varname='gwez' then value:=form1.gwez.caption;
if varname='gat' then value:=form1.gat.caption;
                    end;

end;
end;

procedure TForm13.SpeedButton1Click(Sender: TObject);
begin
frxreport1.PrintOptions.ShowDialog:=true;
FORM7.Show;
if frxreport1.Print then
frxreport1.ShowReport;
form7.Close;

end;

procedure TForm13.SpeedButton2Click(Sender: TObject);
begin
fsd.FileTypeIndex:=2;
if fsd.Execute then
begin
form7.Show;
pdf.FileName:=fsd.FileName;
if lowercase(extractfileext(fsd.FileName))<>'.pdf' then pdf.FileName:=pdf.FileName+'.pdf';
frxreport1.Export(pdf);
frxreport1.showreport;
form7.Close;
shellexecute(handle,'open',pchar(pdf.FileName),nil,nil,0);
end;

end;
procedure TForm13.SpeedButton4Click(Sender: TObject);
begin
fsd.FileTypeIndex:=3;
if fsd.Execute then
begin
form7.Show;
tiff.FileName:=fsd.FileName;
if lowercase(extractfileext(fsd.FileName))<>'.tif' then tiff.FileName:=tiff.FileName+'.tif';
frxreport1.Export(tiff);
frxreport1.showreport;
form7.Close;
shellexecute(handle,'open',pchar(extractfilepath(tiff.FileName)),nil,nil,sw_show);
end;

end;

end.
