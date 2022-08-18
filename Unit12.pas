unit Unit12;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls,dateutils;

type
  TForm12 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    lb1: TListBox;
    GroupBox2: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

uses Unit3, Unit13;

procedure TForm12.BitBtn1Click(Sender: TObject);
function dogry:boolean;
begin
if datetimepicker1.Date>datetimepicker4.Date then
    begin
      result:=false; exit;
    end;
                  result:=true;
end;

function ucusem:boolean;
begin
  result:=checkbox1.Checked or checkbox2.Checked or checkbox3.Checked;
end;

begin
if ucusem then
         begin
if dogry then
        begin
form13.show;
form12.Close;
        end else
        with form3 do
        begin
        memo1.Lines.Text:='Birinji girizilen sene, ikinji girizilen seneden uly!';
        label1.Caption:='2';
        showmodal;
        end;
      end else
       with form3 do
        begin
        memo1.Lines.Text:='Parametrleriň hiç biri saýlanmadyk!';
        label1.Caption:='2';
        showmodal;
        end;
      end;

procedure TForm12.BitBtn2Click(Sender: TObject);
begin
form12.Close;
end;

procedure TForm12.FormShow(Sender: TObject);
begin
datetimepicker1.Date:=today;
datetimepicker4.Date:=today;
end;

end.
