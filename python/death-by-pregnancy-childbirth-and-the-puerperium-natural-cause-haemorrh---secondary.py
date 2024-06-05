# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"O72.1","system":"icd10"},{"code":"O72","system":"icd10"},{"code":"O20.0","system":"icd10"},{"code":"O46.9","system":"icd10"},{"code":"O20.9","system":"icd10"},{"code":"O46","system":"icd10"},{"code":"O46.8","system":"icd10"},{"code":"O20.8","system":"icd10"},{"code":"O44.1","system":"icd10"},{"code":"O73","system":"icd10"},{"code":"O44.0","system":"icd10"},{"code":"O20","system":"icd10"},{"code":"O73.0","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-pregnancy-childbirth-and-the-puerperium-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-haemorrh---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-haemorrh---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-pregnancy-childbirth-and-the-puerperium-natural-cause-haemorrh---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
