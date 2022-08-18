unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.CheckLst, System.Win.ScktComp, Data.DB, Data.Win.ADODB,comobj,dateutils,
  Vcl.Imaging.jpeg, Vcl.ExtDlgs, Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  TForm4 = class(TForm)
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Image1: TImage;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ADOConnection1: TADOConnection;
    ADOCommand1: TADOCommand;
    ADOTable1: TADOTable;
    ADOConnection2: TADOConnection;
    Image2: TImage;
    GroupBox4: TGroupBox;
    LabeledEdit3: TLabeledEdit;
    opd: TOpenPictureDialog;
    ADOConnection3: TADOConnection;
    BitBtn4: TBitBtn;
    Image3: TImage;
    Image4: TImage;
    Label1: TLabel;
    GroupBox5: TGroupBox;
    CheckBox1: TCheckBox;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    CheckBox2: TCheckBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    CheckBox3: TCheckBox;
    DateTimePicker5: TDateTimePicker;
    DateTimePicker6: TDateTimePicker;
    Label6: TLabel;
    Label7: TLabel;
    CheckBox4: TCheckBox;
    DateTimePicker7: TDateTimePicker;
    DateTimePicker8: TDateTimePicker;
    Label8: TLabel;
    Label9: TLabel;
    CheckBox5: TCheckBox;
    DateTimePicker9: TDateTimePicker;
    DateTimePicker10: TDateTimePicker;
    Label10: TLabel;
    Label11: TLabel;
    CheckBox6: TCheckBox;
    DateTimePicker11: TDateTimePicker;
    Label12: TLabel;
    DateTimePicker12: TDateTimePicker;
    Label13: TLabel;
    CheckBox7: TCheckBox;
    DateTimePicker13: TDateTimePicker;
    Label14: TLabel;
    DateTimePicker14: TDateTimePicker;
    Label15: TLabel;
    Label16: TLabel;
    ComboBox1: TComboBox;
    Label17: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LabeledEdit2Enter(Sender: TObject);
    procedure LabeledEdit2Exit(Sender: TObject);
    procedure LabeledEdit2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure LabeledEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabeledEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn4Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure LabeledEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
         suratly:boolean;
implementation

{$R *.dfm}

uses Unit1, Unit3, Unit7;


function makeid:string;
label 1;
var
k,r,i:integer;
begin
with form1 do
begin
     adoconnection3.Connected:=true;
                adotable2.Open;
                k:=101;
                r:=adotable2.RecordCount;
                1:adotable2.First;
                for I := 1 to r do
                  begin
                  if strtoint(adotable2.Fields[0].AsString)=k then
                         begin
                           inc(k);
                           goto 1;
                         end;
                  adotable2.Next;
                  end;
                adotable2.Close;
                adoconnection3.Connected:=false;
end;
result:=inttostr(k);
end;

procedure TForm4.BitBtn1Click(Sender: TObject);
   var rs:integer;
   f:textfile;

   st,nm:string;
          s : TFileStream;
  c : TADOCommand;
                 bmp:tbitmap;
   function dogry:integer;
   begin
     if trim(labelededit2.Text)='' then begin result:=0; exit; end;
     if trim(labelededit1.Text)='' then begin result:=1; exit; end;
     if trim(labelededit3.Text)='' then begin result:=2; exit; end;
     result:=-1;
   end;

   procedure bmpgecir(fil:string);
var bmap:Tbitmap;
         begin
         bmap:=Tbitmap.Create;
           Bmap.Width := image1.Width;
      Bmap.Height := image1.Height;
 with Bmap do
begin
  TransparentMode := tmAuto;
  Canvas.CopyMode := cmSrcCopy;
  Canvas.FillRect(Rect(0, 0, Width, Height));
  Canvas.StretchDraw(Rect(0, 0, Width, Height), image1.Picture.Graphic);
end;
      Bmap.SaveToFile(fil);
      bmap.free;
         end;

         function yasa:string;
         var bw,sw,rs:string;
         begin
         if radiobutton2.Checked then
                    begin
                      result:='Ds';
                      exit;
                    end;
          rs:='';
          if checkbox1.Checked then
                   begin
                   bw:=timetostr(datetimepicker2.Time);
                   sw:=timetostr(datetimepicker3.Time);
                   rs:=rs+'1>'+bw+'-'+sw+';';
                   end;
            if checkbox2.Checked then
                   begin
                   bw:=timetostr(datetimepicker4.Time);
                   sw:=timetostr(datetimepicker1.Time);
                   rs:=rs+'2>'+bw+'-'+sw+';';
                   end;
              if checkbox3.Checked then
                   begin
                   bw:=timetostr(datetimepicker6.Time);
                   sw:=timetostr(datetimepicker5.Time);
                   rs:=rs+'3>'+bw+'-'+sw+';';
                   end;
                if checkbox4.Checked then
                   begin
                   bw:=timetostr(datetimepicker8.Time);
                   sw:=timetostr(datetimepicker7.Time);
                   rs:=rs+'4>'+bw+'-'+sw+';';
                   end;
                  if checkbox5.Checked then
                   begin
                   bw:=timetostr(datetimepicker9.Time);
                   sw:=timetostr(datetimepicker10.Time);
                   rs:=rs+'5>'+bw+'-'+sw+';';
                   end;
                  if checkbox6.Checked then
                   begin
                   bw:=timetostr(datetimepicker11.Time);
                   sw:=timetostr(datetimepicker12.Time);
                   rs:=rs+'6>'+bw+'-'+sw+';';
                   end;
                    if checkbox7.Checked then
                   begin
                   bw:=timetostr(datetimepicker13.Time);
                   sw:=timetostr(datetimepicker14.Time);
                   rs:=rs+'7>'+bw+'-'+sw+';';
                   end;
                   result:=rs;
         end;

begin
rs:=dogry;
if rs=-1 then
         begin
form7.Show;
 nm:=extractfilepath(application.ExeName)+'Baza.mdb';
 adoconnection3.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+';Persist Security Info=False';
 adoconnection3.LoginPrompt:=false;
with form1 do
begin
     adoconnection3.Connected:=true;
                adotable2.Open;
                adotable2.Append;
                adotable2.Fields[0].AsString:=labelededit2.text;  //ID
                adotable2.Fields[1].AsString:=labelededit1.text; //faaa
                adotable2.Fields[2].AsString:=combobox1.Items[combobox1.ItemIndex]; //bolum
                adotable2.Fields[3].AsInteger:=0;  //Gadaganlyk
bmpgecir('buf.bmp');
   image1.Picture.SaveToFile(extractfilepath(application.exename)+'buf.bmp');
   s := TFileStream.Create( extractfilepath(application.exename)+'buf.bmp', fmOpenRead );
  TBlobField(ADOtable2.FieldByName('Surat')).LoadfromStream(s);
  s.Free;
 deletefile(extractfilepath(application.exename)+'buf.bmp');
                adotable2.Fields[5].AsString:=labelededit3.text;  //Wezipesi
                adotable2.Fields[6].AsString:=yasa;
                adotable2.Post;
                adotable2.Close;
                 adoconnection3.Connected:=false;
                     end;
form7.Close;
with form3 do
begin
  memo1.Lines.Text:='Täze şahs maglumatnamasy maglumatlar binýadyna üstünlikli goşuldy!';
  label1.Caption:='1';
  showmodal;
end;
 form4.formshow(form4);
         end else
         begin
 case rs of
 0:begin st:='Şahs ID belgisi okadylmady!'; labelededit2.SetFocus; end;
 1:begin st:='Şahs hakyndaky maglumatlar doly girizilmedi!'; labelededit1.SetFocus; end;
 2:begin st:='Şahs hakyndaky maglumatlar doly girizilmedi!'; labelededit3.SetFocus; end;
 end;
   with form3 do
begin
  memo1.Lines.Text:=st;
  label1.Caption:='2';
  showmodal;
end;

         end;
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
if opd.Execute then
             begin
               image1.Picture.LoadFromFile(opd.FileName);
               suratly:=true;
               bitbtn3.Enabled:=true;
             end;
end;

procedure TForm4.BitBtn3Click(Sender: TObject);
begin
image1.Picture:=image2.Picture;
bitbtn3.Enabled:=false;
end;

procedure TForm4.BitBtn4Click(Sender: TObject);
begin
form4.Close;
end;

procedure TForm4.CheckBox1Click(Sender: TObject);
var t:boolean;
begin
t:=(sender as Tcheckbox).Checked;
 if (sender as Tcheckbox).Tag=1 then
              begin
         datetimepicker2.visible:=t;
         datetimepicker3.visible:=t;
         label2.visible:=t;
         label3.visible:=t;
              end else
   if (sender as Tcheckbox).Tag=2 then
              begin
         datetimepicker4.visible:=t;
         datetimepicker1.visible:=t;
         label4.visible:=t;
         label5.visible:=t;
              end else
 if (sender as Tcheckbox).Tag=3 then
              begin
         datetimepicker5.visible:=t;
         datetimepicker6.visible:=t;
         label6.visible:=t;
         label7.visible:=t;
              end else
 if (sender as Tcheckbox).Tag=4 then
              begin
         datetimepicker7.visible:=t;
         datetimepicker8.visible:=t;
         label8.visible:=t;
         label9.visible:=t;
              end else
 if (sender as Tcheckbox).Tag=5 then
              begin
         datetimepicker9.visible:=t;
         datetimepicker10.visible:=t;
         label10.visible:=t;
         label11.visible:=t;
              end else
 if (sender as Tcheckbox).Tag=6 then
              begin
         datetimepicker11.visible:=t;
         datetimepicker12.visible:=t;
         label12.visible:=t;
         label13.visible:=t;
              end else
       if (sender as Tcheckbox).Tag=7 then
              begin
         datetimepicker14.visible:=t;
         datetimepicker13.visible:=t;
         label14.visible:=t;
         label15.visible:=t;
              end;
end;

procedure TForm4.FormCreate(Sender: TObject);
var nm,a:string;
cat:olevariant;
begin
nm:=extractfilepath(application.ExeName)+'buf1.mdb';
if not fileexists(nm) then
begin
 cat:=createoleobject('ADOX.Catalog');
 cat.create('Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+';');
 cat:=NULL;
adoconnection2.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+';Persist Security Info=False';
adoconnection2.LoginPrompt:=false;
  adoconnection2.Connected:=true;
a:='CREATE TABLE '+'Shahs'+'([FAA] string,[CAAW] string,[GW] string)';
ADOCommand1.CommandText:=a;
ADOCommand1.Execute;
 adoconnection2.Connected:=false;
 end;

 nm:=extractfilepath(application.ExeName)+'buf2.mdb';
if not fileexists(nm) then
begin
 cat:=createoleobject('ADOX.Catalog');
 cat.create('Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+';');
 cat:=NULL;
adoconnection2.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+';Persist Security Info=False';
adoconnection2.LoginPrompt:=false;
  adoconnection2.Connected:=true;
a:='CREATE TABLE '+'Shahs'+'([FAA] string)';
ADOCommand1.CommandText:=a;
ADOCommand1.Execute;
 adoconnection2.Connected:=false;
 end;

 nm:=extractfilepath(application.ExeName)+'buf3.mdb';
if not fileexists(nm) then
begin
 cat:=createoleobject('ADOX.Catalog');
 cat.create('Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+';');
 cat:=NULL;
adoconnection2.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+';Persist Security Info=False';
adoconnection2.LoginPrompt:=false;
  adoconnection2.Connected:=true;
a:='CREATE TABLE '+'Shahs'+'([ID] string,[FAA] string,[Wezipe] string,[surat] oleobject)';
ADOCommand1.CommandText:=a;
ADOCommand1.Execute;
 adoconnection2.Connected:=false;
 end;

 nm:=extractfilepath(application.ExeName)+'buf4.mdb';
if not fileexists(nm) then
begin
 cat:=createoleobject('ADOX.Catalog');
 cat.create('Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+';');
 cat:=NULL;
adoconnection2.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+';Persist Security Info=False';
adoconnection2.LoginPrompt:=false;
  adoconnection2.Connected:=true;
a:='CREATE TABLE '+'Shahs'+'([FAA] string,[CAAW] string,[GW] string,[Geldi] string,[Gitdi] string,[tpwt] string)';
ADOCommand1.CommandText:=a;
ADOCommand1.Execute;
 adoconnection2.Connected:=false;
 end;

end;

procedure TForm4.FormShow(Sender: TObject);
var ibw,isw,st:string;
ibw2,isw2:TTime;
k:integer;
begin
form4.Top:=1;
form4.Left:=1;
RadioButton1Click(nil);
image1.Picture:=image2.Picture;
labelededit1.Text:='';
Image3Click(nil);
labelededit3.Text:='Mugallym';
bitbtn3.Enabled:=false;
suratly:=false;
labelededit1.SetFocus;
st:=label16.Caption;
k:=pos('-',st);
ibw:=copy(st,1,k-1);
delete(st,1,k);
isw:=st;
ibw2:=strtotime(ibw);
isw2:=strtotime(isw);
datetimepicker2.Time:=ibw2;
datetimepicker4.Time:=ibw2;
datetimepicker6.Time:=ibw2;
datetimepicker8.Time:=ibw2;
datetimepicker9.Time:=ibw2;
datetimepicker11.Time:=ibw2;
datetimepicker13.Time:=ibw2;

datetimepicker1.Time:=isw2;
datetimepicker3.Time:=isw2;
datetimepicker5.Time:=isw2;
datetimepicker7.Time:=isw2;
datetimepicker10.Time:=isw2;
datetimepicker12.Time:=isw2;
datetimepicker14.Time:=isw2;

checkbox1.Checked:=true;
checkbox2.Checked:=true;
checkbox3.Checked:=true;
checkbox4.Checked:=true;
checkbox5.Checked:=true;
checkbox6.Checked:=true;
checkbox7.Checked:=false;
checkbox1click(checkbox1);
checkbox1click(checkbox2);
checkbox1click(checkbox3);
checkbox1click(checkbox4);
checkbox1click(checkbox5);
checkbox1click(checkbox6);
checkbox1click(checkbox7);
end;

procedure TForm4.Image1Click(Sender: TObject);
begin
bitbtn2.Click;
end;

procedure TForm4.Image3Click(Sender: TObject);
begin
labelededit2.Text:=makeid;
end;

procedure TForm4.LabeledEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=vk_return) or (key=vk_down) then  labelededit3.SetFocus else
if key=vk_up then labelededit2.SetFocus;
end;

procedure TForm4.LabeledEdit2Enter(Sender: TObject);
begin
labelededit2.Color:=cllime;
end;

procedure TForm4.LabeledEdit2Exit(Sender: TObject);
begin
labelededit2.Color:=clred;
end;

procedure TForm4.LabeledEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) then  key:=#0;
end;

procedure TForm4.LabeledEdit2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=vk_return) or (key=vk_down) then  labelededit1.SetFocus;
end;

procedure TForm4.LabeledEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_up then labelededit1.SetFocus else
if key=vk_return then bitbtn1.Click;

end;

procedure TForm4.RadioButton1Click(Sender: TObject);
begin
groupbox5.Enabled:= radiobutton1.Checked;
end;

end.
