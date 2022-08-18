unit Unit20;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.CheckLst;

type
  TForm20 = class(TForm)
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    CheckListBox1: TCheckListBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form20: TForm20;

implementation

{$R *.dfm}

uses Unit21, Unit7, Unit3;

procedure TForm20.BitBtn1Click(Sender: TObject);
var k,i:integer;
begin
with form21.RichEdit1 do
begin
  clear;
  lines.Clear;
  selattributes.Style:=[fsbold];
  selattributes.Size:=11;
  lines.Add('Şu maglumatlar bozular:');
   paragraph.Numbering:=nsBullet;
   if checkbox1.Checked then
     lines.add(checkbox1.Caption);
      if checkbox3.Checked then
     lines.add(checkbox3.Caption);
     if checkbox4.Checked then
     lines.add(checkbox4.Caption);
        if checkbox2.Checked then
        begin
     lines.add(checkbox2.Caption+':');
     paragraph.Numbering:=nsnone;
          k:=checklistbox1.items.count-1;
          for I := 0 to k do
            if checklistbox1.checked[i] then
               lines.add('   - '+checklistbox1.items[i]);
        end;
end;
if form21.ShowModal=mrok then form20.Close;
end;

procedure TForm20.BitBtn2Click(Sender: TObject);
begin
form20.Close;
end;

procedure TForm20.CheckBox2Click(Sender: TObject);
var c:boolean;
begin
c:=checkbox2.checked;
checklistbox1.enabled:=c;
end;

procedure TForm20.FormShow(Sender: TObject);
var i:integer;
begin
form7.show;
checkbox1.Checked:=true;
checkbox3.Checked:=true;
checkbox4.Checked:=true;
checkbox2.Checked:=false;
CheckBox2Click(nil);
   checklistbox1.items.clear;
    for I := 2017 to 2300 do
    if directoryexists(inttostr(i)) then  checklistbox1.items.add(inttostr(i));
    checklistbox1.checkall(cbunchecked);
               form7.close;
end;

end.
