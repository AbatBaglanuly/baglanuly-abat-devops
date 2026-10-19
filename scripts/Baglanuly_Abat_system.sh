echo "=============================="
echo "Student Information"
echo "=============================="
echo "Name: Abat"
echo "Surname: Baglanuly"
echo "Group: IT2-2314"
echo "Student ID: 38350"
echo "=============================="
echo "System Information"
echo "=============================="
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System: $(uname -s -r -m)"
echo "Disk Usage:"
df -h / | awk 'NR==2 {print $3 "/" $2 " {" $5 ")"}'
echo "Memory Usage:"
free -h | awk 'NR==2 {print $3 "/" $2}'
echo "=============================="

INFO_FILE="Baglanuly_Abat_IT2-2314_38350.txt"
if [ -f "$INFO_FILE" ]; then
    echo "Student information file exsist"
else
    echo "Student information file does not exsist"
fi
