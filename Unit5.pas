unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons,
  frxClass, frxDBSet, Data.Win.ADODB, Data.DB, frxExportRTF, frxExportHTML,
  frxExportPDF,dateutils, frxPreview, frxExportImage,shellapi;

type
  TForm5 = class(TForm)
    GroupBox1: TGroupBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    pdf: TfrxPDFExport;
    frxReport1: TfrxReport;
    ADOTable1: TADOTable;
    ADOConnection1: TADOConnection;
    frxDBDataset1: TfrxDBDataset;
    frxUserDataSet1: TfrxUserDataSet;
    lb1: TListBox;
    frxPreview1: TfrxPreview;
    SpeedButton2: TSpeedButton;
    fsd: TFileSaveDialog;
    SpeedButton4: TSpeedButton;
    tiff: TfrxTIFFExport;
    SpeedButton1: TSpeedButton;
    procedure frxUserDataSet1GetValue(const VarName: string;
      var Value: Variant);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Unit1, Unit7, Unit3;

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

procedure TForm5.BitBtn1Click(Sender: TObject);
label 1;
var i,k,ps:integer;
dt,yyl,ay,fil,sahs,dat,amal,tm,ws:string;
j:TDate;
tim:TTime;

function dogry:boolean;
begin
if datetimepicker1.Date>datetimepicker4.Date then
    begin
      result:=false; exit;
    end;
if datetimepicker1.Date=datetimepicker4.Date then
if sekunt(datetimepicker2.Time)>sekunt(datetimepicker3.Time) then
                  begin
                    result:=false; exit;
                  end;
                  result:=true;
end;

begin
if dogry then
        begin
form5.Width:=screen.Width-2;
form5.Left:=0;
form5.Top:=0;
form5.Height:=screen.Height-45;
frxpreview1.Width:=form5.Width-frxpreview1.Left-130;
frxpreview1.Height:=form5.Height-50;
speedbutton4.Left:=frxpreview1.Left+frxpreview1.Width+7;
speedbutton2.Left:=speedbutton4.Left;
speedbutton1.Left:=speedbutton4.Left;
form7.Show;
adoconnection1.Connected:=true;
adotable1.Open;
adotable1.First;
k:=adotable1.RecordCount;
for I := 1 to k do
   adotable1.Delete;

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
if j<datetimepicker4.Date then goto 1;

if sekunt(tim)<=sekunt(datetimepicker3.Time) then
if sekunt(tim)>=sekunt(datetimepicker2.Time) then
                            begin
               1: dat:=dt+' '+tm;
                delete(ws,1,ps);
                   ps:=pos('>',ws);
                sahs:=copy(ws,1,ps-1);
                delete(ws,1,ps);
                amal:=ters(ws);
                            adotable1.Append;
adotable1.Fields[0].AsString:=ters(sahs);
adotable1.Fields[1].AsString:=dat;
adotable1.Fields[2].AsString:=amal;
adotable1.Post;
                            end;
                  end;

           end;
                j:=j+1;
                 end;

frxreport1.ShowReport;
form7.Close;
        end else
        with form3 do
        begin
        memo1.Lines.Text:='Birinji girizilen wagt, ikinji girizilen wagtdan uly!';
        label1.Caption:='2';
        showmodal;
        end;
end;


procedure TForm5.frxUserDataSet1GetValue(const VarName: string;
  var Value: Variant);
begin
if varname='wagt1' then value:=datetostr(datetimepicker1.Date)+' '+timetostr(datetimepicker2.Time);
if varname='wagt2' then value:=datetostr(datetimepicker4.Date)+' '+timetostr(datetimepicker3.Time);
if varname='bolum' then value:=form1.kateg.caption;
if form1.gol.Checked then
                    begin
if varname='gwez' then value:=form1.gwez.caption;
if varname='gat' then value:=form1.gat.caption;
                    end;
end;

procedure TForm5.SpeedButton1Click(Sender: TObject);
begin
frxreport1.PrintOptions.ShowDialog:=true;
FORM7.Show;
if frxreport1.Print then
frxreport1.ShowReport;
form7.Close;
end;

procedure TForm5.SpeedButton2Click(Sender: TObject);
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

procedure TForm5.SpeedButton4Click(Sender: TObject);
begin
fsd.FileTypeIndex:=3;
if fsd.Execute then
begin
form7.Show;
tiff.FileName:=fsd.FileName;
if lowercase(extractfileext(fsd.FileName))<>'.tiff' then tiff.FileName:=tiff.FileName+'.tiff';
frxreport1.Export(tiff);
frxreport1.showreport;
form7.Close;
shellexecute(handle,'open',pchar(extractfilepath(tiff.FileName)),nil,nil,sw_show);
end;
end;

procedure TForm5.BitBtn2Click(Sender: TObject);
begin
form5.Close;
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
adotable1.Close;
adoconnection1.Connected:=false;  frxuserdataset1.Clear;
end;

procedure TForm5.FormShow(Sender: TObject);
var nm:string;
begin
with form5 do
begin
  width:=405;
  height:=195;
end;
datetimepicker2.Time:=strtotime('0:0:1');
datetimepicker3.Time:=time;
datetimepicker1.Date:=today;
datetimepicker4.Date:=today;
 nm:=extractfilepath(application.ExeName)+'buf1.mdb';
adoconnection1.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+';Persist Security Info=False';
adoconnection1.LoginPrompt:=false;
end;

end.
