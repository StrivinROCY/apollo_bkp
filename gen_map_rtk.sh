./bazel-bin/modules/tools/map_gen/extract_path \
./path.txt \
data/bag/localization/localization.record.00000

./bazel-bin/modules/tools/map_gen/map_gen_single_lane \
./path.txt \
./base_map.txt \
1

mkdir modules/map/data/map_test

rm -rf path.txt

mv base_map.txt modules/map/data/map_test/base_map.txt

./bazel-bin/modules/tools/create_map/convert_map_txt2bin \
-i /apollo/modules/map/data/map_test/base_map.txt \
-o /apollo/modules/map/data/map_test/base_map.bin

bash scripts/generate_routing_topo_graph.sh \
--map_dir /apollo/modules/map/data/map_test

./bazel-bin/modules/map/tools/sim_map_generator \
--map_dir=/apollo/modules/map/data/map_test \
--output_dir=/apollo/modules/map/data/map_test
