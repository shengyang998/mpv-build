#!/bin/bash
# Prepare
./use-libass-master & ./use-ffmpeg-master & ./use-mpv-master;
echo "--enable-static --enable-shared --disable-debug --enable-ffplay --enable-ffprobe --enable-doc --enable-gpl --enable-version3 --enable-nonfree --enable-pthreads --enable-libvpx --enable-libmp3lame --enable-libx264 --enable-libx265 --enable-runtime-cpudetect --enable-libfdk-aac --enable-avfilter --enable-libopencore_amrwb --enable-libopencore_amrnb --enable-filters --enable-libvidstab --enable-libmysofa --enable-libbs2b" > ffmpeg_options;
echo "--enable-libmpv-shared --enable-static-build" > mpv_options;
cp ./libass-config-shared ./scripts/libass-config
# Build
./build -j4
# Install
./install
