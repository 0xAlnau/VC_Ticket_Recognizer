%% Esquelet de la pràctica
%% Carregar arxius
carpeta = 'F:\Documents\VC\Practica\Imatges_inicials';
%carpeta = 'F:\Documents\VC\Practica\large-receipt-image-dataset-SRD';

arxius = dir(fullfile(carpeta, '*.jpg'));
vector = cell(1, length(arxius) );
for i = 1:length(arxius)

    ruta = fullfile(carpeta, arxius(i).name);
    vector{i} = imread(ruta);

end

%% Veure els arxius carregats
for i = 1:length(arxius)
    figure,imshow(vector{i})
end

%% Treure el fons
im = vector{2};
figure,imshow(im),title('Input image')

ee1 = strel('disk', 6);
cl = imclose(im, ee1);

figure,imshow(cl),title('Close')