object frmForm: TfrmForm
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'BMI Calculator'
  ClientHeight = 371
  ClientWidth = 794
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clBackground
  Font.Height = -11
  Font.Name = 'Default'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PopupMode = pmAuto
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 70
    Top = 84
    Width = 46
    Height = 21
    Caption = 'Name'
    Color = clBlack
    Font.Charset = THAI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'AlgerianBasD'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label1: TLabel
    Left = 86
    Top = 122
    Width = 30
    Height = 21
    Caption = 'Age'
    Font.Charset = THAI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'AlgerianBasD'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 61
    Top = 165
    Width = 55
    Height = 21
    Caption = 'Gender'
    Font.Charset = THAI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'AlgerianBasD'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 60
    Top = 249
    Width = 56
    Height = 21
    Caption = 'Weight'
    Font.Charset = THAI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'AlgerianBasD'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 64
    Top = 202
    Width = 52
    Height = 21
    Caption = 'Height'
    Font.Charset = THAI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'AlgerianBasD'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 207
    Top = 202
    Width = 42
    Height = 21
    Caption = '(feet)'
    Font.Charset = THAI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'AlgerianBasD'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 341
    Top = 202
    Width = 61
    Height = 21
    Caption = '(inches)'
    Font.Charset = THAI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'AlgerianBasD'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 280
    Top = 249
    Width = 69
    Height = 21
    Caption = '(pounds)'
    Font.Charset = THAI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'AlgerianBasD'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 794
    Height = 57
    Align = alTop
    BevelInner = bvLowered
    Caption = 'BMI Calculator'
    Color = clTeal
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'AlgerianBasD'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 416
    Top = 73
    Width = 360
    Height = 209
    BevelInner = bvLowered
    Color = clTeal
    ParentBackground = False
    TabOrder = 1
    object Label6: TLabel
      Left = 128
      Top = 4
      Width = 122
      Height = 23
      Alignment = taCenter
      Caption = 'BMI Categories'
      Font.Charset = THAI_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'AlgerianBasD'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 33
      Top = 43
      Width = 167
      Height = 20
      Caption = 'Under Weight   =< 18.5'
      Font.Charset = THAI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'AlgerianBasD'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 33
      Top = 167
      Width = 268
      Height = 20
      Caption = 'Obesity               =BMI of 30 or greater'
      Font.Charset = THAI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'AlgerianBasD'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 32
      Top = 123
      Width = 165
      Height = 20
      Caption = 'Over Weight      =25-29'
      Font.Charset = THAI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'AlgerianBasD'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 33
      Top = 81
      Width = 187
      Height = 20
      Caption = 'Normal Weight=18.5-24.9'
      Font.Charset = THAI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'AlgerianBasD'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object edtName: TEdit
    Left = 145
    Top = 87
    Width = 129
    Height = 21
    TabOrder = 2
    OnKeyPress = edtNameKeyPress
  end
  object edtAge: TEdit
    Left = 145
    Top = 124
    Width = 129
    Height = 21
    NumbersOnly = True
    TabOrder = 3
    OnClick = edtAgeClick
    OnExit = edtAgeExit
  end
  object edtWeight: TEdit
    Left = 145
    Top = 252
    Width = 129
    Height = 21
    NumbersOnly = True
    TabOrder = 4
    OnClick = edtWeightClick
  end
  object edtInc: TEdit
    Left = 279
    Top = 204
    Width = 56
    Height = 21
    NumbersOnly = True
    ParentShowHint = False
    ShowHint = False
    TabOrder = 5
    OnClick = edtIncClick
  end
  object BtnCompute: TButton
    Left = 295
    Top = 320
    Width = 130
    Height = 33
    Caption = 'Compute BMI'
    Font.Charset = THAI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'AlgerianBasD'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = BtnComputeClick
  end
  object cbxGender: TComboBox
    Left = 145
    Top = 162
    Width = 64
    Height = 21
    Font.Charset = THAI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'AlgerianBasD'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    Text = 'Male'
    Items.Strings = (
      'Male'
      'Female')
  end
  object edtFeet: TEdit
    Left = 145
    Top = 204
    Width = 56
    Height = 21
    NumbersOnly = True
    TabOrder = 8
    OnClick = edtFeetClick
  end
  object BitBtn1: TBitBtn
    Left = 701
    Top = 326
    Width = 75
    Height = 25
    Caption = '&Reset'
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 9
    OnClick = BmbRestClick
  end
  object cbx1: TComboBox
    Left = 11
    Top = 328
    Width = 105
    Height = 21
    ItemIndex = 0
    TabOrder = 10
    Text = 'Standard'
    OnChange = cbx1Select
    OnSelect = cbx1Select
    Items.Strings = (
      'Standard'
      'Metric')
  end
end
