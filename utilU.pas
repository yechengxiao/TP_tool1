unit utilU;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Forms,
  Data.Win.ADODB, Vcl.DBGrids, ClipBrd, ComObj, Vcl.Dialogs, cxGridExportLink,
  cxGrid, Vcl.StdCtrls,;

procedure Delay(dwMilliseconds: DWORD);
procedure DataSet_Open(dset: TADODataSet; sql: string);
function ExportData(cxGrid: TcxGrid): Boolean;
function DropDown_(dset: TADODataSet; combobox: TComboBox;
  sql, field: string): Boolean;

implementation

// 延时
procedure Delay(dwMilliseconds: DWORD);
var
  iStart, iStop: DWORD;
begin
  iStart := GetTickCount;
  repeat
    iStop := GetTickCount;
    Application.ProcessMessages;
  until (iStop - iStart) >= dwMilliseconds;
end;

procedure DataSet_Open(dset: TADODataSet; sql: string);
begin
  with dset do
  begin
    Close;
    CommandText := sql;
    Open;
  end;
end;

function DropDown_(dset: TADODataSet; combobox: TComboBox;
  sql, field: string): Boolean;
var
  item: string;
begin
  if (Trim(sql) = '') or (Trim(field) = '') then
  begin
    Result := False;
    Exit;
  end;

  with dset do
  begin
    Close;
    CommandText := sql;
    Open;

    combobox.Clear;
    combobox.Items.Add('');
    while not Eof do
    begin
      item := Trim(FieldByName(field).AsString);
      if item <> '' then
      begin
        combobox.Items.Add(item);
      end;
      Next;
    end;
  end;
  Result := True;
end;

function ExportData(cxGrid: TcxGrid): Boolean;
var
  // str: string;
  // i: Integer;
  // excelapp, sheet: Variant;
  SaveDialog: TSaveDialog;
begin
  try
    try
      Result := False;
      SaveDialog := TSaveDialog.Create(nil);
      with SaveDialog do
      begin
        Filter := '*.xls|*.xls';
        if Execute then
        begin
          ExportGridToExcel(SaveDialog.FileName, cxGrid, True, True,
            True, 'xls');
          Result := True;
        end;
      end;
    except
      on e: Exception do
      begin
        Application.MessageBox(PChar('出错了：' + e.Message), '提示',
          MB_OK + MB_ICONSTOP);
      end;
    end;
  finally
    SaveDialog.Free;
  end;

  {


    // lbl2.Caption:=DateTimeToStr(Now);
    str := '';
    dbGrid.DataSource.DataSet.DisableControls;

    for i := 0 to dbGrid.DataSource.DataSet.FieldCount - 1 do
    begin
    // 从dbgird取值
    // str := str + dbGrid.Columns.Items[i].Title.Caption + char(9);
    str := str + dbGrid.DataSource.DataSet.fields[i].DisplayLabel + char(9);
    end;

    str := str + #13;
    dbGrid.DataSource.DataSet.First;

    while not(dbGrid.DataSource.DataSet.Eof) do
    begin
    // 从dbgird取值
    for i := 0 to dbGrid.DataSource.DataSet.FieldCount - 1 do
    begin
    str := str + dbGrid.DataSource.DataSet.fields[i].AsString + char(9);
    // str := str + dbGrid.Columns.Items[i].Field.AsString + char(9);
    end;
    str := str + #13;
    dbGrid.DataSource.DataSet.next;

    // lbl1.Caption := IntToStr(dbGrid.DataSource.DataSet.RecNo);
    // Application.ProcessMessages;
    end;

    dbGrid.DataSource.DataSet.EnableControls;

    clipboard.Clear;
    clipboard.Open;
    clipboard.AsText := str;
    clipboard.Close;

    excelapp := CreateOleObject('Excel.Application');
    excelapp.Workbooks.add(1); // excelapp.workbooks.add(-4167);
    sheet := excelapp.Workbooks[1].Worksheets[1];
    sheet.name := 'sheet1';
    sheet.paste;
    clipboard.Clear;
    // sheet.columns.font.Name:='宋体';
    // sheet.columns.font.size:=9;
    // sheet.Columns.AutoFit;
    excelapp.visible := true;
    // lbl3.Caption:=DateTimeToStr(Now);
  }
end;

end.
