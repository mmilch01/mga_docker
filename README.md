# mga_docker
Multimodal Glioma Analysis (MGA) pipeline dockerized

## Running in offline mode on a DICOM directory <DICOM_DIR> containing MPRAGE scan and BOLD scan(s). 
docker run -u $(id -u ${USER}):$(id -g ${USER}) --rm -v `pwd`:/docker_mount registry.nrg.wustl.edu/docker/nrg-repo/mga_docker:1.0 run_mga_xnat <experiment_label>  --mga_types type1[,...[,...]] --type1 [scan_id1[,...]] --type2 [scan_id1,...] --json_out 1 --dcm_in <directory with all DICOM files> [other_options]
  
where type1, type2,.. are HOF types (T1hi, T1lo, MPRAGE, T2FLAIR, T2hi, T2lo, ...). 

## Running in XNAT
docker run -u $(id -u ${USER}):$(id -g ${USER}) --rm -v `pwd`:/docker_mount registry.nrg.wustl.edu/docker/nrg-repo/mga_docker:1.0 run_mga_xnat <experiment_label> --srv $XNAT_HOST --usr $XNAT_USER --pass $XNAT_PASS --proj $XNAT_PROJECT --subj $XNAT_SUBJECT --upload_data 1 --mga_types [...] <individual scan ID's of defined MGA types> [other options]

## Example running with scan type auto-detection by scan classifier (offline or XNAT mode):
docker run -u $(id -u ${USER}):$(id -g ${USER}) --rm -v `pwd`:/docker_mount registry.nrg.wustl.edu/docker/nrg-repo/mga_docker:1.0 run_mga_xnat <experiment_label>  --mga_types T1hi,T2FLAIR --detect_scan_type 1 [other options]

## Notes
Option --mga_types must define all MGA types processed by this command.<br>
Option --<mga_type> <scan_id[,..]> lists all scan ID's for this type from the given session to be processed; e.g. --T1hi 3,21<br>
Use --upload_dir option to supply custom label of MGA resource in XNAT instead of auto-generated one. <br>
