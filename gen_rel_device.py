import xml.etree.ElementTree as ET
import os
import argparse
import shutil

def update_xml_file (xml_filepath, rel_devices):
    safe_dirs = []
    # parse the XML file
    tree = ET.parse(xml_filepath)
    root = tree.getroot()
    # iterate through all the devices and remove those that are not rel_devices 
    for device in root.findall('device'):
        if device.get('name') in rel_devices:
            for internal in device.findall('internal'):
                if internal.attrib.get('type') == 'vpr_arch':
                    value = internal.get('file')
                    if value is not None:
                        safe_dirs.append(value[:value.index('/')])
        else:
            root.remove(device)

    # write the updated XML file
    tree.write(xml_filepath)
    return safe_dirs

def remove_dirs (devices_dir,not_to_remove):
    # Get the list of devices directories
    dirs = [name for name in os.listdir(devices_dir) if os.path.isdir(os.path.join(devices_dir, name))]
    # Remove all directories except the one to keep
    for dir in dirs:
        if os.path.normpath(dir) not in not_to_remove:
            try:
                shutil.rmtree(os.path.join(devices_dir, dir))
                print(f"Removed directory {dir}")
            except OSError as e:
                print(f"Error removing directory {dir}: {e}")

def main ():
    parser = argparse.ArgumentParser()
    parser.add_argument('--production_devices',
                        type=str,default='',metavar='',nargs='+',required=True,help='One or list of devices for production build', dest="rel_devices_list")
    parser.add_argument('--xml_filepath',
                        type=str,default='',metavar='',required=True,help='Path for the device.xml which will be updated', dest="XML_filepath")
    parser.add_argument('--devices_dirs_path',
                        type=str,default='1',metavar='',help='Path of devices directories', dest="devices_dirs")
    args = parser.parse_args()
    print("Given Production Devices are:\n\t\t",args.rel_devices_list)
    print("XML file that will be update:\n\t\t",args.XML_filepath)
    print("directory from which not required devices directories will be removed:\n\t\t",args.devices_dirs)
    save_dirs = update_xml_file(args.XML_filepath,args.rel_devices_list)
    remove_dirs(args.devices_dirs,save_dirs)

if __name__ == "__main__":
    main()