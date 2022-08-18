unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, frxClass,
  frxPreview, frxDBSet, Data.DB, Data.Win.ADODB, frxExportImage, frxExportPDF,shellapi;

type
  TForm9 = class(TForm)
    frxReport1: TfrxReport;
    frxPreview1: TfrxPreview;
    BitBtn1: TBitBtn;
    ADOTable1: TADOTable;
    ADOConnection1: TADOConnection;
    frxDBDataset1: TfrxDBDataset;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton1: TSpeedButton;
    pdf: TfrxPDFExport;
    fsd: TFileSaveDialog;
    tiff: TfrxTIFFExport;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  Form9: TForm9;

implementation

{$R *.dfm}

uses Unit1, Unit7;

procedure TForm9.BitBtn1Click(Sender: TObject);
var nm:string;
begin
form7.Show;
 nm:=extractfilepath(application.ExeName)+'Baza.mdb';
 adoconnection1.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+';Persist Security Info=False';
adoconnection1.LoginPrompt:=false;
ADOConnection1.Connected:=true;
ADOTable1.Open;
form7.Close;
frxreport1.ShowReport;
end;

procedure TForm9.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ADOTable1.Close;
ADOConnection1.Connected:=false;
end;

procedure TForm9.FormShow(Sender: TObject);
begin
form9.Height:=screen.Height-45;
frxpreview1.Height:=form9.Height-50;
form9.Top:=0;
form9.Left:=5;
bitbtn1.Click;
end;

procedure TForm9.SpeedButton1Click(Sender: TObject);
begin
frxreport1.PrintOptions.ShowDialog:=true;
FORM7.Show;
if frxreport1.Print then
frxreport1.ShowReport;
form7.Close;
end;

procedure TForm9.SpeedButton2Click(Sender: TObject);
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

procedure TForm9.SpeedButton4Click(Sender: TObject);
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

