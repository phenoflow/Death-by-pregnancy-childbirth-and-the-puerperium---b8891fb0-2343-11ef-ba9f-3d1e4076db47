cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-screen---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-screen---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-hyperten---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-hyperten---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-screen---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-induction---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-induction---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-hyperten---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-presentation---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-presentation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-induction---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-abnorm---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-abnorm---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-presentation---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-compound---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-compound---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-abnorm---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-compl---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-compl---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-compound---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-origin---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-origin---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-compl---secondary/output
  large-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary:
    run: large-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-origin---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-malpo---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-malpo---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: large-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-forces---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-forces---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-malpo---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-spont---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-spont---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-forces---secondary/output
  wound-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary:
    run: wound-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-spont---secondary/output
  gestational-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary:
    run: gestational-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: wound-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-haemorrh---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-haemorrh---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: gestational-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-gravidarum---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-gravidarum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-haemorrh---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-deliv---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-deliv---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-gravidarum---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-assisted---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-assisted---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-deliv---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-headache---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-headache---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-assisted---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-specified---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-headache---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-breech---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-breech---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-specified---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-haematoma---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-haematoma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-breech---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-embolism---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-embolism---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-haematoma---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-placentae---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-placentae---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-embolism---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-polyhydramnio---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-polyhydramnio---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-placentae---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-preterm---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-preterm---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-polyhydramnio---secondary/output
  specific-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary:
    run: specific-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-preterm---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-sepsis---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-sepsis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: specific-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-hydatidiform---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-hydatidiform---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-sepsis---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-contract---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-contract---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-hydatidiform---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-direct---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-direct---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-contract---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-oedema---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-oedema---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-direct---secondary/output
  haemorrhoid-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary:
    run: haemorrhoid-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-oedema---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-continuing---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-continuing---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: haemorrhoid-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-phlebothrombosis---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-phlebothrombosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-continuing---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-surgery---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-surgery---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-phlebothrombosis---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-degree---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-degree---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-surgery---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-cervix---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-cervix---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-degree---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-stage---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-stage---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-cervix---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-growth---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-growth---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-stage---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-fluid---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-fluid---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-growth---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-intrauterine---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-intrauterine---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-fluid---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-malnutrition---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-malnutrition---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-intrauterine---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-thrombophlebitis---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-thrombophlebitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-malnutrition---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-pelvi---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-pelvi---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-thrombophlebitis---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-ectop---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-ectop---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-pelvi---secondary/output
  secondary-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary:
    run: secondary-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-ectop---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-preexisting---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-preexisting---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: secondary-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-uterus---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-uterus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-preexisting---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-obstruct---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-obstruct---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-uterus---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-disruption---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-disruption---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-obstruct---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-shock---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-shock---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-disruption---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-rotation---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-rotation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-shock---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-prolonged---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-prolonged---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-rotation---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-rupture---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-rupture---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-prolonged---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-matern---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-matern---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-rupture---secondary/output
  medical-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary:
    run: medical-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-matern---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-preeclampsia---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-preeclampsia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: medical-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-isoimmunization---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-isoimmunization---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-preeclampsia---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-viable---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-viable---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-isoimmunization---secondary/output
  vaginal-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary:
    run: vaginal-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-viable---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-failure---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-failure---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: vaginal-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-associated---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-associated---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-failure---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-trauma---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-trauma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-associated---secondary/output
  false-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary:
    run: false-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-trauma---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-mellitus---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-mellitus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: false-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-follow---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-follow---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-mellitus---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-onset---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-onset---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-follow---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-triplet---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-triplet---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-onset---secondary/output
  pregnancy---secondary:
    run: pregnancy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-triplet---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-occur---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-occur---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: pregnancy---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-nipple---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-nipple---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-occur---secondary/output
  excess-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary:
    run: excess-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-nipple---secondary/output
  abdominal-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary:
    run: abdominal-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: excess-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-malformation---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-malformation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: abdominal-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-defect---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-defect---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-malformation---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-inertium---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-inertium---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-defect---secondary/output
  previous-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary:
    run: previous-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-inertium---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-first---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-first---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: previous-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-shoulder---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-shoulder---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-first---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-attempt---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-attempt---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-shoulder---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-meconium---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-meconium---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-attempt---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-pyrexia---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-pyrexia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-meconium---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-abort---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-abort---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-pyrexia---secondary/output
  other-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary:
    run: other-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-abort---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-weight---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-weight---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: other-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary/output
  death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-delayed---secondary:
    run: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-delayed---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-weight---secondary/output
  perineal-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary:
    run: perineal-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-delayed---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: perineal-death-by-pregnancy-childbirth-and-the-puerperium-natural-cause---secondary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
