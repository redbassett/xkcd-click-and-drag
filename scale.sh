#!/bin/sh                                                                                                                                                                                                                                                                       

mkdir -p images/scaled
mkdir -p images/stitched

cd images
for f in $(ls *.png)
do
    cp $f scaled/$f
done

cd scaled
for f in $(ls *.png)
do
    #convert $f -scale 128x128 scaled/$f                                                                                                                                                                                                                                        
    sips -z 128 128 $f
done
