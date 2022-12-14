/// @description Camera Setup

//Camera
cameraX = 0;
cameraY = 0;

cameraWidth = 854;
cameraHeight = 480;

view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0], cameraWidth, cameraHeight);

//Display
displayScale = 1.70;

displayWidth = cameraWidth * displayScale;
displayHeight = cameraHeight * displayScale;

window_set_size(displayWidth, displayHeight);

surface_resize(application_surface, displayWidth, displayHeight);

alarm[0] = 1;
