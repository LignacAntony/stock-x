
-- Table: categories
CREATE TABLE IF NOT EXISTS categories (
    id uuid PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT now()
);

-- Table: products
CREATE TABLE IF NOT EXISTS products (
    id uuid PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT,
    price NUMERIC(10,2) NOT NULL,
    size INTEGER[],
    gender TEXT CHECK (gender IN ('male', 'female', 'unisex')),
    image_url TEXT,
    is_promo BOOLEAN DEFAULT false,
    category_id uuid REFERENCES categories(id) ON DELETE SET NULL,
    created_at TIMESTAMP DEFAULT now()
);

-- Insertion catégories
INSERT INTO categories (id, name, description, created_at) VALUES ('5a07cd45-f99b-4381-9773-57ff408bb545', 'Sneakers', 'Chaussures de sport modernes', now());
INSERT INTO categories (id, name, description, created_at) VALUES ('da6036f0-3fe8-47d9-b2b1-2b81bfc360f0', 'Bottes', 'Bottes élégantes pour l’hiver', now());
INSERT INTO categories (id, name, description, created_at) VALUES ('b96d7fc2-a97d-46b8-8809-17fd438be87a', 'Sandales', 'Chaussures ouvertes pour l’été', now());
INSERT INTO categories (id, name, description, created_at) VALUES ('6a232459-7be2-4dd8-bf1f-1df32014f64d', 'Chaussures habillées', 'Pour les grandes occasions', now());
INSERT INTO categories (id, name, description, created_at) VALUES ('04a66ba7-5d95-40cc-8da3-975c4741b137', 'Chaussures de randonnée', 'Robustes pour les randonnées', now());

-- Insertion produits

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('aaa9fbec-d56c-4a6f-a86a-12196fc3699b', 'Pauvre Pro', 'Diriger anglais page pencher douze règle dépasser secret.', 78.54, ARRAY[36, 37, 38, 39], 'female', 'https://placehold.co/600x400/F92ECF/28C99D?text=Pauvre%20Pro', true, '04a66ba7-5d95-40cc-8da3-975c4741b137', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('1f6f1e9d-806e-4e51-a150-31bad0ba0dfe', 'Alors Classic', 'Tant bras ramasser âgé plaire énorme lors capable sombre un loin précis.', 143.79, ARRAY[38, 39, 40, 41], 'unisex', 'https://placehold.co/600x400/988FFF/CBB339?text=Alors%20Classic', true, 'da6036f0-3fe8-47d9-b2b1-2b81bfc360f0', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('95d0073f-4d19-4c1a-8d5e-0dc8cc5c57dc', 'Fumée Max', 'Choisir certain difficile soi d''autres gens revenir machine.', 171.81, ARRAY[38, 39, 40, 41], 'female', 'https://placehold.co/600x400/3460BE/DF6EF7?text=Fumée%20Max', true, 'b96d7fc2-a97d-46b8-8809-17fd438be87a', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('7a775b5b-79f0-4da0-8f43-159e11f8bc67', 'Poussière Classic', 'Marcher fatiguer défendre rejoindre partir regretter.', 95.39, ARRAY[38, 39, 40, 41], 'unisex', 'https://placehold.co/600x400/93D155/DDA5E1?text=Poussière%20Classic', false, 'b96d7fc2-a97d-46b8-8809-17fd438be87a', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('15e00b9d-5680-4039-9fcc-dd051efcfaf7', 'Dent Classic', 'Chez séparer accuser admettre profond traiter sept veille entraîner de eh car.', 67.22, ARRAY[40, 41, 42, 43], 'female', 'https://placehold.co/600x400/B49D74/56C3D4?text=Dent%20Classic', true, 'b96d7fc2-a97d-46b8-8809-17fd438be87a', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('a1ad587d-f609-4a19-b6d2-b9c98c051967', 'Courir Pro', 'Spectacle exécuter anglais sept encore autour devant père rire côte.', 233.87, ARRAY[36, 37, 38, 39], 'male', 'https://placehold.co/600x400/C6FB9E/8A40FB?text=Courir%20Pro', true, '6a232459-7be2-4dd8-bf1f-1df32014f64d', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('285694ff-e590-4542-b35c-fe2f2f31d9ab', 'Page Classic', 'Quant À inutile dresser silence content type âgé dégager source désir vague.', 117.96, ARRAY[40, 41, 42, 43], 'unisex', 'https://placehold.co/600x400/4B6344/77BFFA?text=Page%20Classic', false, 'b96d7fc2-a97d-46b8-8809-17fd438be87a', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('60aac4ab-19ba-4675-a3b5-c2fe568a5dc8', 'Drame Pro', 'Mari apercevoir payer avoir tout poète son relation assez.', 138.08, ARRAY[38, 39, 40, 41], 'unisex', 'https://placehold.co/600x400/BED2B3/0394CA?text=Drame%20Pro', false, 'da6036f0-3fe8-47d9-b2b1-2b81bfc360f0', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('02c5b4b4-0bc8-4eb0-98d0-72de89ad8865', 'Art Advance', 'Sens long gloire rejeter parole sien.', 125.35, ARRAY[42, 43, 44, 45], 'male', 'https://placehold.co/600x400/B67AF6/A53B48?text=Art%20Advance', false, '5a07cd45-f99b-4381-9773-57ff408bb545', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('6e966159-4e89-40e9-b329-c572b03b173c', 'Caresser Pro', 'Lèvre jeu profondément achever coin user là saisir.', 189.72, ARRAY[38, 39, 40, 41], 'female', 'https://placehold.co/600x400/9F8B52/91396F?text=Caresser%20Pro', false, '5a07cd45-f99b-4381-9773-57ff408bb545', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('aabfe3e1-0e7d-4827-8017-7ca411368ad4', 'Montrer Lite', 'Déjà demander vite rayon face caresser mort véritable se vieux bête parent.', 74.15, ARRAY[38, 39, 40, 41], 'unisex', 'https://placehold.co/600x400/872E31/5ACECF?text=Montrer%20Lite', false, 'da6036f0-3fe8-47d9-b2b1-2b81bfc360f0', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('cb2d886b-ec16-4053-96c2-42fb019bdd56', 'Tendre Classic', 'Appuyer parce que même conclure matin pareil échapper.', 103.89, ARRAY[40, 41, 42, 43], 'unisex', 'https://placehold.co/600x400/BC0231/FEAE17?text=Tendre%20Classic', true, 'b96d7fc2-a97d-46b8-8809-17fd438be87a', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('b6548e6d-326f-4b6d-a599-6f3bb3b54756', 'Pointe Advance', 'Hôtel goût maintenir époque à tôt jardin coin dieu.', 180.75, ARRAY[36, 37, 38, 39], 'unisex', 'https://placehold.co/600x400/CE1BFB/6E5F91?text=Pointe%20Advance', false, 'b96d7fc2-a97d-46b8-8809-17fd438be87a', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('c05164d0-d043-4149-878c-ff802fc39ed9', 'Espérer Advance', 'Suffire frais pourtant entier respect hauteur voisin.', 100.32, ARRAY[36, 37, 38, 39], 'unisex', 'https://placehold.co/600x400/D4DF8D/F31B5E?text=Espérer%20Advance', true, '04a66ba7-5d95-40cc-8da3-975c4741b137', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('ede86a3a-0da8-4d56-b06c-183658d2995a', 'Sien Advance', 'Honneur rendre quel soi réunir précéder bien.', 233.29, ARRAY[40, 41, 42, 43], 'female', 'https://placehold.co/600x400/C321C0/6C2985?text=Sien%20Advance', true, '5a07cd45-f99b-4381-9773-57ff408bb545', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('041296fc-b705-4f5c-a418-528a0e800c5c', 'Même Max', 'Sourire avouer gauche quelque expression vers exister très retenir année nord.', 232.39, ARRAY[42, 43, 44, 45], 'female', 'https://placehold.co/600x400/DCB83D/0CFA54?text=Même%20Max', false, 'da6036f0-3fe8-47d9-b2b1-2b81bfc360f0', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('58bf6101-6c78-4d3f-a8a8-25ffed28d246', 'Manger Classic', 'Particulier mois taille réclamer gros atteindre.', 165.76, ARRAY[36, 37, 38, 39], 'unisex', 'https://placehold.co/600x400/E07259/3B92E1?text=Manger%20Classic', true, '6a232459-7be2-4dd8-bf1f-1df32014f64d', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('5db63397-c2fb-4c5c-b1b3-81c4445798aa', 'Parfois Classic', 'Rapport figurer blanc épaule vaste solitude écrire étoile.', 132.28, ARRAY[42, 43, 44, 45], 'male', 'https://placehold.co/600x400/FCC220/100D92?text=Parfois%20Classic', true, '6a232459-7be2-4dd8-bf1f-1df32014f64d', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('0b9faf2e-a835-4cb9-a340-461387dbd1ff', 'Écarter Max', 'Cas en saint nouveau aventure tantôt dimanche entraîner beau paysan enfin.', 214.54, ARRAY[38, 39, 40, 41], 'unisex', 'https://placehold.co/600x400/4F3E8F/4EA194?text=Écarter%20Max', true, '04a66ba7-5d95-40cc-8da3-975c4741b137', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('d7394e62-6b67-4721-b458-75f9cd08ef7f', 'Lors Pro', 'Mémoire former nécessaire coup exister révolution remplir bien suivre lumière.', 55.55, ARRAY[38, 39, 40, 41], 'female', 'https://placehold.co/600x400/1E763A/C87D21?text=Lors%20Pro', true, '5a07cd45-f99b-4381-9773-57ff408bb545', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('1693095a-45a7-48f5-ae17-f781e04e0426', 'Chose Advance', 'Fer effet anglais appel médecin partout habitant.', 209.61, ARRAY[42, 43, 44, 45], 'unisex', 'https://placehold.co/600x400/339AEA/98D0A3?text=Chose%20Advance', true, '6a232459-7be2-4dd8-bf1f-1df32014f64d', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('bf38f610-df4e-49dc-8265-f07fd4f9acb6', 'Intérêt Lite', 'Haine respirer cruel soit ensemble fil résultat père feu projet.', 215.38, ARRAY[42, 43, 44, 45], 'male', 'https://placehold.co/600x400/A86AA6/0CBCF1?text=Intérêt%20Lite', false, '6a232459-7be2-4dd8-bf1f-1df32014f64d', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('0c47bc16-6039-4777-a789-18ce3b2acf75', 'Accord Max', 'Docteur livre aventure étudier appel toujours usage dessiner établir sorte marché.', 114.44, ARRAY[36, 37, 38, 39], 'unisex', 'https://placehold.co/600x400/EC5743/ED5A2D?text=Accord%20Max', true, '04a66ba7-5d95-40cc-8da3-975c4741b137', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('de6adde8-fcc9-4b74-951e-0051b60d8c5a', 'Trente Pro', 'Écraser mariage trouver violence arrivée commun raconter personne tard ce silencieux coucher.', 209.2, ARRAY[40, 41, 42, 43], 'male', 'https://placehold.co/600x400/778B3F/96A5C3?text=Trente%20Pro', true, '6a232459-7be2-4dd8-bf1f-1df32014f64d', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('dbbf4ae8-bc0e-4964-a725-195a5e854e00', 'Moitié Max', 'Long réponse précéder installer neuf rentrer voir proposer quand traiter usage.', 89.85, ARRAY[38, 39, 40, 41], 'male', 'https://placehold.co/600x400/CFB457/7B86DD?text=Moitié%20Max', false, 'da6036f0-3fe8-47d9-b2b1-2b81bfc360f0', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('2e1baa41-ad3e-4ed7-a44f-058e7a213e3c', 'Doigt Pro', 'Abattre yeux leur finir essuyer sous rompre clef paquet.', 224.96, ARRAY[42, 43, 44, 45], 'female', 'https://placehold.co/600x400/FD8181/631F56?text=Doigt%20Pro', false, '5a07cd45-f99b-4381-9773-57ff408bb545', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('76043273-b0f4-4c7e-8022-fed872fa62a9', 'Chez Advance', 'Rire cependant souffrance par titre hiver jaune finir angoisse.', 228.96, ARRAY[42, 43, 44, 45], 'unisex', 'https://placehold.co/600x400/B44634/D95565?text=Chez%20Advance', true, 'da6036f0-3fe8-47d9-b2b1-2b81bfc360f0', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('c6128894-23bf-4203-8e09-e01c5c5f8fa4', 'Poitrine Pro', 'Perdu parcourir table ensuite sept debout.', 190.05, ARRAY[36, 37, 38, 39], 'female', 'https://placehold.co/600x400/7806D2/AF460D?text=Poitrine%20Pro', false, 'da6036f0-3fe8-47d9-b2b1-2b81bfc360f0', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('2f11f950-77e4-47f3-8d1f-c0058ea13170', 'Devenir Classic', 'Vent vouloir million mort comme briller côté.', 78.86, ARRAY[38, 39, 40, 41], 'female', 'https://placehold.co/600x400/DD438D/335044?text=Devenir%20Classic', true, 'da6036f0-3fe8-47d9-b2b1-2b81bfc360f0', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('a870884f-3d2a-451d-bcfc-173258f8e4f7', 'Visible Classic', 'Problème printemps quart animer autrefois palais.', 132.6, ARRAY[40, 41, 42, 43], 'unisex', 'https://placehold.co/600x400/0128D3/2FE60D?text=Visible%20Classic', true, '5a07cd45-f99b-4381-9773-57ff408bb545', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('7d0612ea-fabd-498b-9400-d55d345c8344', 'Attacher Advance', 'Fine forme pauvre demander là voisin établir appeler joie nerveux plaisir.', 171.4, ARRAY[36, 37, 38, 39], 'male', 'https://placehold.co/600x400/F9E2BF/987785?text=Attacher%20Advance', false, 'b96d7fc2-a97d-46b8-8809-17fd438be87a', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('98e9e17f-89de-4f5e-93e0-a30c109bcbc3', 'Remettre Pro', 'Bras surprendre trace ton former compagnie pauvre début.', 133.19, ARRAY[36, 37, 38, 39], 'unisex', 'https://placehold.co/600x400/CD0668/95D235?text=Remettre%20Pro', true, '04a66ba7-5d95-40cc-8da3-975c4741b137', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('c6445bc9-3f69-42b2-a2aa-f0cb60a90486', 'Projet Classic', 'Figure corps faute double rentrer parvenir éteindre transformer grâce temps réduire.', 157.3, ARRAY[42, 43, 44, 45], 'unisex', 'https://placehold.co/600x400/95F2B6/D88F39?text=Projet%20Classic', false, 'b96d7fc2-a97d-46b8-8809-17fd438be87a', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('11ffa266-cee9-4895-ab12-fee7447ec81d', 'Connaître Lite', 'Prier conduire avancer chasse réveiller révéler payer.', 249.52, ARRAY[38, 39, 40, 41], 'female', 'https://placehold.co/600x400/020C5E/E97B5C?text=Connaître%20Lite', true, 'b96d7fc2-a97d-46b8-8809-17fd438be87a', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('f86e2956-d638-455c-beb9-ed16a4aed722', 'Enfance Pro', 'Mot distinguer rencontre lentement escalier non voyage figurer.', 50.13, ARRAY[40, 41, 42, 43], 'female', 'https://placehold.co/600x400/EECCF5/F0F1B6?text=Enfance%20Pro', false, '04a66ba7-5d95-40cc-8da3-975c4741b137', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('10119018-f71f-4845-bf75-59f7dd56087e', 'Lorsque Advance', 'Gros centre vite près trop quart chair officier bon animer avec.', 176.72, ARRAY[42, 43, 44, 45], 'female', 'https://placehold.co/600x400/3D290E/4F5AD2?text=Lorsque%20Advance', false, '6a232459-7be2-4dd8-bf1f-1df32014f64d', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('cef8ed83-926d-47c6-8fdc-27ae95981a63', 'Papier Advance', 'Avouer charge valeur chaud apercevoir puissance fait déposer traîner apercevoir désir mariage autre.', 178.57, ARRAY[38, 39, 40, 41], 'female', 'https://placehold.co/600x400/75DB60/594B29?text=Papier%20Advance', false, '6a232459-7be2-4dd8-bf1f-1df32014f64d', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('dbd89325-ab61-452e-b6c6-9e25f5740df3', 'Humain Max', 'Marche donc étonner maison nouveau barbe élément désormais raconter nom.', 96.61, ARRAY[38, 39, 40, 41], 'female', 'https://placehold.co/600x400/C52F76/A2F350?text=Humain%20Max', true, '6a232459-7be2-4dd8-bf1f-1df32014f64d', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('6ed5cd0a-cadd-4006-a87e-9e49cf1bb0ae', 'Rester Max', 'Colline sous lui espérer mal ni mouvement.', 145.74, ARRAY[38, 39, 40, 41], 'female', 'https://placehold.co/600x400/4A609C/0130B9?text=Rester%20Max', false, '6a232459-7be2-4dd8-bf1f-1df32014f64d', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('fd899216-75e5-4830-bfe8-97029a43a039', 'Enfin Advance', 'Sec mariage mari sourd obtenir six différent intelligence permettre endroit distance compagnie tâche.', 130.29, ARRAY[36, 37, 38, 39], 'unisex', 'https://placehold.co/600x400/E6EC38/B343BF?text=Enfin%20Advance', false, 'da6036f0-3fe8-47d9-b2b1-2b81bfc360f0', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('6c5382c7-b2c9-47f1-a4ce-e734f0a2774f', 'Pourquoi Pro', 'Système tout regard est heure allumer.', 237.76, ARRAY[40, 41, 42, 43], 'male', 'https://placehold.co/600x400/63E39B/4AD720?text=Pourquoi%20Pro', false, 'b96d7fc2-a97d-46b8-8809-17fd438be87a', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('3ed83f2b-b1d6-4f0e-979e-7eb50df1fca1', 'Tard Classic', 'Approcher aucun de oeuvre beau taire.', 223.41, ARRAY[40, 41, 42, 43], 'female', 'https://placehold.co/600x400/8A1E82/E0A5AE?text=Tard%20Classic', true, '5a07cd45-f99b-4381-9773-57ff408bb545', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('f2b17982-e27e-447b-9f1f-624a46a68405', 'Loup Advance', 'Accompagner auteur après bouche principe inquiéter promener monde rouge puisque réalité.', 78.81, ARRAY[42, 43, 44, 45], 'female', 'https://placehold.co/600x400/A712AD/CAE1C7?text=Loup%20Advance', true, 'da6036f0-3fe8-47d9-b2b1-2b81bfc360f0', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('7fbe68a4-ef58-42ff-b81c-e15ea23e1d32', 'Oser Max', 'Lors moitié avis finir contenter le oeuvre inquiéter agent.', 201.57, ARRAY[40, 41, 42, 43], 'female', 'https://placehold.co/600x400/B21BB5/AFEBBB?text=Oser%20Max', false, 'b96d7fc2-a97d-46b8-8809-17fd438be87a', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('73e0c5b9-160b-4cab-b46a-df0614258452', 'Vent Advance', 'Saint élever savoir casser étaler repousser parler pauvre fonction entrée volonté.', 145.78, ARRAY[40, 41, 42, 43], 'female', 'https://placehold.co/600x400/AB6D43/DBD696?text=Vent%20Advance', true, 'da6036f0-3fe8-47d9-b2b1-2b81bfc360f0', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('d0af70dd-625d-45e9-a652-4f60eb392ff8', 'Mille Advance', 'Oeil possible obéir militaire plan sortir menacer deviner.', 158.47, ARRAY[42, 43, 44, 45], 'female', 'https://placehold.co/600x400/CBA533/63B2E3?text=Mille%20Advance', false, '04a66ba7-5d95-40cc-8da3-975c4741b137', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('04f1ca7a-0b05-462d-b164-2156fcda0d22', 'Situation Max', 'Vendre protéger fête été large banc endormir nom habiter arrière.', 204.55, ARRAY[38, 39, 40, 41], 'unisex', 'https://placehold.co/600x400/AAAF40/EF7D60?text=Situation%20Max', false, '6a232459-7be2-4dd8-bf1f-1df32014f64d', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('51e56158-af4f-482d-bdd0-3ab73587332d', 'Sur Advance', 'Deux fort étouffer sourire terreur puissance.', 72.53, ARRAY[38, 39, 40, 41], 'unisex', 'https://placehold.co/600x400/9E279A/C704EE?text=Sur%20Advance', false, '04a66ba7-5d95-40cc-8da3-975c4741b137', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('a3710642-dda9-416e-af82-006261faf72e', 'Jamais Pro', 'Droite lettre heure tour lutter selon.', 97.79, ARRAY[36, 37, 38, 39], 'male', 'https://placehold.co/600x400/656048/3BCC1F?text=Jamais%20Pro', true, '6a232459-7be2-4dd8-bf1f-1df32014f64d', now());

INSERT INTO products (id, name, description, price, size, gender, image_url, is_promo, category_id, created_at)
VALUES ('aee8d887-0ee5-4641-bb2d-0a7a454c3617', 'Plutôt Classic', 'Île debout bande qui départ lit déjà.', 175.68, ARRAY[38, 39, 40, 41], 'unisex', 'https://placehold.co/600x400/12231D/70DE5D?text=Plutôt%20Classic', true, 'da6036f0-3fe8-47d9-b2b1-2b81bfc360f0', now());