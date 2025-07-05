unit buscacep.model.util;

interface

uses
  {$DEFINE VCL}
  buscacep.controller.util, {$IFDEF VCL} Vcl.Forms {$ENDIF};

type
  TModelUtil = class(TInterfacedObject,IControllerUtil)
    private
      constructor Create;
      procedure LimpaCampos(const aForm: TForm);
    public
      destructor Destroy; override;
      class function New: IControllerUtil;
  end;

implementation

uses
  System.Classes, {$IFDEF VCL} Vcl.StdCtrls {$ENDIF};

{ TModelUtil }

constructor TModelUtil.Create;
begin
end;

destructor TModelUtil.Destroy;
begin
  inherited;
end;

procedure TModelUtil.LimpaCampos(const aForm: TForm);
var
  I: Integer;
  Component: TComponent;
begin
  for I := 0 to aForm.ComponentCount - 1 do
  begin
    Component := aForm.Components[I];
    if (Component is TEdit) then
        (Component as TEdit).Clear;
  end;
end;

class function TModelUtil.New: IControllerUtil;
begin
  Result := Self.Create;
end;

end.
