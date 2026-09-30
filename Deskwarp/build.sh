cmake -B build -G Ninja
cmake --build build
workspace=$(pwd)
cp /ucrt64/bin/libgcc_s_seh-1.dll /ucrt64/bin/libstdc++-6.dll /ucrt64/bin/libwinpthread-1.dll build/
cd $workspace/build
for dll in $(ldd Deskwarp.exe | grep '/ucrt64/' | awk '{print $3}'); do
    cp -n "$dll" .
done
cd $workspace
