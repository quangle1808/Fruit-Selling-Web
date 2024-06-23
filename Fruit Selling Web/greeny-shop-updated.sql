CREATE DATABASE  IF NOT EXISTS `greeny_shop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `greeny_shop`;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` bigint NOT NULL AUTO_INCREMENT,
  `category_image` varchar(255) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (4,NULL,'Vegetables'),(5,NULL,'Fruits'),(6,NULL,'Others');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(1000) DEFAULT NULL,
  `discount` int NOT NULL,
  `entered_date` datetime DEFAULT NULL,
  `price` double NOT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `quantity` int NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `favorite` bit(1) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`),
  CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (8,'Bell peppers are a plant with high antioxidant content, 100 grams of bell peppers can provide up to 84 kJ equivalent to 20 kcal. Especially red bell peppers are the ones with the highest nutrient content (green bell peppers contain twice as much vitamin C and carotene and lycopene content as 9 times higher than green bell peppers).',0,'2022-01-30 00:00:00',16000,'01.jpg','Bell Pepper',24,NULL,6,_binary '\0'),(9,'Carrots are not only a familiar root in family dishes but also a valuable medicine, very good for health. With a high content of nutrients and vitamin A, carrots are considered an essential ingredient for children\'s weaning dishes, helping children to brighten their eyes and provide a rich source of fiber. In addition, carrots are also considered a \"panacea\" in the process of women\'s skin care. With just a few simple steps, you have a carrot - honey mask mixture that helps prevent acne, brightens skin and improves dull and aging skin.',5,'2022-01-30 00:00:00',39000,'02.jpg','Carrot',49,NULL,6,_binary '\0'),(10,'Cucumbers are widely grown in many different countries, and it can be used for many different purposes. However, in any form, cucumbers still retain their nutritional values. Baby cucumbers have the same shape as regular cucumbers with white striped green skin, but their length is only 3-5cm and the taste is sweeter and more refreshing than regular cucumbers.',2,'2022-01-30 00:00:00',25000,'03.jpg','Cucumber',30,NULL,6,_binary '\0'),(11,'Eggplant is a fruit that can be processed into many delicious dishes such as: steamed, sautéed, grilled, eaten raw, ... each form has a very good taste. In Japanese eggplant contains extremely high fiber content and rich in iron, which is very good for the body. Japanese eggplant is a eggplant variant originating from Japan, related to tomatoes, potatoes, and Vietnamese eggplants. This type of fruit is used in processing in the form of stewed, fried, and baked foods. Japanese eggplant has an eye-catching, purple-black outer skin, not only that, but also contains extremely high fiber content and is rich in iron, which helps reduce the risk of cancers such as colon, rectal, cardiovascular, and other cancers, cure amnesia, ... This is considered a \"panacea\" of the Japanese.',0,'2022-01-30 00:00:00',30000,'04.jpg','Eggplant',40,NULL,6,_binary '\0'),(12,'Okra is a extremely healthy vegetable, especially for the skeletal system, but it is very low-priced. A kilogram of fresh okra currently costs only from 25,000 to 30,000 VND and the price of dried okra is only 120,000 VND / 1 kg.',0,'2022-01-30 00:00:00',25000,'05.jpg','Okra',30,NULL,6,_binary '\0'),(13,'Tomato is a fruit that is very good for human health, it not only helps to add essential nutrients to the body but also helps to beautify the skin for women. Tomatoes can be eaten raw or processed into very delicious dishes. Tomatoes are considered an essential food because they are very familiar in many family delicious dishes. This is also considered a very nutritious and healthy fruit, has the effect of enhancing the body\'s resistance, preventing and treating debilitating diseases, and fighting infections. Not only that, tomato also contains high levels of vitamin A, which brings many health benefits. Tomato also helps to whiten skin in women in many ways such as tomato juice, tomato mask, ...',3,'2022-01-30 00:00:00',25000,'06.jpg','Tomato',58,NULL,6,_binary '\0'),(14,'Due to its cool, aromatic, sweet, and high-fiber properties when cooked, choy sum is often used to make soup with shrimp and meat or stir-fry to increase its deliciousness. Choy sum is one of the vegetables commonly used in Vietnamese meals. Choy sum has a round stem, the leaves are round or obtuse, green in color. Choy sum has a sweet taste, when it is old, it has a spicy and strong taste, which is very suitable for processing many different dishes. In addition, kohlrabi also brings many health benefits such as preventing cancer, supporting treatment of gout, hemorrhoids, cirrhosis of the liver, increasing resistance and purifying the body.  ',0,'2022-01-31 00:00:00',40000,'09.jpg','Choy Sum',50,NULL,4,_binary '\0'),(15,'Pumpkin is a relatively low-calorie fruit, as it is 94% water. Pumpkin is also rich in beta-carotene, a carotenoid that the body synthesizes into vitamin A. Moreover, pumpkin seeds can also be used because they contain many nutrients and provide many health benefits. .',0,'2022-01-31 00:00:00',10000,'12.jpg','Pumpkin',40,NULL,6,_binary '\0'),(16,'Strawberries are the beautiful red fruit, extremely attractive, often packaged in luxurious, discreet and safe boxes. 500 grams of strawberries contain a variety of sugars, proteins, organic acids, pectic and rich in vitamins, minerals as well as trace elements to help strengthen the immune system, protect eyes, fight cancer, prevent wrinkles, .. . and many other benefits. Strawberries, also known as ground strawberries, are grown for fruit in temperate regions. With attractive aroma, sweet and sour taste, strawberries are very favored. This domestic fruit has high nutritional value and is known as \"The Queen of Fruits\". Strawberries contain a variety of sugars, proteins, organic acids, pectic and rich in vitamins, minerals as well as trace elements to help strengthen the immune system, protect eyes, fight cancer, prevent wrinkles,...',5,'2022-01-31 00:00:00',120000,'13.jpg','Strawberry',90,NULL,5,_binary '\0'),(17,'Acacia mango is a popular tropical fruit in Vietnam, favored by many users. This fruit is extremely rich in fiber, essential vitamins and minerals that not only help provide nutrients to the human body, but also bring many great health benefits. Eating Acacia mango regularly will help your digestive system and heart function better, help brighten your eyes, and beautify your skin effectively. Acacia mango is also known as a good fruit for people with diabetes. Thanks to the sour and crispy taste, Acacia mango is considered as the first choice when making salads, mango shakes or eaten raw with fish sauce, shrimp salt.',0,'2022-01-31 00:00:00',22000,'14.jpg','Acacia Mango',60,NULL,5,_binary '\0'),(18,'King oranges originate from Vietnam and are grown a lot in the southern provinces and some northern provinces: Ha Giang, Tuyen Quang, Yen Bai... King oranges have thick skin, rough green color, when ripe orange, flesh orange. King orange is very succulent, has a sour taste, so people often squeeze the juice to make a beverage, not eat it fresh like other oranges.',3,'2022-01-31 00:00:00',35000,'16.jpg','King Orange',98,NULL,5,_binary '\0'),(19,'Green grapes are the domestic fruit of Vietnam. The product has thick and clear flesh, sweet taste, not harsh, so it is loved and chosen by a large number of consumers. Grapes are rich in vitamins and nutrients, and have many benefits for human health. We can eat grapes directly, but we can also make grape juice to drink or process in many different ways.',5,'2022-01-31 00:00:00',170000,'17.jpg','Green Grape',60,NULL,5,_binary '\0'),(20,'When bananas become ready, their hues transform from deep green to the bright yellow, and the inside is either yellow or ivory in color, feeling soft and slightly starchy. Bananas tastes sweet and supple when ripe and they are rich in nutritional value such as fiber, vitamin C, and vitamin B6. Besides, bananas are also low in cholesterol, sodium, and saturated fat. Surprisingly, the peels of bananas have a plethora of beauty applications utilized by countless women. Additionally, bananas have numerous other benefits...',4,'2022-01-31 00:00:00',25000,'18.jpg','Banana',79,NULL,5,_binary '\0'),(22,'Cauliflower has tightly-packed white florets, which are slightly fluffy and soft. The florets are surrounded by an outer layer of leaves, which are hard and thick. One cup of cauliflower contains 3 grams of fiber, which represents 10% of daily needs. Fiber helps nourish healthy bacteria in the gut, reducing inflammation and improving digestive health.\nThe antioxidants in cauliflower protect your cells from harmful free radicals that cause inflammation. The Choline present in cauliflower supports cell membrane maintenance, DNA synthesis, and metabolism, as well as preventing cholesterol buildup in the liver.\nCauliflower can be used as a substitute for grains and legumes in a weight loss diet.',0,'2022-02-16 00:00:00',10000,'suplotrang.jpg','Cauliflower',30,NULL,4,_binary '\0'),(23,'Lettuce is a highly nutritious vegetable that is widely preferred by women in family meal plans, owing to its abundance of vitamins and minerals. It offers numerous health benefits, such as cooling properties, blood filtration, improved digestion, pain relief, insomnia treatment, and anti-cough effects. This vegetable can be consumed uncooked or included in salads, complemented by a range of dressings like vinegar, beef, eggs, and more.',2,'2022-02-16 00:00:00',10000,'rauxalach.jpg','Lettuce',100,NULL,4,_binary '\0'),(24,'Scallions, which are also referred to as green onions and spring onions, are known for their mild aroma and slightly sweet and spicy flavor when consumed raw. They are commonly used as a seasoning in cooking. Additionally, scallions have been utilized in traditional Chinese medicine to prevent or treat various ailments, including relieving cold symptoms and headaches, aiding digestion, preventing diabetes, improving overall health and well-being, enhancing vision, and promoting better cardiovascular system function.',0,'2022-02-16 00:00:00',10000,'hanhla.jpg','Scallion',500,NULL,4,_binary '\0'),(25,'Amaranth is recognized as one of the most nutrient-rich vegetables, containing multiple minerals and vitamins. For every 100 grams of amaranth, there are 0.16 milligram of vitamin B2, 80 milligrams of vitamin C, 267 milligrams of calcium, 1.3 grams of fiber, 3.9 milligrams of iron, 3.5 grams of protein, 411 milligrams of potassium, and 2.6 grams of minerals. It is popular among housewives as a daily staple due to its sweet taste and high nutritional value. Additionally, it has been used as a folk medicine to treat various conditions such as constipation, hypertension, and diabetes, while also being a preventative measure against cancer.',0,'2022-02-17 00:00:00',15000,'rauden.jpg','Amaranth',200,NULL,4,_binary '\0'),(26,'Coriander,  also known as cilantro, not just a vegetable known for enhancing the flavor of dishes, but also offers numerous health benefits. Consistent consumption of this food can aid in strengthening bones and joints, lowering blood pressure, protecting the heart, regulating blood sugar, and more. Surprisingly, cilantro also has additional benefits such as reducing the risk of cancer, anemia and neural tube defects, improving brain function, reducing stress and anxiety, increasing immunity and preventing urinary tract infections.',0,'2022-02-10 00:00:00',3500,'raungori.jpg','Coriander',500,NULL,4,_binary '\0'),(27,'Gotu kola, a vegetable with numerous health benefits, can help detoxify the liver, alleviate constipation, treat heart disease, promote skin beauty and boost the immune system. This nutritious vegetable can be used to make refreshing smoothies during summer and cooked in a variety of delicious dishes. Moreover, gotu kola offers the following advantages:\n- Enhancing the immune system and improving sleep quality.\n- Strengthening fragile hair and preventing hair loss while promoting skin beauty (by making face masks for acne treatment with gotu kola).\n- Enhancing cognitive function.\n- Reducing the risk of degenerative diseases such as Alzheimer\'s and dementia to a great extent.',1,'2022-02-17 00:00:00',3000,'rauma.jpg','Gotu Kola',2000,NULL,4,_binary '\0'),(28,'Apart from its ability to act as an anti-inflammatory agent and an antioxidant, specific compounds found in broccoli may mitigate chronic damage to particular tissues within the body. Furthermore, broccoli is a nutrient-packed, green vegetable that has demonstrated the ability to lower the likelihood of developing some types of cancer, for instance, breast, prostate, stomach, kidney, and bladder cancer.',2,'2022-02-16 00:00:00',23000,'suploxanh.jpg','Broccoli',500,NULL,4,_binary '\0'),(29,'We are all accustomed to seeing potatoes on our dinner table because of its usefulness. They are not only beneficial for our health and appearance, but they also offer a host of other advantages. Potatoes can be transformed into mouth-watering soups, stews or fried dishes.\nAs a part of the nightshade family, potatoes are a versatile root vegetable with high nourishing value, hence numerous Vietnamese households opt for potatoes as a dietary staple in their everyday meals. Abundant in vitamins and minerals, potatoes provide many health benefits such as reducing inflammation, relieving pain, augmenting the immune system, and stimulating digestion.',3,'2022-02-16 00:00:00',10000,'khoaitay.png','Potato',500,NULL,6,_binary '\0'),(30,'Like most fruits and vegetables that are orange/red in color, gac fruit contains high amounts of beta-carotene and lycopene. Indeed, a majority of the health benefits associated with gac fruit can be attributed to its high levels of beta-carotene and lycopene. In fact, one gram of gac fruit contains more beta-carotene than either carrots or sweet potatoes, both of which are already known for their high beta-carotene content.\nIn Vietnamese cuisine, gac fruit pulp is often paired with sticky rice to create \"xoi gac\" - a natural-looking golden rice dish that may aid in preventing vitamin A deficiency (beta-carotene is converted to vitamin A in the body). Lycopene, another important carotenoid predominantly found in tomatoes, is also an abundant component of gac fruit, and is associated with a range of health benefits including stroke risk reduction.\n',5,'2022-02-16 00:00:00',40000,'quagat.jpg','Gac Fruit',1000,NULL,6,_binary '\0'),(31,'Rambutan is a typical tropical fruit of summer, known for its sweet taste, small seeds, and thin skin. It is grown according to safety and quality standards and can be enjoyed as a dessert after a meal or as a fruit pickle.\nGrown abundantly in the Mekong Delta, especially in Ben Tre, rambutan is a familiar fruit in daily life, easily recognized for its bright red skin when ripe. Its succulent flesh, sweet taste and crunchy texture make for a delightful eating experience.\nApart from its alluring taste, rambutan is also packed with various essential nutrients such as vitamin C, copper, manganese, potassium, calcium, iron, phosphorus, and fiber, making it a highly beneficial fruit for health and beauty, particularly for women.',6,'2022-02-17 00:00:00',50000,'quachomchom.jpg','Rambutan',1000,NULL,5,_binary '\0'),(32,'One of the specialty fruits of Vietnam, star apple is prized for its succulent flesh with a sweet buttermilk aroma. It is a rich source of important nutrients such as calcium, phosphorus, iron, and magnesium, which are especially beneficial for the health of pregnant women and their fetuses. \nConsuming star apple can have numerous nutritional and health benefits. A 100-gram serving of star apple contains 67 kcal along with vitamins A, B1, B2, B3, C, and important nutrients such as glucide, calcium, iron, fiber, protein, and lipid. Consuming 100-200 grams of star apple daily can help prevent anemia and rickets in children. The high water and fiber content can also help users feel satiated, aiding in weight control. Moreover, the calcium in star apple not only strengthens bones but also prevents excess fat from accumulating in the body.',5,'2022-02-15 00:00:00',70000,'quavusua.jpg','Star Apple',1000,NULL,5,_binary '\0'),(33,'Lychee is a succulent and sweet fruit beloved by many people. Apart from being consumed directly, it is also utilized in many delicious dishes such as lychee tea, dried lychee, lychee syrup, and lychee jelly. However, it is recommended to only consume 6-7 fruits per day, as overconsumption can lead to an increase in body heat.\nDuring the summer months of June and July, the northern provinces of Vietnam witness the lychee harvest season. Ripe, fragrant, and juicy red lychees are a popular fruit amongst families due to their affordable price. Sourced from different locations such as Thanh Ha and Luc Ngan, our commitment to safety, freshness, and quality is always upheld.',10,'2022-02-18 00:00:00',70000,'vaithieu.jpg','Lychee',1000,NULL,5,_binary '\0'),(34,'Pomegranate is acknowledged as one of the healthiest tropical fruits owing to its abundance of beneficial plant compounds that are often unrivaled by other foods. Various research studies have revealed its numerous health benefits, thereby minimizing the likelihood of several diseases. Pomegranate has a distinctly delicious taste and is highly appreciated by women due to its significant nutritional value that enhances beauty, strengthens the immune system, and promotes good health. The fruit contains antioxidants, vitamin C and several other nutrients that provide these benefits.',15,'2022-02-18 00:00:00',130000,'qualuu.jpg','Pomegranate',1000,NULL,5,_binary '\0'),(35,'Queen apples, with a certificate of origin, are imported exclusively from New Zealand and meet the global export standards while maintaining their freshness and delectable taste for consumers. This round fruit with a thin, crimson skin holds yellow flesh with a small core, mild sweetness, and a strong aroma resulting from a cross between Gala and Splendour apples. It is a valuable variety of apple suitable for everyone.\nBesides their excellent flavor, Queen apples are a rich source of vitamin C that fortifies the immune system, with each apple providing up to 8 milligrams of the essential nutrient, which contributes about 14% of the body\'s daily vitamin C requirements. Like pears and blueberries, Queen apples are also associated with a lower risk of type 2 diabetes, thanks to anthocyanins. Moreover, the triterpenoids present in apples can fight colon, liver, and breast cancers.',12,'2022-02-17 00:00:00',200000,'quatao.jpg','Queen Apple',1000,NULL,5,_binary '\0'),(36,'The American yellow lemon, also referred to as lemon, is a fruit variety that is imported from the United States. This oval-shaped fruit has a yellow skin, a mildly sour taste, and a highly distinct aroma. Unlike limes, lemons have a more pronounced fragrance, making them an excellent ingredient for beverages and cakes. By adding lemons, the sharp and bitter taste of limes can be alleviated, thus enhancing the overall flavor profile of the recipe.\nMoreover, lemons have a rich source of vitamins, particularly vitamin C, which is an effective antioxidant that helps prevent cancer and other harmful diseases. Additionally, lemons contain numerous minerals, including potassium, sodium, magnesium, calcium, manganese, and other beneficial compounds that support the liver and kidneys.',5,'2022-02-17 00:00:00',20000,'quachanhvang.jpg','Lemon',1000,NULL,6,_binary '\0');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UKob8kqyqqgmefl0aco34akdtpe` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'user.png','thaochi6402@gmail.com','Trần Thảo Chi','$2a$10$NNFj7.bICFpxqYTsCswbe.BNGHGicL0LZzXmm.UCLz8sWrM3EL3IC','2022-01-29',_binary ''),(2,'user.png','huudong297@gmail.com','Trần Hữu Đồng','$2a$10$.XOXsgTmumdrVdQc74mqUO180lLS0OefXAyPIdiVw0IshtW5WYDMm','2022-01-29',_binary ''),(3,'user.png','dongthd@fpt.edu.vn','user','$2a$10$UtRFor3y5PqxHKFEt1HgAOOaX7tlQs1oEhJA/VLFoUVGKo3OBkISS','2022-01-30',_binary ''),(4,'user.png','greenyshop123vn@gmail.com','Admin Greeny Shop','$2a$10$Hd54fYSXGv6Pqve.WjeLO.DyNv2gGIq/S2Drilp12ClD6gYzhh4jO','2022-02-15',_binary ''),(5,'user.png','demo@gmail.com','user1','$2a$10$GtfloNhLVXQaKdXvmueUfu14h6ijuwFHMLb1icK4rsuzpWa6jOh72','2022-02-17',_binary ''),(6,'user.png','demo2@gmail.com','user2','$2a$10$PUWkbGnEa1OdKmxiQfvw/u3oh3I09nGG6zVHmGLxgigSJC2tCz4Ta','2022-02-17',_binary ''),(7,'user.png','demo3@gmail.com','user3','$2a$10$ePg/cUabs6dShg4hC4Buv.QaVFx6VqqBUSlmQBntalEOAaWCfY2Hi','2022-02-17',_binary ''),(8,'user.png','greenyshop.adm@gmail.com','demo tên','$2a$10$zBgbGqKnEPFiMOceXhqwIem4e/JFMYF2rjRElIcuaBAnO.toFIOCm','2022-02-17',_binary ''),(9,'user.png','silverbullet2609@gmail.com','Nguyễn Gia Bảo','$2a$10$WdlfosO6YSG81mJt6IJnbOn9ezuQ0zglTtMXAqJtmiFMY6h25s8yu','2023-05-13',_binary '');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` int NOT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FKel9kyl84ego2otj2accfd8mr7` (`user_id`),
  CONSTRAINT `FKel9kyl84ego2otj2accfd8mr7` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'ha tinh',2,'2022-01-29 00:00:00','0917291997',2,1),(2,'da nang',20000,'2022-01-29 00:00:00','0615856985',2,2),(3,'ha tinh',0,'2022-02-12 00:00:00','0915762565',3,1),(4,'ha tinh',0,'2022-02-12 00:00:00','0915762565',3,1),(6,'68,Đà Nẵng',0,'2022-02-12 00:00:00','0915762565',3,1),(7,'266 Dũng Sĩ Thanh Khê - TP. Đà Nẵng',67900,'2022-02-12 00:00:00','0915746525',2,2),(8,'266 Dũng Sĩ Thanh Khê - TP. Đà Nẵng',169450,'2022-02-12 00:00:00','0915291997',1,2),(9,'268 Dũng Sĩ Thanh Khê - TP. Đà Nẵng',115950,'2022-02-12 00:00:00','0915291997',3,2),(10,'168-Hà Nội',53050,'2022-02-12 00:00:00','0916829635',1,1),(11,'266 Dũng Sĩ Thanh Khê - TP. Đà Nẵng',123,'2022-02-13 00:00:00','0915291997',2,2),(12,'Đà Nẵng',40500,'2022-02-13 00:00:00','0915291997',0,2),(13,'Đà Nẵng',116050,'2022-02-13 00:00:00','0915762565',3,2),(14,'268 Dũng Sĩ Thanh Khê - TP. Đà Nẵng',130750,'2022-02-13 00:00:00','0915291997',3,2),(15,'266 Dũng Sĩ Thanh Khê - TP. Đà Nẵng',362000,'2022-02-13 00:00:00','0915291997',2,2),(16,'Đà Nẵng',83550,'2022-02-13 00:00:00','0915762565',3,2),(17,'Hà Tĩnh',362000,'2022-02-13 00:00:00','0915291997',0,1),(18,'Đà Nẵng',24500,'2022-02-15 00:00:00','0915291997',0,2),(19,'268 Dũng Sĩ Thanh Khê - TP. Đà Nẵng',24250,'2022-02-15 00:00:00','0915762565',2,2),(20,'268 Dũng Sĩ Thanh Khê - TP. Đà Nẵng',54500,'2022-02-15 00:00:00','0915746525',2,2),(21,'268 Dũng Sĩ Thanh Khê - TP. Đà Nẵng',244550,'2022-02-15 00:00:00','0915291997',0,2),(22,'168 Hà Nội',228000,'2022-02-15 00:00:00','0915762565',3,2),(23,'68,Đà Nẵng',40000,'2022-02-16 00:00:00','0915762565',2,2),(24,'Liên Chiểu - Đà Nẵng',55950,'2022-02-16 00:00:00','0915762565',0,2),(25,'268 Dũng Sĩ Thanh Khê - TP. Đà Nẵng',32000,'2022-02-17 00:00:00','0915762565',2,2),(26,'268 Dũng Sĩ Thanh Khê - TP. Đà Nẵng',73750,'2022-02-17 00:00:00','0915291997',2,2),(29,'demo địa chỉ',72500,'2022-02-17 00:00:00','0915291997',2,8),(30,'demo địa chỉ',201500,'2022-02-17 00:00:00','0915291997',2,8),(31,'TP.HCM',211050,'2023-05-19 00:00:00','0123456897',0,9);

/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `order_detail_id` bigint NOT NULL AUTO_INCREMENT,
  `price` double DEFAULT NULL,
  `quantity` int NOT NULL,
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`order_detail_id`),
  KEY `FKjyu2qbqt8gnvno9oe9j2s2ldk` (`order_id`),
  KEY `FK4q98utpd73imf4yhttm3w0eax` (`product_id`),
  CONSTRAINT `FK4q98utpd73imf4yhttm3w0eax` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKjyu2qbqt8gnvno9oe9j2s2ldk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,3333,11,1,8),(2,2222,1,2,8),(3,120000,1,3,16),(4,39000,1,3,9),(5,25000,1,3,10),(6,39000,1,4,9),(7,25000,1,4,10),(9,39000,1,6,9),(10,25000,1,6,12),(11,40000,1,6,14),(12,35000,2,7,18),(13,35000,2,8,18),(14,25000,1,8,20),(15,16000,1,8,8),(16,39000,1,8,9),(17,25000,1,8,10),(18,22000,3,9,17),(19,35000,1,9,18),(20,16000,1,9,8),(21,16000,1,10,8),(22,39000,1,10,9),(23,16000,1,11,8),(24,39000,1,11,9),(25,16000,1,12,8),(26,25000,1,12,10),(27,39000,1,13,9),(28,25000,2,13,10),(29,30000,1,13,11),(30,22000,1,14,17),(31,25000,1,14,10),(32,30000,2,14,11),(33,25000,1,14,13),(34,120000,3,15,16),(35,10000,2,15,15),(36,22000,1,16,17),(37,39000,1,16,9),(38,25000,1,16,10),(39,120000,3,17,16),(40,10000,2,17,15),(41,25000,1,18,10),(42,25000,1,19,13),(43,25000,1,20,10),(44,30000,1,20,11),(45,22000,1,21,17),(46,170000,1,21,19),(47,25000,1,21,20),(48,39000,1,21,9),(49,120000,1,22,16),(50,25000,1,22,20),(51,40000,2,22,14),(52,10000,1,22,15),(53,40000,1,23,14),(54,22000,1,24,17),(55,35000,1,24,18),(56,16000,2,25,8),(57,25000,1,26,10),(58,25000,1,26,12),(59,25000,1,26,13),(65,25000,1,29,20),(66,25000,2,29,13),(67,170000,1,30,19),(68,40000,1,30,14),(69,120000,1,31,16),(70,39000,1,31,9),(71,30000,2,31,11);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--


DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `rate_date` datetime DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `order_detail_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfwepd0s8syqc9s06xnqa7mdwf` (`order_detail_id`),
  KEY `FK6uv0qku8gsu6x1r2jkrtqwjtn` (`product_id`),
  KEY `FKqi14bvepnwtjbbaxm7m4v44yg` (`user_id`),
  CONSTRAINT `FK6uv0qku8gsu6x1r2jkrtqwjtn` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKfwepd0s8syqc9s06xnqa7mdwf` FOREIGN KEY (`order_detail_id`) REFERENCES `order_details` (`order_detail_id`),
  CONSTRAINT `FKqi14bvepnwtjbbaxm7m4v44yg` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `favorite_id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`favorite_id`),
  KEY `FK6sgu5npe8ug4o42bf9j71x20c` (`product_id`),
  KEY `FK1uphh0glinnprjknyl68k1hw1` (`user_id`),
  CONSTRAINT `FK1uphh0glinnprjknyl68k1hw1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK6sgu5npe8ug4o42bf9j71x20c` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;







--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_USER'),(2,'ROLE_USER'),(4,'ROLE_ADMIN'),(5,'ROLE_ADMIN'),(6,'ROLE_USER'),(7,'ROLE_USER'),(8,'ROLE_USER'),(9,'ROLE_USER'),(10,'ROLE_USER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;



--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_roles` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  KEY `FKt4v0rrweyk393bdgt107vdx0x` (`role_id`),
  KEY `FKgd3iendaoyh04b95ykqise6qh` (`user_id`),
  CONSTRAINT `FKgd3iendaoyh04b95ykqise6qh` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKt4v0rrweyk393bdgt107vdx0x` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (1,1),(2,2),(3,4),(4,5),(5,6),(6,7),(7,8),(8,9),(9,10);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

