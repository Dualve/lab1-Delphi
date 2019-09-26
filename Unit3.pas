unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit1.Text := '1111'
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  num, result : integer;
begin
  num := StrToInt(Edit1.Text);
  if (num div 1000 + num div 100 mod 10 = num mod 100 div 10 + num mod 10) then
    result:= 1
  else
    result:= 0;
  Edit2.Text := (IntToStr(result))

end;

end.


