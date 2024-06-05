# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"O03.0","system":"icd10"},{"code":"O65.2","system":"icd10"},{"code":"O62.4","system":"icd10"},{"code":"O33.1","system":"icd10"},{"code":"O07.0","system":"icd10"},{"code":"O03.5","system":"icd10"},{"code":"O06.0","system":"icd10"},{"code":"O05.5","system":"icd10"},{"code":"O23","system":"icd10"},{"code":"O05.0","system":"icd10"},{"code":"O33.2","system":"icd10"},{"code":"O23.3","system":"icd10"},{"code":"O08.0","system":"icd10"},{"code":"O07.5","system":"icd10"},{"code":"O23.1","system":"icd10"},{"code":"O04.0","system":"icd10"},{"code":"O06.5","system":"icd10"},{"code":"O86.2","system":"icd10"},{"code":"O23.9","system":"icd10"},{"code":"O86.1","system":"icd10"},{"code":"O65.1","system":"icd10"},{"code":"O23.0","system":"icd10"},{"code":"O23.5","system":"icd10"},{"code":"O23.4","system":"icd10"},{"code":"O86.3","system":"icd10"},{"code":"O04.5","system":"icd10"},{"code":"O33.3","system":"icd10"},{"code":"O23.2","system":"icd10"},{"code":"O65.3","system":"icd10"},{"code":"O62.0","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-pregnancy-childbirth-and-the-puerperium-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-contract---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-contract---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-contract---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
