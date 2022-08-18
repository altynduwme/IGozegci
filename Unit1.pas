unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,comobj, Vcl.Grids, Vcl.DBGrids, Data.DB,
  Data.Win.ADODB, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus,dateutils, Vcl.ComCtrls,
  Vcl.ImgList, Vcl.ToolWin, Vcl.Samples.Spin,vcl.themes,vcl.styles,
  system.zip,system.types,system.ioutils;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOConnection2: TADOConnection;
    ADOCommand1: TADOCommand;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    ADOConnection3: TADOConnection;
    ADOTable2: TADOTable;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Esasy1: TMenuItem;
    zetalyp1: TMenuItem;
    kateg: TLabel;
    ToolBar1: TToolBar;
    ImageList1: TImageList;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    Esasy2: TMenuItem;
    Howpsuzlyk1: TMenuItem;
    Sazlamalar1: TMenuItem;
    yky1: TMenuItem;
    ahsmaglumatlary1: TMenuItem;
    Hasabat1: TMenuItem;
    ugnkihasabatlar1: TMenuItem;
    ahslarbounahasabatlar1: TMenuItem;
    Parol1: TMenuItem;
    tialykgrme1: TMenuItem;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    Image1: TImage;
    Birwebirneahslarymaglumatnamalary1: TMenuItem;
    Gijgalanlaryweirgidenlerihasabaty1: TMenuItem;
    ahsredaktor1: TMenuItem;
    ImageList2: TImageList;
    Barkodapetmek1: TMenuItem;
    SpinEdit1: TSpinEdit;
    Sazlamalar2: TMenuItem;
    Sky1: TMenuItem;
    AmethystKamri1: TMenuItem;
    AquaGraphite1: TMenuItem;
    AquaLightSlate1: TMenuItem;
    Auric1: TMenuItem;
    Carbon1: TMenuItem;
    CharcoalDarkSlate1: TMenuItem;
    CobaltXEMedia1: TMenuItem;
    CyanDusk1: TMenuItem;
    CyanNight1: TMenuItem;
    EmeraldLightSlate1: TMenuItem;
    Glossy1: TMenuItem;
    GoldenGraphite1: TMenuItem;
    IcebergClassico1: TMenuItem;
    LavenderClassico1: TMenuItem;
    Light1: TMenuItem;
    Luna1: TMenuItem;
    MetropolisUIBlack1: TMenuItem;
    MetropolisUIBlue1: TMenuItem;
    MetropolisUIDark1: TMenuItem;
    MetropolisUIGreen1: TMenuItem;
    Obsidian1: TMenuItem;
    RubyGraphite1: TMenuItem;
    SapphireKamri1: TMenuItem;
    Silver1: TMenuItem;
    SlateClassico1: TMenuItem;
    SmokeyQuartzKamri1: TMenuItem;
    abletDark1: TMenuItem;
    urquoiseGray1: TMenuItem;
    SpinEdit2: TSpinEdit;
    nobatcy: TLabel;
    nid: TLabel;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    Baza1: TMenuItem;
    Bazanyarassalamak1: TMenuItem;
    tialykgrmedenbazanykle1: TMenuItem;
    fsd: TFileSaveDialog;
    fod1: TFileOpenDialog;
    gwez: TLabel;
    gat: TLabel;
    gol: TCheckBox;
    Baramylykgnleriwerugsatlar1: TMenuItem;
    Baramylykgnlerisazlamalary1: TMenuItem;
    Igrrugsadaibermek1: TMenuItem;
    Giriykylar1: TMenuItem;
    Giriykyredaktory1: TMenuItem;
    Barada1: TMenuItem;
    Programmabarada1: TMenuItem;
    Giriykytaryhlary1: TMenuItem;
    Button1: TButton;
    uwagtieride1: TMenuItem;
    ListBox1: TListBox;
    jhghj1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure zetalyp1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ugnkihasabatlar1Click(Sender: TObject);
    procedure ahslarbounahasabatlar1Click(Sender: TObject);
    procedure ahsmaglumatlary1Click(Sender: TObject);
    procedure Birwebirneahslarymaglumatnamalary1Click(Sender: TObject);
    procedure Gijgalanlaryweirgidenlerihasabaty1Click(Sender: TObject);
    procedure Sazlamalar1Click(Sender: TObject);
    procedure ahsredaktor1Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure Barkodapetmek1Click(Sender: TObject);
    procedure Sky1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Bazanyarassalamak1Click(Sender: TObject);
    procedure tialykgrmedenbazanykle1Click(Sender: TObject);
    procedure tialykgrme1Click(Sender: TObject);
    procedure Baramylykgnlerisazlamalary1Click(Sender: TObject);
    procedure Igrrugsadaibermek1Click(Sender: TObject);
    procedure Parol1Click(Sender: TObject);
    procedure Giriykyredaktory1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure uwagtieride1Click(Sender: TObject);
    procedure jhghj1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
   faa,topar,surat,barkod,sene,yyl,ay:string;
   gadaganlyk:integer;
implementation

{$R *.dfm}

uses Unit3, Unit2, Unit4, Unit5, Unit6, Unit9, Unit11, Unit12, Unit14, Unit15,
  Unit17, Unit20, Unit211, Unit23, Unit19, Unit24, Unit33, Unit25, Unit16,
  Unit27;

procedure TForm1.ahslarbounahasabatlar1Click(Sender: TObject);
begin
form6.show;
end;

procedure TForm1.ahsmaglumatlary1Click(Sender: TObject);
begin
form9.show;
end;

procedure TForm1.ahsredaktor1Click(Sender: TObject);
begin
form15.Show;
end;

procedure TForm1.Baramylykgnlerisazlamalary1Click(Sender: TObject);
begin
form211.show;
end;

procedure TForm1.Barkodapetmek1Click(Sender: TObject);
begin
form17.Show;
end;

procedure TForm1.Bazanyarassalamak1Click(Sender: TObject);
begin
form20.show;
end;

procedure TForm1.Birwebirneahslarymaglumatnamalary1Click(Sender: TObject);
begin
FORM11.SHOW;
end;

procedure TForm1.Button1Click(Sender: TObject);
var k:word;
s:TShiftState;
begin
       adoconnection3.Connected:=true;
                adotable2.Open;
adotable2.Filtered:=false;
adotable2.First;
if form16.showmodal=mrok then
 begin
edit1.Text:=adotable2.Fields[0].AsString;
adotable2.Close;
adoconnection3.Connected:=false;
k:=vk_return;
s:=[ssalt];
Edit1KeyUp(edit1,k,s);
 end;
 form1.adotable2.filtered:=false;
end;

procedure TForm1.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
{if datacol=1 then
DBGrid1.canvas.Brush.Color:=clgradientactivecaption else DBGrid1.canvas.Brush.Color:=clgradientinactivecaption;}
if datacol=0 then
with dbgrid1.Canvas do
         begin
           fillrect(rect);
           brush.Style:=bsclear;
           if adotable1.RecNo<>-1 then
           textrect(rect,rect.Left+2,rect.top+4,inttostr(adotable1.RecNo)+'.');
         end;

DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TForm1.Edit1Enter(Sender: TObject);
begin
edit1.Text:='';
edit1.Color:=cllime;
end;

procedure TForm1.Edit1Exit(Sender: TObject);
begin
edit1.Color:=clred;
end;

function sekunt(wgt:ttime):integer;
var sw:string;
sag,mn,po:integer;
begin
 sw:=timetostr(wgt);
 po:=pos(':',sw);
 sag:=strtoint(copy(sw,1,po-1));
  delete(sw,1,po);
  po:=pos(':',sw);
 mn:=strtoint(copy(sw,1,po-1));
  delete(sw,1,po);
  result:=sag*3600+mn*60;//+strtoint(sw)
end;

function sekuntTakyk(wgt:ttime):integer;
var sw:string;
sag,mn,po:integer;
begin
 sw:=timetostr(wgt);
 po:=pos(':',sw);
 sag:=strtoint(copy(sw,1,po-1));
  delete(sw,1,po);
  po:=pos(':',sw);
 mn:=strtoint(copy(sw,1,po-1));
  delete(sw,1,po);
  result:=sag*3600+mn*60+strtoint(sw);
end;


function ishrezimtap(idd:string):string;
var k,i:integer;
begin
with form1 do
begin
adoconnection3.Connected:=true;
                adotable2.Open;
                adotable2.First;
                k:=adotable2.RecordCount;
                for I := 1 to k do
                      begin
                      if adotable2.Fields[0].AsString=idd then
                            begin
                              result:=adotable2.Fields[6].AsString;
                              adotable2.Close;
                              adoconnection3.Connected:=false;
                              exit;
                            end;
                            adotable2.Next;
                      end;
                        adotable2.Close;
                              adoconnection3.Connected:=false;
                             result:='';
end;

end;

function elip(sd:string):string;
label 1;
var q,g:integer;
b1:string; c:char;
begin    sd:=sd+' ';
g:=0;
1:case g of
0:c:='ç';
1:c:='ý';
2:c:='ü';
3:c:='ň';
4:c:='ö';
5:c:='ä';
6:c:='ž';
7:c:='ş';
8:c:='Ç';
9:c:='Ý';
10:c:='Ü';
11:c:='Ň';
12:c:='Ö';
13:c:='Ä';
14:c:='Ž';
15:c:='Ş';
end;

     q:=pos(c,sd);
     inc(g);
   while (q<>0) and (sd[q+1]<>'%') do
          begin
            b1:=copy(sd,1,q);
            delete(sd,1,q);
            case b1[q] of
            'ä':b1[q]:='a';
            'ň':b1[q]:='n';
            'ü':b1[q]:='u';
            'ç':b1[q]:='c';
            'ý':b1[q]:='y';
            'ž':b1[q]:='z';
            'ş':b1[q]:='s';
            'ö':b1[q]:='o';
            'Ä':b1[q]:='A';
            'Ň':b1[q]:='N';
            'Ü':b1[q]:='U';
            'Ç':b1[q]:='C';
            'Ý':b1[q]:='Y';
            'Ž':b1[q]:='Z';
            'Ş':b1[q]:='S';
            'Ö':b1[q]:='O';
            end;
            b1:=b1+'%';
            sd:=b1+sd;
            q:=pos(c,sd);
          end;
 if g<16 then goto 1;
         delete(sd,length(sd),1);
         result:=sd;
end;

function yanycykan(fa:string; tt:ttime; fn:string):boolean;
var
  I,p: Integer;
  sr:string;
  wg:TTime;
begin
if fileexists(fn) then
                begin
form1.ListBox1.Items.LoadFromFile(fn);
p:=form1.ListBox1.Items.Count-1;
for I := 0 to p do
    begin
    sr:=form1.ListBox1.Items[i];
    if pos('>'+elip(fa)+'>C%ykys%',sr)<>0 then
         begin
         sr:=copy(sr,1,8);
          if length(sr)<>0 then
           if sr[length(sr)]='>' then delete(sr,length(sr),1);

           wg:=strtotime(sr);

           result:=abs(sekunttakyk(tt)-sekunttakyk(wg))<15*60;   // 15 minutdan az bolsa
           exit;
         end;
    end;
                end;
result:=false;
end;


procedure TForm1.Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
label 1,2,3;
var k,i,k2,j,hg,ps,ps2,tapawut:integer;
tapyldy:boolean;   nm,tm,isrezim:string;
f:textfile;
cw,sw:ttime;
begin
if key=vk_return then
                begin
                //timer1.Enabled:=false;
                sw:=time;
                sene:=datetostr(today);
 yyl:=copy(sene,7,4);
 ay:=copy(sene,4,2);
       if not directoryexists(yyl) then
      createdirectory(pchar(yyl),nil);
       if not directoryexists(yyl+'\'+ay) then
      createdirectory(pchar(yyl+'\'+ay),nil);

    adotable1.First;
    k:=adotable1.RecordCount;
    for I := 1 to k do
      begin
      if adotable1.Fields[5].AsString=edit1.Text then
                    begin
                    isrezim:=ishrezimtap(edit1.Text);
                    if isrezim='' then goto 3;
                    if isrezim='Ds' then goto 3;
                    

                     hg:=dayofweek(today)-1;
                       if hg=0 then hg:=7;
                     ps:=pos(inttostr(hg)+'>',isrezim);
                     if ps<>0 then
                             begin
                     delete(isrezim,1,ps+1);
                     ps:=pos('-',isrezim);
                     ps2:=pos(';',isrezim);
                     cw:=strtotime(copy(isrezim,ps+1,ps2-ps-1));

     if sekunt(cw+strtotime(inttostr(spinedit2.Value div 60)+
     ':'+inttostr(spinedit2.Value mod 60)+':00'))>sekunt(sw) then
              begin

               tapawut:=sekunttakyk(sw)-sekunttakyk(timeof(strtodatetime(adotable1.Fields[3].AsString)));
    if abs(tapawut)<15*60 then    // 15 minutdan az bolsa
    begin
    edit1.Text:='';
    edit1.SetFocus;
    exit;
    end;

        nm:=yyl+'\'+ay+'\'+sene+'.gig';
  assignfile(f,nm);
  if not fileexists(nm) then rewrite(f);
  append(f);
  writeln(f,timetostr(cw)+'>'+timetostr(sw)+'>'+elip(adotable1.Fields[1].AsString)+'>'+'Ir c%ykdy');
  closefile(f);
              end;


                             end;

    3:


    nm:=yyl+'\'+ay+'\'+sene+'.trh';
  assignfile(f,nm);
  if not fileexists(nm) then rewrite(f);
  append(f);
  writeln(f,timetostr(sw)+'>'+elip(adotable1.Fields[1].AsString)+'>'+'C%ykys%');
  closefile(f);

                    adotable1.Delete;
                    adotable1.First;
                 //   timer1.Enabled:=true;
                    edit1.Text:='';
//  form28.Label1.Caption:=adotable1.Fields[1].AsString;
 // form28.Show;
                    edit1.SetFocus;
                    exit;
                    end;
        adotable1.Next;
      end;

                adoconnection3.Connected:=true;
                adotable2.Open;
                adotable2.First;
                k:=adotable2.RecordCount;
                tapyldy:=false;
                nm:=yyl+'\'+ay+'\'+sene+'.trh';
                for I := 1 to k do
                      begin
                      if adotable2.Fields[0].AsString=edit1.Text then
                                begin
                      faa:=adotable2.Fields[1].AsString;

                      if yanycykan(faa,sw,nm) then
                       begin
                         adotable2.Close;
                         adoconnection3.Connected:=false;
                         edit1.Text:='';
                         edit1.SetFocus;
                         exit;
                       end;
                     //  form28.Label1.Caption:=faa;
                      // form28.Show;

                      topar:=adotable2.Fields[2].AsString;
                      surat:=adotable2.Fields[4].AsString;
                      gadaganlyk:=adotable2.Fields[3].AsInteger;
                      barkod:=adotable2.Fields[0].AsString;
                       isrezim:=adotable2.Fields[6].AsString;
                       adotable1.Append;
  adotable1.Fields[1].AsString:=faa;
    adotable1.Fields[2].AsString:=topar;
    tm:=datetimetostr(now);
  adotable1.Fields[3].AsString:=tm;
    adotable1.Fields[6].AsInteger:=0;
      adotable1.Fields[5].AsString:=barkod;
      adotable1.Post;

                     tapyldy:=true;

                     hg:=dayofweek(today)-1;
                     if hg=0 then hg:=7;
                     ps:=pos(inttostr(hg)+'>',isrezim);
                     if ps<>0 then
                             begin
                     delete(isrezim,1,ps+1);
                     ps:=pos('-',isrezim);
                     cw:=strtotime(copy(isrezim,1,ps-1));
     if sekunt(cw+strtotime(inttostr(spinedit1.Value div 60)+
     ':'+inttostr(spinedit1.Value mod 60)+':00'))<sekunt(sw) then
              begin
        nm:=yyl+'\'+ay+'\'+sene+'.gig';
  assignfile(f,nm);
  if not fileexists(nm) then rewrite(f);
  append(f);
  writeln(f,timetostr(cw)+'>'+timetostr(sw)+'>'+elip(faa)+'>'+'Gic% geldi');
  closefile(f);
              end;

                             end;


  nm:=yyl+'\'+ay+'\'+sene+'.trh';
  assignfile(f,nm);
  if not fileexists(nm) then rewrite(f);
  append(f);
  writeln(f,timetostr(sw)+'>'+elip(faa)+'>'+'Giris%');
  closefile(f);

                      goto 1;
                                end;
                        adotable2.Next;
                      end;
              1:   adotable2.Close;
                adoconnection3.Connected:=false;
                //if tapyldy then form2.Showmodal else
                if not tapyldy then
                with form3 do
                begin
    memo1.Text:='Beýle şahsyň maglumatnamasy maglumatlar binýadynda tapylmady!';
                  label1.Caption:='2';
                  showmodal;
                end;
                edit1.Text:='';
                edit1.SetFocus;
            //    timer1.Enabled:=true;
                end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
application.Terminate;
end;

procedure TForm1.FormCreate(Sender: TObject);
var nm,a,fn:string;
cat:olevariant;
f:textfile;
i:integer;
begin
    nm:=extractfilepath(application.ExeName)+'Baza.mdb';
if not fileexists(nm) then
begin
 cat:=createoleobject('ADOX.Catalog');
 cat.create('Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+';');
 cat:=NULL;
adoconnection2.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+';Persist Security Info=False';
adoconnection2.LoginPrompt:=false;
  adoconnection2.Connected:=true;
a:='CREATE TABLE '+'Shahs'+'([ID] string,[FAA] string,[Kat] string,[Gadaganlyk] integer,[Surat] oleobject,[Wezipe] string,[IshRezim] string)';
ADOCommand1.CommandText:=a;
ADOCommand1.Execute;
 adoconnection2.Connected:=false;
 end;

 nm:=extractfilepath(application.ExeName)+'Bayramcylyklar.mdb';
if not fileexists(nm) then
begin
 cat:=createoleobject('ADOX.Catalog');
 cat.create('Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+';');
 cat:=NULL;
adoconnection2.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+
';Persist Security Info=False';
adoconnection2.LoginPrompt:=false;
  adoconnection2.Connected:=true;
a:='CREATE TABLE '+'MB'+'([Ady] string,[Gun] string,[Gornush] string)';
ADOCommand1.CommandText:=a;
ADOCommand1.Execute;
 adoconnection2.Connected:=false;
 end;

 nm:=extractfilepath(application.ExeName)+'shertliBelgiler.mdb';
if not fileexists(nm) then
begin
 cat:=createoleobject('ADOX.Catalog');
 cat.create('Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+';');
 cat:=NULL;
adoconnection2.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+
';Persist Security Info=False';
adoconnection2.LoginPrompt:=false;
  adoconnection2.Connected:=true;
a:='CREATE TABLE '+'MB'+'([ID] string,[Dowur] string,[SB] string,[Gosh] integer)';
ADOCommand1.CommandText:=a;
ADOCommand1.Execute;
 adoconnection2.Connected:=false;
 end;

     nm:=extractfilepath(application.ExeName)+'BazaD.mdb';
if not fileexists(nm) then
begin
 cat:=createoleobject('ADOX.Catalog');
 cat.create('Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+';');
 cat:=NULL;
adoconnection2.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+';Persist Security Info=False';
adoconnection2.LoginPrompt:=false;
  adoconnection2.Connected:=true;
a:='CREATE TABLE '+'Shahs'+'([tb] autoincrement,[FAA] string,[Kat] string,[CAAW] string,[GW] string,[ID] string,[GWS] integer)';
ADOCommand1.CommandText:=a;
ADOCommand1.Execute;
 adoconnection2.Connected:=false;
 end;

  nm:=extractfilepath(application.ExeName)+'Baza.mdb';
 adoconnection3.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+';Persist Security Info=False';
adoconnection3.LoginPrompt:=false;
 form1.Top:=0;
 form1.Left:=0;
 form1.Height:=screen.Height-40;
 form1.Width:=screen.Width-5;
 dbgrid1.Height:=form1.Height-125;

      fn:=extractfilepath(application.ExeName)+'tema.thm';
if not fileexists(fn) then
begin
assignfile(f,fn);     rewrite(f); append(f); writeln(f,'Amakrits');
                     closefile(f);
end;

assignfile(f,fn);
reset(f);
readln(f,fn);
 closefile(f);

 for I := 0 to 28 do
if  mainmenu1.Items[0][1][i].Caption=fn then
begin
 mainmenu1.Items[0][1][i].default:=true;
  break;
end;

 end;

procedure TForm1.FormShow(Sender: TObject);
var nm:string;
begin
nm:=extractfilepath(application.ExeName)+'BazaD.mdb';
adoconnection1.connectionstring:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+nm+';Persist Security Info=False';
adoconnection1.LoginPrompt:=false;
  adoconnection1.Connected:=true;
     adotable1.Open;
     adotable1.First;
    // dbgrid1.columns[0].FieldName:='tb';
     dbgrid1.columns[1].FieldName:='FAA';
     dbgrid1.columns[2].FieldName:='Kat';
     dbgrid1.columns[3].FieldName:='CAAW';
//     dbgrid1.columns[4].FieldName:='GW';
     datasource1.DataSet:=adotable1;
     dbgrid1.DataSource:=datasource1;
//     nobatcy.Width:=form1.Width;
     statusbar1.SimpleText:='Nobatçy: '+nobatcy.Caption;
edit1.SetFocus;
//timer1.Enabled:=true;
end;

procedure TForm1.Gijgalanlaryweirgidenlerihasabaty1Click(Sender: TObject);
begin
form12.show;
end;

procedure TForm1.Giriykyredaktory1Click(Sender: TObject);
begin
form25.Show;
end;

procedure TForm1.Igrrugsadaibermek1Click(Sender: TObject);
begin
if form19.ShowModal=mrok then
if form19.netije.Caption<>'NETIJESIZ' then
          with form24 do
          begin
          sid.Caption:=form19.netije.Caption;
          sat.Caption:=form19.netat.Caption;
          label1.Caption:=sid.Caption;
            Panel1.Caption:=form19.netat.Caption;
            show;
          end;
end;

procedure TForm1.jhghj1Click(Sender: TObject);
var k:word;
s:TShiftstate;
begin
while adotable1.RecordCount>0 do
 begin
   adotable1.First;
   edit1.Text:=adotable1.Fields[5].AsString;
   k:=vk_return;
   Edit1KeyUp(edit1,k,s);
 end;
end;

procedure TForm1.Parol1Click(Sender: TObject);
begin
form33.show;
end;

procedure TForm1.Sazlamalar1Click(Sender: TObject);
begin
form14.show;
end;

procedure TForm1.Sky1Click(Sender: TObject);
var fn:string;
f:textfile;
begin
fn:=extractfilepath(application.ExeName)+'tema.thm';
assignfile(f,fn);
rewrite(f);
append(f);
fn:=(sender as Tmenuitem).hint;
writeln(f,fn);
closefile(f);
adotable1.Close;
adoconnection1.Connected:=false;
(sender as Tmenuitem).default:=true;
TStyleManager.TrySetStyle(fn);
end;

procedure TForm1.tialykgrme1Click(Sender: TObject);
var z : TZipFile;
    path, zname, zfn,p : string;
    fa : TStringDynArray;
    sr:Tsearchrec;
    tap:boolean;
        i:integer;

    procedure gosh(path2:string);
    var f:string;
    begin
        if directoryexists(path2) then
                                        begin
        fa := TDirectory.GetFiles(path2,'*.*', TSearchOption.soAllDirectories );
        for f in fa do begin
            zfn := copy(f, length(path) + 2, length(f) - length(path)+ 2);
            z.Add(f, zfn );
        end;
                                        end;

    end;

begin
fsd.FileNameLabel:='Faýlyň ady:';
fsd.FileName:='Ätiýaçlyk göçürme - '+datetostr(today);
if fsd.Execute then
              begin
    path := ExtractFileDir(Application.ExeName);

    z := TZipFile.Create();
    try
        zname := fsd.FileName+'.zip';

        if FileExists(zname) then DeleteFile(zname);
        z.Open(zname, zmWrite);

         if fileexists('Baza.mdb') then
        z.Add(path+'\Baza.mdb');
        if fileexists('Bayramcylyklar.mdb') then
        z.Add(path+'\Bayramcylyklar.mdb');
        if fileexists('shertliBelgiler.mdb') then
        z.Add(path+'\shertliBelgiler.mdb');

        for I := 2000 to 2500 do
          begin
          p:=path+'\'+inttostr(i);
          if directoryexists(p) then
             gosh(p);
          end;
       z.Close();
    finally
        z.Free();
        with form3 do
        begin
        memo1.Text:='Ätiýaçlyk göçürme arhiwi bellenen salgyda ýatda saklandy!';
        label1.Caption:='1';
        showmodal;
        end;
    end;

              end;
end;

procedure TForm1.tialykgrmedenbazanykle1Click(Sender: TObject);
var exPath : string;
    i,nah,hrt : integer;
    fzip:Tzipfile;
begin
form3.Memo1.Lines.Clear;
form3.Memo1.Lines.Add('   ÜNS BERIŇ!');
form3.Memo1.lines.add('   Programmanyň şu wagtky bazasy bozulup, ýerine siziň saýlajak bazaòyz ornaşdyrylar!');
form3.Memo1.lines.add('   Siz dowam etmek isleýärsiňizmi?');
form3.Label1.Caption:='3';
if form3.showmodal=mryes then
                  begin
fod1.FileNameLabel:='Faýlyň ady:';
 if fod1.Execute then
                begin
    exPath := extractfilepath(application.ExeName);
    fzip := TZipFile.Create();
try
    fzip.ExtractZipFile(fod1.FileName, exPath);
finally
    fzip.Free();
     with form3 do
        begin
        memo1.Text:='Ätiýaçlyk göçürme arhiwi programmanyň bazasyna üstünlikli ýüklendi !';
        label1.Caption:='1';
        showmodal;
        end;
end;
                end;
                  end;

end;

function wagtagec(sek:integer):string;
var s,m,sk:string;
begin
  s:=inttostr(sek div 3600);
  sek:=sek mod 3600;
  m:=inttostr(sek div 60);
  sk:=inttostr(sek mod 60);
  if length(S)=1 then s:='0'+s;
   if length(m)=1 then m:='0'+m;
     if length(Sk)=1 then sk:='0'+sk;
  result:=s+':'+m+':'+sk;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var k,i,gw:integer;
begin
{timer1.Enabled:=false;
adotable1.First;
  k:=adotable1.RecordCount;
  for I := 1 to k do
                begin
                  //gw:=adotable1.Fields[6].AsInteger+1;
                 gw:=secondsbetween(now,adotable1.Fields[3].AsDateTime);
                  adotable1.Edit;
                  adotable1.Fields[6].AsInteger:=gw;
                  adotable1.Fields[4].AsString:=wagtagec(gw);
                  adotable1.Post;
                  adotable1.Next;
                end;
                timer1.Enabled:=true;        }
end;

procedure TForm1.ToolButton10Click(Sender: TObject);
begin
form1.Close;
end;

procedure TForm1.ugnkihasabatlar1Click(Sender: TObject);
begin
form5.show;
end;

procedure TForm1.uwagtieride1Click(Sender: TObject);
begin
{adotable1.Close;
adoconnection1.Connected:=false;
datasource1.Enabled:=false;}
form27.show;
end;

procedure TForm1.zetalyp1Click(Sender: TObject);
begin
form4.show;
end;

end.
