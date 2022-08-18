unit Unit27;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxExportImage, frxClass, frxDBSet,
  Data.DB, Data.Win.ADODB, frxExportPDF, frxPreview, Vcl.Buttons,shellapi;

type
  Tform27 = class(TForm)
    SpeedButton2: TSpeedButton;
    frxPreview1: TfrxPreview;
    pdf: TfrxPDFExport;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxUserDataSet1: TfrxUserDataSet;
    fsd: TFileSaveDialog;
    SpeedButton4: TSpeedButton;
    tiff: TfrxTIFFExport;
    SpeedButton1: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frxUserDataSet1GetValue(const VarName: string;
      var Value: Variant);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form27: Tform27;

implementation

{$R *.dfm}

uses Unit1, Unit7;


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
  result:=sag*3600+mn*60+strtoint(sw);
end;


procedure Tform27.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 frxuserdataset1.Clear;
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

procedure Tform27.FormShow(Sender: TObject);
label 1;
var nm:string;
k,i,n,p,m,ps:integer;
dt,yyl,ay,fil,sahs,dat,amal,tm,ws:string;
j:TDate;
tim:TTime;
begin
form27.Left:=0;
form27.top:=0;
form27.Height:=screen.Height-45;
frxpreview1.Height:=form27.Height-50;
form27.Width:=screen.Width-200;
frxpreview1.Width:=form27.Width-140;
speedbutton1.Left:=frxpreview1.Width+10;
speedbutton2.Left:=speedbutton1.Left;
speedbutton4.Left:=speedbutton1.Left;
{form7.Show;
  nm:=extractfilepath(application.ExeName)+'buf1.mdb';
adoconnection1.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+';Persist Security Info=False';
adoconnection1.LoginPrompt:=false;
   adoconnection1.Connected:=true;
   nm:=extractfilepath(application.ExeName)+'buf2.mdb';
adoconnection2.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+';Persist Security Info=False';
adoconnection2.LoginPrompt:=false;
   adoconnection2.Connected:=true;
   adotable1.Open;
   adotable1.First;
   k:=adotable1.RecordCount;
   for I := 1 to k do  adotable1.Delete;
   adotable2.Open;
   adotable2.First;
   k:=adotable2.RecordCount;
   for I := 1 to k do  adotable2.Delete;

     n:=form6.ListBox1.Items.Count-1;
     for I := 0 to n do
            begin
              adotable2.Append;
              adotable2.Fields[0].AsString:=form6.ListBox1.Items[i];
              adotable2.Post;
            end;
            adotable2.Close;
            adoconnection2.Connected:=false;

          with form6 do
          begin
  j:=datetimepicker1.Date;
 while j<=datetimepicker4.Date do
                 begin

   dt:=datetostr(j);
   yyl:=copy(dt,7,4);
   ay:=copy(dt,4,2);
   fil:=yyl+'\'+ay+'\'+dt+'.trh';
if fileexists(fil) then
           begin
           lb1.Items.LoadFromFile(fil);
           k:=lb1.Items.Count-1;
           for I := 0 to k do
                  begin
                  ws:=lb1.Items[i];
                  if ws='' then continue;
                ps:=pos('>',ws);
                tm:=copy(ws,1,ps-1);
                tim:=strtotime(tm);
                dat:=dt+' '+tm;
                delete(ws,1,ps);
                   ps:=pos('>',ws);
                sahs:=ters(copy(ws,1,ps-1));

if j<datetimepicker4.Date then goto 1;
if sekunt(tim)<=sekunt(datetimepicker3.Time) then
if sekunt(tim)>=sekunt(datetimepicker2.Time) then
1:if listbox1.Items.IndexOf(sahs)<>-1 then
                            begin
                delete(ws,1,ps);
                amal:=ters(ws);
                form27.adotable1.Append;
form27.adotable1.Fields[0].AsString:=sahs;
form27.adotable1.Fields[1].AsString:=dat;
form27.adotable1.Fields[2].AsString:=amal;
form27.adotable1.Post;
                            end;
                  end;

           end;
                j:=j+1;
                 end;

          end;
 adotable1.Close;
adoconnection1.Connected:=false;   }
frxreport1.ShowReport;
//form7.Close;
end;

procedure Tform27.frxUserDataSet1GetValue(const VarName: string;
  var Value: Variant);
begin
//with form6 do
begin
if varname='bolum' then value:=form1.kateg.caption;
if form1.gol.Checked then
                    begin
if varname='gwez' then value:=form1.gwez.caption;
if varname='gat' then value:=form1.gat.caption;
                    end;
end;

end;

procedure Tform27.SpeedButton1Click(Sender: TObject);
begin
frxreport1.PrintOptions.ShowDialog:=true;
FORM7.Show;
if frxreport1.Print then
frxreport1.ShowReport;
form7.Close;

end;

procedure Tform27.SpeedButton2Click(Sender: TObject);
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

procedure Tform27.SpeedButton4Click(Sender: TObject);
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
