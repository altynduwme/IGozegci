unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.MPlayer, Vcl.Imaging.pngimage;

type
  TForm3 = class(TForm)
    Memo1: TMemo;
    Image1: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    MediaPlayer1: TMediaPlayer;
    Memo2: TMemo;
    procedure FormShow(Sender: TObject);
    procedure Memo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.FormShow(Sender: TObject);
begin
memo2.SetFocus;
if label1.Caption='1' then   // duydurma
                     begin
  bitbtn1.Visible:=false;
     bitbtn2.Visible:=true;
     bitbtn2.ModalResult:=mryes;
     bitbtn2.Kind:=bkyes;
     bitbtn2.Caption:='Bolýar';
     bitbtn2.Default:=true;
     image1.Picture.LoadFromFile('info.png');
     form3.Caption:='Duýdurma...';
        label2.Caption:=form3.Caption;
     label2.Font.Color:=clgreen;
                     end else
if label1.Caption='2' then   // osibka
                     begin
  bitbtn1.Visible:=false;
     bitbtn2.Visible:=true;
     bitbtn2.ModalResult:=mryes;
     bitbtn2.Kind:=bkyes;
     bitbtn2.Caption:='Bolýar';
     bitbtn2.Default:=true;
     image1.Picture.LoadFromFile('error.png');
     form3.Caption:='Näsazlyk...';
     label2.Caption:=form3.Caption;
     label2.Font.Color:=clred;
                     end else
  if label1.Caption='3' then   // soraglanma
                     begin
  bitbtn1.Visible:=true;
     bitbtn2.Visible:=true;
     bitbtn1.ModalResult:=mryes;
     bitbtn1.Kind:=bkyes;
     bitbtn1.Caption:='Hawa';
     bitbtn1.Default:=true;
     bitbtn2.ModalResult:=mrno;
     bitbtn2.Kind:=bkno;
     bitbtn2.Caption:='Ýok';
     image1.Picture.LoadFromFile('conf.png');
     form3.Caption:='Tassyklama...';
        label2.Caption:=form3.Caption;
      label2.Font.Color:=clnavy;
                     end;
end;

procedure TForm3.Memo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
if bitbtn1.Visible then bitbtn1.Click else bitbtn2.Click;

end;

end.
