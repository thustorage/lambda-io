THREADS="1"
# THREADS="1 2 4 8 12"
NR_DATA_BLOCKS="1 2 4 8 16 32 128 512 2048"
DURATION=30
let s=10+$DURATION

for i in $THREADS
do
for j in $NR_DATA_BLOCKS
do
rmmod ccnvmetest
insmod ccnvmetest.ko threads=$i duration=$DURATION nr_data_blocks=$j test_devs_path=/dev/nvme1n1p1 test_fn_idx=5
sleep $s
done
done
rmmod ccnvmetest
