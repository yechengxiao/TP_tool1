object dm: Tdm
  OldCreateOrder = False
  Height = 342
  Width = 429
  object DB_Con: TADOConnection
    CommandTimeout = 10
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=tp797979;Persist Security Info=True' +
      ';User ID=ycx;Initial Catalog=ZK2015-2-6;Data Source=192.168.0.68' +
      ';Use Procedure for Prepare=1;Auto Translate=True;Packet Size=409' +
      '6;Workstation ID=DESKTOP-QMT4NK4;Use Encryption for Data=False;T' +
      'ag with column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 56
    Top = 24
  end
  object dSet_pub: TADODataSet
    Connection = DB_Con
    Parameters = <>
    Left = 56
    Top = 106
  end
  object dSource_pub: TDataSource
    DataSet = dSet_pub
    Left = 48
    Top = 180
  end
  object dSet_carcashsz: TADODataSet
    Connection = DB_Con
    CommandTimeout = 15
    Parameters = <>
    Left = 152
    Top = 112
    object dSet_carcashszcreate_operator: TStringField
      DisplayLabel = #25805#20316#21592
      FieldName = 'create_operator'
      Size = 50
    end
    object dSet_carcashszchecktime: TStringField
      DisplayLabel = #25805#20316#26085#26399
      FieldName = 'checktime'
      Size = 30
    end
    object dSet_carcashszchongZhi_count: TIntegerField
      DisplayLabel = #20805#20540#27425#25968
      FieldName = 'chongZhi_count'
    end
    object dSet_carcashsztuiKuan_count: TIntegerField
      DisplayLabel = #36864#27454#27425#25968
      FieldName = 'tuiKuan_count'
    end
    object dSet_carcashszchongZhi_amount: TBCDField
      DisplayLabel = #20805#20540#37329#39069#21512#35745
      FieldName = 'chongZhi_amount'
      Size = 2
    end
    object dSet_carcashsztuiKuan_amount: TBCDField
      DisplayLabel = #36864#27454#37329#39069#21512#35745
      FieldName = 'tuiKuan_amount'
      Size = 2
    end
    object dSet_carcashszfaKa_count: TIntegerField
      DisplayLabel = #21457#21345#27425#25968
      FieldName = 'faKa_count'
    end
    object dSet_carcashsztuiKa_count: TIntegerField
      DisplayLabel = #36864#21345#27425#25968
      FieldName = 'tuiKa_count'
    end
    object dSet_carcashsztuiKa_amount: TBCDField
      DisplayLabel = #21345#25104#26412#25903#20837
      FieldName = 'tuiKa_amount'
      Size = 2
    end
    object dSet_carcashszcost_amount: TBCDField
      DisplayLabel = #21345#25104#26412#25903#20986
      FieldName = 'cost_amount'
      Size = 2
    end
    object dSet_carcashszmanage_amount: TBCDField
      DisplayLabel = #31649#29702#36153#25903#20837
      FieldName = 'manage_amount'
      Size = 2
    end
    object dSet_carcashszhj: TBCDField
      DisplayLabel = #37329#39069#21512#35745
      FieldName = 'hj'
      Size = 2
    end
  end
  object dSource_carcashsz: TDataSource
    DataSet = dSet_carcashsz
    Left = 152
    Top = 184
  end
  object DB_Con_dev: TADOConnection
    CommandTimeout = 10
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=tp797979;Persist Security Info=True' +
      ';User ID=ycx;Initial Catalog=ZK2015-2-6;Data Source=DESKTOP-QMT4' +
      'NK4\SQLEXPRESS;Use Procedure for Prepare=1;Auto Translate=True;P' +
      'acket Size=4096;Workstation ID=DESKTOP-QMT4NK4;Use Encryption fo' +
      'r Data=False;Tag with column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 160
    Top = 32
  end
end
