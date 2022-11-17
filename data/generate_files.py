file_data = {
    "1MB_data.pcap": b"0x00" * 250000,
    "10MB_data.pcap": b"0x00"* 2500000,
    "100MB_data.pcap": b"0x00"* 25000000 
}

for file_name, data in file_data.items():
    with open(file_name, "wb+") as file:

        file.write(data)