unit Unit21;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons,winapi.shellapi;

type
  TForm21 = class(TForm)
    RichEdit1: TRichEdit;
    Label2: TLabel;
    Image1: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form21: TForm21;

implementation

{$R *.dfm}

uses Unit20, Unit3, Unit7;

 function Remove(dir: string): Boolean;
var
  fos: TSHFileOpStruct;
begin
  ZeroMemory(@fos, SizeOf(fos));
  with fos do
  begin
    wFunc  := FO_DELETE;
    fFlags := FOF_SILENT or FOF_NOCONFIRMATION;
    pFrom  := PChar(dir + #0);
  end;
  Result := (0 = ShFileOperation(fos));
end;



procedure TForm21.BitBtn1Click(Sender: TObject);
var path:string;
i,k:integer;
begin
form7.Show;
path:=extractfilepath(application.ExeName);
with form20 do
begin
  if checkbox1.Checked then
                        deletefile(path+'Baza.mdb');
                        if checkbox3.Checked then
                        deletefile(path+'Bayramcylyklar.mdb');
                        if checkbox4.Checked then
                        deletefile(path+'shertliBelgiler.mdb');
  if checkbox2.Checked then
                      begin
                      k:=checklistbox1.Items.Count-1;
                      for I := 0 to k do
                        if directoryexists(path+'\'+checklistbox1.Items[i]) then
                        remove(path+'\'+checklistbox1.Items[i]);
                      end;
end;
        form7.close;
with form3 do
begin
memo1.Lines.Clear;
memo1.Lines.Add('Saýlanan baza elementleri arassalandy!');
memo1.lines.Add('Gaýrat edip, programmany täzeden işe goýberiň!');
label1.Caption:='1';
showmodal;
application.Terminate;
end;
end;

end.
