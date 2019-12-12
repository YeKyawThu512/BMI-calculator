unit calculator_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;
type
   TfrmForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    edtName: TEdit;
    edtAge: TEdit;
    edtWeight: TEdit;
    edtInc: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    BtnCompute: TButton;
    cbxGender: TComboBox;
    edtFeet: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    BitBtn1: TBitBtn;
    cbx1: TComboBox;
    procedure BtnComputeClick(Sender: TObject);
    procedure edtNameKeyPress(Sender: TObject; var Key: Char);
    procedure BmbRestClick(Sender: TObject);
    procedure cbx1Select(Sender: TObject);
    procedure edtAgeExit(Sender: TObject);
    procedure edtAgeClick(Sender: TObject);
    procedure edtFeetClick(Sender: TObject);
    procedure edtWeightClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtIncClick(Sender: TObject);
    procedure edtIncExit(Sender: TObject);
private
    { Private declarations }
public

end;

var
  frmForm: TfrmForm;

implementation
  {$R *.dfm}

procedure TfrmForm.BmbRestClick(Sender: TObject);
begin
 edtName.Clear;
 edtAge.Text:='1';
 cbxGender.ItemIndex:=0;
 edtFeet.Text:='0';
 edtInc.Text:='0';
 edtWeight.Text:='0';
end;

procedure TfrmForm.BtnComputeClick(Sender: TObject);
Var inches,totalinc,Weight,res:Double;
    bmi:String;
    begin     //check for blank field
       if(edtFeet.Text='') and (edtWeight.Text='') and (edtInc.Text='') then
       begin
         ShowMessage('Please fill your height and weight values.');
         edtFeet.Text :='0';
         edtWeight.Text :='0';
         edtInc.Text :='0';
         edtAge.Text :='1';
       end else if (edtFeet.Text='') and (edtWeight.Text='')then
       begin
         edtFeet.Text :='0';
         edtWeight.Text :='0';
       end else if(edtFeet.Text='') and (edtInc.Text='')then
       begin
         ShowMessage('Please fill your height values.');
         edtFeet.Text :='0';
         edtInc.Text :='0';
       end else if(edtWeight.Text='') and (edtInc.Text='')then
       begin
         ShowMessage('Please fill your weight value.');
         edtWeight.Text :='0';
         edtInc.Text :='0';
       end else if(edtInc.Text='')then
       begin
         edtInc.Text :='0';

       end else if(edtAge.Text='')then
       begin
         edtAge.Text :='1';
       end else if(edtFeet.Text='')then
       begin
         edtFeet.Text :='0';
       end else if(edtWeight.Text='')then
       begin
         edtWeight.Text :='0';
       end;   //finish to check blank field


       {---calculation---}
       if(cbx1.ItemIndex=0)and(StrToFloat(edtFeet.Text)=0)and(StrToFloat(edtWeight.Text)=0)then
        begin
           ShowMessage('Please put your height and weight values.');
           edtFeet.SetFocus;
           edtFeet.Clear;
        end else if(StrToFloat(edtFeet.Text)=0)then
        begin
           ShowMessage('Please put your height value.');
           edtFeet.SetFocus;
           edtFeet.Clear;
        end else if(StrToFloat(edtWeight.Text)=0)then
        begin
           ShowMessage('Please put your weight value.');
           edtWeight.SetFocus;
           edtWeight.Clear;
        end else if(cbx1.ItemIndex=0)then
        begin
                                   //calculate bmi
          inches :=StrToFloat(edtFeet.Text)*12;
          totalInc := inches+StrToFloat(edtInc.Text);
          Weight := StrToFloat(edtWeight.Text)*703;
          res :=Round(Weight/Sqr(totalInc));
        end else if(cbx1.ItemIndex=1)then
         begin                    //calculate metric
         res :=StrToInt(edtWeight.Text)/Sqr(StrToInt(edtFeet.text));
         res :=Round(res);
        end ;
        {---calculation ---}

        begin
         bmi :='';                       //check condition and take bmi value
        if(res>=1)and(res<=18)then bmi:=' you are under weight.';
        if(res>=18.5)and(res<=24.9)then bmi:=' you are normal weight.';
        if(res>=25)and(res<=29)then bmi:=' you are over weight.';
        if(res>=30)then bmi:=' you are suffering an obesity.';

        if (cbxGender.Text='Male') then  //display
        begin
         if (res>=1) then
        ShowMessage('Dear Mr. '+edtName.Text+', your BMI is '+
        FloatToStr(res)+' . '+'Based on the fact that you provided,'+bmi);
        end else
        begin
        if (res>=1) then
        ShowMessage('Dear Ms. '+edtName.Text+', your BMI is '+
        FloatToStr(res)+'.'+'Based on the fact that you provided,'+bmi);
        end;
       end;


    end;

procedure TfrmForm.cbx1Select(Sender: TObject);
begin
   if (cbx1.ItemIndex=1) then
   begin
   label11.Caption := '(meter)';
   edtInc.Visible := false;
   label12.Visible := false;
   label13.Caption := '(kilogram)';
   end else if (cbx1.ItemIndex=0) then
   begin
   label11.Caption := '(feet)';
   edtInc.Visible := true;
   label12.visible := true;
   label13.Caption := '(pounds)';
   end;
end;

procedure TfrmForm.edtAgeClick(Sender: TObject);
begin
  edtAge.Clear;
end;

procedure TfrmForm.edtAgeExit(Sender: TObject);
begin
    if(StrToInt(edtAge.Text)>=1)and(StrtoInt(edtAge.Text)<=120) then
   begin
     edtAge.Text := edtAge.Text;
   end else
   begin
     edtAge.Text := '1';
     ShowMessage('Age Must be Under 120');
     edtAge.Clear;
     edtAge.SetFocus;
   end;
end;

procedure TfrmForm.edtFeetClick(Sender: TObject);
begin
 edtFeet.Clear;
end;

procedure TfrmForm.edtIncClick(Sender: TObject);
begin
  edtInc.Clear;
end;

procedure TfrmForm.edtIncExit(Sender: TObject);
begin
  if(StrtoInt(edtInc.Text)<=11) then
   begin
     edtInc.Text :=edtInc.Text;
   end else
   begin
     edtInc.Text :='0';
     ShowMessage('Inches do not have that much');
     edtInc.Clear;
     edtInc.SetFocus;

   end;
end;

procedure TfrmForm.edtNameKeyPress(Sender: TObject; var Key:Char);


begin
   if(Key IN ['0'..'9','@','!','$','%','^','&','*','?','.','/']) then
    begin
    showmessage('Must contain alphabets only');
    Key :=#0;
    end else

end;

procedure TfrmForm.edtWeightClick(Sender: TObject);
begin
 edtWeight.Clear;
end;

procedure TfrmForm.FormCreate(Sender: TObject);
begin
         edtFeet.Text :='0';
         edtWeight.Text :='0';
         edtInc.Text :='0';
         edtAge.Text :='1';
end;

end.
