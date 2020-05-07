needs "Standard Libs/Units"
needs "Standard Libs/CommonInputOutputNames"

module PCRCompositionDefinitions
  
  include Units
  include CommonInputOutputNames

  POLYMERASE = "Polymerase"
  POLYMERASE_SAMPLE = "Kapa HF Master Mix"
  POLYMERASE_OBJECT = "Enzyme Stock"
  DYE = "Dye"
  DYE_SAMPLE = "Eva Green"
  DYE_OBJECT = "Screw Cap Tube"
  WATER = "Molecular Grade Water"
  MASTER_MIX = "Master Mix"

  PRIMER_PROBE_MIX = "Combined Primer/Probe Mix"

  COMPONENTS = {
    # qPCR2: 2nd qPCR in NGS prep.
    "qPCR1" => {
      polymerase:     {input_name: POLYMERASE,        qty: 16,    units: MICROLITERS,
                       sample_name: POLYMERASE_SAMPLE, 
                       object_name: POLYMERASE_OBJECT},
      forward_primer: {input_name: FORWARD_PRIMER,    qty: 0.16,  units: MICROLITERS},
      reverse_primer: {input_name: REVERSE_PRIMER,    qty: 0.16,  units: MICROLITERS},
      dye:            {input_name: DYE,               qty: 1.6,   units: MICROLITERS,
                       sample_name: DYE_SAMPLE,
                       object_name: DYE_OBJECT},
      water:          {input_name: WATER,             qty: 6.58,  units: MICROLITERS},
      template:       {input_name: TEMPLATE,          qty: 7.5,   units: MICROLITERS}
    },

    # qPCR2: 2nd qPCR in NGS prep. reverse primer is indexed primer.
    "qPCR2" => {
      polymerase:     {input_name: POLYMERASE,        qty: 25,    units: MICROLITERS,
                       sample_name: POLYMERASE_SAMPLE, 
                       object_name: POLYMERASE_OBJECT},
      forward_primer: {input_name: FORWARD_PRIMER,    qty: 2.5,   units: MICROLITERS},
      reverse_primer: {input_name: REVERSE_PRIMER,    qty: 2.5,   units: MICROLITERS},
      dye:            {input_name: DYE,               qty: 2.5,   units: MICROLITERS,
                       sample_name: DYE_SAMPLE,
                       object_name: DYE_OBJECT},
      water:          {input_name: WATER,             qty: 15.5,  units: MICROLITERS},
      template:       {input_name: TEMPLATE,          qty: 2,     units: MICROLITERS}
    },

    # LIBqPCR1: 1st qPCR in Libray prep. if sublibrary primers exist they are used here.
    "lib_qPCR1" => {
      polymerase:     {input_name: POLYMERASE,        qty: 12.5,  units: MICROLITERS,
                       sample_name: POLYMERASE_SAMPLE, 
                       object_name: POLYMERASE_OBJECT},
      forward_primer: {input_name: FORWARD_PRIMER,    qty: 0.75,  units: MICROLITERS},
      reverse_primer: {input_name: REVERSE_PRIMER,    qty: 0.75,  units: MICROLITERS},
      dye:            {input_name: DYE,               qty: 1.25,  units: MICROLITERS,
                       sample_name: DYE_SAMPLE,
                       object_name: DYE_OBJECT},
      water:          {input_name: WATER,             qty: 8.75,  units: MICROLITERS},
      template:       {input_name: TEMPLATE,          qty: 1,     units: MICROLITERS}
    },

    # LIBqPCR2: 2nd qPCR in Libray prep. overhangs compatible with cloning vector are added here.
    "lib_qPCR2" => {
      polymerase:     {input_name: POLYMERASE,        qty: 25,    units: MICROLITERS,
                       sample_name: POLYMERASE_SAMPLE, 
                       object_name: POLYMERASE_OBJECT},
      forward_primer: {input_name: FORWARD_PRIMER,    qty: 1.5,   units: MICROLITERS},
      reverse_primer: {input_name: REVERSE_PRIMER,    qty: 1.5,   units: MICROLITERS},
      dye:            {input_name: DYE,               qty: 2.5,   units: MICROLITERS,
                       sample_name: DYE_SAMPLE,
                       object_name: DYE_OBJECT},
      water:          {input_name: WATER,             qty: 17.5,  units: MICROLITERS},
      template:       {input_name: TEMPLATE,          qty: 2,     units: MICROLITERS}
    },

    # CDC COVID-19 detection protocol
    "CDC_TaqPath_CG" => {
      water:             {input_name: WATER,             qty: 8.5,  units: MICROLITERS},
      primer_probe_mix:  {input_name: PRIMER_PROBE_MIX,  qty: 1.5,  units: MICROLITERS},
      master_mix:        {input_name: MASTER_MIX,        qty: 5.0,  units: MICROLITERS,
                          sample_name: "TaqPath 1-Step RT-qPCR Master Mix (4x)"},
      template:          {input_name: TEMPLATE,          qty: 5.0,  units: MICROLITERS}
    },

    # CDC COVID-19 detection protocol
    "CDC_qScript_XLT_ToughMix" => {
      water:             {input_name: WATER,             qty: 3.5,  units: MICROLITERS},
      primer_probe_mix:  {input_name: PRIMER_PROBE_MIX,  qty: 1.5,  units: MICROLITERS},
      master_mix:        {input_name: MASTER_MIX,        qty: 10,   units: MICROLITERS,
                          sample_name: "qScript XLT One-Step RT-qPCR ToughMix (2X)"},
      template:          {input_name: TEMPLATE,          qty: 5.0,  units: MICROLITERS}
    },

    # CDC COVID-19 detection protocol
    "CDC_UltraPlex_ToughMix" => {
      water:             {input_name: WATER,             qty: 8.5,  units: MICROLITERS},
      primer_probe_mix:  {input_name: PRIMER_PROBE_MIX,  qty: 1.5,  units: MICROLITERS},
      master_mix:        {input_name: MASTER_MIX,        qty: 5.0,  units: MICROLITERS,        
                          sample_name: "UltraPlex 1-Step ToughMix (4X)"},
      template:          {input_name: TEMPLATE,          qty: 5.0,  units: MICROLITERS}
    },

    # CDC COVID-19 detection protocol
    "CDC_GoTaq_Probe_1-Step" => {
      water:             {input_name: WATER,             qty: 3.1,  units: MICROLITERS},
      primer_probe_mix:  {input_name: PRIMER_PROBE_MIX,  qty: 1.5,  units: MICROLITERS},
      master_mix:        {input_name: MASTER_MIX,        qty: 10,   units: MICROLITERS,        
                          sample_name: "GoTaq Probe qPCR Master Mix with dUTP"},
      rt_mix:            {input_name: "RT Mix",          qty: 0.4,  units: MICROLITERS,        
                          sample_name: "Go Script RT Mix for 1-Step RT-qPCR"},
      template:          {input_name: TEMPLATE,          qty: 5.0,  units: MICROLITERS}
    }
  }

  def get_composition_def(name:)
    PCRCompositionDefinitions::COMPONENTS[name]
  end

end