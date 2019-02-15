unit Timer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls ;

type
  TForm2 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form2: TForm2;

implementation

uses Brauerei;

{$R *.dfm}

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
  Label5.Caption:='false';
  Form2.Visible:=false;
  Form1.Enabled:=true;
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
  Form2.Visible:=false;
  Form1.Enabled:=true;
  Form1.BitBtn3.Enabled:=true;
  Label5.Caption:='true';
  DateTimePicker1.Time:=DateTimePicker2.Time;
  DateTimePicker2.Date:=DateTimePicker1.Date;
  Brauerei.TimerDialogClose;
end;

procedure TForm2.Edit2Exit(Sender: TObject);
var Intdummy: integer;
begin
end;



end.
