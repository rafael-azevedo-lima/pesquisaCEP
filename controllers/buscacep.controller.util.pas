unit buscacep.controller.util;

interface

uses
  {$DEFINE VCL}
  {$IFDEF VCL} Vcl.Forms {$ENDIF};

type
  IControllerUtil = interface
    ['{F4D6F34F-0465-47F8-9A30-3D20B016BD39}']
    procedure LimpaCampos(const aForm: TForm);
  end;

implementation

end.
