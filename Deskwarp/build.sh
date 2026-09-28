cmake -B build -G Ninja
cmake --build build
cd /e/Projects/Github/Fork/Deskwarp/Deskwarp/build
for dll in $(ldd Deskwarp.exe | grep '/ucrt64/' | awk '{print $3}'); do
    cp -n "$dll" .
done
cd /e/Projects/Github/Fork/Deskwarp/Deskwarp