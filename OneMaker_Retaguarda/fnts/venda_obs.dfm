object frmvenda_obs: Tfrmvenda_obs
  Left = 466
  Top = 511
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'VENDA | Observa'#231#245'es'
  ClientHeight = 96
  ClientWidth = 504
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = -2
    Top = 50
    Width = 506
    Height = 2
  end
  object Edit1: TEdit
    Left = 16
    Top = 16
    Width = 473
    Height = 21
    TabOrder = 0
    OnEnter = Edit1Enter
    OnExit = Edit1Exit
    OnKeyPress = Edit1KeyPress
  end
  object bcancelar: TAdvGlowButton
    Left = 199
    Top = 54
    Width = 126
    Height = 41
    Caption = 'ESC | Cancelar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ImageIndex = 49
    FocusType = ftHot
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    ParentFont = False
    Picture.Data = {
      89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
      F8000000097048597300000EC400000EC401952B0E1B000002E9494441544889
      CD945B6C0C6114C77FDFEE543B5B8968DAD0150915D7A5AE21DA74A984266E91
      BEE285884BB48D884413A94B88F0865825C183274523080F08DDB0B66949088A
      54DB905851EDA2ECAC6ECDF1D0BDCC140F6C88934C3233BF39E77FBEFFF9E653
      DEED97BF002E7E120DFB97AA79D557D2E21AE0121101504A29EB7DFCBBB4B806
      30D63D849395DE44825A7BD84F6BE853B29374B806E0F50C5758C2EB196E2B90
      0ED7E2EF4444AC4BB425A4C335FE72F40BA8D4CC9452EA87FED2E0FD02326089
      32A0441AFC1F59F4D705FEF319DC40782422A2949A2C225E04DD26D063C49209
      4A29D563C46CF57FC205380E70FAC5DE6DBC6061BB0F05EC28B8106CEB316235
      406552A0EE4E9BD4DD69FBD55933909BC0BAA32D7B2E362FA911E570D89A695E
      328312A7D37DCEB3F341CA2250F9435D94178DA63ED0AE42E1C800936DFC44CD
      BDEA8B466FACEB5B6F14891A64E4E401D0DBF50E879E0D99996F0E3DD9351296
      F60BE40F75716443119D1FA39416E653511BE0ED072359DDC2BF9616E6D7BCF2
      F7757DEBEB65CECD67BCBF7E89962DABC0143CB5E7C9F196D1B86022E88ED780
      D200CA8B46D1F931CAA66377F16D2CA6BC6814BEAB2D49010BF79F69DDE7560E
      85F9F90BE17BB7C85DB89C82EA833832B3C8F196D1DD700D331A41CBCEE6FEB2
      59D33480FA4007A5856E7C1B8BC91B92457DA0C3E68F853F662B65A018949BCB
      E335CB1977E00423566E002054778AD6DD55B80AC62752BD1A40281CA1A23690
      F09850388265C6566ECE05677C2CA004F36BCA4A33160365DBE14A0322801E0A
      47F05D7D9ADC45A48E5C2B9F341776F70FB413CFF17A724A16113A7B1287EE62
      C4CAF5640E73D3BA737362F04144E4B7AFA6C5D325583A5E4444BA6E5F13FFA4
      C1E29F3058BA1B1B444424387FAC342D9E2E22F26767919EA18D31447FD9B860
      0266D4887B2E3CAB5A8D43D771EAD964389D530054CA91DF8B272B668F33627D
      CFED3F9A20A690E1744E9B7AA9E9615A0289B8BF6C563150127F0CCEBCDC7CDB
      CABF03DAB5D9F78C9DC2190000000049454E44AE426082}
    Transparent = True
    TabOrder = 1
    OnClick = bcancelarClick
    Appearance.BorderColor = 12179676
    Appearance.BorderColorHot = clHighlight
    Appearance.BorderColorDown = clHighlight
    Appearance.BorderColorChecked = clBlack
    Appearance.ColorTo = 12179676
    Appearance.ColorChecked = 12179676
    Appearance.ColorCheckedTo = 12179676
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 11899524
    Appearance.ColorDownTo = 11899524
    Appearance.ColorHot = 15717318
    Appearance.ColorHotTo = 15717318
    Appearance.ColorMirror = 12179676
    Appearance.ColorMirrorTo = 12179676
    Appearance.ColorMirrorHot = 15717318
    Appearance.ColorMirrorHotTo = 15717318
    Appearance.ColorMirrorDown = 11899524
    Appearance.ColorMirrorDownTo = 11899524
    Appearance.ColorMirrorChecked = 12179676
    Appearance.ColorMirrorCheckedTo = 12179676
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
  end
  object PopupMenu1: TPopupMenu
    Left = 392
    Top = 48
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
  end
end
