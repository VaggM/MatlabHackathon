m = mobiledev;
cam = camera(m,'back');
img = snapshot(cam,'immediate');
image(img);