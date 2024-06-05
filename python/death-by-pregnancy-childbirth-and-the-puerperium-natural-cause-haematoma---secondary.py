# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"O34.1","system":"icd10"},{"code":"O71.7","system":"icd10"},{"code":"O34.9","system":"icd10"},{"code":"O35.1","system":"icd10"},{"code":"O34.3","system":"icd10"},{"code":"O33.7","system":"icd10"},{"code":"O35","system":"icd10"},{"code":"O26.2","system":"icd10"},{"code":"O34.7","system":"icd10"},{"code":"O34.0","system":"icd10"},{"code":"O26.3","system":"icd10"},{"code":"O26.8","system":"icd10"},{"code":"O33.0","system":"icd10"},{"code":"O35.0","system":"icd10"},{"code":"O35.2","system":"icd10"},{"code":"O34","system":"icd10"},{"code":"O35.4","system":"icd10"},{"code":"O32.5","system":"icd10"},{"code":"O26.5","system":"icd10"},{"code":"O35.8","system":"icd10"},{"code":"O35.9","system":"icd10"},{"code":"O26.4","system":"icd10"},{"code":"O33.4","system":"icd10"},{"code":"O26.6","system":"icd10"},{"code":"O34.8","system":"icd10"},{"code":"O26.7","system":"icd10"},{"code":"O26.9","system":"icd10"},{"code":"O35.5","system":"icd10"},{"code":"O26","system":"icd10"},{"code":"O35.6","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-pregnancy-childbirth-and-the-puerperium-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-haematoma---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-haematoma---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-haematoma---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
