#/bin/bash
mkdir .bpy_standalone
mkdir .bpy_standalone/${1:-master}
cd .bpy_standalone/${1:-master}
git clone http://git.blender.org/blender.git -b ${1:-master}
cd bpy_standalone
git submodule update --remote
git submodule update --init --recursive
git submodule foreach git checkout master
git submodule foreach git pull --rebase origin master
case "$3" in
  "--precompiled-libs")
    svn checkout https://svn.blender.org/svnroot/bf-blender/trunk/lib/linux_centos7_x86_64
    ;;
  "--compile-libs")
    ./build_files/build_environment/install_deps.sh
    ;;
  *)
    echo No library build method specified, skipping library retrieval
    ;;
esac
make update
cd ..
mkdir build_linux_blender
cd build_linux_blender

cmake ../bpy_standalone -DWITH_AUDASPACE=OFF -DWITH_PYTHON_INSTALL=OFF -DWITH_PYTHON_MODULE=ON

make install -j$(nproc) | tee ../build_linux_blender_build.log