defmodule HL7.Segment.Default.PV1 do
  @moduledoc "3.4.3 PV1 - patient visit segment"
  use HL7.Segment.Spec

  require HL7.Composite.Default.PL, as: PL
  require HL7.Composite.Default.XCN, as: XCN
  require HL7.Composite.Default.CX, as: CX

  segment "PV1" do
    field :set_id,                            seq:  1, type: :integer, len: 4
    field :patient_class,                     seq:  2, type: :string, len: 1
    field :patient_point_of_care,             seq:  3, type: {PL, :point_of_care}, len: 10
    field :patient_location_facility,         seq:  3, type: {PL, :facility, :namespace_id}, len: 21
    field :admission_type,                    seq:  4, type: :string, len: 34
    field :attending_doctor_id,               seq:  7, type: {XCN, :id_number}, len: 20
    field :attending_doctor_last_name,        seq:  7, type: {XCN, :family_name}, len: 25
    field :attending_doctor_first_name,       seq:  7, type: {XCN, :given_name}, len: 25
    field :attending_doctor_authority,        seq:  7, type: {XCN, :assigning_authority, :namespace_id}, len: 21
    field :referring_doctor_id,               seq:  8, type: {XCN, :id_number}, len: 20
    field :referring_doctor_last_name,        seq:  8, type: {XCN, :family_name}, len: 25
    field :referring_doctor_first_name,       seq:  8, type: {XCN, :given_name}, len: 25
    field :referring_doctor_authority,        seq:  8, type: {XCN, :assigning_authority, :namespace_id}, len: 21
    field :hospital_service,                  seq: 10, type: :string, len: 99
    field :visit_number_id,                   seq: 19, type: {CX, :id}, len: 15
    field :visit_number_check_digit,          seq: 19, type: {CX, :check_digit}, len: 4
    field :visit_number_check_digit_scheme,   seq: 19, type: {CX, :check_digit_scheme}, len: 3
    field :visit_number_assigning_authority,  seq: 19, type: {CX, :assigning_authority, :namespace_id}, len: 21
    field :visit_number_id_type,              seq: 19, type: {CX, :id_type}, len: 5
    field :visit_number_assigning_facility,   seq: 19, type: {CX, :assigning_facility, :namespace_id}, len: 21
    field :visit_number_effective_date,       seq: 19, type: {CX, :effective_date}, len: 8
    field :visit_number_expiration_date,      seq: 19, type: {CX, :expiration_date}, len: 8
    field :readmission_indicator,             seq: 13, type: :string, len: 2
    field :discharge_diposition,              seq: 36, type: :string, len: 3
    field :admit_datetime,                    seq: 44, type: :datetime, len: 12
    field :discharge_datetime,                seq: 45, type: :datetime, len: 12
    field :visit_indicator,                   seq: 51, type: :string, len: 1
  end
end
