defmodule HL7.Segment.Default.PID do
  @moduledoc "3.4.2 PID - patient identification segment"
  use HL7.Segment.Spec

  require HL7.Composite.Default.CX, as: CX
  require HL7.Composite.Default.XPN, as: XPN

  segment "PID" do
    field :set_id,                                seq:  1, type: :integer, len: 4
    field :patient_id,                            seq:  3, rep: 1, type: {CX, :id}, len: 20
    field :assigning_authority_id,                seq:  3, rep: 1, type: {CX, :assigning_authority, :namespace_id}, len: 6
    field :assigning_authority_universal_id,      seq:  3, rep: 1, type: {CX, :assigning_authority, :universal_id}, len: 6
    field :assigning_authority_universal_id_type, seq:  3, rep: 1, type: {CX, :assigning_authority, :universal_id_type}, len: 10
    field :id_type,                               seq:  3, rep: 1, type: {CX, :id_type}, len: 2
    field :patient_document_id,                   seq:  3, rep: 2, type: {CX, :id}, len: 20
    field :patient_document_id_type,              seq:  3, rep: 2, type: {CX, :id_type}, len: 2
    field :last_name,                             seq:  5, type: {XPN, :family_name, :surname}, len: 25
    field :first_name,                            seq:  5, type: {XPN, :given_name}, len: 25
    field :date_of_birth,                         seq:  7, type: :datetime, len: 14
    field :administrative_sex,                    seq:  8, type: :string, len: 1
    #FIXME: race data type is CE
    field :race,                                  seq: 10, type: :string, len: 25
    #FIXME: species_code is type CWE
    field :species_code,                          seq: 35, type: :string, len: 25
    #FIXME: breed_code is type CWE
    field :breed_code,                            seq: 36, type: :string, len: 25
  end
end
