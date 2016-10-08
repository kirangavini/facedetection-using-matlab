A=imread('people.jpg');  % insert your own image


%Face Detector Object

Facedetector = vision.CascadeObjectDetector();


%use face detector on A and get the faces

BBOX = step(Facedetector, A);


%Annotate these faces on the top of image

B= insertObjectAnnotation(A, 'rectangle', BBOX , 'Face');
imshow(B), title('Detected Faces');


%Display the number of faces in a string

n= size(BBOX,1);
str_n= num2str(n);
str =strcat('Number of detected faces are ', str_n);
disp(str);





