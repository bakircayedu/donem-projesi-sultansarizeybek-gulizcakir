USE [genfark]
GO
/****** Object:  Table [dbo].[Kalıtsal_Hastalık]    Script Date: 4.01.2022 20:53:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kalıtsal_Hastalık](
	[KHastalik_id] [int] IDENTITY(1,1) NOT NULL,
	[KHastalik_ad] [nvarchar](50) NOT NULL,
	[KHastalik_bilgi] [nvarchar](max) NOT NULL,
	[KHastalik_foto] [varchar](100) NOT NULL,
	[KHastalik_tarih] [smalldatetime] NOT NULL,
	[Kategori_id] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[KHastalik_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yorumlar]    Script Date: 4.01.2022 20:53:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yorumlar](
	[Yorum_id] [int] IDENTITY(1,1) NOT NULL,
	[Yorum_ad] [nvarchar](50) NOT NULL,
	[Yorum_soyad] [nvarchar](50) NOT NULL,
	[Yorum_mail] [nvarchar](50) NOT NULL,
	[Yorum_tarih] [smalldatetime] NOT NULL,
	[Yorum_onay] [bit] NOT NULL,
	[Yorum_icerik] [nvarchar](700) NOT NULL,
	[KHastalik_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Yorum_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[yorumRaporu]    Script Date: 4.01.2022 20:53:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[yorumRaporu] 
as 
SELECT KHastalik_ad,Yorum_ad,Yorum_soyad,Yorum_tarih
FROM Kalıtsal_Hastalık INNER JOIN yorumlar
ON Kalıtsal_Hastalık.KHastalik_id=yorumlar.KHastalik_id
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 4.01.2022 20:53:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Yonetici_id] [int] IDENTITY(1,1) NOT NULL,
	[Yonetici_ad] [nvarchar](50) NOT NULL,
	[Yonetici_sifre] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Yonetici_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FarkındalıkHastalıgı]    Script Date: 4.01.2022 20:53:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FarkındalıkHastalıgı](
	[FHastalik_id] [smallint] IDENTITY(1,1) NOT NULL,
	[FHastalik_Kod] [nvarchar](50) NOT NULL,
	[FHastalik_Bilgi] [nvarchar](max) NOT NULL,
	[FHastalik_Tarih] [smalldatetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FHastalik_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[İletisim]    Script Date: 4.01.2022 20:53:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[İletisim](
	[İletisim_id] [smallint] IDENTITY(1,1) NOT NULL,
	[İletisim_konusu] [nvarchar](50) NOT NULL,
	[İletisim_icerik] [nvarchar](max) NOT NULL,
	[İletisim_sahip] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[İletisim_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategoriler]    Script Date: 4.01.2022 20:53:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategoriler](
	[Kategori_id] [smallint] IDENTITY(1,1) NOT NULL,
	[Kategori_ad] [nvarchar](50) NOT NULL,
	[Kategoriadet] [smallint] NOT NULL,
	[KategoriFoto] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Kategori_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([Yonetici_id], [Yonetici_ad], [Yonetici_sifre]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[Admin] OFF
SET IDENTITY_INSERT [dbo].[FarkındalıkHastalıgı] ON 

INSERT [dbo].[FarkındalıkHastalıgı] ([FHastalik_id], [FHastalik_Kod], [FHastalik_Bilgi], [FHastalik_Tarih]) VALUES (12, N'esra@gmail.com', N'dünyanın en sevimli çocukları da down sendromlu en sinir bozucu çocukları da.
her şeyden önce down sendromlu çocuklar çok içten seviyorlar insanı çok içten gülüyorlar.her birinin nanik yapar gibi dil çıkarmaları, sevinince ağızlarını kocaman açarak kasılarak gülmeleri ve el çırpmaları insanda tarifi güç bir huzur oluşturuyor. başka çocuklarda olmayan bi sarılma hevesi veriyorlar bana. tabii sarılmıyorum ama sarılmak isterlerse engel olmuyorum eğilip aynı seviyeye ulaşınca sarılmasına izin veriyorum. amaaa gelelim bu arkadaşların sinir bozucu yanlarına. inat bunlar arkadaş!
ne bir ödül ne bir pekiştireç ne bir arkadaşlık fayda etmiyor. yapmak istemiyorsa yapmıyor. misal bir çocuk arkadaşlarıyla top oynarken birden bıraksın ve yere otursun bunun bir sürü sebebi olabilir ama görmezlikten gelmek çoğu zaman problemi çözmeye yeter. ama down sendromlu bir çocuksa onu ordan kaldırmak bir sanattır. kollarından tutup kaldırdınız mi? hoşuna gittiyse bi daha oturur ‘gel beni kaldır’ der. hoşuna gitmediyse bir daha oturur daha beter olur durum. ‘hadi kalk kalk kalk üstün pislenecek’ mi dediniz? bu söz işe yarayabilir ama ya fikir hoşuna gider yere tümden yatarsa? bi yandan sırıtıyor olur artık hemde. görmezden gelip oyunu daha uzağa taşıyalım desen görmediği yerde sesleri duyduğu halde bir gram merak etmeden oturmaya devam edebilir. bir vaatte bulundunuz haydi artık gerçekleştirseniz bir rüşvetçi gerçekleştirmezseniz güvensiz bir çocuk yolunda bir adım daha attınız. kızdınız diyelim belki işe yarar ama down sendromlu çocuklar çok çabuk tehdit arsızı veya korkak olabiliyor.peki ne yapmalı? ‘ortak ilgiyi devam ettirmek’ istediğimiz işleri yapmayı sürdürmesi için şart. başarması oldukça zor, çok fazla enerji gerektiriyor ama bir down sendromlu çocuk için ortak ilgi şart oğlu şart. bunu becerebilmek çok iyi bir gözlemci olmayı ve gerçekçi olmayı gerektiriyor. çocuğu kendimizi takip etmeye zorlamamalı biz çocuğu takip ederken manüpile etmeliyiz.istemediğimiz işleri yapmayı sürdürmemesi için ise çok net bir tavır ve ‘hayır’ demek gerekiyor. asla tartışmamalı yapmayı bırakana kadar dik durmalıyız. korkutmak incitmek yok. şımartmak enerjinizin çok yüksek olduğu anlarda nadiren serbest  //Down senromu', CAST(N'2022-01-03T10:36:00' AS SmallDateTime))
INSERT [dbo].[FarkındalıkHastalıgı] ([FHastalik_id], [FHastalik_Kod], [FHastalik_Bilgi], [FHastalik_Tarih]) VALUES (13, N'guliz@gmail.com', N'yaklaşık 8 yıldır kendisiyle uğraştığım hastalık. halk arasındaki yanılgı bu hastalığın ırsî olarak ortaya çıktığı yönündedir, fakat bu büyük bir yanılgıdır. aslında, hastalık olarak nitelense de, kendisini, herhangi bir şekilde tedavisi olmadığı için, kimi zaman hayatınızı biçimlendiren bir faktör olarak da nitelendirebilirsiniz. kendi üzerinden gidecek olur isem, 8 senedir günde 4 (yazıyla dört) defa insülin yapmak suretiyle hayatımı idame ettiriyorum. ironiktir ki, bahsi geçtiği yerlerde, durumdan bahsettiğimde durumdan benden çok civardaki insanlar rahatsız oluyor ve sempati göstermeye çalışıyorlar. bunun için ortalama veya olması gereken süreyi bilmiyorum, fakat 8 süre boyunca sürekli (nefes almak, su içmek gibi) yaptığınız bir şeyi bir süre sonra ekstra bir meşgale veya bir uğraş olarak değerlendirmiyorsunuz. bu, eminim, psikolojide belli bir sendrom veya davranış biçimi kabullenmesi olarak açıklanabilir. bu durumun ortaya çıkışı ile ilgili bir sürü spekülasyon ortaya atılabilir aslında. lakin, kabul edilecek bir şey var; bu da hastalığın hayatınızı radikal şekilde bir kutba iteceğidir. bu durumu benimser ve işbu durumun kuralları ile hayatınızı biraz daha kenarlara çekerseniz, hayat kalitenizin arttığını gözlemleyebilirsiniz. bu kilo vermeden, sağlıklı bir vücuda kavuşmaya, oluşması muhtemel türlü mide hastalıklarından düşük seviyelerde kurtulmaya ve uzun yaşamaya kadar gidiyor. fakat, mevzu bahis duruma ayak uydurmaya çalışmayıp, hasta olmadan önceki hayatınıza devam ederseniz, bu da sizi bambaşka bir kutba itiyor. muhtelif organlarınızı zaman içinde - kaçınılmaz olarak - kaybetmeye başlayıp, ölümden başka her şeyi kapınızda bulmanıza neden olabiliyor.', CAST(N'2022-01-03T10:39:00' AS SmallDateTime))
INSERT [dbo].[FarkındalıkHastalıgı] ([FHastalik_id], [FHastalik_Kod], [FHastalik_Bilgi], [FHastalik_Tarih]) VALUES (14, N'ayse@gmail.com', N'Bu hastalıgı yaklaşık 5 sene önce farkettim.Hastalıgımın kalıtsal oldugunu söylediler.yıldır kendisiyle uğraştığım hastalık. halk arasındaki yanılgı bu hastalığın ırsî olarak ortaya çıktığı yönündedir, fakat bu büyük bir yanılgıdır. aslında, hastalık olarak nitelense de, kendisini, herhangi bir şekilde tedavisi olmadığı için, kimi zaman hayatınızı biçimlendiren bir faktör olarak da nitelendirebilirsiniz. kendi üzerinden gidecek olur isem, 8 senedir günde 4 (yazıyla dört) defa insülin yapmak suretiyle hayatımı idame ettiriyorum. ironiktir ki, bahsi geçtiği yerlerde, durumdan bahsettiğimde durumdan benden çok civardaki insanlar rahatsız oluyor ve sempati göstermeye çalışıyorlar. bunun için ortalama veya olması gereken süreyi bilmiyorum, fakat 8 süre boyunca sürekli (nefes almak, su içmek gibi) yaptığınız bir şeyi bir süre sonra ekstra bir meşgale veya bir uğraş olarak değerlendirmiyorsunuz. bu, eminim, psikolojide belli bir sendrom veya davranış biçimi kabullenmesi olarak açıklanabilir.

bu durumun ortaya çıkışı ile ilgili bir sürü spekülasyon ortaya atılabilir aslında. lakin, kabul edilecek bir şey var; bu da hastalığın hayatınızı radikal şekilde bir kutba iteceğidir. bu durumu benimser ve işbu durumun kuralları ile hayatınızı biraz daha kenarlara çekerseniz, hayat kalitenizin arttığını gözlemleyebilirsiniz. bu kilo vermeden, sağlıklı bir vücuda kavuşmaya, oluşması muhtemel türlü mide hastalıklarından düşük seviyelerde kurtulmaya ve uzun yaşamaya kadar gidiyor. fakat, mevzu bahis duruma ayak uydurmaya çalışmayıp, hasta olmadan önceki hayatınıza devam ederseniz, bu da sizi bambaşka bir kutba itiyor. muhtelif organlarınızı zaman içinde - kaçınılmaz olarak - kaybetmeye başlayıp, ölümden başka her şeyi kapınızda bulmanıza neden olabiliyor.

yukarıda bahsettiğim kuralvari yapmanız gereken şeyleri o kadar katı şekilde belirlemenize gerek yok kesinlikle. (katı ve değişmez kurallar içinde yaşamanın ne kadar itici geldiğinden ve bunun gerçekleştirilmesi ihtimalinin düşüklüğünden bahsetmeye gerek yok hali hazırda) yaptığınız şeyleri diyabet hastası filtresinden gözlemleyerek ve bunları hastalığın koşulları ile birlikte rasyonalize ettiğinizde, ne yapmanız/ne yapmamanız gerektiği aşağı yukarı ortaya çıkıyor. hayatınızı ne kadar planlı yaşıyorsanız, hastalığı da o kadar planlı yaşıyorsunuz. burada bir doğru orantı söz konusu.

diyeceğim odur ki, kesinlikle kendini sıkmanız gereken bir durum değil. günlük olarak vurduğunuz insülinin dahi uzun vadede (psikolojik, fizyolojik, anatomik ve biyolojik) ne kadar faydalı olduğunu göreceksiniz.', CAST(N'2022-01-03T10:41:00' AS SmallDateTime))
INSERT [dbo].[FarkındalıkHastalıgı] ([FHastalik_id], [FHastalik_Kod], [FHastalik_Bilgi], [FHastalik_Tarih]) VALUES (17, N'umut@gmail.com', N'damarlarınızda dolaşan katildir. tıpkı kan şekeri gibi kolesterolün de ideal düzeyde olması elzemdir. normalden fazla olması ise genç yaştan başlayarak damarların canına okur. bugün birçok bilimadamı total kolesterolün 200 mg/dl değil 150 mg/dl seviyesinin altında olması gerektiğini söylüyor. öte yandan trigliserid falan da ideal düzeyde olmalı.

"ben pek et yemiyorum, bana bir şey olmaz" diye düşünmeyin. zira doymuş yağ sadece ette yok. peynir, ayran, simit , pide, poğaça, bisküvi , tatlı, dondurma falan kısacası türk mutfağının ekseriyeti tıkabasa yağ dolu..

o yüzden kalp ve damar hastalıklarından ölümlerde avrupa birincisi ve dünya üçüncüsüyüz. genç yaşta kalpten ölümlerde ise dünya rekortmeniyiz.

çünkü türk mutfağı tıkabasa yağ dolu.

hem rafine karbonathirattan hem de doymuş yağdan çok zengin bir mutfağımız var.

internet sayesinde giderek yaygınlaşan güney anadolu mutfağı da bu süreci çok hızlandırdı.

kebap, dürüm, döner, lahmacun gibi ürünler fastfoodun dik âlâsıdır.. hem doymuş yağ, hem glisemik indeks, hem de kalori bakımından 4-5 tane hamburgere eşittir bir dürüm veya döner.

insanlarımız sadece hamburgeri falan zararlı sanıyor. sadece bu ürünleri fastfood sanıyor. oysa güney anadolu mutfağı yani kebaplar, dürümler, dönerler, kokoreçler falan fastfood''un feriştahıdır ve kalp damar sağlığı açısından büyük bir risk faktörü teşkil eder bu mutfak.

o yüzden kolesterolü düşürmek ve 200 mg/dl seviyesinin altına çekmek için sadece diyet yapmak yetmez, aynı zamanda sağlıklı ve bitkisel ağırlıklı, sürdürülebilir bir diyete uymak da icab eder.

aksi takdirde kolesterol, zamanla damarlarınızın canına okur. yıllar içinde oluşan ve kademeli olarak biriken hasar zamanla damarlarınızın tıkanmasına ve aniden dünyaya veda etmenize neden olur.

o yüzden kolesterol hakkındaki komplo teorilerine inanmamak, bilim ne diyorsa onu baz almak.', CAST(N'2022-01-04T12:12:00' AS SmallDateTime))
INSERT [dbo].[FarkındalıkHastalıgı] ([FHastalik_id], [FHastalik_Kod], [FHastalik_Bilgi], [FHastalik_Tarih]) VALUES (19, N'beray@gmail.com', N'tip 2 diyabete nazaran tamamen şansa yakalanan bir hastalık olan tip 1 diyabet, vücudun kendi beta hücrelerine saldırmasıyla olurusur. c-peptid enziminin bitmesiyle beraber vücut insulin üretemez ve dışardan insüline ihtiyaç duyar. en çok bebekler, ergenlikteki gençler ve engenlikten yeni çıkmış insanlarda rastlanır, hızlı kilo kaydı, susama, terleme gibi semptomlarla önceden belli olabilir. erken tehşis çok önemlidir, şeker komasına girmeden fark edilirse en az hasarla kurtulunabilir. tedavi sürecinde insulin tedavisinin yanında düzgün bir diyet ve egzersiz çok önemlidir.', CAST(N'2022-01-05T00:00:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[FarkındalıkHastalıgı] OFF
SET IDENTITY_INSERT [dbo].[İletisim] ON 

INSERT [dbo].[İletisim] ([İletisim_id], [İletisim_konusu], [İletisim_icerik], [İletisim_sahip]) VALUES (1, N'sultan@gmail.com', N'xsxsc', N'sultan sarızey ek')
INSERT [dbo].[İletisim] ([İletisim_id], [İletisim_konusu], [İletisim_icerik], [İletisim_sahip]) VALUES (2, N'sultan@gmail.com', N'xsxsc', N'sultan sarızey ek')
INSERT [dbo].[İletisim] ([İletisim_id], [İletisim_konusu], [İletisim_icerik], [İletisim_sahip]) VALUES (3, N'sultan@gmail.com', N'xsxsc', N'sultan sarızey ek')
INSERT [dbo].[İletisim] ([İletisim_id], [İletisim_konusu], [İletisim_icerik], [İletisim_sahip]) VALUES (4, N'guliz@gmail.com', N'', N'güliz')
INSERT [dbo].[İletisim] ([İletisim_id], [İletisim_konusu], [İletisim_icerik], [İletisim_sahip]) VALUES (5, N'c.c.@gmail.com', N'ööcö', N'cdçdc')
INSERT [dbo].[İletisim] ([İletisim_id], [İletisim_konusu], [İletisim_icerik], [İletisim_sahip]) VALUES (6, N'güliz@gmail.com', N'fvgggt', N'güliz')
INSERT [dbo].[İletisim] ([İletisim_id], [İletisim_konusu], [İletisim_icerik], [İletisim_sahip]) VALUES (7, N'güliz@gmail.com', N'fvgggt', N'güliz')
INSERT [dbo].[İletisim] ([İletisim_id], [İletisim_konusu], [İletisim_icerik], [İletisim_sahip]) VALUES (8, N'asdsad', N'deeeegggg', N'berkay')
INSERT [dbo].[İletisim] ([İletisim_id], [İletisim_konusu], [İletisim_icerik], [İletisim_sahip]) VALUES (9, N'hdhhd', N'dhhdhd', N'okan')
INSERT [dbo].[İletisim] ([İletisim_id], [İletisim_konusu], [İletisim_icerik], [İletisim_sahip]) VALUES (10, N'ffff', N'adwd', N'dener')
SET IDENTITY_INSERT [dbo].[İletisim] OFF
SET IDENTITY_INSERT [dbo].[Kalıtsal_Hastalık] ON 

INSERT [dbo].[Kalıtsal_Hastalık] ([KHastalik_id], [KHastalik_ad], [KHastalik_bilgi], [KHastalik_foto], [KHastalik_tarih], [Kategori_id]) VALUES (1, N'diyabet', N'Halk arasında genel olarak  şeker hastalığı olarak tabir edilen Diabetes Mellitus, genel olarak kanda glukoz (şeker) seviyesinin normalin üzerine çıkması, buna bağlı olarak normalde şeker içermemesi gereken idrarda şekere rastlanmasıdır. Farklı türevleri bulunan diyabet hastalığı, ülkemizde ve dünyada en sık rastlanan hastalıklar arasında yer alır. Uluslararası Diyabet Federasyonu''nun sağlamış olduğu istatistiki verilere göre her 11 yetişkinden biri diyabet hastalığına sahip olmakla birlikte her 6 saniyede 1 birey diyabet kaynaklı sorunlar nedeniyle hayatını kaybetmektedir.', N'https://res.cloudinary.com/grohealth/image/upload/v1581695681/DCUK/Content/causes-of-diabetes.png', CAST(N'2021-12-12T00:50:00' AS SmallDateTime), 4)
INSERT [dbo].[Kalıtsal_Hastalık] ([KHastalik_id], [KHastalik_ad], [KHastalik_bilgi], [KHastalik_foto], [KHastalik_tarih], [Kategori_id]) VALUES (3, N'astım', N'Astım, tüm dünyada yaklaşık 300 milyon kişiyi etkilediği tahmin edilen ciddi bir halk sağlığı sorunudur. Ülkemizde yaklaşık her 100 erişkinden 5-7’sinde, her 100 çocuktan 13-15’inde görülmektedir.

Her yaştan bireyi etkileyebilen, doğru tedavi ile kontrol altına alınabilen, kontrol altına alınamadığında ise günlük aktiviteleri ciddi olarak kısıtlayabilen kronik (müzmin) bir hastalıktır.

Astım, hava yollarının daralması ile kendini gösteren ve ataklar (krizler) halinde gelen bir hastalıktır. Hastalar ataklar arasında kendilerini iyi hissederler.', N'https://cdn.memorial.com.tr/files/Uploads/1/15/shutterstock1782286208minjpg_2f17.jpg', CAST(N'2021-11-14T09:20:00' AS SmallDateTime), 12)
INSERT [dbo].[Kalıtsal_Hastalık] ([KHastalik_id], [KHastalik_ad], [KHastalik_bilgi], [KHastalik_foto], [KHastalik_tarih], [Kategori_id]) VALUES (6, N'renk körlügü', N'Renk körlüğü renklerin veya renklerin arasındaki farkların algılanamadığı bir görme bozukluğudur.

Sıklıkla kırmızı-yeşil gibi renklerin karıştırılması şeklinde ortaya çıkan renk körlüğü, nadiren de olsa tüm renklerin gri ve tonlarındaymış gibi algılandığı şekilde de görülebilmektedir.Renk körlüğü iki farklı şekilde meydana gelebilir. Bunlardan birincisi kalıtsal sebeplerle oluşan renk körlüğü, diğeri ise sonradan meydana gelen, edinilmiş renk körlüğüdür.', N'https://www.igh.com.tr/sites/default/files/paragraphs_slider/9.jpg', CAST(N'2021-09-14T09:00:00' AS SmallDateTime), 13)
INSERT [dbo].[Kalıtsal_Hastalık] ([KHastalik_id], [KHastalik_ad], [KHastalik_bilgi], [KHastalik_foto], [KHastalik_tarih], [Kategori_id]) VALUES (15, N'Guatr Hastalıgı', N'Toplumda görülme sıklığı %2 civarinda olan Haşhimoto tiroiditi, tiroid bezinin çalışma fonksiyonunun tamamen bozulmasıyla ortaya çıkabiliyor. Genetik geçişli olabilen hastalık, en çok kadınlarda görülmekle birlikte stres, enfeksiyon, aşırı iyot maruziyeti gibi çevresel faktörler de neden olabilmektedir....', N'https://www.medilinehastanesi.com/public/images/17/tOif5gUo0WYKbZPJCLQv9l1sI62pBrNk.webp', CAST(N'2021-05-13T00:00:00' AS SmallDateTime), 4)
SET IDENTITY_INSERT [dbo].[Kalıtsal_Hastalık] OFF
SET IDENTITY_INSERT [dbo].[Kategoriler] ON 

INSERT [dbo].[Kategoriler] ([Kategori_id], [Kategori_ad], [Kategoriadet], [KategoriFoto]) VALUES (4, N'Kalıtsal Metabolik Hastalıklar', 10, N'https://www.medikalakademi.com.tr/wp-content/uploads/2019/01/diyabet-kansekeri-test.jpg')
INSERT [dbo].[Kategoriler] ([Kategori_id], [Kategori_ad], [Kategoriadet], [KategoriFoto]) VALUES (5, N'Kalıtsal Kas iskelet hastalıkları', 10, N'https://www.medicalpark.com.tr/_uploads/_images/_healthGuide/1ylOxyYk.jpg')
INSERT [dbo].[Kategoriler] ([Kategori_id], [Kategori_ad], [Kategoriadet], [KategoriFoto]) VALUES (6, N'Kalıtsal Norölojik hastalıklar', 10, N'https://i.cnnturk.com/i/cnnturk/75/740x416/5f7497c370380e0d307005f7.jpg')
INSERT [dbo].[Kategoriler] ([Kategori_id], [Kategori_ad], [Kategoriadet], [KategoriFoto]) VALUES (7, N'Kalıtsal kan hastalıkları', 10, N'https://cdn.memorial.com.tr/files/2017/1/b4d151ac-217a-44b5-998e-a023d48424e6.jpg')
INSERT [dbo].[Kategoriler] ([Kategori_id], [Kategori_ad], [Kategoriadet], [KategoriFoto]) VALUES (8, N'Kalıtsal Kalp Hastalıkları', 10, N'https://docsd.anadolusaglik.org/blog/crops/600x340/gizli_kalp_hastaligi_kapinizi_calmadan_61064.jpg')
INSERT [dbo].[Kategoriler] ([Kategori_id], [Kategori_ad], [Kategoriadet], [KategoriFoto]) VALUES (9, N'Hipertansiyon (Yüksek Tansiyon)', 1, N'https://i.sozcu.com.tr/wp-content/uploads/2019/11/12/iecrop/hipertansiyon_16_9_1573543011.jpg')
INSERT [dbo].[Kategoriler] ([Kategori_id], [Kategori_ad], [Kategoriadet], [KategoriFoto]) VALUES (11, N'Kalıtsal Onkolojik Hastalıklar (Kanserler)', 10, N'https://www.haberts.com/images/upload/1_8.png')
INSERT [dbo].[Kategoriler] ([Kategori_id], [Kategori_ad], [Kategoriadet], [KategoriFoto]) VALUES (12, N'Kalıtsal Solunum Hastalıkları', 10, N'https://im.haberturk.com/2019/09/24/ver1569328742/2525013_810x458.jpg')
INSERT [dbo].[Kategoriler] ([Kategori_id], [Kategori_ad], [Kategoriadet], [KategoriFoto]) VALUES (13, N'Diger kalıtsal hastalıklar', 50, N'https://www.medicalpark.com.tr/_uploads/_images/_healthGuide/6fgJ9VDJ.jpg')
SET IDENTITY_INSERT [dbo].[Kategoriler] OFF
SET IDENTITY_INSERT [dbo].[yorumlar] ON 

INSERT [dbo].[yorumlar] ([Yorum_id], [Yorum_ad], [Yorum_soyad], [Yorum_mail], [Yorum_tarih], [Yorum_onay], [Yorum_icerik], [KHastalik_id]) VALUES (56, N'Sultan ', N'Sarızeybek', N'Sultansrzybk@gmail.com', CAST(N'2021-12-12T00:00:00' AS SmallDateTime), 1, N'Bendeki ilk belirtisi halsizlik aşırı uyku,bulanık görme gibi belirtilerle karşılaştım.Uzmanlar öncülügünde tip-1 tipi şeker hastalıgı tanısı konuldu.Şeker hastalıgının kalıtsal oldugu söylendi..Şeker hastalığının tedavisinde değişmez kurallar; eğitim, dengeli beslenme düzeni, egzersizdir.  ', 1)
INSERT [dbo].[yorumlar] ([Yorum_id], [Yorum_ad], [Yorum_soyad], [Yorum_mail], [Yorum_tarih], [Yorum_onay], [Yorum_icerik], [KHastalik_id]) VALUES (60, N'Güliz', N'Çakır', N'Gülizçakir@gmail.com', CAST(N'2021-12-10T00:00:00' AS SmallDateTime), 1, N'Öncelikle ailemde şeker hastalıgı oldugu için düzenli olarak doktor kontrolüne gidiyorum.Bana Tip-2 şeker hastası oldugum söylendiginden beri düzenli beslenme,spor sayesinde risk en aza inmiş olabiliyor .Sizlerede tavsiyem şeker hastası olsanız bile doktor öncülügünde her şeyden yiyebilirsiniz.Unutmayın hastalık sizden güçlü degildir.', 1)
INSERT [dbo].[yorumlar] ([Yorum_id], [Yorum_ad], [Yorum_soyad], [Yorum_mail], [Yorum_tarih], [Yorum_onay], [Yorum_icerik], [KHastalik_id]) VALUES (69, N'ayse', N'sarızeybek', N'ayse@gmail.com', CAST(N'2021-12-12T00:00:00' AS SmallDateTime), 1, N'hastayım ', 3)
SET IDENTITY_INSERT [dbo].[yorumlar] OFF
ALTER TABLE [dbo].[Kalıtsal_Hastalık]  WITH CHECK ADD  CONSTRAINT [FK_Kalıtsal_Hastalık_Kategoriler] FOREIGN KEY([Kategori_id])
REFERENCES [dbo].[Kategoriler] ([Kategori_id])
GO
ALTER TABLE [dbo].[Kalıtsal_Hastalık] CHECK CONSTRAINT [FK_Kalıtsal_Hastalık_Kategoriler]
GO
ALTER TABLE [dbo].[yorumlar]  WITH CHECK ADD  CONSTRAINT [FK_yorumlar_Kalıtsal_Hastalık] FOREIGN KEY([KHastalik_id])
REFERENCES [dbo].[Kalıtsal_Hastalık] ([KHastalik_id])
GO
ALTER TABLE [dbo].[yorumlar] CHECK CONSTRAINT [FK_yorumlar_Kalıtsal_Hastalık]
GO
/****** Object:  StoredProcedure [dbo].[kalıtsalDetay]    Script Date: 4.01.2022 20:53:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[kalıtsalDetay]
as
select KHastalik_ad,KHastalik_bilgi,KHastalik_foto,KHastalik_tarih,Kategori_ad,Kategoriadet,KategoriFoto from Kalıtsal_Hastalık
inner join kategoriler
on Kalıtsal_Hastalık.Kategori_id=Kategoriler.Kategori_id
GO
/****** Object:  StoredProcedure [dbo].[sp_yorum]    Script Date: 4.01.2022 20:53:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_yorum]
as
select *from yorumlar
where Yorum_tarih=GETDATE()

execute sp_yorum
GO
--USE [genfark]
--GO
--/****** Object:  Trigger [dbo].[tgr_Kategori]    Script Date: 4.01.2022 21:01:24 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO
--ALTER trigger [dbo].[tgr_Kategori]
--on [dbo].[Kategoriler]
--after insert 
--as 
--begin
--declare @kategoriSay INT
--declare @KategoriId INT
--select @KategoriId=Kategori_id,@kategoriSay=1 From Kategoriler
--update Kategoriler SET Kategoriadet=Kategoriadet+@kategoriSay
--where Kategori_id=@KategoriId
--end