defmodule HL7.Segment.Default.PV2 do
  @moduledoc "3.4.4 PV2 - patient visit - additional information segment"
  use HL7.Segment.Spec

  require HL7.Composite.Default.CE, as: CE

  segment "PV2" do
    field :admit_reason_id,    seq: 3, type: {CE, :id}, len: 20
    field :admit_reason_text,  seq: 3, type: {CE, :text}, len: 199
    field :transfer_reason_id, seq: 4, type: {CE, :id}, len: 20
  end
end
