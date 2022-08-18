unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,dateutils;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Image1: TImage;
    Panel5: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm2.BitBtn1Click(Sender: TObject);
var tm:string;
begin
  with form1 do
  begin
  adotable1.Append;
  adotable1.Fields[1].AsString:=faa;
    adotable1.Fields[2].AsString:=topar;
    tm:=timetostr(time);
  adotable1.Fields[3].AsString:=tm;
    adotable1.Fields[6].AsInteger:=0;
      adotable1.Fields[5].AsString:=barkod;
      adotable1.Post;

  end;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
panel3.Caption:=' '+faa;
panel4.Caption:=' '+topar;
end;

end.
