# Script: tong_hop.sh
# Tac gia: Trần Mạnh Hoa
# Ngay tao: 2026-11-11 
echo "Dang tao bao cao..."
echo "=== BAO CAO SU CO WEBSITE ===" > ./logs/tong_hop.txt
cat ./logs/entry.log | grep "status=404" >> ./logs/tong_hop.txt
cat ./logs/entry.log | grep "status=500" | wc -l >> ./logs/tong_hop.txt
echo "Hoan thanh"