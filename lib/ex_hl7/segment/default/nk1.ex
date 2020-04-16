defmodule HL7.Segment.Default.NK1 do
  @moduledoc "NK1 - Next of Kin / Associated Parties"
  use HL7.Segment.Spec

  require HL7.Composite.Default.XPN, as: XPN
  require HL7.Composite.Default.XAD, as: XAD
  require HL7.Composite.Default.CX,  as: CX
  require HL7.Composite.Default.XTN, as: XTN

  segment "NK1" do
    field :set_id,                                        seq:  1, type: :integer, len: 4
    field :last_name,                                     seq:  2, type: {XPN, :family_name, :surname}, len: 25
    field :first_name,                                    seq:  2, type: {XPN, :given_name}, len: 25
    field :street,                                        seq:  4, type: {XAD, :street_address}, len: 20
    field :other_designation,                             seq:  4, type: {XAD, :other_designation}, len: 20
    field :city,                                          seq:  4, type: {XAD, :city}, len: 30
    field :state,                                         seq:  4, type: {XAD, :state}, len: 1
    field :postal_code,                                   seq:  4, type: {XAD, :postal_code}, len: 10
    field :country_code,                                  seq:  4, type: {XAD, :country}, len: 3
    field :address_type,                                  seq:  4, type: {XAD, :address_type}, len: 1
    field :phone_number_telephone_number,                 seq:  5, type: {XTN, :formatted_phone_number}, len: 25
    field :phone_number_telecom_use_code,                 seq:  5, type: {XTN, :telecom_use_code}, len: 3
    field :phone_number_telecom_equipment_type,           seq:  5, type: {XTN, :telecom_equipment_type}, len: 8
    field :phone_number_email,                            seq:  5, type: {XTN, :email}, len: 320
    field :business_phone_number_telephone_number,        seq:  6, type: {XTN, :formatted_phone_number}, len: 25
    field :business_phone_number_telecom_use_code,        seq:  6, type: {XTN, :telecom_use_code}, len: 3
    field :business_phone_number_telecom_equipment_type,  seq:  6, type: {XTN, :telecom_equipment_type}, len: 8
    field :business_phone_number_email,                   seq:  6, type: {XTN, :email}, len: 320
    field :next_of_kin_identifiers_id,                    seq: 33, type: {CX, :id}, len: 15
    field :next_of_kin_identifiers_check_digit,           seq: 33, type: {CX, :check_digit}, len: 4
    field :next_of_kin_identifiers_check_digit_scheme,    seq: 33, type: {CX, :check_digit_scheme}, len: 3
    field :next_of_kin_identifiers_assigning_authority,   seq: 33, type: {CX, :assigning_authority, :namespace_id}, len: 21
    field :next_of_kin_identifiers_id_type,               seq: 33, type: {CX, :id_type}, len: 5
    field :next_of_kin_identifiers_assigning_facility,    seq: 33, type: {CX, :assigning_facility, :namespace_id}, len: 21
    field :next_of_kin_identifiers_effective_date,        seq: 33, type: {CX, :effective_date}, len: 8
    field :next_of_kin_identifiers_expiration_date,       seq: 33, type: {CX, :expiration_date}, len: 8
  end

end
