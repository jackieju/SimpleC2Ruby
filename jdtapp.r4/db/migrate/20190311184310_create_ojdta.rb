class CreateOjdta < ActiveRecord::Migration
  def change
    create_table :ojdta do |t|
      t.integer :BatchNum
      t.integer :TransId
      t.string :BtfStatus
      t.string :TransType
      t.string :BaseRef
      t.date :RefDate
      t.string :Memo
      t.string :Ref1
      t.string :Ref2
      t.integer :CreatedBy
      t.float :LocTotal
      t.float :FcTotal
      t.float :SysTotal
      t.string :TransCode
      t.string :OrignCurr
      t.float :TransRate
      t.integer :BtfLine
      t.string :TransCurr
      t.string :Project
      t.date :DueDate
      t.date :TaxDate
      t.string :PCAddition
      t.integer :FinncPriod
      t.string :DataSource
      t.date :UpdateDate
      t.date :CreateDate
      t.integer :UserSign
      t.integer :UserSign2
      t.string :RefndRprt
      t.integer :LogInstanc
      t.string :ObjType
      t.string :Indicator
      t.string :AdjTran
      t.string :RevSource
      t.date :StornoDate
      t.integer :StornoToTr
      t.string :AutoStorno
      t.string :Corisptivi
      t.date :VatDate
      t.string :StampTax
      t.integer :Series
      t.integer :Number
      t.string :AutoVAT
      t.integer :DocSeries
      t.string :FolioPref
      t.integer :FolioNum
      t.integer :CreateTime
      t.string :BlockDunn
      t.string :ReportEU
      t.string :Report347
      t.string :Printed
      t.string :DocType
      t.integer :AttNum
      t.string :GenRegNo
      t.integer :RG23APart2
      t.integer :RG23CPart2
      t.integer :MatType
      t.string :Creator
      t.string :Approver
      t.integer :Location
      t.integer :SeqCode
      t.integer :Serial
      t.string :SeriesStr
      t.string :SubStr
      t.string :AutoWT
      t.float :WTSum
      t.float :WTSumSC
      t.float :WTSumFC
      t.float :WTApplied
      t.float :WTAppliedS
      t.float :WTAppliedF
      t.float :BaseAmnt
      t.float :BaseAmntSC
      t.float :BaseAmntFC
      t.float :BaseVtAt
      t.float :BaseVtAtSC
      t.float :BaseVtAtFC
      t.string :VersionNum
      t.integer :BaseTrans
      t.string :ResidenNum
      t.string :OperatCode
      t.string :Ref3
      t.string :SSIExmpt
      t.text :SignMsg
      t.text :SignDigest
      t.string :CertifNum
      t.integer :KeyVersion
      t.integer :CUP
      t.integer :CIG
      t.string :SupplCode
      t.integer :SPSrcType
      t.integer :SPSrcID
      t.integer :SPSrcDLN
      t.string :DeferedTax
      t.integer :AgrNo
      t.integer :SeqNum

      t.timestamps null: false
    end
  end
end
