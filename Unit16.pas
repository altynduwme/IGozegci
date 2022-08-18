unit Unit16;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Data.DB;

type
  TForm16 = class(TForm)
    DBGrid1: TDBGrid;
    Image1: TImage;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    DataSource1: TDataSource;
    LabeledEdit5: TLabeledEdit;
    BitBtn5: TBitBtn;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn5Click(Sender: TObject);
    procedure LabeledEdit5KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm16.BitBtn5Click(Sender: TObject);
var filtr,tt:string;
begin
tt:=trim(labelededit5.Text);
if tt='' then form1.adotable2.filtered:=false else
with form1 do
begin
adotable2.Filtered:=false;
filtr:='(FAA LIKE ''%'+tt+'%'')';
adotable2.Filter:=filtr;
adotable2.Filtered:=true;
end;
end;

procedure TForm16.DBGrid1CellClick(Column: TColumn);
var bm:Tbitmap;
s:Tstream;
begin
//label1.Caption:=form1.ADOTable2.Fields[0].AsString;
{bm:=Tbitmap.Create;
s:=tstream.Create;

bm.LoadFromStream(s);
image1.Picture.Bitmap:=bm;
bm.Free;       }
end;


procedure TForm16.DBGrid1DblClick(Sender: TObject);
begin
bitbtn1.Click;
end;

procedure TForm16.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if datacol=1 then
DBGrid1.canvas.Brush.Color:=clgradientactivecaption else DBGrid1.canvas.Brush.Color:=clgradientinactivecaption;
DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TForm16.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then bitbtn1.Click;
end;

procedure TForm16.FormShow(Sender: TObject);
begin
form16.Left:=1;
form16.Top:=1;
labelededit5.text:='';
labelededit5.setfocus;
form16.Height:=screen.Height-45;
dbgrid1.Height:=form16.Height-50;
 dbgrid1.columns[1].FieldName:='FAA';
     dbgrid1.columns[0].FieldName:='ID';
     datasource1.DataSet:=form1.ADOTable2;
dbgrid1.DataSource:=datasource1;
end;

procedure TForm16.LabeledEdit5KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
BitBtn5Click(nil);
end;

end.
