const totalParsedValues = {{fileDropzone1.parsedValue[0]['UPDATED EXAMPLE']}}
const scannedBarcode = totalParsedValues[0].__EMPTY
const entries = totalParsedValues.slice(3).map((entry) => {
  return {
        rack_barcode: scannedBarcode,
        well_position: entry['Example rack format'],
        subject_id: entry['__EMPTY'],
        nucleic_acid_concentration: entry['__EMPTY_1'],
        volume_submitted: entry['__EMPTY_2'],
        sample_name:entry['__EMPTY_3'],
        tube_barcode: entry['__EMPTY_4'],
        lims_specimen_type:entry['__EMPTY_5'],
        actual_specimen_type: entry['__EMPTY_6'],
        a260_a280: entry['__EMPTY_7'],
        a260_a230: entry['__EMPTY_8'],
        rna_contamination: entry['__EMPTY_9'],
        dna_rna_integrity_number:entry['__EMPTY_10'],
        notes: entry['__EMPTY_11'],
  }
})
return entries