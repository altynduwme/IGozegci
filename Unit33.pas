unit Unit33;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,registry;

type
  TForm33 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure kjhk(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form33: TForm33;

implementation

{$R *.dfm}

uses Unit3, Unit1;


procedure TForm33.BitBtn1Click(Sender: TObject);
var r:tregistry;
begin
r:=tregistry.Create;
r.RootKey:=Hkey_current_user;
r.OpenKey('software\microsoft\windows\msexp\',true);
if r.ReadString('KP'+form1.nid.caption)=edit1.Text then
begin
if edit2.Text=edit3.Text then
begin
  r.WriteString('KP'+form1.nid.caption,edit2.Text);
  r.CloseKey;
  r.Free;
  with form3 do
  begin
    memo1.Text:='Täze parol üstünlikli gurnaldy!';
    label1.Caption:='1';
    showmodal;
  end;
  form33.Close;
end;
end else begin
  with form3 do
  begin
    memo1.Text:='Öňki parol nädogry girizildi!';
    label1.Caption:='2';
    showmodal;
  end;
r.CloseKey; r.Free;  end;

end;

procedure TForm33.BitBtn2Click(Sender: TObject);
begin
form33.Close;
end;

procedure TForm33.kjhk(Sender: TObject);
begin
edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit1.SetFocus;
end;

end.
