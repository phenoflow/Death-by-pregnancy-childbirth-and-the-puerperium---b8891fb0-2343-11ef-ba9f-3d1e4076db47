# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"O03.6","system":"icd10"},{"code":"O69.9","system":"icd10"},{"code":"O29.2","system":"icd10"},{"code":"O03.9","system":"icd10"},{"code":"O69","system":"icd10"},{"code":"O69.8","system":"icd10"},{"code":"O98.9","system":"icd10"},{"code":"O10","system":"icd10"},{"code":"O08","system":"icd10"},{"code":"O08.5","system":"icd10"},{"code":"O74.6","system":"icd10"},{"code":"O10.9","system":"icd10"},{"code":"O29.5","system":"icd10"},{"code":"O69.2","system":"icd10"},{"code":"O68.2","system":"icd10"},{"code":"O05.7","system":"icd10"},{"code":"O69.5","system":"icd10"},{"code":"O99","system":"icd10"},{"code":"O03.7","system":"icd10"},{"code":"O68.3","system":"icd10"},{"code":"O05.8","system":"icd10"},{"code":"O99.6","system":"icd10"},{"code":"O98","system":"icd10"},{"code":"O89.0","system":"icd10"},{"code":"O03.8","system":"icd10"},{"code":"O69.3","system":"icd10"},{"code":"O98.8","system":"icd10"},{"code":"O08.8","system":"icd10"},{"code":"O06.6","system":"icd10"},{"code":"O68.8","system":"icd10"},{"code":"O07.1","system":"icd10"},{"code":"O06.7","system":"icd10"},{"code":"O98.1","system":"icd10"},{"code":"O32.6","system":"icd10"},{"code":"O98.0","system":"icd10"},{"code":"O98.6","system":"icd10"},{"code":"O10.4","system":"icd10"},{"code":"O10.1","system":"icd10"},{"code":"O05.2","system":"icd10"},{"code":"O69.1","system":"icd10"},{"code":"O04.8","system":"icd10"},{"code":"O04.6","system":"icd10"},{"code":"O89.5","system":"icd10"},{"code":"O74.1","system":"icd10"},{"code":"O05.6","system":"icd10"},{"code":"O04.9","system":"icd10"},{"code":"O08.7","system":"icd10"},{"code":"O99.8","system":"icd10"},{"code":"O10.3","system":"icd10"},{"code":"O04.7","system":"icd10"},{"code":"O99.3","system":"icd10"},{"code":"O08.9","system":"icd10"},{"code":"O06.2","system":"icd10"},{"code":"O08.3","system":"icd10"},{"code":"O99.4","system":"icd10"},{"code":"O69.0","system":"icd10"},{"code":"O99.5","system":"icd10"},{"code":"O03.1","system":"icd10"},{"code":"O07.8","system":"icd10"},{"code":"O98.2","system":"icd10"},{"code":"O98.4","system":"icd10"},{"code":"O98.3","system":"icd10"},{"code":"O74.2","system":"icd10"},{"code":"O04.1","system":"icd10"},{"code":"O74.3","system":"icd10"},{"code":"O99.0","system":"icd10"},{"code":"O08.4","system":"icd10"},{"code":"O06.1","system":"icd10"},{"code":"O06.3","system":"icd10"},{"code":"O98.5","system":"icd10"},{"code":"O10.2","system":"icd10"},{"code":"O10.0","system":"icd10"},{"code":"O08.2","system":"icd10"},{"code":"O99.2","system":"icd10"},{"code":"O69.4","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-pregnancy-childbirth-and-the-puerperium-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-compound---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-compound---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-compound---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
