#!/usr/local/bin/ruby

def mountMe (type, device, destination, options="none") 
if (options == "none") 
command = "sudo mount -t #{type} #{device} #{destination}";
else
command = "sudo mount -t #{type} -o #{options} #{device} #{destination}";
end

puts "mount/unmount to #{destination}";
system "sudo umount #{destination}";
system "#{command}"

end

def handleSingleMount (mountDetails) 
    if (mountDetails.length == 3)
        mountMe(mountDetails[0], mountDetails[1], mountDetails[2]); 
    else
        mountMe(mountDetails[0], mountDetails[1], mountDetails[2], mountDetails[3]); 
    end
end

def fixESata(masterList)
esataDevice = `\ls /dev/sd* | grep sd.2 | grep -v sda`;
esataDevice.chomp!;
if (esataDevice =~ /^\/dev\/sd.2$/) 
    puts "Found esata mount. #{esataDevice}"
    masterList << ["ext4", esataDevice, "/mnt/d"];
else
    puts "Skipping esata mount. not found."
end
end

masterList = [
["lowntfs-3g", "/dev/sdc1", "/mnt/windows"],
["lowntfs-3g", "/dev/sdb1", "/mnt/z"],
["cifs", "//192.168.0.102/Volume_2", "/nas/d2", "credentials=/root/nas-info.txt,uid=500,gid=500,rw,acl,nodfs"],
["cifs", "//192.168.0.102/Volume_1", "/nas/d1", "credentials=/root/nas-info.txt,uid=500,gid=500,rw,acl,nodfs"]
];

fixESata(masterList);

masterList.each do |current| 
    handleSingleMount(current);
end

