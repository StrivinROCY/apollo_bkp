bash scripts/ndt_simple_map_creator.sh \
data/bag/localization \
/apollo/modules/calibration/data/dev_kit_pix_hooke/lidar_params/lidar_novatel_extrinsics.yaml \
51 \
/apollo/modules/map/data/map_test/ndt_map \
lidar

mkdir -p /apollo/modules/map/data/map_test/ndt_map/local_map

mv /apollo/modules/map/data/map_test/ndt_map/map \
/apollo/modules/map/data/map_test/ndt_map/local_map/map

mv /apollo/modules/map/data/map_test/ndt_map/config.xml \
/apollo/modules/map/data/map_test/ndt_map/local_map/config.xml
