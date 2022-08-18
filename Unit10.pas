unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxExportImage, frxClass, frxExportPDF,
  frxDBSet, Data.DB, Data.Win.ADODB, Vcl.StdCtrls, Vcl.Buttons, frxPreview,shellapi;

type
  TForm10 = class(TForm)
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton1: TSpeedButton;
    frxPreview1: TfrxPreview;
    BitBtn1: TBitBtn;
    frxReport1: TfrxReport;
    ADOTable1: TADOTable;
    ADOConnection1: TADOConnection;
    frxDBDataset1: TfrxDBDataset;
    pdf: TfrxPDFExport;
    fsd: TFileSaveDialog;
    tiff: TfrxTIFFExport;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

uses Unit7, Unit1, Unit11;

procedure TForm10.BitBtn1Click(Sender: TObject);
var nm:string;
k,i:integer;
begin
form7.Show;
nm:=extractfilepath(application.ExeName)+'Buf3.mdb';
 adoconnection1.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+';Persist Security Info=False';
adoconnection1.LoginPrompt:=false;
ADOConnection1.Connected:=true;
ADOTable1.Open;
adotable1.First;
k:=adotable1.RecordCount;
for I := 1 to k do  adotable1.Delete;

with form1 do
begin
adoconnection3.Connected:=true;
  adotable2.Open;
  adotable2.Filtered:=false;
   k:=adotable2.RecordCount;
   adotable2.First;
   for I := 1 to k do
                  begin
   if form11.ListBox2.Items.IndexOf(adotable2.Fields[0].AsString)<>-1 then
                        begin
                          form10.ADOTable1.Append;
                          form10.ADOTable1.Fields[0].AsString:=adotable2.Fields[0].AsString;
                          form10.ADOTable1.Fields[1].AsString:=adotable2.Fields[1].AsString;
                          form10.ADOTable1.Fields[2].AsString:=adotable2.Fields[5].AsString;
                          form10.ADOTable1.Fields[3].AsVariant:=adotable2.Fields[4].AsVariant;
                          form10.ADOTable1.Post;
                        end;
                   adotable2.Next;
                  end;
   adotable2.Close;
   adoconnection3.Connected:=false;
end;
frxreport1.ShowReport;
form7.Close;
end;

procedure TForm10.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    adotable1.Close;
    adoconnection1.Connected:=false;
end;

procedure TForm10.FormShow(Sender: TObject);
begin
form10.Left:=1;
form10.Top:=0;
form10.Height:=screen.Height-45;
frxpreview1.Height:=form10.Height-35;
bitbtn1.Click;
end;

procedure TForm10.SpeedButton1Click(Sender: TObject);
begin
frxreport1.PrintOptions.ShowDialog:=true;
FORM7.Show;
if frxreport1.Print then
frxreport1.ShowReport;
form7.Close;
end;

procedure TForm10.SpeedButton2Click(Sender: TObject);
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

procedure TForm10.SpeedButton4Click(Sender: TObject);
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
