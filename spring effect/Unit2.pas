unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, StdCtrls;

type
  TForm2 = class(TForm)
    Image1: TImage;
    StringGrid1: TStringGrid;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}



procedure TForm2.FormCreate(Sender: TObject);
begin

with StringGrid1 do
begin
Cells[0,0] := 'rw/g';
 Cells[1,0] := '0,5';
 Cells[2,0] := '0,8';
 Cells[3,0] := '1';
 Cells[4,0] := '1,5';
 Cells[5,0] := '2';
 Cells[6,0] := '3';
 Cells[7,0] := '4';
 Cells[0,1] := 'wsp. x';
 Cells[1,1] := '0,38';
 Cells[2,1] := '0,40';
 Cells[3,1] := '0,42';
 Cells[4,1] := '0,44';
 Cells[5,1] := '0,45';
 Cells[6,1] := '0,47';
 Cells[7,1] := '0,475';



end;
end;
end.
