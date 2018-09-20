tv = readNPY('template_volume_10um_perm.npy'); % grey-scale "background signal intensity"
av = readNPY('annotation_volume_10um_by_index_noperm.npy'); % the number at each pixel labels the area, see note below
av = permute(av, [2 1 3]);


st = loadStructureTree('structure_tree_safe_2017.csv'); % a table of what all the labels mean

file_save_location = 'C:\Histology\Mouse1'; % where will the probe locations be saved
probe_name = 'LMN_092018'; % name probe to avoid overwriting

f = allenAtlasBrowser(tv, av, st, file_save_location, probe_name);