# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"O75.8","system":"icd10"},{"code":"O68.0","system":"icd10"},{"code":"O07.3","system":"icd10"},{"code":"O22.9","system":"icd10"},{"code":"O47.0","system":"icd10"},{"code":"O29.1","system":"icd10"},{"code":"O29.3","system":"icd10"},{"code":"O29.4","system":"icd10"},{"code":"O47.1","system":"icd10"},{"code":"O05.1","system":"icd10"},{"code":"O90.9","system":"icd10"},{"code":"O31.8","system":"icd10"},{"code":"O03.3","system":"icd10"},{"code":"O74.5","system":"icd10"},{"code":"O89.2","system":"icd10"},{"code":"O01.1","system":"icd10"},{"code":"O89.3","system":"icd10"},{"code":"O29.0","system":"icd10"},{"code":"O68.9","system":"icd10"},{"code":"O31","system":"icd10"},{"code":"O90.8","system":"icd10"},{"code":"O04.4","system":"icd10"},{"code":"O87.9","system":"icd10"},{"code":"O05.4","system":"icd10"},{"code":"O06.9","system":"icd10"},{"code":"O21.8","system":"icd10"},{"code":"O03.2","system":"icd10"},{"code":"O74.4","system":"icd10"},{"code":"O04.3","system":"icd10"},{"code":"O87.8","system":"icd10"},{"code":"O75.5","system":"icd10"},{"code":"O29","system":"icd10"},{"code":"O90.3","system":"icd10"},{"code":"O07.2","system":"icd10"},{"code":"O06.8","system":"icd10"},{"code":"O89","system":"icd10"},{"code":"O22","system":"icd10"},{"code":"O22.1","system":"icd10"},{"code":"O05.3","system":"icd10"},{"code":"O06.4","system":"icd10"},{"code":"O75.3","system":"icd10"},{"code":"O04.2","system":"icd10"},{"code":"O90.5","system":"icd10"},{"code":"O89.9","system":"icd10"},{"code":"O75","system":"icd10"},{"code":"O22.0","system":"icd10"},{"code":"O90","system":"icd10"},{"code":"O90.2","system":"icd10"},{"code":"O89.6","system":"icd10"},{"code":"O89.1","system":"icd10"},{"code":"O87","system":"icd10"},{"code":"O05.9","system":"icd10"},{"code":"O31.0","system":"icd10"},{"code":"O74.9","system":"icd10"},{"code":"O89.4","system":"icd10"},{"code":"O22.8","system":"icd10"},{"code":"O29.8","system":"icd10"},{"code":"O74","system":"icd10"},{"code":"O89.8","system":"icd10"},{"code":"O07.4","system":"icd10"},{"code":"O29.9","system":"icd10"},{"code":"O74.0","system":"icd10"},{"code":"O74.7","system":"icd10"},{"code":"O75.0","system":"icd10"},{"code":"O75.6","system":"icd10"},{"code":"O75.9","system":"icd10"},{"code":"O29.6","system":"icd10"},{"code":"O03.4","system":"icd10"},{"code":"O68","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-pregnancy-childbirth-and-the-puerperium-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-compl---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-compl---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-compl---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
