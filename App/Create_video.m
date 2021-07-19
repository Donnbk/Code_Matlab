% Load the images
n_File = 20;
images = cell(n_File,1);
for i = 1: n_File
    images{i} = imread("frame_"+num2str(i)+".png");
end
video = VideoWriter('myVideo.avi','Uncompressed AVI');
% Open the video writer
open(video);
% Write the frames to the video
for u=1:length(images)
    writeVideo(video, images{u});
end
% Close the video
close(video);