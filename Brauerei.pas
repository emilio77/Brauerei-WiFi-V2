unit Brauerei;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Buttons, ComCtrls, TabNotBk, ExtCtrls, jpeg,
  AppEvnts, Series, TeEngine, TeeProcs, Chart, OleCtrls, SHDocVw, Menus,
  IdUDPServer, IdBaseComponent, IdComponent, IdUDPBase, IdUDPClient,
  IdSocketHandle, IdTCPConnection, IdTCPClient, IdHTTP, ShellApi, MMSystem,
  synaser, SQLiteTable3, Timer;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    StringGrid1: TStringGrid;
    Panel2: TPanel;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Panel6: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn16: TBitBtn;
    Panel5: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Panel7: TPanel;
    BitBtn9: TBitBtn;
    BitBtn8: TBitBtn;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Label4: TLabel;
    Label3: TLabel;
    ApplicationEvents1: TApplicationEvents;
    StringGrid2: TStringGrid;
    Chart2: TChart;
    Series3: TAreaSeries;
    Chart3: TChart;
    Series4: TAreaSeries;
    Chart4: TChart;
    Series5: TAreaSeries;
    Chart5: TChart;
    Series6: TAreaSeries;
    Button18: TButton;
    Button19: TButton;
    Button23: TButton;
    Button24: TButton;
    BitBtn12: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    Chart1: TChart;
    SpeedButton1: TSpeedButton;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label145: TLabel;
    btnOpen: TButton;
    memMaisch: TMemo;
    ebName: TEdit;
    ebID: TEdit;
    Edit89: TEdit;
    Edit90: TEdit;
    Button2: TButton;
    ScrollBar1: TScrollBar;
    Button10: TButton;
    CheckBox44: TCheckBox;
    Edit92: TEdit;
    Edit91: TEdit;
    Button12: TButton;
    CheckBox51: TCheckBox;
    ComboBox43: TComboBox;
    WebBrowser1: TWebBrowser;
    Memo2: TMemo;
    PopupMenu1: TPopupMenu;
    Nachobenschieben1: TMenuItem;
    Nachuntenschieben1: TMenuItem;
    lschen1: TMenuItem;
    Panel3: TPanel;
    PageControl2: TPageControl;
    TabSheet7: TTabSheet;
    Optik: TTabSheet;
    TabSheet8: TTabSheet;
    IdUDPServer1: TIdUDPServer;
    IdUDPClient1: TIdUDPClient;
    SendeTimer: TTimer;
    GroupBox1: TGroupBox;
    Label142: TLabel;
    CheckBox46: TCheckBox;
    CheckBox47: TCheckBox;
    CheckBox48: TCheckBox;
    CheckBox49: TCheckBox;
    Edit97: TEdit;
    Edit98: TEdit;
    Edit99: TEdit;
    Edit100: TEdit;
    Edit101: TEdit;
    Edit102: TEdit;
    Edit103: TEdit;
    Edit104: TEdit;
    Edit105: TEdit;
    Edit106: TEdit;
    Edit107: TEdit;
    Edit108: TEdit;
    GroupBox2: TGroupBox;
    Label138: TLabel;
    Memo1: TMemo;
    ComboBox36: TComboBox;
    ComboBox37: TComboBox;
    Edit96: TEdit;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    ProzessTimer: TTimer;
    OpenDialog2: TOpenDialog;
    SaveDialog2: TSaveDialog;
    Label5: TLabel;
    Label8: TLabel;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    Panel1: TPanel;
    Label63: TLabel;
    Panel4: TPanel;
    Label64: TLabel;
    UpDown2: TUpDown;
    ScrollBar2: TScrollBar;
    Button13: TButton;
    RastTypBtn1: TBitBtn;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label155: TLabel;
    Label156: TLabel;
    Label157: TLabel;
    Label158: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ComboBox54: TComboBox;
    CheckBox32: TCheckBox;
    CheckBox33: TCheckBox;
    CheckBox41: TCheckBox;
    ComboBox55: TComboBox;
    ComboBox56: TComboBox;
    Edit7: TEdit;
    CheckBox5: TCheckBox;
    N1: TMenuItem;
    Maltoserast6065CDatenbernehmen1: TMenuItem;
    Gummirast3540CDatenbernehmen1: TMenuItem;
    Weizenrast45CDatenbernehmen1: TMenuItem;
    Eiweirast57CDatenbernehmen1: TMenuItem;
    Kombirast6669CDatenbernehmen1: TMenuItem;
    Verzuckerungsrast7075CDatenbernehmen1: TMenuItem;
    Abmaischen78CDatenbernehmen1: TMenuItem;
    N2: TMenuItem;
    VorderwrzhopfungDatenbernehmen1: TMenuItem;
    HopfengabeDatenbernehmen1: TMenuItem;
    RestkochzeitDatenbernahme1: TMenuItem;
    IsomerisierungDatenbernehmen1: TMenuItem;
    KochtemperatrurDatenbernehmen1: TMenuItem;
    Einmaischen3567CDatenbernehmen1: TMenuItem;
    GroupBox5: TGroupBox;
    Label17: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Edit21: TEdit;
    Label23: TLabel;
    Edit22: TEdit;
    Label24: TLabel;
    Edit23: TEdit;
    Label25: TLabel;
    Edit24: TEdit;
    Label26: TLabel;
    Edit25: TEdit;
    Label27: TLabel;
    Edit26: TEdit;
    CheckBox3: TCheckBox;
    Label28: TLabel;
    Label30: TLabel;
    Label29: TLabel;
    Edit27: TEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    Edit30: TEdit;
    GroupBox6: TGroupBox;
    Label127: TLabel;
    Label128: TLabel;
    Label108: TLabel;
    Label123: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label95: TLabel;
    Label98: TLabel;
    Label88: TLabel;
    Label90: TLabel;
    Label81: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label89: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label100: TLabel;
    Label102: TLabel;
    Label104: TLabel;
    Label107: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    Edit93: TEdit;
    Edit94: TEdit;
    ComboBox38: TComboBox;
    ComboBox26: TComboBox;
    ComboBox29: TComboBox;
    CheckBox37: TCheckBox;
    ComboBox13: TComboBox;
    ComboBox14: TComboBox;
    ComboBox15: TComboBox;
    ComboBox17: TComboBox;
    ComboBox18: TComboBox;
    ComboBox19: TComboBox;
    ComboBox20: TComboBox;
    ComboBox21: TComboBox;
    ComboBox22: TComboBox;
    ComboBox23: TComboBox;
    ComboBox24: TComboBox;
    ComboBox25: TComboBox;
    Edit84: TEdit;
    Edit85: TEdit;
    Edit86: TEdit;
    Edit87: TEdit;
    Edit88: TEdit;
    Edit83: TEdit;
    CheckBox36: TCheckBox;
    CheckBox34: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox6: TCheckBox;
    GroupBox7: TGroupBox;
    Label159: TLabel;
    Label160: TLabel;
    TrackBar2: TTrackBar;
    TrackBar3: TTrackBar;
    GroupBox8: TGroupBox;
    Label154: TLabel;
    Label153: TLabel;
    ComboBox45: TComboBox;
    ComboBox3: TComboBox;
    CheckBox42: TCheckBox;
    Button30: TButton;
    Button31: TButton;
    Button32: TButton;
    Button33: TButton;
    Button34: TButton;
    Button35: TButton;
    Button36: TButton;
    Button37: TButton;
    Button39: TButton;
    Button38: TButton;
    AusgabeTimer: TTimer;
    LogUpdateTimer: TTimer;
    Panel8: TPanel;
    Label16: TLabel;
    Button8: TButton;
    TimerTimer: TTimer;
    Label136: TLabel;
    LogTimer: TTimer;
    HendiBreakTimer: TTimer;
    HendiTimer: TTimer;
    IdHTTP1: TIdHTTP;
    Button9: TButton;
    Panel9: TPanel;
    Label18: TLabel;
    Button11: TButton;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    SensorUeberwachungTimer: TTimer;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    GroupBox9: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit19: TEdit;
    BitBtn6Timer: TTimer;
    BitBtn7Timer: TTimer;
    KopiedieserRasteinfgen1: TMenuItem;
    Image1: TImage;
    BitBtn13: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure StringGrid1Click(Sender: TObject);
    procedure ApplicationEvents1ShowHint(var HintStr: String;
      var CanShow: Boolean; var HintInfo: THintInfo);
    procedure StringGrid1RowMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure Nachobenschieben1Click(Sender: TObject);
    procedure Nachuntenschieben1Click(Sender: TObject);
    procedure lschen1Click(Sender: TObject);
    procedure IdUDPServer1UDPRead(Sender: TObject; AData: TStream;
      ABinding: TIdSocketHandle);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ComboBox36Change(Sender: TObject);
    procedure Edit96Exit(Sender: TObject);
    procedure SendeTimerTimer(Sender: TObject);
    procedure Edit96Enter(Sender: TObject);
    procedure ComboBox54Change(Sender: TObject);
    procedure ProzessTimerTimer(Sender: TObject);
    procedure ComboBox36Enter(Sender: TObject);
    procedure ComboBox36Exit(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure CheckBox44Click(Sender: TObject);
    procedure CheckBox51Click(Sender: TObject);
    procedure Edit91Exit(Sender: TObject);
    procedure Edit92Exit(Sender: TObject);
    procedure ComboBox43Change(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure RastTypBtn1Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure ScrollBar2Change(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Edit8Change(Sender: TObject);
    procedure Maltoserast6065CDatenbernehmen1Click(Sender: TObject);
    procedure Gummirast3540CDatenbernehmen1Click(Sender: TObject);
    procedure Weizenrast45CDatenbernehmen1Click(Sender: TObject);
    procedure Eiweirast57CDatenbernehmen1Click(Sender: TObject);
    procedure Kombirast6669CDatenbernehmen1Click(Sender: TObject);
    procedure Verzuckerungsrast7075CDatenbernehmen1Click(Sender: TObject);
    procedure Abmaischen78CDatenbernehmen1Click(Sender: TObject);
    procedure VorderwrzhopfungDatenbernehmen1Click(Sender: TObject);
    procedure HopfengabeDatenbernehmen1Click(Sender: TObject);
    procedure KochtemperatrurDatenbernehmen1Click(Sender: TObject);
    procedure RestkochzeitDatenbernahme1Click(Sender: TObject);
    procedure IsomerisierungDatenbernehmen1Click(Sender: TObject);
    procedure Einmaischen3567CDatenbernehmen1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Edit21Change(Sender: TObject);
    procedure Button100Click(Sender: TObject);
    procedure AusgabeTimerTimer(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure UpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure TimerTimerTimer(Sender: TObject);
    procedure LogTimerTimer(Sender: TObject);
    procedure Edit94Exit(Sender: TObject);
    procedure Edit93Exit(Sender: TObject);
    procedure HendiBreakTimerTimer(Sender: TObject);
    procedure HendiTimerTimer(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure SensorUeberwachungTimerTimer(Sender: TObject);
    procedure ComboBox45Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure Edit19Change(Sender: TObject);
    procedure BitBtn6TimerTimer(Sender: TObject);
    procedure BitBtn6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn6MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn7MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn7MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn7TimerTimer(Sender: TObject);
    procedure StringGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure KopiedieserRasteinfgen1Click(Sender: TObject);
    procedure ComboBox36KeyPress(Sender: TObject; var Key: Char);
    procedure Edit96KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn13Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

procedure TimerDialogClose;

var
  Form1: TForm1;
  myFile,mySetup,myImportSettingsFile,myLogfile: TextFile;
  Rezeptname,Pfad,Pfad2,KBHDBPfad,RecText,arduinotfs,rastart,logname: String;
  ladefehler,pause,start,stop,file_korrupt,Rast,Brauerruf,Heizbedarf,
  Ruehrbedarf,Kuehlungbedarf,Alarmbedarf,Hendibreak,FehlerErkannt,
  ManualMoved,AutoCommand: boolean;
  arduinofloattempalt,arduinofloattemp,arduinotempdelta, floattemp,
  ptime,atime,htime,rtime,gtime,kwert,kfaktor,Gradient,storetempon,
  storetempoff: Extended;
  solltemp,Heizung,Ruehrwerk,Kuehlung,Alarm,Datensatz,endpunkt,startpunkt,
  spanne,RastCount,Zeit,Pausezeit,Pausestartzeit,Timerstartbatstatus,
  Heizstufe,Heizstufealt,Heizcounter,Heizpuls,Heizpause,
  Ruehrpulsalt,Ruehrpausealt,Ruehrcounter,Ruehrpuls,Ruehrpause,
  Alarmpulsalt,Alarmpausealt,alarmcounter,Alarmpuls,Alarmpause,
  Countlines,Alarmpausezaehler,verzoegerung,verzoegerung2,ruehrverzoegerung,
  ruehrverzoegerung2: integer;
  Gradientgetter: Array[1..120] of Extended;
  funktionsinfo: Array [1..10] of Boolean;
  sl,sl2: TStringList;

const
  Version = 'V 2.0 WiFi Trial';

implementation

{$R *.dfm}

type
  TStringGridHack = class(TStringGrid)
  public
    procedure MoveColumn(FromIndex, ToIndex: Longint);
    procedure MoveRow(FromIndex, ToIndex: Longint);
  end;

procedure TStringGridHack.MoveColumn(FromIndex, ToIndex: Integer);
begin
  inherited;
end;

procedure TStringGridHack.MoveRow(FromIndex, ToIndex: Integer);
begin
  inherited;
end;

function MyShowMessagePos(const Msg: string; xPosForm, xPosMessage, yPosForm, yPosMessage: Integer ): Integer;
var
  aMsgDlg: TForm;
begin
  DecimalSeparator:='.';
  aMsgDlg := CreateMessageDialog(Msg, mtInformation, [mbOK]);
  aMsgDlg.Font.Name:='Arial';
  aMsgDlg.Font.Size:=9;
  aMsgDlg.Left := xPosForm + xPosMessage;
  aMsgDlg.Top := yPosForm + yPosMessage;
  Result := aMsgDlg.ShowModal;
end;

function MyMessageDlgPos(const Msg: string; DlgType: TMsgDlgType; Buttons: TMsgDlgButtons; Captions: array of string; xPosForm, xPosMessage, yPosForm, yPosMessage: Integer ): Integer;
var
  aMsgDlg: TForm;
begin
  DecimalSeparator:='.';
  aMsgDlg := CreateMessageDialog(Msg, DlgType, Buttons);
  aMsgDlg.Font.Name:='Arial';
  aMsgDlg.Font.Size:=9;
  aMsgDlg.Left := xPosForm + xPosMessage;
  aMsgDlg.Top := yPosForm + yPosMessage;
  Result := aMsgDlg.ShowModal;
end;

procedure ZFCheck(RastEnde:boolean);
var ON_OFF: boolean;
    GewaehlteFunktion: integer;
begin with Form1 do begin
  try
    if RastEnde = false then GewaehlteFunktion:=strtoint(Stringgrid1.cells[10,RastCount])
    else GewaehlteFunktion:=strtoint(Stringgrid1.cells[11,RastCount]);
    if GewaehlteFunktion>10 then begin GewaehlteFunktion:=GewaehlteFunktion-10; ON_OFF:=false; end else ON_OFF:=true;
    Funktionsinfo[GewaehlteFunktion]:=ON_OFF;
  except
  end;
end; end;
  
procedure ClearStringGrid1;
var
  c, r: Integer;
begin
  for c := 0 to Pred(Form1.StringGrid1.ColCount) do
    for r := 1 to Pred(Form1.StringGrid1.RowCount) do
      Form1.StringGrid1.Cells[c, r] := '';
  Form1.StringGrid1.RowCount := 2;
end;

procedure speichern(Form:TForm1; filename:string);
var i,j:integer;
begin
  AssignFile(myFile, filename);                // Rezeptdaten speichern
  ReWrite(myFile);
  for j:= Form1.StringGrid1.RowCount-1 downto 1 do
  begin
    for i:= 0 to 11 do
    begin
      WriteLn(myFile, (Form1.StringGrid1.Cells[i,j]));
    end;
  end;
end;

procedure laden(Form:TForm1; filename:string);
var i,j: integer;
    dummy,dummy2: String;
begin
  ladefehler:=false;
  ClearStringGrid1;
  try
    AssignFile(myFile, filename);                          // Rezeptdaten laden
    Reset(myFile);
    ReadLn(myFile, dummy);
    for i:= 1 to 5 do ReadLn(myFile, dummy2);
    if (dummy2<>'Ja') and (dummy2<>'Nein') then
    begin
      ladefehler:=true;
      ClearStringGrid1;
    end
    else
    begin
      Reset(myFile);
      Form1.StringGrid1.RowCount := round(strtoint(dummy))+1;
      for j:= Form1.StringGrid1.RowCount-1 downto 1 do
      begin
        for i:= 0 to 11 do
        begin
          ReadLn(myFile, dummy);
          Form1.StringGrid1.Cells[i,j]:=dummy;
        end;
      end;
    end;
  except
    ladefehler:=true;
    ClearStringGrid1;
  end;
end;

procedure editcheck(changededit: TEdit; min:integer; max:integer; fail:string);
var Intdummy: integer;
begin
  if changededit.Text='' then changededit.Text:='0';
  try Intdummy:=strtoint(changededit.Text); changededit.Text:=inttostr(Intdummy); except begin changededit.Text:=fail; Intdummy:=strtoint(changededit.Text); MyShowMessagePos('Unerlaubtes Zeichen!', Form1.Left, 350, Form1.Top, 250); end; end;
  if (Intdummy>max) or (Intdummy<min) then begin changededit.Text:=fail; MyShowMessagePos('Unerlaubte Wert!', Form1.Left, 350, Form1.Top, 250); end;
end;

procedure RastEinlesen(Reihe: Integer);
begin
  with Form1.StringGrid1 do
  begin
    Form1.Edit1.Text := cells[1,Reihe];
    Form1.Edit2.Text := cells[2,Reihe] ;
    Form1.Edit3.Text := cells[3,Reihe];
    Form1.RastTypBtn1.HelpKeyword:=(cells[4,Reihe]); Form1.RastTypBtn1Click(Form1); Form1.RastTypBtn1Click(Form1); Form1.RastTypBtn1Click(Form1);
    if cells[5,Reihe]='Ja' then Form1.checkbox2.Checked:=true else Form1.checkbox2.Checked:=false;
    Form1.Edit4.Text := cells[6,Reihe];
    Form1.Edit5.Text := cells[7,Reihe];
    if cells[8,Reihe]='Ja' then Form1.checkbox1.Checked:=true else Form1.checkbox1.Checked:=false;
    Form1.Edit6.Text := cells[9,Reihe];
    try Form1.ComboBox4.itemindex := strtoint(cells[10,Reihe]) except Form1.ComboBox4.itemindex := 50; end;
    try Form1.ComboBox5.itemindex := strtoint(cells[11,Reihe]) except Form1.ComboBox5.itemindex := 50; end;
  end;
  if start=false then Form1.StringGrid1.DragMode:=dmManual;
  Form1.BitBtn1.Enabled:=true;
  Form1.BitBtn11.Enabled:=true;
  Form1.BitBtn16.Enabled:=true;
  Form1.BitBtn9.Enabled:=true;
  Form1.BitBtn10.Enabled:=false;
  Form1.BitBtn13.Enabled:=false;
  Form1.Panel7.Color:=clBtnFace;
end;

procedure RastNeu(Reihe:integer);
begin
  if Reihe<0 then Reihe:=0;
  with Form1.StringGrid1 do
  begin
    cells[1,Reihe] := 'Neue Rast';
    cells[2,Reihe] := '22';
    cells[3,Reihe] := '0';
    cells[4,Reihe] := 'Heizrast';
    cells[5,Reihe] :='Ja';
    cells[6,Reihe] := '0';
    cells[7,Reihe] := '9999';
    cells[8,Reihe] := 'Nein';
    cells[9,Reihe] := '';
    cells[10,Reihe] := '0';
    cells[11,Reihe] := '0';
    if stop=false then
    begin
      cells[12,Reihe] := '0';
      cells[13,Reihe] := '0';
      cells[14,Reihe] := '';
      cells[15,Reihe] := '';
    end;
  end;
end;

procedure RastUebernahme(Reihe:integer);
begin
  if Reihe<0 then Reihe:=0;
  with Form1.StringGrid1 do
  begin
    cells[1,Reihe] := Form1.Edit1.Text;
    cells[2,Reihe] := Form1.Edit2.Text;
    cells[3,Reihe] := Form1.Edit3.Text;
    cells[4,Reihe] := Form1.RastTypBtn1.HelpKeyWord;
    if Form1.checkbox2.Checked=true then cells[5,Reihe] :='Ja' else cells[5,Reihe] :='Nein';
    cells[6,Reihe] := Form1.Edit4.Text;
    cells[7,Reihe] := Form1.Edit5.Text;
    if Form1.checkbox1.Checked=true then cells[8,Reihe] :='Ja' else cells[8,Reihe] :='Nein';
    cells[9,Reihe] := Form1.Edit6.Text;
    cells[10,Reihe] := inttostr(Form1.ComboBox4.itemindex);
    cells[11,Reihe] := inttostr(Form1.ComboBox5.itemindex);
    if stop=false then cells[12,Reihe] := cells[3,Reihe];
  end;
  if start=false then Form1.StringGrid1.DragMode:=dmManual; 
  Form1.BitBtn1.Enabled:=true;
  Form1.BitBtn11.Enabled:=true;
  Form1.BitBtn16.Enabled:=true;
  Form1.BitBtn9.Enabled:=true;
  Form1.BitBtn10.Enabled:=false;
  Form1.BitBtn13.Enabled:=false;
  Form1.Panel7.Color:=clBtnFace;
end;

procedure StartUDP;
begin with Form1 do begin
  IdUDPClient1.Active:=False;
  IdUDPClient1.Host:=Edit96.Text;
  try IdUDPClient1.Port:=strtoint(ComboBox36.Text) except IdUDPClient1.Port:=5000; end;
  IdUDPServer1.Active:=False;
  IdUDPServer1.Bindings.Clear;
  try IdUDPServer1.DefaultPort:= strtoint(ComboBox37.Text) except IdUDPServer1.DefaultPort:=5001; end;           //Electronic device port
  IdUDPServer1.Active:=true;
  IdUDPClient1.Active:=true;
  SendeTimer.Enabled := true ;
end;end;

procedure SetSwitches;
begin with Form1 do begin
  if Button4.Caption='Aus' then Heizung:=0 else if Button4.Caption='An' then Heizung:=1;
  if Button5.Caption='Aus' then Ruehrwerk:=0 else if Button5.Caption='An' then Ruehrwerk:=1;
  if Button6.Caption='Aus' then Kuehlung:=0 else if Button6.Caption='An' then Kuehlung:=1;
  if Button7.Caption='Aus' then Alarm:=0 else if Button7.Caption='An' then Alarm:=1;
end;end;

procedure SetPictures;
begin with Form1 do begin
  if Heizung=0 then Image2.Picture.LoadFromFile(pfad + 'Graphics\Feuer-aus.bmp')
  else if (checkbox7.Checked=true) and (Solltemp=strtoint(Combobox38.Text)) then Image2.Picture.LoadFromFile(pfad + 'Graphics\Feuer-dauerein.bmp')
  else Image2.Picture.LoadFromFile(pfad + 'Graphics\Feuer-ein.bmp');
  if Ruehrwerk=0 then Image3.Picture.LoadFromFile(pfad + 'Graphics\Ruehrwerk-aus.bmp') else Image3.Picture.LoadFromFile(pfad + 'Graphics\Ruehrwerk-ein.bmp');
  if Kuehlung=0 then Image4.Picture.LoadFromFile(pfad + 'Graphics\Kuehlung-aus.bmp') else Image4.Picture.LoadFromFile(pfad + 'Graphics\Kuehlung-ein.bmp');
  if Alarm=0 then Image6.Picture.LoadFromFile(pfad + 'Graphics\Alarm-aus.bmp') else Image6.Picture.LoadFromFile(pfad + 'Graphics\Alarm-ein.bmp');
end;end;

procedure SetAlarmSound;
begin with Form1 do begin
  if Alarm=0 then sndPlaySound(nil,0)
  else if FehlerErkannt=false then sndPlaySound(PChar(pfad+'Sound\alarm.wav'),SND_ASYNC + SND_LOOP)
  else sndPlaySound(PChar(pfad+'Sound\alarm2.wav'),SND_ASYNC + SND_LOOP);
end;end;

procedure SetTemp;
begin with Form1 do begin
  if Button13.Caption='Simulation' then floattemp:=arduinofloattemp*kfaktor+kwert else floattemp:=ScrollBar2.Position/10;
  panel1.Caption:=FloatToStrF(floattemp, ffFixed, 3, 1)+' °C';
end;end;

procedure setup_speichern(Form:TForm1; filename:string);
var dummyfilename:string;
begin
  AssignFile(mySetup, filename);                // Setup speichern
  ReWrite(mySetup);
  WriteLn(mySetup,'Installationsverzeichnis;Standard');
  WriteLn(mySetup,'Taktungstemperatur;'+Form.ComboBox13.Text);
  WriteLn(mySetup,'Einschaltpuls Stufe 1;'+Form.ComboBox14.Text);
  WriteLn(mySetup,'Ausschaltpuls Stufe 1;'+Form.ComboBox15.Text);
  WriteLn(mySetup,'Einschaltpuls Stufe 2;'+Form.ComboBox17.Text);
  WriteLn(mySetup,'Ausschaltpuls Stufe 2;'+Form.ComboBox18.Text);
  WriteLn(mySetup,'Einschaltpuls Stufe 3;'+Form.ComboBox19.Text);
  WriteLn(mySetup,'Ausschaltpuls Stufe 3;'+Form.ComboBox20.Text);
  WriteLn(mySetup,'Einschaltpuls Stufe 4;'+Form.ComboBox21.Text);
  WriteLn(mySetup,'Ausschaltpuls Stufe 4;'+Form.ComboBox22.Text);
  WriteLn(mySetup,'Einschaltpuls bis 100°C;'+Form.ComboBox24.Text);
  WriteLn(mySetup,'Ausschaltpuls bis 100°C;'+Form.ComboBox23.Text);
  WriteLn(mySetup,'Überschwingungsdämpfung;'+Form.ComboBox25.Text);
  WriteLn(mySetup,'Schalthysterese Heizung;'+Form.ComboBox26.Text);
  WriteLn(mySetup,'NO LONGER USED;1');
  WriteLn(mySetup,'Schalthysterese Kühlung;'+Form.ComboBox29.Text);
  WriteLn(mySetup,'Pulstemperatur Stufe 1;'+Form.Edit83.Text);
  WriteLn(mySetup,'Pulstemperatur Stufe 2;'+Form.Edit84.Text);
  WriteLn(mySetup,'Pulstemperatur Stufe 3;'+Form.Edit85.Text);
  WriteLn(mySetup,'Pulstemperatur Stufe 4;'+Form.Edit86.Text);
  WriteLn(mySetup,'NO LONGER USED;2');
  if Form.CheckBox32.Checked=true then WriteLn(mySetup,'Log-Datei schreiben;1') else WriteLn(mySetup,'Log-Datei schreiben;0');
  if Form.CheckBox42.Checked=true then WriteLn(mySetup,'Rührwerk mit Heizung koppeln;1') else WriteLn(mySetup,'Rührwerk mit Heizung koppeln;0');
  WriteLn(mySetup,'NO LONGER USED;3');
  WriteLn(mySetup,'Rührwerk-Zeitabstand1;'+stringreplace(Form.ComboBox45.Text,' ','€€€',[rfReplaceAll]));
  WriteLn(mySetup,'Rührwerk-Zeitabstand2;'+stringreplace(Form.ComboBox3.Text,' ','€€€',[rfReplaceAll]));
  WriteLn(mySetup,'Kochtemperatur;'+Form.ComboBox38.Text);
  WriteLn(mySetup,'Temperaturkorrekturwert;'+Form.Edit93.Text);
  WriteLn(mySetup,'Temperaturkorrekturfaktor;'+Form.Edit94.Text);
  WriteLn(mySetup,'Arduino-IP-Port-Nummer;'+Form.Edit96.Text);
  WriteLn(mySetup,'Arduino-UDP-Port-OUT;'+Form.ComboBox36.Text);
  WriteLn(mySetup,'Arduino-UDP-Port-IN;'+Form.ComboBox37.Text);
  if Form.CheckBox46.Checked=true then WriteLn(mySetup,'IP-Heizung;1') else WriteLn(mySetup,'IP-Heizung;0');
  if Form.CheckBox47.Checked=true then WriteLn(mySetup,'IP-Ruehrwerk;1') else WriteLn(mySetup,'IP-Ruehrwerk;0');
  if Form.CheckBox48.Checked=true then WriteLn(mySetup,'IP-Pumpe;1') else WriteLn(mySetup,'IP-Pumpe;0');
  if Form.CheckBox49.Checked=true then WriteLn(mySetup,'IP-Alarm;1') else WriteLn(mySetup,'IP-Alarm;0');
  WriteLn(mySetup,'IP-Heizung;'+Form.Edit97.Text);
  WriteLn(mySetup,'IP-Ruehrwerk;'+Form.Edit98.Text);
  WriteLn(mySetup,'IP-Pumpe;'+Form.Edit99.Text);
  WriteLn(mySetup,'IP-Alarm;'+Form.Edit100.Text);
  WriteLn(mySetup,'User-Name-Heizung;'+Form.Edit101.Text);
  WriteLn(mySetup,'User-Name-Ruehrwerk;'+Form.Edit102.Text);
  WriteLn(mySetup,'User-Name-Pumpe;'+Form.Edit103.Text);
  WriteLn(mySetup,'User-Name-Alarm;'+Form.Edit104.Text);
  WriteLn(mySetup,'Password-Heizung;'+Form.Edit105.Text);
  WriteLn(mySetup,'Password-Ruehrwerk;'+Form.Edit106.Text);
  WriteLn(mySetup,'Password-Pumpe;'+Form.Edit107.Text);
  WriteLn(mySetup,'Password-Alarm;'+Form.Edit108.Text);
  dummyfilename:=stringreplace(Form.ComboBox54.Text,' ','€€€',[rfReplaceAll]);
  WriteLn(mySetup,'Fensterfarbe;'+dummyfilename);
  if Form.CheckBox5.Checked=true then WriteLn(mySetup,'Versionsprüfung;1') else WriteLn(mySetup,'Versionsprüfung;0');
  if Form.CheckBox7.Checked=true then WriteLn(mySetup,'Dauerheizen zum Kochen;1') else WriteLn(mySetup,'Dauerheizen zum Kochen;0');
  if Form.CheckBox33.Checked=true then WriteLn(mySetup,'Sensorueberwachung;1') else WriteLn(mySetup,'Sensorueberwachung;0');
  if Form.CheckBox34.Checked=true then WriteLn(mySetup,'Gepulste Heizung;1') else WriteLn(mySetup,'Gepulste Heizung;0');
  if Form.CheckBox36.Checked=true then WriteLn(mySetup,'Gradientbegrenzte Heizung;1') else WriteLn(mySetup,'Gradientbegrenzte Heizung;0');
  if Form.CheckBox37.Checked=true then WriteLn(mySetup,'Hysterese verwenden;1') else WriteLn(mySetup,'Hysterese verwenden;0');
  if Form.CheckBox41.Checked=true then WriteLn(mySetup,'Heizung ueberwachen;1') else WriteLn(mySetup,'Heizung ueberwachen;0');
  WriteLn(mySetup,'Überschwingungstemperatur;'+Form.ComboBox55.Text);
  WriteLn(mySetup,'Unterschwingungstemperatur;'+Form.ComboBox56.Text);
  if Form.CheckBox6.Checked=true then WriteLn(mySetup,'HendiBreak;1') else WriteLn(mySetup,'HendiBreak;0');
  dummyfilename:=stringreplace(Form.Edit7.Text,' ','€€€',[rfReplaceAll]);
  WriteLn(mySetup,'Kessel-Name;'+dummyfilename);
  WriteLn(mySetup,'AlarmPulsDauer;'+inttostr(Form.TrackBar2.Position));
  WriteLn(mySetup,'AlarmPauseDauer;'+inttostr(Form.TrackBar3.Position));
  dummyfilename:=stringreplace(Form.Edit8.Text,' ','€€€',[rfReplaceAll]);
  WriteLn(mySetup,'Rührwerk-Tabellenbreite;'+dummyfilename);
  dummyfilename:=stringreplace(Form.Edit9.Text,' ','€€€',[rfReplaceAll]);
  WriteLn(mySetup,'Rührwerk-An-Tabellenbreite;'+dummyfilename);
  dummyfilename:=stringreplace(Form.Edit10.Text,' ','€€€',[rfReplaceAll]);
  WriteLn(mySetup,'Rührwerk-Aus-Tabellenbreite;'+dummyfilename);
  dummyfilename:=stringreplace(Form.Edit11.Text,' ','€€€',[rfReplaceAll]);
  WriteLn(mySetup,'Brauerruf-Tabellenbreite;'+dummyfilename);
  dummyfilename:=stringreplace(Form.Edit12.Text,' ','€€€',[rfReplaceAll]);
  WriteLn(mySetup,'Brauerruf-Text-Tabellenbreite;'+dummyfilename);
  dummyfilename:=stringreplace(Form.Edit13.Text,' ','€€€',[rfReplaceAll]);
  WriteLn(mySetup,'ZusatzfunktionStart-Tabellenbreite;'+dummyfilename);
  dummyfilename:=stringreplace(Form.Edit14.Text,' ','€€€',[rfReplaceAll]);
  WriteLn(mySetup,'ZusatzfunktionEnde-Tabellenbreite;'+dummyfilename);
  if Form.CheckBox3.Checked=true then WriteLn(mySetup,'Zusatzfunktionen nutzen;1') else WriteLn(mySetup,'Zusatzfunktionen nutzen;0');
  dummyfilename:=stringreplace(Form.Edit21.Text,' ','€€€',[rfReplaceAll]);
  WriteLn(mySetup,'Zusatzfunktion1;'+dummyfilename);
  dummyfilename:=stringreplace(Form.Edit22.Text,' ','€€€',[rfReplaceAll]);
  WriteLn(mySetup,'Zusatzfunktion2;'+dummyfilename);
  dummyfilename:=stringreplace(Form.Edit23.Text,' ','€€€',[rfReplaceAll]);
  WriteLn(mySetup,'Zusatzfunktion3;'+dummyfilename);
  dummyfilename:=stringreplace(Form.Edit24.Text,' ','€€€',[rfReplaceAll]);
  WriteLn(mySetup,'Zusatzfunktion4;'+dummyfilename);
  dummyfilename:=stringreplace(Form.Edit25.Text,' ','€€€',[rfReplaceAll]);
  WriteLn(mySetup,'Zusatzfunktion5;'+dummyfilename);
  dummyfilename:=stringreplace(Form.Edit26.Text,' ','€€€',[rfReplaceAll]);
  WriteLn(mySetup,'Zusatzfunktion6;'+dummyfilename);
  dummyfilename:=stringreplace(Form.Edit27.Text,' ','€€€',[rfReplaceAll]);
  WriteLn(mySetup,'Zusatzfunktion7;'+dummyfilename);
  dummyfilename:=stringreplace(Form.Edit28.Text,' ','€€€',[rfReplaceAll]);
  WriteLn(mySetup,'Zusatzfunktion8;'+dummyfilename);
  dummyfilename:=stringreplace(Form.Edit29.Text,' ','€€€',[rfReplaceAll]);
  WriteLn(mySetup,'Zusatzfunktion9;'+dummyfilename);
  dummyfilename:=stringreplace(Form.Edit30.Text,' ','€€€',[rfReplaceAll]);
  WriteLn(mySetup,'Zusatzfunktion10;'+dummyfilename);
  dummyfilename:=stringreplace(Form.Edit16.Text,' ','€€€',[rfReplaceAll]);
  WriteLn(mySetup,'Raststartzeit;'+dummyfilename);
  dummyfilename:=stringreplace(Form.Edit17.Text,' ','€€€',[rfReplaceAll]);
  WriteLn(mySetup,'Rastendzeit;'+dummyfilename);
  dummyfilename:=stringreplace(Form.Edit19.Text,' ','€€€',[rfReplaceAll]);
  WriteLn(mySetup,'Brauruf-Text-gestartet;'+dummyfilename);
  CloseFile(mySetup);
end;

procedure switchToStandardSetup;
begin
  sl.Free;
  sl2.Free;
  sl:=TStringList.Create; //Objekt erzeugen
  sl.LoadFromFile(pfad+'Setup\Standard_Setup.txt');  //Datei in Stringliste laden
  sl2:=TStringList.Create;
  sl2.Delimiter:=';';
end;

procedure setup_laden(Form:TForm1; filename:string);
var ttext:string;
    i: integer;
begin
  file_korrupt:=false;
  try
    i:=0;
    sl:=TStringList.Create; //Objekt erzeugen
    sl.LoadFromFile(filename);  //Datei in Stringliste laden
    sl2:=TStringList.Create;
    sl2.Delimiter:=';';
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    if sl2[sl2.Count-1]<>'Standard' then pfad:=sl2[sl2.Count-1];
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    ttext:=sl2[sl2.Count-1];
    Form.Combobox13.ItemIndex := Form.Combobox13.Items.IndexOf(sl2[sl2.Count-1]);
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Combobox14.ItemIndex := Form.Combobox14.Items.IndexOf(sl2[sl2.Count-1]);
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Combobox15.ItemIndex := Form.Combobox15.Items.IndexOf(sl2[sl2.Count-1]);
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Combobox17.ItemIndex := Form.Combobox17.Items.IndexOf(sl2[sl2.Count-1]);
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Combobox18.ItemIndex := Form.Combobox18.Items.IndexOf(sl2[sl2.Count-1]);
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Combobox19.ItemIndex := Form.Combobox19.Items.IndexOf(sl2[sl2.Count-1]);
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Combobox20.ItemIndex := Form.Combobox20.Items.IndexOf(sl2[sl2.Count-1]);
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Combobox21.ItemIndex := Form.Combobox21.Items.IndexOf(sl2[sl2.Count-1]);
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Combobox22.ItemIndex := Form.Combobox22.Items.IndexOf(sl2[sl2.Count-1]);
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Combobox24.ItemIndex := Form.Combobox24.Items.IndexOf(sl2[sl2.Count-1]);
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Combobox23.ItemIndex := Form.Combobox23.Items.IndexOf(sl2[sl2.Count-1]);
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Combobox25.ItemIndex := Form.Combobox25.Items.IndexOf(sl2[sl2.Count-1]);
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Combobox26.ItemIndex := Form.Combobox26.Items.IndexOf(sl2[sl2.Count-1]);
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Combobox29.ItemIndex := Form.Combobox29.Items.IndexOf(sl2[sl2.Count-1]);
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Edit83.Text:=sl2[sl2.Count-1];
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Edit84.Text:=sl2[sl2.Count-1];
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Edit85.Text:=sl2[sl2.Count-1];
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Edit86.Text:=sl2[sl2.Count-1];
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    if sl2[sl2.Count-1]='1' then Form.CheckBox32.Checked:=true else Form.CheckBox32.Checked:=false;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    if sl2[sl2.Count-1]='1' then Form.CheckBox42.Checked:=true else Form.CheckBox42.Checked:=false;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Combobox45.ItemIndex := Form.Combobox45.Items.IndexOf(stringreplace(sl2[sl2.Count-1],'€€€',' ',[rfReplaceAll])); Form1.ComboBox45Change(form1);
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Combobox3.ItemIndex := Form.Combobox3.Items.IndexOf(stringreplace(sl2[sl2.Count-1],'€€€',' ',[rfReplaceAll])); Form1.ComboBox3Change(form1);
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Combobox38.ItemIndex := Form.Combobox38.Items.IndexOf(sl2[sl2.Count-1]);
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Edit93.Text := sl2[sl2.Count-1]; Form.Edit93Exit(Form1);
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Edit94.Text := sl2[sl2.Count-1]; Form.Edit94Exit(Form1);
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Edit96.Text := sl2[sl2.Count-1];
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    ttext:=sl2[sl2.Count-1]; Form.Combobox36.Text := ttext;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    ttext:=sl2[sl2.Count-1]; Form.Combobox37.Text := ttext;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    if sl2[sl2.Count-1]='1' then Form.CheckBox46.Checked:=true else Form.CheckBox46.Checked:=false;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    if sl2[sl2.Count-1]='1' then Form.CheckBox47.Checked:=true else Form.CheckBox47.Checked:=false;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    if sl2[sl2.Count-1]='1' then Form.CheckBox48.Checked:=true else Form.CheckBox48.Checked:=false;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    if sl2[sl2.Count-1]='1' then Form.CheckBox49.Checked:=true else Form.CheckBox49.Checked:=false;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Edit97.Text := sl2[sl2.Count-1];
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Edit98.Text := sl2[sl2.Count-1];
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Edit99.Text := sl2[sl2.Count-1];
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Edit100.Text := sl2[sl2.Count-1];
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Edit101.Text := sl2[sl2.Count-1];
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Edit102.Text := sl2[sl2.Count-1];
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Edit103.Text := sl2[sl2.Count-1];
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Edit104.Text := sl2[sl2.Count-1];
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Edit105.Text := sl2[sl2.Count-1];
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Edit106.Text := sl2[sl2.Count-1];
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Edit107.Text := sl2[sl2.Count-1];
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Edit108.Text := sl2[sl2.Count-1];
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    Form.Combobox54.ItemIndex := Form.Combobox54.Items.IndexOf(stringreplace(sl2[sl2.Count-1],'€€€',' ',[rfReplaceAll])); Form1.ComboBox54Change(Form1);
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    if sl2[sl2.Count-1]='1' then Form.CheckBox5.Checked:=true else Form.CheckBox1.Checked:=false;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    if sl2[sl2.Count-1]='1' then Form.CheckBox7.Checked:=true else Form.CheckBox2.Checked:=false;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    if sl2[sl2.Count-1]='1' then Form.CheckBox33.Checked:=true else Form.CheckBox33.Checked:=false;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    if sl2[sl2.Count-1]='1' then Form.CheckBox34.Checked:=true else Form.CheckBox34.Checked:=false;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    if sl2[sl2.Count-1]='1' then Form.CheckBox36.Checked:=true else Form.CheckBox36.Checked:=false;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    if sl2[sl2.Count-1]='1' then Form.CheckBox37.Checked:=true else Form.CheckBox37.Checked:=false;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    if sl2[sl2.Count-1]='1' then Form.CheckBox41.Checked:=true else Form.CheckBox41.Checked:=false;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    ttext:=sl2[sl2.Count-1]; Form.Combobox55.ItemIndex := Form.Combobox55.Items.IndexOf(sl2[sl2.Count-1]);
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    ttext:=sl2[sl2.Count-1]; Form.Combobox56.ItemIndex := Form.Combobox56.Items.IndexOf(sl2[sl2.Count-1]);
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    if sl2[sl2.Count-1]='1' then Form.CheckBox6.Checked:=true else Form.CheckBox6.Checked:=false;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    ttext:=sl2[sl2.Count-1]; ttext:=stringreplace(ttext,'€€€',' ',[rfReplaceAll]); Form.Edit7.Text:=ttext;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    ttext:=sl2[sl2.Count-1]; Form.TrackBar2.Position:=strtoint(ttext);
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    ttext:=sl2[sl2.Count-1]; Form.TrackBar3.Position:=strtoint(ttext);
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    ttext:=sl2[sl2.Count-1]; ttext:=stringreplace(ttext,'€€€',' ',[rfReplaceAll]); Form.Edit8.Text:=ttext;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    ttext:=sl2[sl2.Count-1]; ttext:=stringreplace(ttext,'€€€',' ',[rfReplaceAll]); Form.Edit9.Text:=ttext;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    ttext:=sl2[sl2.Count-1]; ttext:=stringreplace(ttext,'€€€',' ',[rfReplaceAll]); Form.Edit10.Text:=ttext;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    ttext:=sl2[sl2.Count-1]; ttext:=stringreplace(ttext,'€€€',' ',[rfReplaceAll]); Form.Edit11.Text:=ttext;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    ttext:=sl2[sl2.Count-1]; ttext:=stringreplace(ttext,'€€€',' ',[rfReplaceAll]); Form.Edit12.Text:=ttext;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    ttext:=sl2[sl2.Count-1]; ttext:=stringreplace(ttext,'€€€',' ',[rfReplaceAll]); Form.Edit13.Text:=ttext;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    ttext:=sl2[sl2.Count-1]; ttext:=stringreplace(ttext,'€€€',' ',[rfReplaceAll]); Form.Edit14.Text:=ttext;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    if sl2[sl2.Count-1]='1' then Form.CheckBox3.Checked:=true else Form.CheckBox3.Checked:=false;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    ttext:=sl2[sl2.Count-1]; ttext:=stringreplace(ttext,'€€€',' ',[rfReplaceAll]); Form.Edit21.Text:=ttext;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    ttext:=sl2[sl2.Count-1]; ttext:=stringreplace(ttext,'€€€',' ',[rfReplaceAll]); Form.Edit22.Text:=ttext;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    ttext:=sl2[sl2.Count-1]; ttext:=stringreplace(ttext,'€€€',' ',[rfReplaceAll]); Form.Edit23.Text:=ttext;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    ttext:=sl2[sl2.Count-1]; ttext:=stringreplace(ttext,'€€€',' ',[rfReplaceAll]); Form.Edit24.Text:=ttext;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    ttext:=sl2[sl2.Count-1]; ttext:=stringreplace(ttext,'€€€',' ',[rfReplaceAll]); Form.Edit25.Text:=ttext;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    ttext:=sl2[sl2.Count-1]; ttext:=stringreplace(ttext,'€€€',' ',[rfReplaceAll]); Form.Edit26.Text:=ttext;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    ttext:=sl2[sl2.Count-1]; ttext:=stringreplace(ttext,'€€€',' ',[rfReplaceAll]); Form.Edit27.Text:=ttext;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    ttext:=sl2[sl2.Count-1]; ttext:=stringreplace(ttext,'€€€',' ',[rfReplaceAll]); Form.Edit28.Text:=ttext;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    ttext:=sl2[sl2.Count-1]; ttext:=stringreplace(ttext,'€€€',' ',[rfReplaceAll]); Form.Edit29.Text:=ttext;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    ttext:=sl2[sl2.Count-1]; ttext:=stringreplace(ttext,'€€€',' ',[rfReplaceAll]); Form.Edit30.Text:=ttext;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    ttext:=sl2[sl2.Count-1]; ttext:=stringreplace(ttext,'€€€',' ',[rfReplaceAll]); Form.Edit16.Text:=ttext;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    ttext:=sl2[sl2.Count-1]; ttext:=stringreplace(ttext,'€€€',' ',[rfReplaceAll]); Form.Edit17.Text:=ttext;
    if i>sl.Count-1 then switchToStandardSetup; sl2.DelimitedText:=sl[i]; i:=i+1;
    ttext:=sl2[sl2.Count-1]; ttext:=stringreplace(ttext,'€€€',' ',[rfReplaceAll]); Form.Edit19.Text:=ttext;
  except
    file_korrupt:=true;
  end;
  Form1.Edit8Change(Form1);
  sl.Free;
  sl2.Free;
end;

procedure KBHSettingsSpeichern;
begin with Form1 do begin
  AssignFile(myImportSettingsFile, pfad+'import\file.txt');
  ReWrite(myImportSettingsFile);
  WriteLn(myImportSettingsFile,Edit90.Text);
  WriteLn(myImportSettingsFile,KBHDBPfad);
  if CheckBox44.Checked=true then WriteLn(myImportSettingsFile,'TRUE') else WriteLn(myImportSettingsFile,'FALSE');
  if CheckBox51.Checked=true then WriteLn(myImportSettingsFile,'TRUE') else WriteLn(myImportSettingsFile,'FALSE');
  WriteLn(myImportSettingsFile,Edit91.Text);
  WriteLn(myImportSettingsFile,Edit92.Text);
  WriteLn(myImportSettingsFile,inttostr(ComboBox43.ItemIndex));
  CloseFile(myImportSettingsFile);
end; end;

procedure SQLBrowse;
var slDBpath: string;
    sldb: TSQLiteDatabase;
    sltb: TSQLIteTable;
    MemText: String;
    ID,i,k,gk: integer;
    vwh: boolean;
begin with Form1 do begin
  Edit90.Text := OpenDialog2.FileName;
  slDBPath := OpenDialog2.FileName;
  sldb := TSQLiteDatabase.Create(slDBPath);
  try
    if sldb.TableExists('Sud') then
    begin
      //query the data
      if ComboBox43.Itemindex <= 0 then sltb := slDb.GetTable('SELECT * FROM Sud');
      if ComboBox43.Itemindex = 1 then sltb := slDb.GetTable('SELECT * FROM Sud WHERE BierWurdeGebraut = 0');
      if ComboBox43.Itemindex = 2 then sltb := slDb.GetTable('SELECT * FROM Sud WHERE BierWurdeGebraut = 1');
      if ComboBox43.Itemindex = 3 then sltb := slDb.GetTable('SELECT * FROM Sud WHERE BierWurdeVerbraucht = 0');
      if ComboBox43.Itemindex >= 4 then sltb := slDb.GetTable('SELECT * FROM Sud WHERE BierWurdeVerbraucht = 1');
      try
        if sltb.Count > 0 then
        begin
          if Datensatz > sltb.Count-1 then Datensatz:=sltb.Count-1;
          ScrollBar1.Max:=sltb.Count-1;
          ScrollBar1.Position:=Datensatz;
          if Datensatz < 0 then Datensatz:=0;
          for i:=1 to Datensatz do sltb.Next;
          Edit89.Text:=inttostr(Datensatz+1)+' / '+inttostr(sltb.Count);
          ebName.Text := UTF8ToAnsi(sltb.FieldAsString(sltb.FieldIndex['Sudname']));
          ID := sltb.FieldAsInteger(sltb.FieldIndex['ID']);
          ebID.Text := inttostr(ID);
          memMaisch.Text := 'Einmaischen - '+floattostr(sltb.FieldAsDouble(sltb.FieldIndex['EinmaischenTemp']))+chr(176)+'C - 0 min.';
        end;
      except
        MyMessageDlgPos('Kein Eintrag in DB vorhanden.', mtInformation, [mbOK], ['Ok'], Form1.Left, 350, Form1.Top, 250);
      end;
      sltb := slDb.GetTable('SELECT * FROM Rasten WHERE SudID = '+inttostr(ID));
      try
        if sltb.Count > 0 then
        begin
          for i:=1 to sltb.Count do
          begin
            MemText:=UTF8ToAnsi(sltb.FieldAsString(sltb.FieldIndex['RastName']));
            Delete(MemText, Pos(' ', MemText), 99);
            MemText:=MemText+' - '+UTF8ToAnsi(sltb.FieldAsString(sltb.FieldIndex['RastTemp']))+chr(176)+'C - ';
            MemText:=MemText+UTF8ToAnsi(sltb.FieldAsString(sltb.FieldIndex['RastDauer'])+' min.');
            memMaisch.Lines.Add(MemText);
            sltb.Next;
          end;
        end;
      except
        MyMessageDlgPos('Kein Eintrag in DB vorhanden.', mtInformation, [mbOK], ['Ok'], Form1.Left, 350, Form1.Top, 250);
      end;
      // *** Hopfengaben aus DB lesen ***
      memMaisch.Lines.Add('');
      memMaisch.Lines.Add('');
      memMaisch.Lines.Add('==========================================================');
      memMaisch.Lines.Add('');
      sltb := slDb.GetTable('SELECT * FROM Sud');
      try
        if sltb.Count > 0 then for i:=1 to Datensatz do sltb.Next;
        memMaisch.Lines.Add('Gesamtkochdauer - '+floattostr(sltb.FieldAsDouble(sltb.FieldIndex['KochdauerNachBitterhopfung']))+' min.');
        gk:=round(sltb.FieldAsDouble(sltb.FieldIndex['KochdauerNachBitterhopfung']));
      except
        MyMessageDlgPos('Kein Eintrag in DB vorhanden.', mtInformation, [mbOK], ['Ok'], Form1.Left, 350, Form1.Top, 250);
      end;
      sltb := slDb.GetTable('SELECT * FROM Hopfengaben WHERE SudID = '+inttostr(ID));
      vwh:=false;
      try
        if sltb.Count > 0 then
        begin
          for i:=1 to sltb.Count do
          begin
            if sltb.FieldAsString(sltb.FieldIndex['Vorderwuerze'])='1' then
            begin
              if vwh=false then
              begin
                memMaisch.Lines.Add('');
                memMaisch.Lines.Add('Vorderwürzhopfen :');
                vwh:=true;
              end;
              MemText:=UTF8ToAnsi(sltb.FieldAsString(sltb.FieldIndex['erg_Menge']))+ ' g';
              MemText:=MemText+' - '+UTF8ToAnsi(sltb.FieldAsString(sltb.FieldIndex['Name']));
              memMaisch.Lines.Add(MemText);
            end;
            sltb.Next;
          end;
        end;
      except
        MyMessageDlgPos('Kein Eintrag in DB vorhanden.', mtInformation, [mbOK], ['Ok'], Form1.Left, 350, Form1.Top, 250);
      end;
      sltb := slDb.GetTable('SELECT * FROM Hopfengaben ORDER BY Zeit DESC');
      try
        memMaisch.Lines.Add('');
        memMaisch.Lines.Add('Hopfengabe nach :');
        if sltb.Count > 0 then
        begin
          for i:=1 to sltb.Count do
          begin
            if (sltb.FieldAsString(sltb.FieldIndex['Vorderwuerze'])='0') and (sltb.FieldAsString(sltb.FieldIndex['SudID'])=inttostr(ID)) then
            begin
              k:=gk-round(sltb.FieldAsDouble(sltb.FieldIndex['Zeit']));
              MemText:=inttostr(k)+' min. - ';
              MemText:=MemText+UTF8ToAnsi(sltb.FieldAsString(sltb.FieldIndex['erg_Menge']))+ ' g';
              MemText:=MemText+' - '+UTF8ToAnsi(sltb.FieldAsString(sltb.FieldIndex['Name']));
              memMaisch.Lines.Add(MemText);
            end;
            sltb.Next;
          end;
        end;
      except
        MyMessageDlgPos('Kein Eintrag in DB vorhanden.', mtInformation, [mbOK], ['Ok'], Form1.Left, 350, Form1.Top, 250);
      end;
    // *** Ende Hopfengaben aus DB lesen ***
      memMaisch.Lines.Add('');
      sltb := slDb.GetTable('SELECT * FROM Sud');
      try
        if sltb.Count > 0 then for i:=1 to Datensatz do sltb.Next;
        if sltb.FieldAsDouble(sltb.FieldIndex['Nachisomerisierungszeit']) <> 0 then
        memMaisch.Lines.Add('Nachisomerisierungszeit - '+floattostr(sltb.FieldAsDouble(sltb.FieldIndex['Nachisomerisierungszeit']))+' min.');
      except
        MyMessageDlgPos('Kein Eintrag in DB vorhanden.', mtInformation, [mbOK], ['Ok'], Form1.Left, 350, Form1.Top, 250);
      end;
    end;
  finally
    sltb.Free;
  end;
end; end;

procedure maischeimport;
var slDBpath: string;
    sldb: TSQLiteDatabase;
    sltb: TSQLIteTable;
    Tempstr: String;
    ID, i: integer;
begin with Form1 do begin
  try
    slDBPath := OpenDialog2.FileName;
    sldb := TSQLiteDatabase.Create(slDBPath);
      if ComboBox43.Itemindex <= 0 then sltb := slDb.GetTable('SELECT * FROM Sud');
      if ComboBox43.Itemindex = 1 then sltb := slDb.GetTable('SELECT * FROM Sud WHERE BierWurdeGebraut = 0');
      if ComboBox43.Itemindex = 2 then sltb := slDb.GetTable('SELECT * FROM Sud WHERE BierWurdeGebraut = 1');
      if ComboBox43.Itemindex = 3 then sltb := slDb.GetTable('SELECT * FROM Sud WHERE BierWurdeVerbraucht = 0');
      if ComboBox43.Itemindex >= 4 then sltb := slDb.GetTable('SELECT * FROM Sud WHERE BierWurdeVerbraucht = 1');
//    sltb := slDb.GetTable('SELECT * FROM Sud');
    try
      if sltb.Count > 0 then
      begin
        if Datensatz > sltb.Count-1 then Datensatz:=sltb.Count-1;
        if Datensatz < 0 then Datensatz:=0;
        for i:=1 to Datensatz do sltb.Next;
        Stringgrid1.Cells[2,Stringgrid1.RowCount-1] := floattostr(sltb.FieldAsDouble(sltb.FieldIndex['EinmaischenTemp']));
        Stringgrid1.Cells[3,Stringgrid1.RowCount-1] := '0';
        ID := sltb.FieldAsInteger(sltb.FieldIndex['ID']);
      end;
    except
      MyMessageDlgPos('Kein Eintrag in DB vorhanden.', mtInformation, [mbOK], ['Ok'], Form1.Left, 350, Form1.Top, 250);
    end;
    sltb := slDb.GetTable('SELECT * FROM Rasten WHERE SudID = '+inttostr(ID));
    try
      if sltb.Count > 0 then
      begin
        for i:=1 to sltb.Count do
        begin
          Stringgrid1.RowCount:=Stringgrid1.RowCount+1;
          Stringgrid1.Cells[2,Stringgrid1.RowCount-1] := UTF8ToAnsi(sltb.FieldAsString(sltb.FieldIndex['RastTemp']));
          Stringgrid1.Cells[3,Stringgrid1.RowCount-1] := UTF8ToAnsi(sltb.FieldAsString(sltb.FieldIndex['RastDauer']));;
          sltb.Next;
        end;
      end;
    except
      MyMessageDlgPos('Kein Eintrag in DB vorhanden.', mtInformation, [mbOK], ['Ok'], Form1.Left, 350, Form1.Top, 250);
    end;
    for i := 1 to Stringgrid1.RowCount-1 do
    begin
      Stringgrid1.Cells[0,i] := inttostr(i);
      Stringgrid1.Cells[4,i] := 'Heizrast';
      if Form1.CheckBox44.Checked=true then Stringgrid1.Cells[5,i]:='Ja' else Stringgrid1.Cells[5,i]:='Nein';
      Stringgrid1.Cells[6,i] := Edit91.Text;
      Stringgrid1.Cells[7,i] := Edit92.Text;
      Stringgrid1.Cells[10,i] := '0';
      Stringgrid1.Cells[11,i] := '0';
    end;
    Stringgrid1.Cells[8,1] := 'Ja';
    For i := 2 to Stringgrid1.RowCount-2 do Stringgrid1.Cells[8,i] := 'Nein';
    Stringgrid1.Cells[8,Stringgrid1.RowCount-1] := 'Ja';
    Stringgrid1.Cells[9,1] := 'Malz einfüllen';
    Stringgrid1.Cells[9,Stringgrid1.RowCount-1] := 'Maischeprozess beendet - Abmaischen';
    Stringgrid1.Cells[1,1] := 'Einmaischen';
    slDBPath := OpenDialog2.FileName;
    sldb := TSQLiteDatabase.Create(slDBPath);
    sltb := slDb.GetTable('SELECT * FROM Rasten WHERE SudID = '+inttostr(ID));
    try
      if sltb.Count > 0 then
      begin
        for i:=1 to sltb.Count do
        begin
          Tempstr:=UTF8ToAnsi(sltb.FieldAsString(sltb.FieldIndex['RastName']));
          Delete(Tempstr, Pos(' ', Tempstr), 99);
          Stringgrid1.Cells[1,i+1] := Tempstr;
          sltb.Next;
        end;
      end;
    except
      MyMessageDlgPos('Kein Eintrag in DB vorhanden.', mtInformation, [mbOK], ['Ok'], Form1.Left, 350, Form1.Top, 250);
    end;
  finally
    sltb.Free;
  end;
end; end;

procedure kochimport;
var slDBpath: string;
    sldb: TSQLiteDatabase;
    sltb: TSQLIteTable;
    Tempstr: String;
    Nachiso:Extended;
    start,i,gk,vw,k,k2,k3,c,ks,novw, vwc,hc,rkc,ihc,ric,wph: integer;
begin with Form1 do begin
  if Stringgrid1.Cells[2,1]<>'' then start:=Stringgrid1.RowCount else start:=1;
  try
    vw:=0;hc:=0;
    slDBPath := OpenDialog2.FileName;
    sldb := TSQLiteDatabase.Create(slDBPath);
      if ComboBox43.Itemindex <= 0 then sltb := slDb.GetTable('SELECT * FROM Sud');
      if ComboBox43.Itemindex = 1 then sltb := slDb.GetTable('SELECT * FROM Sud WHERE BierWurdeGebraut = 0');
      if ComboBox43.Itemindex = 2 then sltb := slDb.GetTable('SELECT * FROM Sud WHERE BierWurdeGebraut = 1');
      if ComboBox43.Itemindex = 3 then sltb := slDb.GetTable('SELECT * FROM Sud WHERE BierWurdeVerbraucht = 0');
      if ComboBox43.Itemindex >= 4 then sltb := slDb.GetTable('SELECT * FROM Sud WHERE BierWurdeVerbraucht = 1');
//    sltb := slDb.GetTable('SELECT * FROM Sud');
    try
      if sltb.Count > 0 then for i:=1 to Datensatz do sltb.Next;
      gk:=round(sltb.FieldAsDouble(sltb.FieldIndex['KochdauerNachBitterhopfung']));
      Nachiso := sltb.FieldAsDouble(sltb.FieldIndex['Nachisomerisierungszeit']);
    except
      MyMessageDlgPos('Kein Eintrag in DB vorhanden.', mtInformation, [mbOK], ['Ok'], Form1.Left, 350, Form1.Top, 250);
    end;
    sltb := slDb.GetTable('SELECT * FROM Hopfengaben WHERE SudID = '+ebID.Text);
    try
      if sltb.Count > 0 then
      begin
        for i:=1 to sltb.Count do
        begin
          if (sltb.FieldAsString(sltb.FieldIndex['Vorderwuerze'])='1') and (vw=0) then
          begin
            c:=1;
            vw:=1;
            vwc:=vwc+1;
            if Stringgrid1.Cells[2,1]<>'' then Stringgrid1.RowCount:=Stringgrid1.RowCount+1;
            Stringgrid1.Cells[2,Stringgrid1.RowCount-1] := ComboBox38.Text;
            Stringgrid1.Cells[3,Stringgrid1.RowCount-1] := '0';
          end
          else if (sltb.FieldAsString(sltb.FieldIndex['Vorderwuerze'])='0') and (novw=0) then novw:=1;
          sltb.Next;
        end;
      end;
    except
      MyMessageDlgPos('Kein Eintrag in DB vorhanden.', mtInformation, [mbOK], ['Ok'], Form1.Left, 350, Form1.Top, 250);
    end;
    k:=-1;
    sltb := slDb.GetTable('SELECT * FROM Hopfengaben ORDER BY Zeit DESC');
    try
      if sltb.Count > 0 then
      begin
        for i:=1 to sltb.Count do
        begin
          if (sltb.FieldAsString(sltb.FieldIndex['Vorderwuerze'])='0') and (sltb.FieldAsString(sltb.FieldIndex['SudID'])=Form1.ebID.Text) then
          begin
            if (gk-round(sltb.FieldAsDouble(sltb.FieldIndex['Zeit']))<>k) and (round(sltb.FieldAsDouble(sltb.FieldIndex['Zeit']))>=0) then
            begin
              k:=gk-round(sltb.FieldAsDouble(sltb.FieldIndex['Zeit']));
              c:=c+1;
              if Stringgrid1.Cells[2,1]<>'' then Stringgrid1.RowCount:=Stringgrid1.RowCount+1;
              Stringgrid1.Cells[2,Stringgrid1.RowCount-1] := ComboBox38.Text;
              Stringgrid1.Cells[3,Stringgrid1.RowCount-1] := inttostr(k-ks);
              hc:=hc+1;
              ks:=k;
            end;
          end;
          sltb.Next;
        end;
      end;
    except
      MyMessageDlgPos('Kein Eintrag in DB vorhanden.', mtInformation, [mbOK], ['Ok'], Form1.Left, 350, Form1.Top, 250);
    end;
    if k<0 then k:=0;
    if k<gk then
    begin
      c:=c+1;
      Stringgrid1.RowCount:=Stringgrid1.RowCount+1;
      Stringgrid1.Cells[2,Stringgrid1.RowCount-1] := ComboBox38.Text;
      if novw=1 then Stringgrid1.Cells[3,Stringgrid1.RowCount-1] := inttostr(gk-k)
      else Stringgrid1.Cells[3,Stringgrid1.RowCount-1] := inttostr(gk-k);
      rkc:=1;
    end;
    k:=0;
    k2:=0;
    k3:=0;
    sltb := slDb.GetTable('SELECT * FROM Hopfengaben ORDER BY Zeit DESC');
    try
      if sltb.Count > 0 then
      begin
        for i:=1 to sltb.Count do
        begin
          if (sltb.FieldAsString(sltb.FieldIndex['Vorderwuerze'])='0') and (sltb.FieldAsString(sltb.FieldIndex['SudID'])=ebID.Text) then
          begin
            if (round(sltb.FieldAsDouble(sltb.FieldIndex['Zeit']))<>k2) and (c<10) and (round(sltb.FieldAsDouble(sltb.FieldIndex['Zeit']))<0) then
            begin
              k2:=round(sltb.FieldAsDouble(sltb.FieldIndex['Zeit']));
              k:=(k2*-1)-k3;
              k3:=k2*-1;
              c:=c+1;
              Nachiso:=Nachiso-k;
              Stringgrid1.RowCount:=Stringgrid1.RowCount+1;
              Stringgrid1.Cells[2,Stringgrid1.RowCount-1] := '78';
              Stringgrid1.Cells[3,Stringgrid1.RowCount-1] := inttostr(k);
              ihc:=ihc+1;
            end;
          end;
          sltb.Next;
        end;
      end
     except
      MyMessageDlgPos('Kein Eintrag in DB vorhanden.', mtInformation, [mbOK], ['Ok'], Form1.Left, 350, Form1.Top, 250);
    end;
    if (Nachiso<>0) then
    begin
      c:=c+1;
      Stringgrid1.RowCount:=Stringgrid1.RowCount+1;
      Stringgrid1.Cells[2,Stringgrid1.RowCount-1] := '78';
      Stringgrid1.Cells[3,Stringgrid1.RowCount-1] := inttostr(round(Nachiso));
      ric:=1;
    end;
    for i:=start to Stringgrid1.RowCount-1 do if CheckBox51.Checked=true then Stringgrid1.Cells[5,i] := 'Ja' else Stringgrid1.Cells[5,i] := 'Nein';
    for i:=start to Stringgrid1.RowCount-1 do Stringgrid1.Cells[6,i] := Edit91.Text;
    for i:=start to Stringgrid1.RowCount-1 do Stringgrid1.Cells[7,i] := Edit92.Text;
    for i:=start to Stringgrid1.RowCount-1 do Stringgrid1.Cells[8,i] := 'Ja';
    for i:=start to Stringgrid1.RowCount-1 do Stringgrid1.Cells[10,i] := '0';
    for i:=start to Stringgrid1.RowCount-1 do Stringgrid1.Cells[11,i] := '0';
    c:=0;
    sltb := slDb.GetTable('SELECT * FROM Hopfengaben WHERE SudID = '+ebID.Text);
    try
      if sltb.Count > 0 then
      begin
        for i:=1 to sltb.Count do
        begin
          if (sltb.FieldAsString(sltb.FieldIndex['Vorderwuerze'])='1') then
          begin
            if c=1 then Tempstr:=Tempstr+' - ';
            c:=1;
            Tempstr:=Tempstr+sltb.FieldAsString(sltb.FieldIndex['erg_Menge'])+' g ';
            Tempstr:=Tempstr+sltb.FieldAsString(sltb.FieldIndex['Name']);
          end;
          sltb.Next;
        end;
        if c>0 then Stringgrid1.Cells[9,start] := Tempstr;
      end;
    except
      MyMessageDlgPos('Kein Eintrag in DB vorhanden.', mtInformation, [mbOK], ['Ok'], Form1.Left, 350, Form1.Top, 250);
    end;
    k:=-1;
    Tempstr:='';
    sltb := slDb.GetTable('SELECT * FROM Hopfengaben ORDER BY Zeit DESC');
    try
      if sltb.Count > 0 then
      begin
        Tempstr:='';
        for i:=1 to sltb.Count do
        begin
          if (sltb.FieldAsString(sltb.FieldIndex['Vorderwuerze'])='0') and (sltb.FieldAsString(sltb.FieldIndex['SudID'])=ebID.Text) and (round(sltb.FieldAsDouble(sltb.FieldIndex['Zeit']))>=0) then
          begin
            if (gk-round(sltb.FieldAsDouble(sltb.FieldIndex['Zeit']))<>k) and (Tempstr<>'') then
            begin
              Stringgrid1.Cells[9,start+c] := Tempstr;
              c:=c+1;
              Tempstr:='';
            end;
            if Tempstr>'' then Tempstr:=Tempstr+' - ';
            Tempstr:=Tempstr+sltb.FieldAsString(sltb.FieldIndex['erg_Menge'])+' g ';
            Tempstr:=Tempstr+sltb.FieldAsString(sltb.FieldIndex['Name']);
            k:=gk-round(sltb.FieldAsDouble(sltb.FieldIndex['Zeit']));
          end;
          sltb.Next;
        end;
        if novw=1 then Stringgrid1.Cells[9,start+c] := Tempstr;
        c:=c+1;
      end;
    except
      MyMessageDlgPos('Kein Eintrag in DB vorhanden.', mtInformation, [mbOK], ['Ok'], Form1.Left, 350, Form1.Top, 250);
    end;
    if hc=0 then c:=c-1;
    if rkc=1 then Stringgrid1.Cells[1,start+c] := 'Restkochzeit';
    if rkc=1 then begin Stringgrid1.Cells[9,start+c] := 'Restkochzeit abgeschlossen'; end;
    c:=c+1;
    k:=0;
    k2:=0;
    sltb := slDb.GetTable('SELECT * FROM Hopfengaben ORDER BY Zeit DESC');
    try
      if sltb.Count > 0 then
      begin
        Tempstr:='';
        for i:=1 to sltb.Count do
        begin
          if (sltb.FieldAsString(sltb.FieldIndex['Vorderwuerze'])='0') and (sltb.FieldAsString(sltb.FieldIndex['SudID'])=ebID.Text) and (round(sltb.FieldAsDouble(sltb.FieldIndex['Zeit']))<0) then
          begin
            if (gk-round(sltb.FieldAsDouble(sltb.FieldIndex['Zeit']))<>k) and (Tempstr<>'') then
            begin
              Stringgrid1.Cells[9,start+vwc+hc+rkc+wph] := Tempstr;
              wph:=wph+1;
              c:=c+1;
              Tempstr:='';
            end;
            if Tempstr>'' then Tempstr:=Tempstr+' - ';
            Tempstr:=Tempstr+sltb.FieldAsString(sltb.FieldIndex['erg_Menge'])+' g ';
            Tempstr:=Tempstr+sltb.FieldAsString(sltb.FieldIndex['Name']);
            k:=gk-round(sltb.FieldAsDouble(sltb.FieldIndex['Zeit']));
          end;
          sltb.Next;
        end;
        if (novw=1) and (ihc<>0) then begin Stringgrid1.Cells[9,start+vwc+hc+rkc+ihc-1] := Tempstr; c:=c+1; end;
      end;
    except
      MyMessageDlgPos('Kein Eintrag in DB vorhanden.', mtInformation, [mbOK], ['Ok'], Form1.Left, 350, Form1.Top, 250);
    end;
    if ric = 1 then Stringgrid1.Cells[9,Stringgrid1.Rowcount-1] := 'Nachisomerisierungszeit abgeschlossen';
    if vwc=1 then Stringgrid1.Cells[1,start] := 'Vorderwürze';
    for i:= 1 to hc do Stringgrid1.Cells[1,start+vwc+i-1] := 'Hopfengabe';
    for i:= vwc+hc+rkc+1 to vwc+hc+rkc+ihc do Stringgrid1.Cells[1,start+i-1] := 'Iso-Hopfengabe';
    if ric=1 then Stringgrid1.Cells[1,Stringgrid1.Rowcount-1] := 'Isomerisierung';
    if vw=1 then Stringgrid1.Cells[4,start] := 'Zeitrast' else Stringgrid1.Cells[4,start] := 'Heizrast';
    if vw=1 then Stringgrid1.Cells[4,start+1] := 'Heizrast' else Stringgrid1.Cells[4,start+1] := 'Zeitrast';
    for i:= start+2 to Stringgrid1.RowCount-1 do Stringgrid1.Cells[4,i] := 'Zeitrast';
    for i:= 1 to Stringgrid1.RowCount-1 do Stringgrid1.Cells[0,i] := inttostr(i);
  finally
    sltb.Free;
  end;
end; end;

procedure KBHSettingsLaden;
var tempstr: String;
begin with Form1 do begin
  if FileExists(pfad+'import\file.txt') then
    begin
      AssignFile(myImportSettingsFile, pfad+'import\file.txt');
      Reset(myImportSettingsFile);
      ReadLn(myImportSettingsFile, tempstr);
      if FileExists(tempstr) then else tempstr:=pfad+'import\no.sqlite';
      ReadLn(myImportSettingsFile, KBHDBPfad);
      OpenDialog2.FileName:=tempstr;
      SaveDialog2.InitialDir:=KBHDBPfad;
      ReadLn(myImportSettingsFile, tempstr);
      CheckBox44.OnClick := nil;
      if tempstr='TRUE' then CheckBox44.Checked:=true else CheckBox44.Checked:=false;
      CheckBox44.OnClick := CheckBox44Click;
      ReadLn(myImportSettingsFile, tempstr);
      CheckBox51.OnClick := nil;
      if tempstr='TRUE' then CheckBox51.Checked:=true else CheckBox51.Checked:=false;
      CheckBox51.OnClick := CheckBox51Click;
      ReadLn(myImportSettingsFile, tempstr);
      Edit91.Text:=tempstr;
      ReadLn(myImportSettingsFile, tempstr);
      Edit92.Text:=tempstr;
      try begin ReadLn(myImportSettingsFile, tempstr); Combobox43.ItemIndex:=strtoint(tempstr); end except Combobox43.ItemIndex:=0; end;
      CloseFile(myImportSettingsFile);
      SQLBrowse;
      ScrollBar1.Position:=Scrollbar1.max;
    end;
end;end;

procedure AlarmAusgabe(Alarmtext:String);
begin with Form1 do begin
  if start=true then
  begin
    panel9.Top:=106;
    Label18.Caption:=Alarmtext;
    BitBtn2Click(Form1);
    FehlerErkannt:=true;
  end;
end;end;

procedure TForm1.FormCreate(Sender: TObject);
var i,buttonSelected: integer;
begin

Combobox4.DropDownCount := Combobox4.Items.Count;

Combobox5.DropDownCount := Combobox5.Items.Count;

  BitBtn3.Enabled:=false;
  BitBtn1.Enabled:=true;
  BitBtn2.Enabled:=false;
  AutoCommand:=false;
  Start:=false;
  Stop:=true;
  Pause:=false;
  Pausezeit:=0;
  RastCount:=1;
  Rast:=false;
  storetempon:=111;
  storetempoff:=0;
  for i:=1 to 120 do gradientgetter[i]:=0;
  for i:=1 to 10 do Funktionsinfo[i]:=false;
  Updown2.Visible:=false;
  BitBtn16.Enabled:=true;
  DecimalSeparator:='.';
  DateSeparator:='.';
  ShortDateFormat:='dd mm yyyy';
  Form1.Top:=20;
  Application.HintHidePause:= 3000;
  Form1.Left:=20;
  pfad:=ExtractFilePath(ParamStr(0));
  OpenDialog1.InitialDir:=pfad+'Rezepte';
  SaveDialog1.InitialDir:=pfad+'Rezepte';
  setup_laden(Form1, pfad+'Setup\Setup.txt');
  KBHSettingsLaden;
  panel8.Color:=rgb(152,251,152);
  panel9.Color:=rgb(240,128,128);
  if file_korrupt=false then
  begin
    DeleteFile(PChar(pfad+'Setup\Save.txt'));
    CopyFile(PChar(pfad+'Setup\Setup.txt'),PChar(pfad+'Setup\Save.txt'),true);
  end
  else
  buttonSelected:=MyMessageDlgPos('Einstellungen korrupt, letzter sicherer Stand wieder herstellen?', mtInformation, [mbOK, mbAbort], ['Ja', 'Nein'], Form1.Left, 350, Form1.Top, 250);
  if buttonSelected = mrAbort then application.terminate
  else
  begin
    DeleteFile(PChar(pfad+'Setup\Setup.txt'));
    CopyFile(PChar(pfad+'Setup\Save.txt'),PChar(pfad+'Setup\Setup.txt'),true);
    setup_laden(Form1, pfad+'Setup\Setup.txt');
  end;
  with stringgrid1 do
  begin
    RowCount:=2;
    ColWidths[0] := 30;
    ColWidths[1] := 150;
    ColWidths[2] := 45;
    ColWidths[3] := 55;
    ColWidths[4] := 25;
    ColWidths[5] := 58;
    ColWidths[8] := 58;
    cells[0,0] := 'Nr.';
    cells[1,0] := 'Rastbezeichnung';
    cells[2,0] := 'Temp.';
    cells[3,0] := 'Dauer';
    cells[4,0] := 'Typ';
    cells[5,0] := 'Rührwerk';
    cells[6,0] := 'RW Aus';
    cells[7,0] := 'RW Ein';
    cells[8,0] := 'Brauerruf';
    cells[9,0] := 'Brauerruf-Text';
    cells[10,0] := 'Start-ZF';
    cells[11,0] := 'End-ZF';
  end;
  laden(Form1, pfad+'settings\standard.rzt');
 	Rezeptname:= 'noname';
  form1.Caption:='Brauerei '+ Version + ' - ' + Edit7.Text + ' - ' +  Rezeptname; //Ausgabe des gespeicherten Rezepts
  application.Title:= Edit7.Text + ' - ' + floattostr(round(floattemp)) +'°C - ' + 'Start';
  CloseFile(myFile);
  StartUDP;
  if CheckBox5.Checked=true then
  begin
    try
      Memo2.Text:=idHTTP1.Get('http://www.schopfschoppe.de/Help/version.html');
      if (Version=Memo2.Lines.Strings[0]) or (Version=Memo2.Lines.Strings[1]) or (Version=Memo2.Lines.Strings[2]) or (Version=Memo2.Lines.Strings[3]) then
        Memo2.Text:='Version aktuell'
      else
      begin
        Memo2.Text:='Version nicht aktuell';
        buttonSelected:=MyMessageDlgPos('Neue Version verfügbar! Zur Downloadseite wechseln?', mtInformation, [mbOK, mbAbort], ['Ja', 'Nein'], Form1.Left, 350, Form1.Top, 250);
        if buttonSelected = mrOK then ShellExecute(Handle, 'open', 'http://www.schopfschoppe.de/Download.html', nil, nil, SW_SHOWNORMAL);
      end;
    except
      MyMessageDlgPos('www.schopfschoppe.de nicht erreichbar!', mtInformation, [mbOK], ['Ok'], Form1.Left, 350, Form1.Top, 250);
    end;
  end
  else
  Memo2.Text:='Versionsprüfung aus';
  Edit21Change(Form1);
  RastEinlesen(stringgrid1.Row);
end;

procedure Rastpruefung;
var restzeit,sollzeit,prozent:integer;
    strzeit:String;
begin with Form1 do begin
  if (Brauerruf=true) and (start=true) then
  begin
    label16.Caption:=StringGrid1.cells[9,RastCount-1];
    panel8.Top:=106;
  end
  else if RastCount<Stringgrid1.RowCount then
  begin
    try
      if RastCount<stringgrid1.RowCount-2 then stringgrid1.Row:=RastCount+2;
      stringgrid1.Row:=RastCount;
      try Solltemp := strtoint(StringGrid1.cells[2,RastCount]) except Solltemp:=0; end;
      UpDown2.Position := Solltemp;
      Panel4.Caption:=StringGrid1.cells[2,RastCount]+' °C';
      strzeit := FormatDateTime('dd.mm.yyyy hh:nn:ss', now);
      if (StringGrid1.cells[4,RastCount]='Heizrast') and (Solltemp<=floattemp) and (Rast=false) then begin StringGrid1.cells[14,RastCount]:=strzeit; ZFCheck(false); Rast:=true; zeit:=GetTickCount+strtoint(StringGrid1.cells[12,RastCount])*60000-strtoint(StringGrid1.cells[3,RastCount])*60000; Pausezeit:=0; end
      else if (StringGrid1.cells[4,RastCount]='Kühlrast') and (Solltemp>=floattemp) and (Rast=false) then begin StringGrid1.cells[14,RastCount]:=strzeit; ZFCheck(false); Rast:=true; zeit:=GetTickCount+strtoint(StringGrid1.cells[12,RastCount])*60000-strtoint(StringGrid1.cells[3,RastCount])*60000; Pausezeit:=0; end
      else if (StringGrid1.cells[4,RastCount]='Zeitrast') and (Rast=false) then begin StringGrid1.cells[14,RastCount]:=strzeit; ZFCheck(false); Rast:=true; zeit:=GetTickCount+strtoint(StringGrid1.cells[12,RastCount])*60000-strtoint(StringGrid1.cells[3,RastCount])*60000; Pausezeit:=0; end;
      Sollzeit := strtoint(StringGrid1.cells[3,RastCount])*60000;
      if Sollzeit>0 then prozent := round((GetTickCount-Zeit-Pausezeit)/Sollzeit*100);
      Restzeit := round(((Sollzeit/60000)*((100-prozent)/100)+0.49)); if restzeit<0 then Restzeit:=0;
      if (Rast=true) and (sollzeit>0) then begin StringGrid1.cells[12,RastCount]:= inttostr(Restzeit); StringGrid1.cells[13,RastCount]:= inttostr(prozent); end;
      if (Rast=true) and (zeit+Sollzeit+pausezeit<GetTickCount) then begin StringGrid1.cells[13,RastCount]:='100'; StringGrid1.cells[15,RastCount]:=strzeit; ZFCheck(true); if StringGrid1.cells[8,RastCount]='Ja' then Brauerruf:=true; RastCount:=RastCount+1; Rast:=false; end;
    except
      RastCount:=9999;
      BitBtn3Click(Form1);
    end;
  end
  else if (RastCount<9999) and (start=true) then
  begin
    RastCount:=9999;
    BitBtn3Click(Form1);
  end;
end;end;

procedure SetStringGrid;
var i:integer;
begin with Form1 do begin
  if (start=true) and (StringGrid1.ColCount<14) then
  begin
    with stringgrid1 do
    begin
      ColCount:=16;
      for i:=5 to 8 do ColWidths[i] := -1;
      cells[12,0] := 'Restzeit';
      cells[13,0] := 'Status';
      cells[14,0] := 'Startzeit';
      cells[15,0] := 'Endzeit';
      try ColWidths[9] := strtoint(edit19.Text)-1 except ColWidths[9] := -1; end;
      ColWidths[12] := 60;
      ColWidths[13] := 102;
      try ColWidths[14] := strtoint(edit17.Text)-1 except ColWidths[14] := -1; end;
      try ColWidths[15] := strtoint(edit16.Text)-1 except ColWidths[15] := -1; end;
      for i:= 1 to RowCount-1 do cells[12,i]:=cells[3,i];
      for i:= 1 to RowCount-1 do cells[13,i]:='0';
      for i:= 1 to RowCount-1 do cells[14,i]:='';
      for i:= 1 to RowCount-1 do cells[15,i]:='';
    end;
  end
  else if (stop=true) and (StringGrid1.ColCount>12) then
  begin
    with stringgrid1 do
    begin
      for i:= 1 to RowCount-1 do cells[12,i]:='';
      for i:= 1 to RowCount-1 do cells[13,i]:='';
      for i:= 1 to RowCount-1 do cells[14,i]:='';
      for i:= 1 to RowCount-1 do cells[15,i]:='';
      ColCount:=12;
    end;
    Edit8Change(Form1);
  end;
end;end;

procedure GetGradient;
var
  i: integer;
begin
  for i:=1 to 119 do Gradientgetter[i]:=Gradientgetter[i+1];
  Gradientgetter[120]:=floattemp;
  Gradient:=Gradientgetter[120]-Gradientgetter[1];
end;

procedure TForm1.StringGrid1DblClick(Sender: TObject);
begin
  RastEinlesen(stringgrid1.Row);
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char); begin if Key=#13 then begin Key:=#0; SendMessage(Handle, WM_NEXTDLGCTL, 0, 0); end; end;
procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char); begin if Key=#13 then begin Key:=#0; SendMessage(Handle, WM_NEXTDLGCTL, 0, 0); end; if not (key in [#8,#48..#57]) then key:=#0; end;

procedure TForm1.Edit2Exit(Sender: TObject); begin editcheck(Edit2,0,110,'20'); end;
procedure TForm1.Edit3Exit(Sender: TObject); begin editcheck(Edit3,0,9999,'60'); end;
procedure TForm1.Edit4Exit(Sender: TObject); begin editcheck(Edit4,0,9999,'0'); end;
procedure TForm1.Edit5Exit(Sender: TObject); begin editcheck(Edit5,0,9999,'9999'); end;

procedure TForm1.Edit2Change(Sender: TObject); begin if TEdit(Sender).Text='' then TEdit(Sender).Text:='0'; Form1.Edit1Change(Form1); end;

procedure TForm1.BitBtn9Click(Sender: TObject);
begin
  SaveDialog1.FileName:=Rezeptname+'.rzt';
  if SaveDialog1.Execute then
  begin
    if DeleteFile(SaveDialog1.FileName) then MyMessageDlgPos('Rezept wurde überschrieben!', mtInformation, [mbOK], ['Ok'], Form1.Left, 350, Form1.Top, 250);
    speichern(Form1, SaveDialog1.FileName);
  	Rezeptname := changefileext(ExtractFileName(SaveDialog1.FileName),'');
    form1.Caption:='Brauerei '+ Version + ' - ' + Edit7.Text + ' - ' +  Rezeptname; //Ausgabe des gespeicherten Rezepts
    CloseFile(myFile);
  end;
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
var buttonSelected:integer;
begin
  OpenDialog1.FileName:='test.rzt';
  if OpenDialog1.Execute then
  begin
    laden(Form1, OpenDialog1.FileName);
  	Rezeptname := changefileext(ExtractFileName(OpenDialog1.FileName),'');
    form1.Caption:='Brauerei '+ Version + ' - ' + Edit7.Text + ' - ' +  Rezeptname; //Ausgabe des gespeicherten Rezepts
    CloseFile(myFile);
  end;
  if ladefehler=true then
  begin
    MyMessageDlgPos('Rezept-Datei ist beschädigt! Lade Standard-Rezept', mtInformation, [mbOK], ['Ok'], Form1.Left, 350, Form1.Top, 250);
    laden(Form1, pfad+'settings\standard.rzt');
  	Rezeptname:= 'noname';
    form1.Caption:='Brauerei '+ Version + ' - ' + Edit7.Text + ' - ' +  Rezeptname; //Ausgabe des gespeicherten Rezepts
    CloseFile(myFile);
  end;
 RastEinlesen(stringgrid1.Row);
  if StringGrid1.RowCount>9 then Panel3.Visible:=false else Panel3.Visible:=true;
end;

procedure TForm1.StringGrid1Click(Sender: TObject);
begin
  inherited;
  stringgrid1.Selection := TGridRect(Rect(stringgrid1.FixedCols,
                                 stringgrid1.Row,
                                 stringgrid1.ColCount-1,
                                 stringgrid1.Row));
  RastEinlesen(stringgrid1.Row);
end;

procedure TForm1.ApplicationEvents1ShowHint(var HintStr: String;
  var CanShow: Boolean; var HintInfo: THintInfo);
begin
  HintInfo.HideTimeout:=Length(HintStr)*50;
end;

procedure TForm1.StringGrid1RowMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
var i: integer;
begin
  if ((ToIndex<RastCount) or (FromIndex<RastCount)) and (ManualMoved=true) then begin ManualMoved:=false; TStringGridHack(StringGrid1).MoveRow(ToIndex, FromIndex); end;
  for i := 1 to stringgrid1.RowCount-1 do stringgrid1.cells[0,i]:=inttostr(i);
  RastEinlesen(stringgrid1.Row);
end;

procedure TForm1.Nachobenschieben1Click(Sender: TObject);
var i: integer;
begin
  if Stringgrid1.Row>RastCount then TStringGridHack(StringGrid1).MoveRow(Stringgrid1.Row, Stringgrid1.Row-1);
  for i := 1 to stringgrid1.RowCount-1 do stringgrid1.cells[0,i]:=inttostr(i);
  StringGrid1.Col:=1;
  RastEinlesen(stringgrid1.Row);
end;


procedure TForm1.Nachuntenschieben1Click(Sender: TObject);
var i: integer;
begin
  if (Stringgrid1.Row>=RastCount) and (stringgrid1.Row<stringgrid1.RowCount-1) then TStringGridHack(StringGrid1).MoveRow(Stringgrid1.Row, Stringgrid1.Row+1);
  for i := 1 to stringgrid1.RowCount-1 do stringgrid1.cells[0,i]:=inttostr(i);
  StringGrid1.Col:=1;
  RastEinlesen(stringgrid1.Row);
end;

procedure TForm1.lschen1Click(Sender: TObject);
var i,j,markierung,buttonSelected : integer;
begin
  if   stringgrid1.RowCount>2 then
  begin
    buttonSelected:=MyMessageDlgPos('Rast unwiderruflich löschen?', mtInformation, [mbOK, mbAbort], ['Ja', 'Nein'], Form1.Left, 350, Form1.Top, 250);
    if buttonSelected = mrOK then
    begin
      markierung:=stringgrid1.Row;
      for i := markierung+1 to stringgrid1.RowCount do for j:= 1 to 9 do stringgrid1.cells[j,i-1]:=stringgrid1.cells[j,i];
      stringgrid1.RowCount:=stringgrid1.RowCount-1;
    end;
    if StringGrid1.RowCount<10 then Panel3.Visible:=true;
    StringGrid1.Col:=1;
  end;
end;

procedure TForm1.IdUDPServer1UDPRead(Sender: TObject; AData: TStream;
  ABinding: TIdSocketHandle);
begin
  SetLength(RecText, AData.Size);
  AData.ReadBuffer(PChar(RecText)^, AData.Size);
  DecimalSeparator := '.';
  if (RecText[1]='T') and ((RecText[6]='t') or (RecText[6]='p') or (RecText[6]='s') or (RecText[6]='e')) then
  begin
    SensorUeberwachungTimer.Enabled:=false;
    if (RecText[6]='p') and (BitBtn2.Enabled=true) then begin BitBtn2Click(Form1); AutoCommand:=true; end;
    if (RecText[6]='s') and (BitBtn1.Enabled=true) then begin BitBtn1Click(Form1); AutoCommand:=true; end;
    if (RecText[6]='e') and (BitBtn3.Enabled=true) then begin BitBtn3Click(Form1); AutoCommand:=true; end;
    Memo1.Lines.Append('');
    arduinofloattempalt:=arduinofloattemp;
    try arduinotfs:= copy(RecText, 2, 4); arduinofloattemp:=strtofloat(arduinotfs); except end;
    arduinotempdelta:=arduinofloattemp-arduinofloattempalt;
    if (arduinofloattemp=9999) then
    begin
      Memo1.Lines.Strings[Memo1.Lines.Count-1]:='Arduinoschaltbefehl empfangen';
      arduinofloattemp:=arduinofloattempalt;
    end
    else if (arduinofloattemp<0) or (arduinofloattemp>=110) or (arduinotempdelta<-5) or (arduinotempdelta>5) then
    begin
      Memo1.Lines.Strings[Memo1.Lines.Count-1]:='Temperaturwert unplausibel';
    end
    else
    begin
      Memo1.Lines.Strings[Memo1.Lines.Count-1]:=('UDP-IN - '+datetimetostr(now)+' - '+arduinotfs+' °C'); //Text hinzufügen
    end;
  end;
  if (checkbox33.Checked=true) and (start=true) then SensorUeberwachungTimer.Enabled:=true;
end;

procedure writechart(Form:TForm1);
var
  I: Integer;
  s,t: TLineSeries;
  s2: TAreaSeries;
begin
  DecimalSeparator := '.';
  try
    with Form.Chart1 do
    begin
      s := Form.Series1;  // Kurve erstellen Ist-Temperatur
      t := Form.Series2;  // Kurve erstellen Soll-Temperatur
      s.Clear;  // Inhalt von der Kurve loeschen
      t.Clear;
      s.ParentChart := Form.Chart1; // Kurve an Chart festbinden
      s.XValues.DateTime := True;  // X-Achse auf Datum umstellen
      BottomAxis.DateTimeFormat := 'hh:mm:ss'; // bzw: 'dd-mm-yy hh:mm:ss'
      BottomAxis.Minimum := 0;
      BottomAxis.Maximum := StrToDate(Form.StringGrid2.Cells[0,endpunkt-1])+StrToTime(Form.StringGrid2.Cells[1,endpunkt-1]); // X-Achse Startpunkt
      BottomAxis.Minimum := StrToDate(Form.StringGrid2.Cells[0,startpunkt])+StrToTime(Form.StringGrid2.Cells[1,startpunkt]); // X-Achse Endpunkt
      LeftAxis.Minimum := 0;
      LeftAxis.Maximum := StrToFloat(Form.StringGrid2.Cells[6,startpunkt])+1; // Y-Achse Reset max
      LeftAxis.Minimum := StrToFloat(Form.StringGrid2.Cells[6,startpunkt]); // Y-Achse Reset min
      BottomAxis.Automatic := False;
      LeftAxis.Automatic := False;
      for i:= startpunkt to endpunkt-1 do
      begin
        s.AddXY(StrToDate(Form.StringGrid2.Cells[0,i])+StrToTime(Form.StringGrid2.Cells[1,i]),StrToFloat(Form.StringGrid2.Cells[6,i]));  // Wert in Chart einfägen
        if LeftAxis.Maximum<StrToFloat(Form.StringGrid2.Cells[6,i])+2 then LeftAxis.Maximum:=StrToFloat(Form.StringGrid2.Cells[6,i])+2; // Y-Achse Korrektur max
        if LeftAxis.Minimum>StrToFloat(Form.StringGrid2.Cells[6,i])-2 then LeftAxis.Minimum:=StrToFloat(Form.StringGrid2.Cells[6,i])-2; // Y-Achse Korrektur min
      end;
      t.ParentChart := Form.Chart1;
      for i:= startpunkt to endpunkt-1 do
      begin
        t.AddXY(StrToDate(Form.StringGrid2.Cells[0,i])+StrToTime(Form.StringGrid2.Cells[1,i]),StrToFloat(Form.StringGrid2.Cells[7,i]));
        if LeftAxis.Maximum<StrToFloat(Form.StringGrid2.Cells[7,i])+2 then LeftAxis.Maximum:=StrToFloat(Form.StringGrid2.Cells[7,i])+2;
        if LeftAxis.Minimum>StrToFloat(Form.StringGrid2.Cells[7,i])-2 then LeftAxis.Minimum:=StrToFloat(Form.StringGrid2.Cells[7,i])-2;
      end;
    end;
    with Form.Chart2 do
    begin
      s2 := form.series3; // Kurve erstellen Heizung
      s2.Clear;
      s2.ParentChart := Form.Chart2;
      s2.XValues.DateTime := True;
      BottomAxis.DateTimeFormat := 'hh:mm:ss';
      BottomAxis.Minimum := 0;
      BottomAxis.Maximum := StrToDate(Form.StringGrid2.Cells[0,endpunkt-1])+StrToTime(Form.StringGrid2.Cells[1,endpunkt-1]);
      BottomAxis.Minimum := StrToDate(Form.StringGrid2.Cells[0,startpunkt])+StrToTime(Form.StringGrid2.Cells[1,startpunkt]);
      LeftAxis.Maximum := 1.05;
      LeftAxis.Minimum := -0.05;
      BottomAxis.Automatic := False;
      LeftAxis.Automatic := False;
      htime:=0;
      for i:= startpunkt to endpunkt-1 do
      begin
        if i>0 then s2.AddXY(StrToDate(Form.StringGrid2.Cells[0,i])+StrToTime(Form.StringGrid2.Cells[1,i]),StrToFloat(Form.StringGrid2.Cells[2,i-1]));
        s2.AddXY(StrToDate(Form.StringGrid2.Cells[0,i])+StrToTime(Form.StringGrid2.Cells[1,i]),StrToFloat(Form.StringGrid2.Cells[2,i]));
        if (i>startpunkt) and (StrToFloat(Form.StringGrid2.Cells[2,i])>0) then htime:=htime+StrToDate(Form.StringGrid2.Cells[0,i])+StrToTime(Form.StringGrid2.Cells[1,i])-StrToDate(Form.StringGrid2.Cells[0,i-1])-StrToTime(Form.StringGrid2.Cells[1,i-1]);
      end;
      gtime:=StrToDate(Form.StringGrid2.Cells[0,endpunkt-1])+StrToTime(Form.StringGrid2.Cells[1,endpunkt-1])-StrToDate(Form.StringGrid2.Cells[0,startpunkt])-StrToTime(Form.StringGrid2.Cells[1,startpunkt]);
    end;
    with Form.Chart3 do
    begin
      s2 := Form.series4;  // Kurve erstellen Rührwerk
      s2.Clear;
      s2.ParentChart := Form.Chart3;
      s2.XValues.DateTime := True;
      BottomAxis.DateTimeFormat := 'hh:mm:ss';
      BottomAxis.Minimum := 0;
      BottomAxis.Maximum := StrToDate(Form.StringGrid2.Cells[0,endpunkt-1])+StrToTime(Form.StringGrid2.Cells[1,endpunkt-1]);
      BottomAxis.Minimum := StrToDate(Form.StringGrid2.Cells[0,startpunkt])+StrToTime(Form.StringGrid2.Cells[1,startpunkt]);
      BottomAxis.DateTimeFormat := 'hh:mm:ss'; // bzw: 'dd-mm-yy hh:mm:ss'
      LeftAxis.Maximum := 1.05;
      LeftAxis.Minimum := -0.05;
      BottomAxis.Automatic := False;
      LeftAxis.Automatic := False;
      rtime:=0;
      for i:= startpunkt to endpunkt-1 do
      begin
        if i>0 then s2.AddXY(StrToDate(Form.StringGrid2.Cells[0,i])+StrToTime(Form.StringGrid2.Cells[1,i]),StrToFloat(Form.StringGrid2.Cells[3,i-1]));
        s2.AddXY(StrToDate(Form.StringGrid2.Cells[0,i])+StrToTime(Form.StringGrid2.Cells[1,i]),StrToFloat(Form.StringGrid2.Cells[3,i]));
        if (i>startpunkt) and (StrToFloat(Form.StringGrid2.Cells[3,i])>0) then rtime:=rtime+StrToDate(Form.StringGrid2.Cells[0,i])+StrToTime(Form.StringGrid2.Cells[1,i])-StrToDate(Form.StringGrid2.Cells[0,i-1])-StrToTime(Form.StringGrid2.Cells[1,i-1]);
       end;
    end;
    with Form.Chart4 do
    begin
      s2 := Form.series5;  // Kurve erstellen Pumpe
      s2.Clear;
      s2.ParentChart := Form.Chart4;
      s2.XValues.DateTime := True;
      BottomAxis.DateTimeFormat := 'hh:mm:ss';
      BottomAxis.Minimum := 0;
      BottomAxis.Maximum := StrToDate(Form.StringGrid2.Cells[0,endpunkt-1])+StrToTime(Form.StringGrid2.Cells[1,endpunkt-1]);
      BottomAxis.Minimum := StrToDate(Form.StringGrid2.Cells[0,startpunkt])+StrToTime(Form.StringGrid2.Cells[1,startpunkt]);
      LeftAxis.Maximum := 1.05;
      LeftAxis.Minimum := -0.05;
      BottomAxis.Automatic := False;
      LeftAxis.Automatic := False;
      ptime:=0;
      for i:= startpunkt to endpunkt-1 do
      begin
        if i>0 then s2.AddXY(StrToDate(Form.StringGrid2.Cells[0,i])+StrToTime(Form.StringGrid2.Cells[1,i]),StrToFloat(Form.StringGrid2.Cells[4,i-1]));
        s2.AddXY(StrToDate(Form.StringGrid2.Cells[0,i])+StrToTime(Form.StringGrid2.Cells[1,i]),StrToFloat(Form.StringGrid2.Cells[4,i]));
        if (i>startpunkt) and (StrToFloat(Form.StringGrid2.Cells[4,i])>0) then ptime:=ptime+StrToDate(Form.StringGrid2.Cells[0,i])+StrToTime(Form.StringGrid2.Cells[1,i])-StrToDate(Form.StringGrid2.Cells[0,i-1])-StrToTime(Form.StringGrid2.Cells[1,i-1]);
       end;
    end;
    with Form.Chart5 do
    begin
      s2 := Form.series6;  // Kurve erstellen Alarm
      s2.Clear;
      s2.ParentChart := Form.Chart5;
      s2.XValues.DateTime := True;
      BottomAxis.DateTimeFormat := 'hh:mm:ss';
      BottomAxis.Minimum := 0;
      BottomAxis.Maximum := StrToDate(Form.StringGrid2.Cells[0,endpunkt-1])+StrToTime(Form.StringGrid2.Cells[1,endpunkt-1]);
      BottomAxis.Minimum := StrToDate(Form.StringGrid2.Cells[0,startpunkt])+StrToTime(Form.StringGrid2.Cells[1,startpunkt]);
      LeftAxis.Maximum := 1.05;
      LeftAxis.Minimum := -0.05;
      BottomAxis.Automatic := False;
      LeftAxis.Automatic := False;
      atime:=0;
      for i:= startpunkt to endpunkt-1 do
      begin
        if i>0 then s2.AddXY(StrToDate(Form.StringGrid2.Cells[0,i])+StrToTime(Form.StringGrid2.Cells[1,i]),StrToFloat(Form.StringGrid2.Cells[5,i-1]));
        s2.AddXY(StrToDate(Form.StringGrid2.Cells[0,i])+StrToTime(Form.StringGrid2.Cells[1,i]),StrToFloat(Form.StringGrid2.Cells[5,i]));
        if (i>startpunkt) and (StrToFloat(Form.StringGrid2.Cells[5,i])>0) then atime:=atime+StrToDate(Form.StringGrid2.Cells[0,i])+StrToTime(Form.StringGrid2.Cells[1,i])-StrToDate(Form.StringGrid2.Cells[0,i-1])-StrToTime(Form.StringGrid2.Cells[1,i-1]);
       end;
    end;
  except
  end;
end;

procedure ReadTabFile(FN: TFileName; FieldSeparator: Char; SG: TStringGrid);
var
  i: Integer;
  S: string;
  Colonne, ligne: Integer;
  Les_Strings: TStringList;
  TabPos: Integer;
  StartPos: Integer;
  InitialCol: Integer;
begin
  try
    Les_Strings := TStringList.Create;
    Les_Strings.LoadFromFile(FN);                        // Datei laden
    CountLines := Les_Strings.Count + SG.FixedRows;      // Anzahl der Zeilen ermitteln
    SG.RowCount := CountLines;                           // Anpassung der Grid-Größe
    SG.ColCount := 8;
    InitialCol := SG.FixedCols - 1;                      // Initialisierung
    Ligne := SG.FixedRows - 1;
    for i := 0 to Les_Strings.Count - 1 do               // Alle Zeilen der Datei durchlaufen
    begin
      Colonne := InitialCol;
      Inc(Ligne);
      StartPos := 1;
      S := Les_Strings[i];
      TabPos := Pos(FieldSeparator, S);
      repeat
        Inc(Colonne);
        SG.Cells[Colonne, Ligne] := Copy(S, StartPos, TabPos - 1);
        S := Copy(S, TabPos + 1, 999);
        TabPos := Pos(FieldSeparator, S);
      until TabPos = 0;
    end;
    Les_Strings.Free;
  except
  end;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Image5.Picture.LoadFromFile(pfad + 'Graphics\Automatik-aktiv.bmp');
  BitBtn1.Enabled:=false;
  BitBtn8.Enabled:=false;
  BitBtn2.Enabled:=true;
  BitBtn3.Enabled:=true;
  BitBtn4.Enabled:=true;
  BitBtn5.Enabled:=true;
  BitBtn6.Enabled:=true;
  BitBtn7.Enabled:=true;
  Stringgrid1.Top:=170; Stringgrid1.Height:=383;
  Panel3.Visible:=false;
  CheckBox3.Enabled:=false;
  StringGrid1.PopupMenu.AutoPopup:=false;
  if pause=true then
  begin
    Pausezeit:=Pausezeit+GetTickCount-Pausestartzeit;
  end;
  if (checkbox32.Checked=true) and (stop=true) then
  begin
    LogName:=Rezeptname+'_'+FormatDateTime('ddmmyyyyhhnnss', now);
    LogTimer.Enabled:=true;
    LogName:=pfad + 'log\log_'+LogName+'.log';
    AssignFile(myLogFile, LogName);
    rewrite(myLogFile);
    Button18.Enabled:=true;
    Button23.Enabled:=true;
    Button2.Enabled:=false;
    Button10.Enabled:=false;
    Button12.Enabled:=false;
  end;
  StringGrid1.DragMode:=dmAutomatic;
  Updown2.Visible:=true;
  BitBtn16.Enabled:=false;
  storetempoff:=floattemp;
  storetempon:=floattemp;
  AutoCommand:=false;
  start:=true;
  pause:=false;
  stop:=false;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  BitBtn2.Enabled:=false;
  BitBtn1.Enabled:=true;
  BitBtn3.Enabled:=true;
  BitBtn4.Enabled:=false;
  BitBtn5.Enabled:=false;
  BitBtn6.Enabled:=false;
  BitBtn7.Enabled:=false;
  if start = true then
  begin
    Image5.Picture.LoadFromFile(pfad + 'Graphics\Automatik-pause.bmp');
    start:=false;
    pause:=true;
    stop:=false;
    Pausestartzeit:=GetTickCount;
    StringGrid1.DragMode:=dmManual;
    Stringgrid1.Top:=226; Stringgrid1.Height:=279;
    StringGrid1.PopupMenu.AutoPopup:=true;
    if StringGrid1.RowCount>9 then Panel3.Visible:=false else Panel3.Visible:=true;
    RastEinlesen(stringgrid1.Row);
  end;
  AutoCommand:=false;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
var buttonSelected,i:integer;
begin
  if (stop = false) or (timertimer.Enabled = true) then
  begin
    if (timertimer.enabled=false) and (AutoCommand=false) then
    begin
      buttonSelected:=MyMessageDlgPos('Brauvorgang wirklich beenden?', mtWarning, [mbOK, mbAbort], ['Ok', 'Abbruch'], Form1.Left, 350, Form1.Top, 250);
      if buttonSelected = mrOK then else exit;
    end;
    Stringgrid1.Top:=170; Stringgrid1.Height:=383;
    BitBtn3.Enabled:=false;
    BitBtn8.Enabled:=true;
    BitBtn1.Enabled:=true;
    BitBtn2.Enabled:=false;
    Panel4.Caption:='-- °C';
    if (AutoCommand=false) then
    begin
      Label16.Caption:=('Brauvorgang wurde beendet - mit OK fortsetzen!');
      panel8.Top:=106;
    end
    else Form1.Button8Click(Form1);
    LogTimer.Enabled:=false;
    LogUpdateTimer.Enabled:=false;
    Button23.Caption:='AutoUpdate Ein';
    Button18.Enabled:=false;
    Button23.Enabled:=false;
    Button2.Enabled:=true;
    Button10.Enabled:=true;
    Button12.Enabled:=true;
  end;
  BitBtn4.Enabled:=false;
  BitBtn5.Enabled:=false;
  BitBtn6.Enabled:=false;
  BitBtn7.Enabled:=false;
  Image5.Picture.LoadFromFile(pfad + 'Graphics\Automatik-inaktiv.bmp');
  Checkbox3.Enabled:=true;
  start:=false;
  pause:=false;
  stop:=true;
  Pausezeit:=0;
  RastCount:=1;
  Rast:=false;
  StringGrid1.DragMode:=dmManual;
  for i:=1 to 120 do gradientgetter[i]:=0;
  for i:=1 to 10 do Funktionsinfo[i]:=false;
  Updown2.Visible:=false;
  BitBtn16.Enabled:=true;
  Label136.Visible:=false;
  TimerTimer.Enabled:=false;
  Form2.Label5.Caption:='false';
  StringGrid1.PopupMenu.AutoPopup:=true;
  AutoCommand:=false;
  RastEinlesen(stringgrid1.Row);
end;

procedure TForm1.ComboBox36Change(Sender: TObject);
begin
  if TEdit(Sender).Text='' then TEdit(Sender).Text:='0';
  StartUDP;
end;

procedure TForm1.Edit96Enter(Sender: TObject);
begin
  SendeTimer.Enabled := false;
end;

procedure TForm1.Edit96Exit(Sender: TObject);
begin
  StartUDP;
  SendeTimer.Enabled := true ;
end;

procedure TForm1.SendeTimerTimer(Sender: TObject);
var xml,xml2,user,password,ip, temp: string;
    itemp,iisttemp,isolltemp,i:integer;
begin
  SetTemp;
  SetSwitches;
  SetPictures;
  SetAlarmSound;
  SendeTimer.Enabled := false ;
  DecimalSeparator := '.';
  try
    iisttemp:=round(arduinofloattemp*10);
    isolltemp:=round(solltemp);
    if Heizung<>0 then itemp:=1 else itemp:=0;
    if Ruehrwerk<>0 then itemp:=itemp+2;
    if Kuehlung<>0 then itemp:=itemp+4;
    if Alarm<>0 then itemp:=itemp+8;
    xml:='C'+char(itemp);
    if Start=true then itemp:=1 else if Pause=true then itemp:=2 else itemp:=4;
    itemp:=itemp+16;
    itemp:=itemp+64;
    if iisttemp>255 then repeat begin iisttemp:=iisttemp-256; i:=i+1; end until iisttemp<256;
    xml:=xml+char(itemp)+char(isolltemp)+char(i)+char(iisttemp);
    if (((Button30.Caption='Automatik') and (Funktionsinfo[1]=true)) or (Button30.Caption='An')) then itemp:=128 else itemp:=0;
    if (((Button31.Caption='Automatik') and (Funktionsinfo[2]=true)) or (Button31.Caption='An')) then itemp:=itemp+64;
    if (((Button32.Caption='Automatik') and (Funktionsinfo[3]=true)) or (Button32.Caption='An')) then itemp:=itemp+32;
    if (((Button33.Caption='Automatik') and (Funktionsinfo[4]=true)) or (Button33.Caption='An')) then itemp:=itemp+16;
    if (((Button34.Caption='Automatik') and (Funktionsinfo[5]=true)) or (Button34.Caption='An')) then itemp:=itemp+8;
    if (((Button35.Caption='Automatik') and (Funktionsinfo[6]=true)) or (Button35.Caption='An')) then itemp:=itemp+4;
    if (((Button36.Caption='Automatik') and (Funktionsinfo[7]=true)) or (Button36.Caption='An')) then itemp:=itemp+2;
    if (((Button37.Caption='Automatik') and (Funktionsinfo[8]=true)) or (Button37.Caption='An')) then itemp:=itemp+1;
    xml:=xml+char(itemp);
    if (((Button38.Caption='Automatik') and (Funktionsinfo[9]=true)) or (Button38.Caption='An')) then itemp:=2 else itemp:=0;
    if (((Button39.Caption='Automatik') and (Funktionsinfo[10]=true)) or (Button39.Caption='An')) then itemp:=itemp+1;
    xml:=xml+char(itemp)+('----------c');
    IdUDPClient1.Active := true;
    IdUDPClient1.Send(xml);
    IdUDPClient1.Active := false;
  except
    Memo1.Lines.Append('');
    Memo1.Lines.Strings[Memo1.Lines.Count-1]:='IP antwortet nicht';
  end;
  for i:= 0 to 3 do
  begin
    if i=0 then if Heizung<>0 then xml:='ON.xml' else xml:='OFF.xml';;
    if i=1 then if Ruehrwerk<>0 then xml:='ON.xml' else xml:='OFF.xml';;
    if i=2 then if Kuehlung<>0 then xml:='ON.xml' else xml:='OFF.xml';;
    if i=3 then if Alarm<>0 then xml:='ON.xml' else xml:='OFF.xml';;
    user:=(Form1.FindComponent('Edit' + IntToStr(101+i)) as TEdit).Text;
    ip:=(Form1.FindComponent('Edit' + IntToStr(97+i)) as TEdit).Text;
    password:=(Form1.FindComponent('Edit' + IntToStr(105+i)) as TEdit).Text;
    if (Form1.FindComponent('CheckBox' + IntToStr(46+i)) as TCheckBox).Checked=true then
    begin
      xml2:='-d @'+xml+' http://'+user+':'+password+'@'+ip+':10000/smartplug.cgi';
      ShellExecute(Application.Handle,'open',PChar(pfad+'curl\curl'),PChar(xml2),PChar(pfad+'curl'), SW_HIDE);
      xml:='-d @'+xml+' -v http://'+ip+':10000/smartplug.cgi --digest -u '+user+':'+password;
      ShellExecute(Application.Handle,'open',PChar(pfad+'curl\curl'),PChar(xml),PChar(pfad+'curl'), SW_HIDE);
    end;
  end;
  SendeTimer.Enabled := true ;
end;

procedure TForm1.ComboBox54Change(Sender: TObject);
begin
  if ComboBox54.ItemIndex=1 then Form1.Color:=clBtnHighlight
  else if ComboBox54.ItemIndex=2 then Form1.Color:=clMoneyGreen
  else if ComboBox54.ItemIndex=3 then Form1.Color:=clSkyBlue
  else if ComboBox54.ItemIndex=4 then Form1.Color:=65536*140 + 256*140 + 255
  else Form1.Color:=clBtnFace;
  Form1.Refresh;
end;

procedure TForm1.ProzessTimerTimer(Sender: TObject);
begin
  if start=true then
  begin
    application.Title:= Edit7.Text + ' - ' + floattostr(round(floattemp)) +'°C - ' + 'Start';
    SetStringGrid;
    Alarmpuls:=Trackbar2.Position;
    Alarmpause:=Trackbar3.Position;
    AusgabeTimer.Enabled:=true;
    GetGradient;
    Rastpruefung;
  end
  else if stop=true then
  begin
    application.Title:= Edit7.Text + ' - ' + floattostr(round(floattemp)) +'°C - ' + 'Stop';
    SetStringGrid;
    AusgabeTimer.Enabled:=false;
    Heizung:=0;
    Ruehrwerk:=0;
    Kuehlung:=0;
    Alarm:=0;
  end
  else
  begin
    application.Title:= Edit7.Text + ' - ' + floattostr(round(floattemp)) +'°C - ' + 'Pause';
    SetStringGrid;
    AusgabeTimer.Enabled:=false;
    Heizung:=0;
    Ruehrwerk:=0;
    Kuehlung:=0;
    if FehlerErkannt=true then AusgabeTimer.Enabled:=true else AusgabeTimer.Enabled:=false;
  end;
  setup_speichern(Form1, pfad+'Setup\setup.txt');
end;

procedure TForm1.ComboBox36Enter(Sender: TObject);
begin
  SendeTimer.Enabled := false;
end;

procedure TForm1.ComboBox36Exit(Sender: TObject);
begin
  editcheck(Edit5,0,9999,'1000');
  SendeTimer.Enabled := true;
end;

procedure TForm1.btnOpenClick(Sender: TObject);
begin
  Datensatz:=99999;
  if (OpenDialog2.Execute) then
  begin
    SQLBrowse;
    KBHSettingsSpeichern;
    ScrollBar1.Min:=0;
  end;
end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
  Datensatz:=ScrollBar1.Position;
  SQLBrowse;
  KBHSettingsSpeichern;
end;

procedure TForm1.CheckBox44Click(Sender: TObject); begin KBHSettingsSpeichern; end;
procedure TForm1.CheckBox51Click(Sender: TObject); begin KBHSettingsSpeichern; end;
procedure TForm1.Edit91Exit(Sender: TObject); begin KBHSettingsSpeichern; end;
procedure TForm1.Edit92Exit(Sender: TObject); begin KBHSettingsSpeichern; end;

procedure TForm1.ComboBox43Change(Sender: TObject);
begin
  Datensatz:=99999;
  SQLBrowse;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  if Button13.Caption='Simulation' then
  begin
    Button13.Caption:='Messung';
    Label63.Caption:='SIMULATION';
    ScrollBar2.Visible:=true;
  end
  else
  begin
    Button13.Caption:='Simulation';
    Label63.Caption:='IST';
    ScrollBar2.Visible:=false;
  end;
end;

procedure TForm1.RastTypBtn1Click(Sender: TObject);
begin
  if RastTypBtn1.HelpKeyword='Zeitrast' then
  begin
    RastTypBtn1.glyph.LoadFromFile(pfad + 'Graphics\Feuer.bmp');
    RastTypBtn1.HelpKeyword:='Heizrast';
  end
  else if RastTypBtn1.HelpKeyword='Heizrast' then
  begin
    RastTypBtn1.glyph.LoadFromFile(pfad + 'Graphics\Eis.bmp');
    RastTypBtn1.HelpKeyword:='Kühlrast';
  end
  else
  begin
    RastTypBtn1.glyph.LoadFromFile(pfad + 'Graphics\Uhr.bmp');
    RastTypBtn1.HelpKeyword:='Zeitrast';
  end;
  Form1.Edit1Change(Form1);
end;

procedure TForm1.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var S: String;
    SI: Integer;
begin
  if StringGrid1.Cells[ACol, ARow]='Ja' then begin
    StringGrid1.Canvas.Brush.Color := RGB(152,251,152);
    StringGrid1.Canvas.FillRect(Rect);
    S := StringGrid1.Cells[ACol, ARow];
    StringGrid1.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, S);
  end
  else if StringGrid1.Cells[ACol, ARow]='Nein' then begin
    StringGrid1.Canvas.Brush.Color := RGB(240,128,128);
    StringGrid1.Canvas.FillRect(Rect);
    S := StringGrid1.Cells[ACol, ARow];
    StringGrid1.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, S);
  end
  else if StringGrid1.Cells[ACol, ARow]='Heizrast' then begin
    Image1.Picture.LoadFromFile(pfad + 'Graphics\feuer_kl.bmp');
    S := StringGrid1.Cells[ACol, ARow];
    StringGrid1.Canvas.FillRect(Rect);
    StringGrid1.Canvas.Draw(Rect.Left + 2, Rect.Top+ 2, Image1.Picture.Bitmap);
    StringGrid1.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, '');
  end
  else if StringGrid1.Cells[ACol, ARow]='Kühlrast' then begin
    Image1.Picture.LoadFromFile(pfad + 'Graphics\eis_kl.bmp');
    S := StringGrid1.Cells[ACol, ARow];
    StringGrid1.Canvas.FillRect(Rect);
    StringGrid1.Canvas.Draw(Rect.Left + 2, Rect.Top+ 2, Image1.Picture.Bitmap);
    StringGrid1.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, '');
  end
  else if StringGrid1.Cells[ACol, ARow]='Zeitrast' then begin
    Image1.Picture.LoadFromFile(pfad + 'Graphics\uhr_kl.bmp');
    S := StringGrid1.Cells[ACol, ARow];
    StringGrid1.Canvas.FillRect(Rect);
    StringGrid1.Canvas.Draw(Rect.Left + 2, Rect.Top+ 2, Image1.Picture.Bitmap);
    StringGrid1.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, '');
  end
  else if (ACol=13) and (ARow>0) then
  begin
    StringGrid1.Canvas.FillRect(Rect);
    S := StringGrid1.Cells[ACol, ARow];
    Try SI := strtoint(S) except SI:=0; end;
    //Draw Rectangle1
    StringGrid1.Canvas.Brush.Color := clWindow;
    StringGrid1.Canvas.Pen.Color := clGreen;
    StringGrid1.Canvas.Rectangle(Rect.Left+2, Rect.Top+2, Rect.Left+StringGrid1.ColWidths[ACol]-2, Rect.Top+21 );
    //Draw Rectangle2
    StringGrid1.Canvas.Brush.Color := clMoneyGreen;
    if SI<>0 then StringGrid1.Canvas.Rectangle(Rect.Left+2, Rect.Top+2, Rect.Left+SI, Rect.Top+21 );
    //Draw String
    S:=S+' %';
    StringGrid1.Canvas.Brush.Style := bsClear;
    StringGrid1.Canvas.Font.Color := clBlack;
    StringGrid1.Canvas.TextOut(Rect.Left+52-StringGrid1.Canvas.TextWidth(S) div 2, Rect.Top+3, S);
  end
  else if ((ACol=10) or (ACol=11)) and (ARow>0) then
  begin
    S := StringGrid1.Cells[ACol, ARow];
    Try SI := strtoint(S) except SI:=0; end;
    if SI>10 then
    begin
      S:='ZF '+inttostr(strtoint(S)-10)+' OFF';
      StringGrid1.Canvas.Brush.Color := RGB(240,128,128);
    end
    else if SI>0 then
    begin
      S:='ZF '+S+' ON';
      StringGrid1.Canvas.Brush.Color := RGB(152,251,152);
    end
    else S:='';
    StringGrid1.Canvas.FillRect(Rect);
    StringGrid1.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, S);
  end
  else if (ACol=2) and (ARow>0) then
  begin
    S := StringGrid1.Cells[ACol, ARow]+' °C';
    StringGrid1.Canvas.FillRect(Rect);
    StringGrid1.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, S);
  end
  else if (ACol=3) and (ARow>0) then
  begin
    S := StringGrid1.Cells[ACol, ARow]+' min.';
    StringGrid1.Canvas.FillRect(Rect);
    StringGrid1.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, S);
  end
  else if (ACol=12) and (ARow>0) then
  begin
    S := StringGrid1.Cells[ACol, ARow]+' min.';
    StringGrid1.Canvas.FillRect(Rect);
    StringGrid1.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, S);
  end
  else if ((ACol=6) or (ACol=7)) and (ARow>0) then
  begin
    S := StringGrid1.Cells[ACol, ARow]+' sek.';
    StringGrid1.Canvas.FillRect(Rect);
    StringGrid1.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, S);
  end;
end;

procedure TForm1.ScrollBar2Change(Sender: TObject); begin SetTemp; end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var buttonSelected:integer;
    hw:hwnd;
begin
  buttonSelected:=MyMessageDlgPos('Programm wirklich beenden?', mtWarning, [mbOK, mbAbort], ['Ok', 'Abbruch'], Form1.Left, 350, Form1.Top, 250);
  if buttonSelected = mrOK then
  begin
    Ruehrwerk:=0;
    Heizung:=0;
    Alarm:=0;
    Kuehlung:=0;
    Form1.SendeTimerTimer(Form1);
    application.terminate;
  end
  else CanClose:=false;
end;

procedure TForm1.Edit8Change(Sender: TObject);
var i: integer;
begin
  if stop=true then
  begin
    if TEdit(Sender).Text='' then TEdit(Sender).Text:='0';
    try stringgrid1.ColWidths[5] := strtoint(Edit8.Text)-1 except stringgrid1.ColWidths[5] := 50; end;
    try stringgrid1.ColWidths[6] := strtoint(Edit9.Text)-1 except stringgrid1.ColWidths[6] := 50; end;
    try stringgrid1.ColWidths[7] := strtoint(Edit10.Text)-1 except stringgrid1.ColWidths[7] := 50; end;
    try stringgrid1.ColWidths[8] := strtoint(Edit11.Text)-1 except stringgrid1.ColWidths[8] := 50; end;
    try stringgrid1.ColWidths[9] := strtoint(Edit12.Text)-1 except stringgrid1.ColWidths[9] := 50; end;
    if checkbox3.Checked=true then
    begin
      try Stringgrid1.ColWidths[10] := strtoint(Edit13.Text)-1 except stringgrid1.ColWidths[10] := 50; end;
      try stringgrid1.ColWidths[11] := strtoint(Edit14.Text)-1 except stringgrid1.ColWidths[11] := 50; end;
      Label5.Visible:=true;
      Label8.Visible:=true;
      Label14.Visible:=true;
      Label15.Visible:=true;
      Edit13.Visible:=true;
      Edit14.Visible:=true;
      Combobox4.Visible:=true;
      Combobox5.Visible:=true;
      for i := 0 to 9 do
      begin
        (Form1.FindComponent('Edit' + IntToStr(21+i)) as TEdit).Visible:=true;
        (Form1.FindComponent('Label' + IntToStr(21+i)) as TLabel).Visible:=true;
        (Form1.FindComponent('Button' + IntToStr(30+i)) as TButton).Visible:=true;
      end
    end
    else
    begin
      Stringgrid1.ColWidths[10] := -1;
      Stringgrid1.ColWidths[11] := -1;
      Label5.Visible:=false;
      Label8.Visible:=false;
      Label14.Visible:=false;
      Label15.Visible:=false;
      Edit13.Visible:=false;
      Edit14.Visible:=false;
      Combobox4.Visible:=false;
      Combobox5.Visible:=false;
      for i := 0 to 9 do
      begin
        (Form1.FindComponent('Edit' + IntToStr(21+i)) as TEdit).Visible:=false;
        (Form1.FindComponent('Label' + IntToStr(21+i)) as TLabel).Visible:=false;
        (Form1.FindComponent('Button' + IntToStr(30+i)) as TButton).Visible:=false;
      end
    end;
  end;
end;

procedure TForm1.KopiedieserRasteinfgen1Click(Sender: TObject);
var StoredRow: integer;
begin with Form1 do begin
  with Stringgrid1 do
  begin
    StoredRow:=Row;
    BitBtn11Click(Form1);
    Edit1.Text := Cells[1,StoredRow];
    Edit2.Text := Cells[2,StoredRow];
    Edit3.Text := Cells[3,StoredRow];
    RastTypBtn1.HelpKeyword:=(cells[4,StoredRow]); RastTypBtn1Click(Form1); RastTypBtn1Click(Form1); RastTypBtn1Click(Form1);
    if cells[5,StoredRow]='Ja' then checkbox2.Checked:=true else checkbox2.Checked:=false;
    Edit4.Text := cells[6,StoredRow];
    Edit5.Text := cells[7,StoredRow];
    if cells[8,StoredRow]='Ja' then checkbox1.Checked:=true else checkbox1.Checked:=false;
    Edit6.Text := cells[9,StoredRow];
    ComboBox4.itemindex := strtoint(cells[10,StoredRow]);
    ComboBox5.itemindex := strtoint(cells[11,StoredRow]);
    RastUebernahme(StringGrid1.Row);
    Row:=RowCount-1;
    RastEinlesen(Row);
    if RowCount>9 then Panel3.Visible:=false;
    RastUebernahme(StringGrid1.Row);
  end;
end;end;

procedure TForm1.Einmaischen3567CDatenbernehmen1Click(Sender: TObject);
begin
  Edit1.Text := 'Einmaischen';
  Edit2.Text := '59';
  Edit3.Text := '0';
  RastTypBtn1.HelpKeyword:='Heizrast'; RastTypBtn1Click(Form1); RastTypBtn1Click(Form1); RastTypBtn1Click(Form1);
  checkbox2.Checked:=true;
  Edit4.Text := '0';
  Edit5.Text := '9999';
  checkbox1.Checked:=true;
  Edit6.Text := 'Malz einfüllen!';
  ComboBox4.itemindex := 0;
  ComboBox5.itemindex := 0;
  RastUebernahme(StringGrid1.Row);
end;

procedure TForm1.Gummirast3540CDatenbernehmen1Click(Sender: TObject);
begin
  Edit1.Text := 'Gummirast';
  Edit2.Text := '38';
  Edit3.Text := '60';
  RastTypBtn1.HelpKeyword:='Heizrast'; RastTypBtn1Click(Form1); RastTypBtn1Click(Form1); RastTypBtn1Click(Form1);
  checkbox2.Checked:=true;
  Edit4.Text := '0';
  Edit5.Text := '9999';
  checkbox1.Checked:=false;
  Edit6.Text := '';
  ComboBox4.itemindex := 0;
  ComboBox5.itemindex := 0;
  RastUebernahme(StringGrid1.Row);
end;

procedure TForm1.Weizenrast45CDatenbernehmen1Click(Sender: TObject);
begin
  Edit1.Text := 'Weizenrast';
  Edit2.Text := '45';
  Edit3.Text := '15';
  RastTypBtn1.HelpKeyword:='Heizrast'; RastTypBtn1Click(Form1); RastTypBtn1Click(Form1); RastTypBtn1Click(Form1);
  checkbox2.Checked:=true;
  Edit4.Text := '0';
  Edit5.Text := '9999';
  checkbox1.Checked:=false;
  Edit6.Text := '';
  ComboBox4.itemindex := 0;
  ComboBox5.itemindex := 0;
  RastUebernahme(StringGrid1.Row);
end;

procedure TForm1.Eiweirast57CDatenbernehmen1Click(Sender: TObject);
begin
  Edit1.Text := 'Eiweißrast';
  Edit2.Text := '57';
  Edit3.Text := '10';
  RastTypBtn1.HelpKeyword:='Heizrast'; RastTypBtn1Click(Form1); RastTypBtn1Click(Form1); RastTypBtn1Click(Form1);
  checkbox2.Checked:=true;
  Edit4.Text := '0';
  Edit5.Text := '9999';
  checkbox1.Checked:=false;
  Edit6.Text := '';
  ComboBox4.itemindex := 0;
  ComboBox5.itemindex := 0;
  RastUebernahme(StringGrid1.Row);
end;

procedure TForm1.Maltoserast6065CDatenbernehmen1Click(Sender: TObject);
begin
  Edit1.Text := 'Maltoserast';
  Edit2.Text := '63';
  Edit3.Text := '35';
  RastTypBtn1.HelpKeyword:='Heizrast'; RastTypBtn1Click(Form1); RastTypBtn1Click(Form1); RastTypBtn1Click(Form1);
  checkbox2.Checked:=true;
  Edit4.Text := '0';
  Edit5.Text := '9999';
  checkbox1.Checked:=false;
  Edit6.Text := '';
  ComboBox4.itemindex := 0;
  ComboBox5.itemindex := 0;
  RastUebernahme(StringGrid1.Row);
end;

procedure TForm1.Kombirast6669CDatenbernehmen1Click(Sender: TObject);
begin
  Edit1.Text := 'Kombirast';
  Edit2.Text := '67';
  Edit3.Text := '60';
  RastTypBtn1.HelpKeyword:='Heizrast'; RastTypBtn1Click(Form1); RastTypBtn1Click(Form1); RastTypBtn1Click(Form1);
  checkbox2.Checked:=true;
  Edit4.Text := '0';
  Edit5.Text := '9999';
  checkbox1.Checked:=false;
  Edit6.Text := '';
  ComboBox4.itemindex := 0;
  ComboBox5.itemindex := 0;
  RastUebernahme(StringGrid1.Row);
end;

procedure TForm1.Verzuckerungsrast7075CDatenbernehmen1Click(
  Sender: TObject);
begin
  Edit1.Text := 'Verzuckerungsrast';
  Edit2.Text := '72';
  Edit3.Text := '20';
  RastTypBtn1.HelpKeyword:='Heizrast'; RastTypBtn1Click(Form1); RastTypBtn1Click(Form1); RastTypBtn1Click(Form1);
  checkbox2.Checked:=true;
  Edit4.Text := '0';
  Edit5.Text := '9999';
  checkbox1.Checked:=false;
  Edit6.Text := '';
  ComboBox4.itemindex := 0;
  ComboBox5.itemindex := 0;
  RastUebernahme(StringGrid1.Row);
end;

procedure TForm1.Abmaischen78CDatenbernehmen1Click(Sender: TObject);
begin
  Edit1.Text := 'Abmaischen';
  Edit2.Text := '78';
  Edit3.Text := '0';
  RastTypBtn1.HelpKeyword:='Heizrast'; RastTypBtn1Click(Form1); RastTypBtn1Click(Form1); RastTypBtn1Click(Form1);
  checkbox2.Checked:=true;
  Edit4.Text := '0';
  Edit5.Text := '9999';
  checkbox1.Checked:=true;
  Edit6.Text := 'Maischeprogramm abgeschlossen';
  ComboBox4.itemindex := 0;
  ComboBox5.itemindex := 0;
  RastUebernahme(StringGrid1.Row);
end;

procedure TForm1.VorderwrzhopfungDatenbernehmen1Click(Sender: TObject);
begin
  Edit1.Text := 'Vorderwürzhopfung';
  Edit2.Text := ComboBox38.Text;
  Edit3.Text := '0';
  RastTypBtn1.HelpKeyword:='Zeitrast'; RastTypBtn1Click(Form1); RastTypBtn1Click(Form1); RastTypBtn1Click(Form1);
  checkbox2.Checked:=false;
  Edit4.Text := '0';
  Edit5.Text := '0';
  checkbox1.Checked:=true;
  Edit6.Text := 'Hopfen zugeben';
  ComboBox4.itemindex := 0;
  ComboBox5.itemindex := 0;
  RastUebernahme(StringGrid1.Row);
end;

procedure TForm1.KochtemperatrurDatenbernehmen1Click(Sender: TObject);
begin
  Edit1.Text := 'Kochtemperatur';
  Edit2.Text := ComboBox38.Text;
  Edit3.Text := '0';
  RastTypBtn1.HelpKeyword:='Heizrast'; RastTypBtn1Click(Form1); RastTypBtn1Click(Form1); RastTypBtn1Click(Form1);
  checkbox2.Checked:=false;
  Edit4.Text := '0';
  Edit5.Text := '0';
  checkbox1.Checked:=false;
  Edit6.Text := '';
  ComboBox4.itemindex := 0;
  ComboBox5.itemindex := 0;
  RastUebernahme(StringGrid1.Row);
end;

procedure TForm1.HopfengabeDatenbernehmen1Click(Sender: TObject);
begin
  Edit1.Text := 'Hopfengabe';
  Edit2.Text := ComboBox38.Text;
  Edit3.Text := '20';
  RastTypBtn1.HelpKeyword:='Zeitrast'; RastTypBtn1Click(Form1); RastTypBtn1Click(Form1); RastTypBtn1Click(Form1);
  checkbox2.Checked:=false;
  Edit4.Text := '0';
  Edit5.Text := '0';
  checkbox1.Checked:=true;
  Edit6.Text := 'Hopfen zugeben';
  ComboBox4.itemindex := 0;
  ComboBox5.itemindex := 0;
  RastUebernahme(StringGrid1.Row);
end;

procedure TForm1.RestkochzeitDatenbernahme1Click(Sender: TObject);
begin
  Edit1.Text := 'Restkochzeit';
  Edit2.Text := ComboBox38.Text;
  Edit3.Text := '20';
  RastTypBtn1.HelpKeyword:='Zeitrast'; RastTypBtn1Click(Form1); RastTypBtn1Click(Form1); RastTypBtn1Click(Form1);
  checkbox2.Checked:=false;
  Edit4.Text := '0';
  Edit5.Text := '0';
  checkbox1.Checked:=true;
  Edit6.Text := 'Kochvorgang beendet';
  ComboBox4.itemindex := 0;
  ComboBox5.itemindex := 0;
  RastUebernahme(StringGrid1.Row);
end;

procedure TForm1.IsomerisierungDatenbernehmen1Click(Sender: TObject);
begin
  Edit1.Text := 'Isomerisierung';
  Edit2.Text := '78';
  Edit3.Text := '15';
  RastTypBtn1.HelpKeyword:='Zeitrast'; RastTypBtn1Click(Form1); RastTypBtn1Click(Form1); RastTypBtn1Click(Form1);
  checkbox2.Checked:=false;
  Edit4.Text := '0';
  Edit5.Text := '0';
  checkbox1.Checked:=true;
  Edit6.Text := 'Brauprozess beendet';
  ComboBox4.itemindex := 0;
  ComboBox5.itemindex := 0;
  RastUebernahme(StringGrid1.Row);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ClearStringGrid1;
  maischeimport;
  if StringGrid1.RowCount>9 then Panel3.Visible:=false else Panel3.Visible:=true;
  RastEinlesen(stringgrid1.Row);
  Rezeptname:= 'KBH Maische-Import - '+ ebName.Text;
  Rezeptname:=stringreplace(Rezeptname,'\','',[rfReplaceAll]); Rezeptname:=stringreplace(Rezeptname,'/','',[rfReplaceAll]); Rezeptname:=stringreplace(Rezeptname,':','',[rfReplaceAll]);
  Rezeptname:=stringreplace(Rezeptname,'*','',[rfReplaceAll]); Rezeptname:=stringreplace(Rezeptname,'?','',[rfReplaceAll]); Rezeptname:=stringreplace(Rezeptname,'"','',[rfReplaceAll]);
  Rezeptname:=stringreplace(Rezeptname,'<','',[rfReplaceAll]); Rezeptname:=stringreplace(Rezeptname,'>','',[rfReplaceAll]); Rezeptname:=stringreplace(Rezeptname,'|','',[rfReplaceAll]);
  form1.Caption:='Brauerei '+ Version + ' - ' + Edit7.Text + ' - ' +  Rezeptname; //Ausgabe des gespeicherten Rezepts
  Pagecontrol1.TabIndex:=0;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  ClearStringGrid1;
  kochimport;
  if StringGrid1.RowCount>9 then Panel3.Visible:=false else Panel3.Visible:=true;
  RastEinlesen(stringgrid1.Row);
  Rezeptname:= 'KBH Koch-Import - '+ebName.Text;;
  Rezeptname:=stringreplace(Rezeptname,'\','',[rfReplaceAll]); Rezeptname:=stringreplace(Rezeptname,'/','',[rfReplaceAll]); Rezeptname:=stringreplace(Rezeptname,':','',[rfReplaceAll]);
  Rezeptname:=stringreplace(Rezeptname,'*','',[rfReplaceAll]); Rezeptname:=stringreplace(Rezeptname,'?','',[rfReplaceAll]); Rezeptname:=stringreplace(Rezeptname,'"','',[rfReplaceAll]);
  Rezeptname:=stringreplace(Rezeptname,'<','',[rfReplaceAll]); Rezeptname:=stringreplace(Rezeptname,'>','',[rfReplaceAll]); Rezeptname:=stringreplace(Rezeptname,'|','',[rfReplaceAll]);
  form1.Caption:='Brauerei '+ Version + ' - ' + Edit7.Text + ' - ' +  Rezeptname; //Ausgabe des gespeicherten Rezepts
  Pagecontrol1.TabIndex:=0;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  ClearStringGrid1;
  maischeimport;
  kochimport;
  if StringGrid1.RowCount>9 then Panel3.Visible:=false else Panel3.Visible:=true;
  RastEinlesen(stringgrid1.Row);
  Rezeptname:= 'KBH Gesamtrezept-Import - '+ebName.Text;;
  Rezeptname:=stringreplace(Rezeptname,'\','',[rfReplaceAll]); Rezeptname:=stringreplace(Rezeptname,'/','',[rfReplaceAll]); Rezeptname:=stringreplace(Rezeptname,':','',[rfReplaceAll]);
  Rezeptname:=stringreplace(Rezeptname,'*','',[rfReplaceAll]); Rezeptname:=stringreplace(Rezeptname,'?','',[rfReplaceAll]); Rezeptname:=stringreplace(Rezeptname,'"','',[rfReplaceAll]);
  Rezeptname:=stringreplace(Rezeptname,'<','',[rfReplaceAll]); Rezeptname:=stringreplace(Rezeptname,'>','',[rfReplaceAll]); Rezeptname:=stringreplace(Rezeptname,'|','',[rfReplaceAll]);
  form1.Caption:='Brauerei '+ Version + ' - ' + Edit7.Text + ' - ' +  Rezeptname; //Ausgabe des gespeicherten Rezepts
  Pagecontrol1.TabIndex:=0;
end;

procedure TForm1.Edit21Change(Sender: TObject);
var i:integer;
begin
  for i:= 0 to 9 do
  begin
    ComboBox5.Items[i+1]:='ZF'+inttostr(i+1)+' ON - '+(Form1.FindComponent('Edit' + IntToStr(21+i)) as TEdit).Text;
    ComboBox4.Items[i+1]:='ZF'+inttostr(i+1)+' ON - '+(Form1.FindComponent('Edit' + IntToStr(21+i)) as TEdit).Text;
  end;
  for i:= 0 to 9 do
  begin
    ComboBox5.Items[i+11]:='ZF'+inttostr(i+1)+' OFF - '+(Form1.FindComponent('Edit' + IntToStr(21+i)) as TEdit).Text;
    ComboBox4.Items[i+11]:='ZF'+inttostr(i+1)+' OFF - '+(Form1.FindComponent('Edit' + IntToStr(21+i)) as TEdit).Text;
  end;
end;

procedure TForm1.Button100Click(Sender: TObject); begin if (Sender as TButton).Caption='Aus' then (Sender as TButton).Caption:='An' else if (Sender as TButton).Caption='An' then (Sender as TButton).Caption:='Automatik' else (Sender as TButton).Caption:='Aus'; end;

procedure HeizungBedarfsermittlung;
var regeltemp:Extended;
begin with Form1 do begin
  DecimalSeparator := '.';
  if (start=true) and (Heizbedarf=true) then storetempon:=floattemp;
  if (start=true) and (Heizbedarf=false) and (floattemp<storetempon) then storetempon:=floattemp;
  if (start=true) and (Heizbedarf=false) then storetempoff:=floattemp;
  if (start=true) and (Heizbedarf=true) and (floattemp>storetempoff) then storetempoff:=floattemp;
  if (checkbox41.Checked=true) and (Heizbedarf=false) and (floattemp>storetempon+strtofloat(Combobox55.text)) then begin AlarmAusgabe('Heizung scheint durchgehend zu heizen! Relais prüfen!'); storetempon:=floattemp; end;
  if (checkbox41.Checked=true) and (Heizbedarf=true) and (floattemp<storetempoff-strtofloat(Combobox56.text)) then begin AlarmAusgabe('Heizung scheint nicht zu heizen! Relais prüfen!'); storetempoff:=floattemp; end;
  if (checkbox37.Checked=true) and (Heizbedarf=false) then regeltemp:=solltemp-strtofloat(Combobox26.text) else regeltemp:=solltemp;
  if (checkbox7.Checked=true) and (Solltemp=strtoint(Combobox38.Text)) then
  begin
    if checkbox3.checked=true then HendiTimer.Enabled:=true;
    Heizbedarf:=true;
    Heizstufe:=9;
  end
  else if floattemp<Regeltemp then
  begin
    Heizbedarf:=true;
    Heizstufe:=9;
    if checkbox3.checked=true then HendiTimer.Enabled:=true;
    if (floattemp>Regeltemp-strtofloat(combobox13.text)) then
    begin
      if (checkbox34.checked=true) then
      begin
        if floattemp<strtoint(edit87.Text) then Heizstufe:=5;
        if floattemp<strtoint(edit86.Text) then Heizstufe:=4;
        if floattemp<strtoint(edit85.Text) then Heizstufe:=3;
        if floattemp<strtoint(edit84.Text) then Heizstufe:=2;
        if floattemp<strtoint(edit83.Text) then Heizstufe:=1;
      end;
      if (checkbox36.checked=true) and (gradient>strtofloat(ComboBox25.Text)) then Heizstufe:=0;
    end;
  end
  else begin Heizbedarf:=false; HendiTimer.Enabled:=false; end;
end;end;
procedure HeizungSchalten;
begin with Form1 do begin
  if Heizbedarf=true then
  begin
    if Heizstufealt<>Heizstufe then Heizcounter:=0;
    if Heizstufe=1 then
    begin
      Heizpuls:=strtoint(Combobox14.Text)*10; Heizpause:=strtoint(Combobox15.Text)*10;
      Heizcounter:=Heizcounter+1;
      if Heizcounter<Heizpuls then Heizung:=1
      else if Heizcounter<Heizpuls+Heizpause then Heizung:=0
      else Heizcounter:=0;
    end
    else if Heizstufe=2 then
    begin
      Heizpuls:=strtoint(Combobox17.Text)*10; Heizpause:=strtoint(Combobox18.Text)*10;
      Heizcounter:=Heizcounter+1;
      if Heizcounter<Heizpuls then Heizung:=1
      else if Heizcounter<Heizpuls+Heizpause then Heizung:=0
      else Heizcounter:=0;
    end
    else if Heizstufe=3 then
    begin
      Heizpuls:=strtoint(Combobox19.Text)*10; Heizpause:=strtoint(Combobox20.Text)*10;
      Heizcounter:=Heizcounter+1;
      if Heizcounter<Heizpuls then Heizung:=1
      else if Heizcounter<Heizpuls+Heizpause then Heizung:=0
      else Heizcounter:=0;
    end
    else if Heizstufe=4 then
    begin
      Heizpuls:=strtoint(Combobox21.Text)*10; Heizpause:=strtoint(Combobox22.Text)*10;
      Heizcounter:=Heizcounter+1;
      if Heizcounter<Heizpuls then Heizung:=1
      else if Heizcounter<Heizpuls+Heizpause then Heizung:=0
      else Heizcounter:=0;
    end
    else if Heizstufe=5 then
    begin
      Heizpuls:=strtoint(Combobox24.Text)*10; Heizpause:=strtoint(Combobox23.Text)*10;
      Heizcounter:=Heizcounter+1;
      if Heizcounter<Heizpuls then Heizung:=1
      else if Heizcounter<Heizpuls+Heizpause then Heizung:=0
      else Heizcounter:=0;
    end
    else if Heizstufe=9 then Heizung:=1
    else if Heizstufe=0 then Heizung:=0;
  end
  else Heizung:=0;
  Heizstufealt:=Heizstufe;
end;end;

procedure RuehrwerkBedarfsermittlung;
begin with Form1 do begin
  if checkbox42.checked=false then
  begin
    if (Rastcount<9000) and (Stringgrid1.cells[6,RastCount]<>'') and (Stringgrid1.cells[5,RastCount]<>'') then
    begin
      Ruehrpuls:=strtoint(Stringgrid1.cells[7,RastCount])*10;
      Ruehrpause:=strtoint(Stringgrid1.cells[6,RastCount])*10;
      if Stringgrid1.cells[5,RastCount]='Ja' then Ruehrbedarf:=true else Ruehrbedarf:=false;
    end
    else Ruehrbedarf:=false;
  end
  else
  begin
    if Stringgrid1.cells[5,RastCount]='Ja' then
    begin
      Ruehrpuls:=strtoint(Stringgrid1.cells[7,RastCount])*10;
      Ruehrpause:=strtoint(Stringgrid1.cells[6,RastCount])*10;
      ruehrbedarf:=false;
      if (heizbedarf=true) and (ruehrverzoegerung<verzoegerung) then begin ruehrverzoegerung:=ruehrverzoegerung+1; ruehrbedarf:=false; ruehrverzoegerung2:=0; end
      else if (heizbedarf=true) and (ruehrverzoegerung=verzoegerung) then ruehrbedarf:=true
      else if (heizbedarf=false) and (ruehrverzoegerung2<verzoegerung2) then begin ruehrverzoegerung2:=ruehrverzoegerung2+1; ruehrbedarf:=true; ruehrverzoegerung:=0; end
      else if (heizbedarf=false) and (ruehrverzoegerung2=verzoegerung2) then ruehrbedarf:=false;
    end;
  end;
end;end;
procedure RuehrwerkSchalten;
begin with Form1 do begin
  if Ruehrbedarf=true then
  begin
    if (Ruehrpuls<>Ruehrpulsalt) or (Ruehrpause<>Ruehrpausealt) then Ruehrcounter:=0;
    Ruehrcounter:=Ruehrcounter+1;
    if Ruehrcounter<Ruehrpuls then Ruehrwerk:=1
    else if Ruehrcounter<Ruehrpuls+Ruehrpause then Ruehrwerk:=0
    else Ruehrcounter:=0;
  end
  else Ruehrwerk:=0;
  Ruehrpulsalt:=Ruehrpuls; Ruehrpausealt:=Ruehrpause;
end;end;

procedure KuehlungBedarfsermittlung;
var regeltemp:Extended;
begin with Form1 do begin
  DecimalSeparator := '.';
  if (checkbox37.Checked=true) and (Kuehlungbedarf=false) then regeltemp:=solltemp+strtofloat(Combobox29.text) else regeltemp:=solltemp;
  if floattemp>Regeltemp then Kuehlungbedarf:=true
  else Kuehlungbedarf:=false;
end;end;
procedure KuehlungSchalten;
begin with Form1 do begin
  if Kuehlungbedarf=true then
  begin
    Kuehlung:=1;
  end
  else Kuehlung:=0;
end;end;

procedure AlarmBedarfsermittlung;
begin with Form1 do begin
  if (Brauerruf=true) or (FehlerErkannt=true) then Alarmbedarf:=true else Alarmbedarf:=false;
end;end;
procedure AlarmSchalten;
begin with Form1 do begin
  if Alarmbedarf=true then
  begin
    if (Alarmpuls<>Alarmpulsalt) or (Alarmpause<>Alarmpausealt) then Alarmcounter:=0;
    Alarmcounter:=Alarmcounter+1;
    if Alarmcounter<Alarmpuls then Alarm:=1
    else if Alarmcounter<Alarmpuls+Alarmpause then Alarm:=0
    else Alarmcounter:=0;
    Alarmpulsalt:=Alarmpuls; Alarmpausealt:=Alarmpause;
  end
  else Alarm:=0;
end;end;

procedure TForm1.AusgabeTimerTimer(Sender: TObject);
begin
  if FehlerErkannt=false then
  begin
    HeizungBedarfsermittlung;
    if Hendibreak=false then HeizungSchalten;
    RuehrwerkBedarfsermittlung;
    RuehrwerkSchalten;
    KuehlungBedarfsermittlung;
    KuehlungSchalten;
  end;
  AlarmBedarfsermittlung;
  AlarmSchalten;
end;

procedure TForm1.BitBtn12Click(Sender: TObject);
begin
  BitBtn15.Enabled:=false;
  BitBtn14.Enabled:=false;
  Button19.Caption:='Zoom out';
  Button24.Caption:='Zoom in';
  OpenDialog1.FileName:='';
  OpenDialog1.Filter:='Log-Datei|*.log|Alle Dateien|*.*';
  OpenDialog1.InitialDir:=pfad + 'log';
  if OpenDialog1.Execute then ReadTabFile(OpenDialog1.FileName, ';', StringGrid2);
  OpenDialog1.Filter:='Rezept-Datei|*.rzt|Alle Dateien|*.*';
  OpenDialog1.InitialDir:=pfad + 'Rezepte';
  startpunkt:=1;
  endpunkt:=StringGrid2.RowCount-1;
  writechart(Form1);
end;

procedure TForm1.PageControl1Change(Sender: TObject);
var tempstr:string;
begin
  DecimalSeparator:='.';
  try
    if (start=true) and (CheckBox32.Checked=true) then
    begin
      DeleteFile(PChar(pfad + 'log\temp.log'));
      CopyFile(PChar(LogName),PChar(pfad + 'log\temp.log'),true);
      ReadTabFile(pfad + 'log\temp.log', ';', StringGrid2);
      if StringGrid2.RowCount>=2 then begin startpunkt:=1; endpunkt:=StringGrid2.RowCount-1; writechart(Form1); end;
    end
    else
    begin
      if StringGrid2.RowCount<10 then ReadTabFile(pfad + 'log\Test-Log.log', ';', StringGrid2);
      startpunkt:=1;
      endpunkt:=StringGrid2.RowCount-1;
      writechart(Form1);
    end;
    webbrowser1.Navigate(pfad + 'Help\Help.html');
  except
  end;
  if PageControl1.ActivePage=TabSheet5 then
  begin
    if FileExists(pfad+'import\file.txt') then
    begin
      AssignFile(myImportSettingsFile, pfad+'import\file.txt');
      Reset(myImportSettingsFile);
      ReadLn(myImportSettingsFile, tempstr);
      if FileExists(tempstr) then else tempstr:=pfad+'import\no.sqlite';
      ReadLn(myImportSettingsFile, pfad2);
      OpenDialog2.FileName:=tempstr;
      SaveDialog2.InitialDir:=pfad2;
      ReadLn(myImportSettingsFile, tempstr);
      CheckBox44.OnClick := nil;
      if tempstr='TRUE' then CheckBox44.Checked:=true else CheckBox44.Checked:=false;
      CheckBox44.OnClick := CheckBox44Click;
      ReadLn(myImportSettingsFile, tempstr);
      CheckBox51.OnClick := nil;
      if tempstr='TRUE' then CheckBox51.Checked:=true else CheckBox51.Checked:=false;
      CheckBox51.OnClick := CheckBox51Click;
      ReadLn(myImportSettingsFile, tempstr);
      Edit91.Text:=tempstr;
      ReadLn(myImportSettingsFile, tempstr);
      Edit92.Text:=tempstr;
      CloseFile(myImportSettingsFile);
      SQLBrowse;
    end;
  end;
end;

procedure TForm1.Button23Click(Sender: TObject);
begin
  If Button23.Caption='AutoUpdate Ein' then
  begin
    Button23.Caption:='AutoUpdate Aus';
    LogUpdateTimer.Enabled:=true;
  end
  else
  begin
    Button23.Caption:='AutoUpdate Ein';
    LogUpdateTimer.Enabled:=false;
  end;
end;

procedure TForm1.Button19Click(Sender: TObject);
begin
  spanne:=endpunkt-startpunkt;
  if (startpunkt>1) or (endpunkt<StringGrid2.RowCount-1) then
  begin
    startpunkt:=startpunkt-(round(spanne/2));
    endpunkt:=endpunkt+(round(spanne/2));
    if startpunkt<1 then begin endpunkt:=endpunkt-startpunkt; startpunkt:=1; end;
    if endpunkt>StringGrid2.RowCount-1 then begin startpunkt:=startpunkt-endpunkt+StringGrid2.RowCount-1; endpunkt:=StringGrid2.RowCount-1; end;
    if startpunkt<1 then startpunkt:=1;
    if endpunkt-startpunkt>20 then Button24.Enabled:=true;
    if (startpunkt=1) and (endpunkt=StringGrid2.RowCount-1) then begin Button19.Enabled:=false; BitBtn15.Enabled:=false; BitBtn14.Enabled:=false; end;
    writechart(Form1);
    if endpunkt<StringGrid2.RowCount-1 then BitBtn14.Enabled:=true else BitBtn14.Enabled:=false;
    if startpunkt>1 then BitBtn15.Enabled:=true else BitBtn15.Enabled:=false;
  end;
end;

procedure TForm1.Button24Click(Sender: TObject);
begin
  spanne:=endpunkt-startpunkt;
  if spanne>20 then
  begin
    BitBtn15.Enabled:=true;
    BitBtn14.Enabled:=true;
    startpunkt:=startpunkt+(round(spanne/4));
    endpunkt:=endpunkt-(round((spanne)/4));
    Button19.Enabled:=true;
    writechart(Form1);
    if endpunkt-startpunkt<20 then Button24.Enabled:=false;
  end;
end;

procedure TForm1.BitBtn14Click(Sender: TObject);
begin
  spanne:=endpunkt-startpunkt;
  startpunkt:=startpunkt+round(spanne/2);
  endpunkt:=endpunkt+round(spanne/2);
  if StringGrid2.RowCount-1<endpunkt then begin startpunkt:=StringGrid2.RowCount-1-spanne; endpunkt:=StringGrid2.RowCount-1; end;
  if StringGrid2.RowCount-1=endpunkt then BitBtn14.Enabled:=false;
  if startpunkt>1 then BitBtn15.Enabled:=true else BitBtn15.Enabled:=false;
  writechart(Form1);
end;

procedure TForm1.BitBtn15Click(Sender: TObject);
begin
  spanne:=endpunkt-startpunkt;
  startpunkt:=startpunkt-round(spanne/2);
  endpunkt:=endpunkt-round(spanne/2);
  if startpunkt<=1 then begin endpunkt:=spanne+1; startpunkt:=1; end;
  if startpunkt<=1 then BitBtn15.Enabled:=false;
  if endpunkt<StringGrid2.RowCount-1 then BitBtn14.Enabled:=true else BitBtn14.Enabled:=false;
  writechart(Form1);
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  MyShowMessagePos('Einschaltzeiten (hh:mm:ss):' + #13 + #13 +
  'Heizung: ' + Chr(9) + Chr(9) + FormatDateTime('hh:nn:ss', htime) + #13 +
  'Rührwerk: ' + Chr(9) + Chr(9) + FormatDateTime('hh:nn:ss', rtime) + #13 +
  'Kühlung: ' + Chr(9) + Chr(9) + FormatDateTime('hh:nn:ss', ptime) + #13 +
  'Alarm:      ' + Chr(9) + Chr(9) + FormatDateTime('hh:nn:ss', atime) + #13 + #13 +
  'Gesamt:     ' + Chr(9) + Chr(9) + FormatDateTime('hh:nn:ss', gtime) ,Form1.Left, 300, Form1.Top, 180);
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  if Brauerruf=false then
  begin
    Stringgrid1.Top:=226; Stringgrid1.Height:=279;
    if StringGrid1.RowCount>9 then Panel3.Visible:=false else Panel3.Visible:=true;
  end;
  panel8.Top:=300;
  Brauerruf:=false;
  if (Button4.Caption<>'Automatik') or (Button5.Caption<>'Automatik') or (Button6.Caption<>'Automatik') or (Button7.Caption<>'Automatik')
    then MyShowMessagePos('Nicht alle Relais auf Automatik-Betrieb!', Form1.Left, 350, Form1.Top, 250);
end;

procedure TForm1.UpDown2Click(Sender: TObject; Button: TUDBtnType);
begin
  StringGrid1.cells[2,RastCount]:=inttostr(UpDown2.Position);
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
var sollzeit,restzeit:integer;
begin
  sollzeit := strtoint(StringGrid1.cells[3,RastCount]);
  restzeit := strtoint(StringGrid1.cells[12,RastCount])+1;
  StringGrid1.cells[12,RastCount]:=inttostr(restzeit);
  zeit:=zeit+60000;
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
var sollzeit,restzeit:integer;
begin
  sollzeit := strtoint(StringGrid1.cells[3,RastCount]);
  restzeit := strtoint(StringGrid1.cells[12,RastCount])-1;
  if Restzeit>=0 then
  begin
    StringGrid1.cells[12,RastCount]:=inttostr(restzeit);
    zeit:=zeit-60000;
  end;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
  if rast=true then
  begin
    rast:=false;
    StringGrid1.cells[13,RastCount]:='0';
    StringGrid1.cells[15,RastCount]:='';
  end
  else if RastCount>1 then
  begin
    StringGrid1.cells[14,RastCount]:='';
    RastCount:=RastCount-1;
    StringGrid1.cells[13,RastCount]:='0';
    StringGrid1.cells[12,RastCount]:=StringGrid1.cells[3,RastCount];
    StringGrid1.cells[15,RastCount]:='';
  end;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
  pausezeit:=0;
  if rast=true then
    pausezeit:=-99999999
  else
  begin
    StringGrid1.cells[14,RastCount]:=FormatDateTime('dd.mm.yyyy hh:nn:ss', now);
    ZFCheck(false);
    Rast:=true;
    zeit:=GetTickCount+strtoint(StringGrid1.cells[12,RastCount])*60000-strtoint(StringGrid1.cells[3,RastCount])*60000;
  end;
end;

procedure TForm1.BitBtn16Click(Sender: TObject);
begin
  Form2.Top:=Form1.Top+250;
  Form2.Left:=Form1.Left+250;
  if Form2.Label5.Caption='false' then
  begin
    Form2.DateTimePicker1.Date:=now;
    Form2.DateTimePicker2.Time:=now;
  end;
  Form2.Visible:=true;
  Form1.Enabled:=false;
end;

procedure TimerDialogClose;
begin with Form1 do begin
  Enabled:=true;
  If Form2.Label5.Caption='true' then
  begin
    BitBtn1.Enabled:=false;
    BitBtn2.Enabled:=false;
    BitBtn16.Enabled:=false;
    TimerTimer.Enabled:=true;
    Image5.Picture.LoadFromFile(pfad + 'Graphics\Automatik-timer.bmp');
    Stringgrid1.Top:=170; Stringgrid1.Height:=383;
    Panel3.Visible:=false;
  end
  else
  begin
    BitBtn3Click(Form1);
  end;
end; end;

procedure TForm1.TimerTimerTimer(Sender: TObject);
begin
  Form2.DateTimePicker2.Date:=now;
  Label136.Caption:=inttostr(round(Form2.DateTimePicker1.Date-now-0.5))+':'+timetostr(Form2.DateTimePicker1.DateTime-now);
  Label136.Visible:=true;
  if (Form2.DateTimePicker1.Date<=now) and (Form2.DateTimePicker2.Time<=now) then
  begin
    TimerTimer.Enabled:=false;
    BitBtn1Click(Sender);
    Label136.Visible:=false;
  end;
end;

procedure TForm1.LogTimerTimer(Sender: TObject);
begin
  try
  Write(myLogFile, FormatDateTime('dd.mm.yyyy', now));
  Write(myLogFile, ';');
  Write(myLogFile, FormatDateTime('hh:nn:ss', now));
  Write(myLogFile, ';');
  if Heizung>0 then Write(myLogFile, '1;') else Write(myLogFile, '0;');
  if Ruehrwerk>0 then Write(myLogFile, '1;') else Write(myLogFile, '0;');
  if Kuehlung>0 then Write(myLogFile, '1;') else Write(myLogFile, '0;');
  if Alarm>0 then Write(myLogFile, '1;') else Write(myLogFile, '0;');
  DecimalSeparator:='.';
  Write(myLogFile, floattostr(floattemp));
  Write(myLogFile, ';');
  Write(myLogFile, floattostr(solltemp));
  WriteLn(myLogFile, ';');
  except
  end;
end;

procedure TForm1.Edit93Exit(Sender: TObject);
begin
  DecimalSeparator := '.';
  try kwert:=strtofloat(Edit93.Text) except begin Edit93.Text:='0.0'; kwert:=0; MyShowMessagePos('Unerlaubte Eingabe!', Form1.Left, 350, Form1.Top, 250); end; end;
  if (kwert>5) or (kwert<-5) then begin Edit93.Text:='0.0'; kwert:=0; MyShowMessagePos('Unerlaubte Eingabe!', Form1.Left, 350, Form1.Top, 250); end;
end;

procedure TForm1.Edit94Exit(Sender: TObject);
begin
  DecimalSeparator := '.';
  try kfaktor:=strtofloat(Edit94.Text) except begin Edit94.Text:='1.0'; kfaktor:=1; MyShowMessagePos('Unerlaubte Eingabe!', Form1.Left, 350, Form1.Top, 250); end; end;
  if (kfaktor>2) or (kfaktor<0.5) then begin Edit94.Text:='1.0'; kfaktor:=1; MyShowMessagePos('Unerlaubte Eingabe!', Form1.Left, 350, Form1.Top, 250); end;
end;

procedure TForm1.HendiTimerTimer(Sender: TObject);
begin
  HendiBreak:=true;
  HendiBreakTimer.Enabled:=true;
end;

procedure TForm1.HendiBreakTimerTimer(Sender: TObject);
begin
  HendiBreak:=false;
  HendiBreakTimer.Enabled:=false;
end;


procedure TForm1.Button9Click(Sender: TObject);
var
  buttonSelected:integer;
begin
  buttonSelected:=MyMessageDlgPos('Einstellungen auf Standardeinstellungen zurücksetzen?', mtWarning, [mbOK, mbAbort], ['Ok', 'Abbruch'], Form1.Left, 350, Form1.Top, 250);
  if buttonSelected = mrOK then
  begin
    setup_laden(Form1, pfad+'Setup\Standard_Setup.txt');
    Form1.PageControl1Change(Sender);
  end;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  panel9.Top:=300;
  BitBtn1Click(Form1);
  Fehlererkannt:=false;
end;

procedure TForm1.BitBtn10Click(Sender: TObject);
begin
  RastUebernahme(Stringgrid1.Row);
end;

procedure TForm1.BitBtn11Click(Sender: TObject);
begin
  with stringgrid1 do
  begin
    RowCount:=RowCount+1;
    cells[0,RowCount-1]:=inttostr(RowCount-1);
    RastNeu(RowCount-1);
    Col:=1;
  end;
  stringgrid1.Row:=StringGrid1.RowCount-1;
  RastEinlesen(stringgrid1.Row);
  if StringGrid1.RowCount>9 then Panel3.Visible:=false;
  RastEinlesen(stringgrid1.Row);
end;

procedure TForm1.SensorUeberwachungTimerTimer(Sender: TObject);
begin
  AlarmAusgabe('Seit min. 1 Munute kein Temperaturupdate! Sensor prüfen!');
end;

procedure TForm1.ComboBox45Change(Sender: TObject);
begin
  if Combobox45.ItemIndex=1 then verzoegerung:=50
  else if Combobox45.ItemIndex=2 then verzoegerung:=100
  else if Combobox45.ItemIndex=3 then verzoegerung:=300
  else if Combobox45.ItemIndex=4 then verzoegerung:=600
  else if Combobox45.ItemIndex=5 then verzoegerung:=1200
  else if Combobox45.ItemIndex=6 then verzoegerung:=3000
  else verzoegerung:=0;
end;

procedure TForm1.ComboBox3Change(Sender: TObject);
begin
  if Combobox3.ItemIndex=1 then verzoegerung2:=50
  else if Combobox3.ItemIndex=2 then verzoegerung2:=100
  else if Combobox3.ItemIndex=3 then verzoegerung2:=300
  else if Combobox3.ItemIndex=4 then verzoegerung2:=600
  else if Combobox3.ItemIndex=5 then verzoegerung2:=1200
  else if Combobox3.ItemIndex=6 then verzoegerung2:=3000
  else verzoegerung2:=0;
end;

procedure TForm1.Edit19Change(Sender: TObject);
begin
  if stop=false then
  begin
    if TEdit(Sender).Text='' then TEdit(Sender).Text:='0';
    stringgrid1.ColWidths[15] := strtoint(Edit16.Text)-1;
    stringgrid1.ColWidths[14] := strtoint(Edit17.Text)-1;
    stringgrid1.ColWidths[9] := strtoint(Edit19.Text)-1;
  end;
end;

procedure TForm1.BitBtn6TimerTimer(Sender: TObject); begin Form1.BitBtn6Click(Form1); end;
procedure TForm1.BitBtn6MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer); begin BitBtn6Timer.Enabled:=true; end;
procedure TForm1.BitBtn6MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer); begin BitBtn6Timer.Enabled:=false; end;

procedure TForm1.BitBtn7TimerTimer(Sender: TObject); begin Form1.BitBtn7Click(Form1); end;
procedure TForm1.BitBtn7MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer); begin BitBtn7Timer.Enabled:=true; end;
procedure TForm1.BitBtn7MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer); begin BitBtn7Timer.Enabled:=false; end;

procedure TForm1.StringGrid1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer); begin manualMoved:=true; end;

procedure TForm1.ComboBox36KeyPress(Sender: TObject; var Key: Char); begin if Key=#13 then begin Key:=#0; SendMessage(Handle, WM_NEXTDLGCTL, 0, 0); end; if not (key in [#8,#48..#57]) then key:=#0; end;

procedure TForm1.Edit96KeyPress(Sender: TObject; var Key: Char); begin if Key=#13 then begin Key:=#0; SendMessage(Handle, WM_NEXTDLGCTL, 0, 0); end; if not (key in [#8,#46,#48..#57]) then key:=#0;
end;

procedure TForm1.BitBtn13Click(Sender: TObject);
begin
  RastEinlesen(stringgrid1.Row);
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  Form1.StringGrid1.DragMode:=dmAutomatic;
  BitBtn1.Enabled:=false;
  BitBtn11.Enabled:=false;
  BitBtn16.Enabled:=false;
  BitBtn9.Enabled:=false;
  BitBtn10.Enabled:=true;
  BitBtn13.Enabled:=true;
  Form1.panel7.Color:=rgb(240,128,128);
end;

end.
