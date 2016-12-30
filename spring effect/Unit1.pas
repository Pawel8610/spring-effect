unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Math, Menus, ShellApi;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Memo1: TMemo;
    d: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Button3: TButton;
    Label10: TLabel;
    Label11: TLabel;
    Timer1: TTimer;
    Label12: TLabel;
    Memo2: TMemo;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    ComboBox1: TComboBox;
    Edit7: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    MainMenu1: TMainMenu;
    Plik1: TMenuItem;
    Zakocz1: TMenuItem;
    Info1: TMenuItem;
    Autor1: TMenuItem;
    Readme1: TMenuItem;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Image1: TImage;
    RadioGroup1: TRadioGroup;
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
   
    procedure Button3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Zakocz1Click(Sender: TObject);
    procedure Readme1Click(Sender: TObject);
    procedure Autor1Click(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
l1,l2, rw, x, g, a, L,K, M, N: real;
implementation

uses Unit2, Unit3;

{$R *.dfm}


procedure TForm1.Timer1Timer(Sender: TObject);
begin
Label11.Caption:=TimeToStr(Time);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
close
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
Label21.Caption:=Edit1.Text;
memo1.Clear;
memo2.Clear;
 try
      StrToFloat(Edit1.Text);       {try except zabezpiecza przed wpisywaniem innych znaków ni¿ cyfry}
    except
 begin
       MessageBox(0,'WprowadŸ liczbê!', 'B³¹d wartosci',MB_OK);
        Edit1.Text := '0';

end;
end;
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
Label22.Caption:=Edit2.Text;
memo1.Clear;
memo2.Clear;

 try
      StrToFloat(Edit2.Text);
    except
 begin
       MessageBox(0,'WprowadŸ liczbê!', 'B³¹d wartosci',MB_OK);
        Edit2.Text := '0';


end;
end;
end;

procedure TForm1.Edit3Change(Sender: TObject);
begin
Label24.Caption:=Edit3.Text;
memo1.Clear;
memo2.Clear;
try
      StrToFloat(Edit3.Text);
    except
 begin
       MessageBox(0,'WprowadŸ liczbê!', 'B³¹d wartosci',MB_OK);
        Edit3.Text := '0';


end;
end;
end;

procedure TForm1.Edit4Change(Sender: TObject);
begin
memo1.Clear;
memo2.Clear;
try
      StrToFloat(Edit4.Text);
    except
 begin
       MessageBox(0,'WprowadŸ liczbê!', 'B³¹d wartosci',MB_OK);
        Edit4.Text := '0';

end;
end;
end;
procedure TForm1.Edit5Change(Sender: TObject);
begin
memo1.Clear;
memo2.Clear;
Label23.Caption:=Edit5.Text;
try
      StrToFloat(Edit5.Text);
    except
 begin
       MessageBox(0,'WprowadŸ liczbê!', 'B³¹d wartosci',MB_OK);
        Edit5.Text := '0';


end;
end;
end;
procedure TForm1.Edit6Change(Sender: TObject);
begin
memo1.Clear;
memo2.Clear;
Label20.Caption:=Edit6.Text;
try
      StrToFloat(Edit6.Text);
    except
 begin
       MessageBox(0,'WprowadŸ liczbê!', 'B³¹d wartosci',MB_OK);
        Edit6.Text := '0';


end;
end;
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
//if (RadioGroup1.ItemIndex <0) or (RadioGroup1.ItemIndex >1) then
//MessageBox(0,'Wybierz separator!', 'B³¹d wartosci',MB_OK);

  begin
if RadioGroup1.ItemIndex=0 then
DecimalSeparator := '.';
end;
begin
if RadioGroup1.ItemIndex=1 then
DecimalSeparator := ',';           {zmienia separator liczb rzeczywustych kropka lub przecinek}
end;


l1 := strtofloat(Edit1.Text);
l2 := strtofloat(Edit2.Text);
rw := strtofloat(Edit3.Text);
x := strtofloat(Edit4.Text);
g := strtofloat(Edit5.Text);
a := strtofloat(Edit6.Text);
N := strtofloat(Edit7.Text);


begin
if (l1 < 0) or (l1=0)  then
MessageBox(0,'WprowadŸ wartosc l1!', 'B³¹d wartosci',MB_OK);
end;
if (l2 < 0) or (l2=0)  then
MessageBox(0,'WprowadŸ wartosc l2!', 'B³¹d wartosci',MB_OK);
begin
if (x <= 0)  or (x=1) then
MessageBox(0,'WprowadŸ poprawn¹ wartosc x!', 'B³¹d wartosci',MB_OK);
end;
if rw < 0  then
MessageBox(0,'WprowadŸ poprawny promieñ!', 'B³¹d wartosci',MB_OK);
begin
if (g < 0) or (g=0)  then
MessageBox(0,'WprowadŸ poprawn¹ wartosc g!', 'B³¹d wartosci',MB_OK);
end;
if (a < 0) or (a>180)   then
MessageBox(0,'WprowadŸ poprawny k¹t (z zakresu 0-180)!', 'B³¹d wartosci',MB_OK);
begin
if ComboBox1.ItemIndex <0 then
MessageBox(0,'Wybierz materia³!', 'B³¹d wartosci',MB_OK);
end;



L := l1+l2+(rw+x*g)*3.14*a/180;
 Memo1.Text:=floattostr(L);


begin
M:=l1+l2;           //if l1>l2 then M:=l1 else M:=l2;  {bo do wzoru na sprêzynowanie potrzebna wiêksza dlugosc}

K := arctan((0.375*M*N/210000*(1-x)*g)*180/pi);           {N- rodzaj materia³u, M- d³ugosc ramion}
 Memo2.Text:=floattostr(K);


 if L<0 then
 memo1.Clear;
begin
 if K<0 then
 memo2.Clear;


 end;
 end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
form2.show;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
case ComboBox1.ItemIndex of
0: Edit7.Text :='185';
1: Edit7.Text :='225';
2: Edit7.Text :='265';
3: Edit7.Text :='285';
4: Edit7.Text :='325';
5: Edit7.Text :='355';
end;


end;
procedure TForm1.Zakocz1Click(Sender: TObject);
begin
close
end;

procedure TForm1.Readme1Click(Sender: TObject);
begin
shellexecute(handle,'open','tekst.txt','','',sw_normal)
end;

procedure TForm1.Autor1Click(Sender: TObject);
begin
MessageBox(0,'Pawe³ Andrzejczyk','Autor',mb_ok);
end;

end.


