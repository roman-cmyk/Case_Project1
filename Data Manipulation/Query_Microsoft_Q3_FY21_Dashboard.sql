SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  MicrosoftSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAMicrosoft AS Company_Attribute,
  RESULTSCATNOTAMicrosoft AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAMicrosoft AS Company,
    CASE
      WHEN RESULTSCATNOTAMicrosoft != '''({}, {}, 'Non_related')''' THEN 'Microsoft'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.argentina_gn_q3v2`
WHERE
  (RESULTSCATNOTAMicrosoft != '''({}, {}, 'Non_related')'''
    AND MicrosoftSentiment != 'null')
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  GoogleSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAGoogle AS Company_Attribute,
  RESULTSCATNOTAGoogle AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAGoogle AS Company,
    CASE
      WHEN RESULTSCATNOTAGoogle != '''({}, {}, 'Non_related')''' THEN 'Google'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.argentina_gn_q3v2`
WHERE
  (RESULTSCATNOTAGoogle != '''({}, {}, 'Non_related')'''
    AND GoogleSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  AppleSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAApple AS Company_Attribute,
  RESULTSCATNOTAApple AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAApple AS Company,
    CASE
      WHEN RESULTSCATNOTAApple != '''({}, {}, 'Non_related')''' THEN 'Apple'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.argentina_gn_q3v2`
WHERE
  (RESULTSCATNOTAApple != '''({}, {}, 'Non_related')'''
    AND AppleSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  AmazonSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAAmazon AS Company_Attribute,
  RESULTSCATNOTAAmazon AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAAmazon AS Company,
    CASE
      WHEN RESULTSCATNOTAAmazon != '''({}, {}, 'Non_related')''' THEN 'Amazon'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.argentina_gn_q3v2`
WHERE
  (RESULTSCATNOTAAmazon != '''({}, {}, 'Non_related')'''
    AND AmazonSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  FacebookSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAFacebook AS Company_Attribute,
  RESULTSCATNOTAFacebook AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAFacebook AS Company,
    CASE
      WHEN RESULTSCATNOTAFacebook != '''({}, {}, 'Non_related')''' THEN 'Facebook'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.argentina_gn_q3v2`
WHERE
  (RESULTSCATNOTAFacebook != '''({}, {}, 'Non_related')'''
    AND FacebookSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  IBMSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAIBM AS Company_Attribute,
  RESULTSCATNOTAIBM AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAIBM AS Company,
    CASE
      WHEN RESULTSCATNOTAIBM != '''({}, {}, 'Non_related')''' THEN 'IBM'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.argentina_gn_q3v2`
WHERE
  (RESULTSCATNOTAIBM != '''({}, {}, 'Non_related')'''
    AND IBMSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  ZoomSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.argentina_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  MicrosoftSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAMicrosoft AS Company_Attribute,
  RESULTSCATNOTAMicrosoft AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAMicrosoft AS Company,
    CASE
      WHEN RESULTSCATNOTAMicrosoft != '''({}, {}, 'Non_related')''' THEN 'Microsoft'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.brazil_gn_q3v2`
WHERE
  (RESULTSCATNOTAMicrosoft != '''({}, {}, 'Non_related')'''
    AND MicrosoftSentiment != 'null')
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  GoogleSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAGoogle AS Company_Attribute,
  RESULTSCATNOTAGoogle AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAGoogle AS Company,
    CASE
      WHEN RESULTSCATNOTAGoogle != '''({}, {}, 'Non_related')''' THEN 'Google'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.brazil_gn_q3v2`
WHERE
  (RESULTSCATNOTAGoogle != '''({}, {}, 'Non_related')'''
    AND GoogleSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  AppleSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAApple AS Company_Attribute,
  RESULTSCATNOTAApple AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAApple AS Company,
    CASE
      WHEN RESULTSCATNOTAApple != '''({}, {}, 'Non_related')''' THEN 'Apple'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.brazil_gn_q3v2`
WHERE
  (RESULTSCATNOTAApple != '''({}, {}, 'Non_related')'''
    AND AppleSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  AmazonSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAAmazon AS Company_Attribute,
  RESULTSCATNOTAAmazon AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAAmazon AS Company,
    CASE
      WHEN RESULTSCATNOTAAmazon != '''({}, {}, 'Non_related')''' THEN 'Amazon'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.brazil_gn_q3v2`
WHERE
  (RESULTSCATNOTAAmazon != '''({}, {}, 'Non_related')'''
    AND AmazonSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  FacebookSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAFacebook AS Company_Attribute,
  RESULTSCATNOTAFacebook AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAFacebook AS Company,
    CASE
      WHEN RESULTSCATNOTAFacebook != '''({}, {}, 'Non_related')''' THEN 'Facebook'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.brazil_gn_q3v2`
WHERE
  (RESULTSCATNOTAFacebook != '''({}, {}, 'Non_related')'''
    AND FacebookSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  IBMSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAIBM AS Company_Attribute,
  RESULTSCATNOTAIBM AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAIBM AS Company,
    CASE
      WHEN RESULTSCATNOTAIBM != '''({}, {}, 'Non_related')''' THEN 'IBM'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.brazil_gn_q3v2`
WHERE
  (RESULTSCATNOTAIBM != '''({}, {}, 'Non_related')'''
    AND IBMSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  ZoomSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.brazil_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  MicrosoftSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAMicrosoft AS Company_Attribute,
  RESULTSCATNOTAMicrosoft AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAMicrosoft AS Company,
    CASE
      WHEN RESULTSCATNOTAMicrosoft != '''({}, {}, 'Non_related')''' THEN 'Microsoft'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.caribbean_gn_q3v2`
WHERE
  (RESULTSCATNOTAMicrosoft != '''({}, {}, 'Non_related')'''
    AND MicrosoftSentiment != 'null')
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  GoogleSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAGoogle AS Company_Attribute,
  RESULTSCATNOTAGoogle AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAGoogle AS Company,
    CASE
      WHEN RESULTSCATNOTAGoogle != '''({}, {}, 'Non_related')''' THEN 'Google'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.caribbean_gn_q3v2`
WHERE
  (RESULTSCATNOTAGoogle != '''({}, {}, 'Non_related')'''
    AND GoogleSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  AppleSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAApple AS Company_Attribute,
  RESULTSCATNOTAApple AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAApple AS Company,
    CASE
      WHEN RESULTSCATNOTAApple != '''({}, {}, 'Non_related')''' THEN 'Apple'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.caribbean_gn_q3v2`
WHERE
  (RESULTSCATNOTAApple != '''({}, {}, 'Non_related')'''
    AND AppleSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  AmazonSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAAmazon AS Company_Attribute,
  RESULTSCATNOTAAmazon AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAAmazon AS Company,
    CASE
      WHEN RESULTSCATNOTAAmazon != '''({}, {}, 'Non_related')''' THEN 'Amazon'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.caribbean_gn_q3v2`
WHERE
  (RESULTSCATNOTAAmazon != '''({}, {}, 'Non_related')'''
    AND AmazonSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  FacebookSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAFacebook AS Company_Attribute,
  RESULTSCATNOTAFacebook AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAFacebook AS Company,
    CASE
      WHEN RESULTSCATNOTAFacebook != '''({}, {}, 'Non_related')''' THEN 'Facebook'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.caribbean_gn_q3v2`
WHERE
  (RESULTSCATNOTAFacebook != '''({}, {}, 'Non_related')'''
    AND FacebookSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  IBMSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAIBM AS Company_Attribute,
  RESULTSCATNOTAIBM AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAIBM AS Company,
    CASE
      WHEN RESULTSCATNOTAIBM != '''({}, {}, 'Non_related')''' THEN 'IBM'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.caribbean_gn_q3v2`
WHERE
  (RESULTSCATNOTAIBM != '''({}, {}, 'Non_related')'''
    AND IBMSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  ZoomSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.caribbean_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  MicrosoftSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAMicrosoft AS Company_Attribute,
  RESULTSCATNOTAMicrosoft AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAMicrosoft AS Company,
    CASE
      WHEN RESULTSCATNOTAMicrosoft != '''({}, {}, 'Non_related')''' THEN 'Microsoft'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.central_gn_q3v2`
WHERE
  (RESULTSCATNOTAMicrosoft != '''({}, {}, 'Non_related')'''
    AND MicrosoftSentiment != 'null')
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  GoogleSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAGoogle AS Company_Attribute,
  RESULTSCATNOTAGoogle AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAGoogle AS Company,
    CASE
      WHEN RESULTSCATNOTAGoogle != '''({}, {}, 'Non_related')''' THEN 'Google'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.central_gn_q3v2`
WHERE
  (RESULTSCATNOTAGoogle != '''({}, {}, 'Non_related')'''
    AND GoogleSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  AppleSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAApple AS Company_Attribute,
  RESULTSCATNOTAApple AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAApple AS Company,
    CASE
      WHEN RESULTSCATNOTAApple != '''({}, {}, 'Non_related')''' THEN 'Apple'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.central_gn_q3v2`
WHERE
  (RESULTSCATNOTAApple != '''({}, {}, 'Non_related')'''
    AND AppleSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  AmazonSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAAmazon AS Company_Attribute,
  RESULTSCATNOTAAmazon AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAAmazon AS Company,
    CASE
      WHEN RESULTSCATNOTAAmazon != '''({}, {}, 'Non_related')''' THEN 'Amazon'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.central_gn_q3v2`
WHERE
  (RESULTSCATNOTAAmazon != '''({}, {}, 'Non_related')'''
    AND AmazonSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  FacebookSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAFacebook AS Company_Attribute,
  RESULTSCATNOTAFacebook AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAFacebook AS Company,
    CASE
      WHEN RESULTSCATNOTAFacebook != '''({}, {}, 'Non_related')''' THEN 'Facebook'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.central_gn_q3v2`
WHERE
  (RESULTSCATNOTAFacebook != '''({}, {}, 'Non_related')'''
    AND FacebookSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  IBMSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAIBM AS Company_Attribute,
  RESULTSCATNOTAIBM AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAIBM AS Company,
    CASE
      WHEN RESULTSCATNOTAIBM != '''({}, {}, 'Non_related')''' THEN 'IBM'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.central_gn_q3v2`
WHERE
  (RESULTSCATNOTAIBM != '''({}, {}, 'Non_related')'''
    AND IBMSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  ZoomSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.central_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  MicrosoftSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAMicrosoft AS Company_Attribute,
  RESULTSCATNOTAMicrosoft AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAMicrosoft AS Company,
    CASE
      WHEN RESULTSCATNOTAMicrosoft != '''({}, {}, 'Non_related')''' THEN 'Microsoft'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.chile_gn_q3v2`
WHERE
  (RESULTSCATNOTAMicrosoft != '''({}, {}, 'Non_related')'''
    AND MicrosoftSentiment != 'null')
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  GoogleSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAGoogle AS Company_Attribute,
  RESULTSCATNOTAGoogle AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAGoogle AS Company,
    CASE
      WHEN RESULTSCATNOTAGoogle != '''({}, {}, 'Non_related')''' THEN 'Google'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.chile_gn_q3v2`
WHERE
  (RESULTSCATNOTAGoogle != '''({}, {}, 'Non_related')'''
    AND GoogleSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  AppleSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAApple AS Company_Attribute,
  RESULTSCATNOTAApple AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAApple AS Company,
    CASE
      WHEN RESULTSCATNOTAApple != '''({}, {}, 'Non_related')''' THEN 'Apple'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.chile_gn_q3v2`
WHERE
  (RESULTSCATNOTAApple != '''({}, {}, 'Non_related')'''
    AND AppleSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  AmazonSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAAmazon AS Company_Attribute,
  RESULTSCATNOTAAmazon AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAAmazon AS Company,
    CASE
      WHEN RESULTSCATNOTAAmazon != '''({}, {}, 'Non_related')''' THEN 'Amazon'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.chile_gn_q3v2`
WHERE
  (RESULTSCATNOTAAmazon != '''({}, {}, 'Non_related')'''
    AND AmazonSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  FacebookSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAFacebook AS Company_Attribute,
  RESULTSCATNOTAFacebook AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAFacebook AS Company,
    CASE
      WHEN RESULTSCATNOTAFacebook != '''({}, {}, 'Non_related')''' THEN 'Facebook'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.chile_gn_q3v2`
WHERE
  (RESULTSCATNOTAFacebook != '''({}, {}, 'Non_related')'''
    AND FacebookSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  IBMSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAIBM AS Company_Attribute,
  RESULTSCATNOTAIBM AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAIBM AS Company,
    CASE
      WHEN RESULTSCATNOTAIBM != '''({}, {}, 'Non_related')''' THEN 'IBM'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.chile_gn_q3v2`
WHERE
  (RESULTSCATNOTAIBM != '''({}, {}, 'Non_related')'''
    AND IBMSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  ZoomSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.chile_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  MicrosoftSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAMicrosoft AS Company_Attribute,
  RESULTSCATNOTAMicrosoft AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAMicrosoft AS Company,
    CASE
      WHEN RESULTSCATNOTAMicrosoft != '''({}, {}, 'Non_related')''' THEN 'Microsoft'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.colombia_gn_q3v2`
WHERE
  (RESULTSCATNOTAMicrosoft != '''({}, {}, 'Non_related')'''
    AND MicrosoftSentiment != 'null')
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  GoogleSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAGoogle AS Company_Attribute,
  RESULTSCATNOTAGoogle AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAGoogle AS Company,
    CASE
      WHEN RESULTSCATNOTAGoogle != '''({}, {}, 'Non_related')''' THEN 'Google'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.colombia_gn_q3v2`
WHERE
  (RESULTSCATNOTAGoogle != '''({}, {}, 'Non_related')'''
    AND GoogleSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  AppleSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAApple AS Company_Attribute,
  RESULTSCATNOTAApple AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAApple AS Company,
    CASE
      WHEN RESULTSCATNOTAApple != '''({}, {}, 'Non_related')''' THEN 'Apple'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.colombia_gn_q3v2`
WHERE
  (RESULTSCATNOTAApple != '''({}, {}, 'Non_related')'''
    AND AppleSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  AmazonSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAAmazon AS Company_Attribute,
  RESULTSCATNOTAAmazon AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAAmazon AS Company,
    CASE
      WHEN RESULTSCATNOTAAmazon != '''({}, {}, 'Non_related')''' THEN 'Amazon'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.colombia_gn_q3v2`
WHERE
  (RESULTSCATNOTAAmazon != '''({}, {}, 'Non_related')'''
    AND AmazonSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  FacebookSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAFacebook AS Company_Attribute,
  RESULTSCATNOTAFacebook AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAFacebook AS Company,
    CASE
      WHEN RESULTSCATNOTAFacebook != '''({}, {}, 'Non_related')''' THEN 'Facebook'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.colombia_gn_q3v2`
WHERE
  (RESULTSCATNOTAFacebook != '''({}, {}, 'Non_related')'''
    AND FacebookSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  IBMSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAIBM AS Company_Attribute,
  RESULTSCATNOTAIBM AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAIBM AS Company,
    CASE
      WHEN RESULTSCATNOTAIBM != '''({}, {}, 'Non_related')''' THEN 'IBM'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.colombia_gn_q3v2`
WHERE
  (RESULTSCATNOTAIBM != '''({}, {}, 'Non_related')'''
    AND IBMSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  ZoomSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.colombia_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  MicrosoftSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAMicrosoft AS Company_Attribute,
  RESULTSCATNOTAMicrosoft AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAMicrosoft AS Company,
    CASE
      WHEN RESULTSCATNOTAMicrosoft != '''({}, {}, 'Non_related')''' THEN 'Microsoft'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.mexico_gn_q3v2`
WHERE
  (RESULTSCATNOTAMicrosoft != '''({}, {}, 'Non_related')'''
    AND MicrosoftSentiment != 'null')
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  GoogleSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAGoogle AS Company_Attribute,
  RESULTSCATNOTAGoogle AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAGoogle AS Company,
    CASE
      WHEN RESULTSCATNOTAGoogle != '''({}, {}, 'Non_related')''' THEN 'Google'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.mexico_gn_q3v2`
WHERE
  (RESULTSCATNOTAGoogle != '''({}, {}, 'Non_related')'''
    AND GoogleSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  AppleSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAApple AS Company_Attribute,
  RESULTSCATNOTAApple AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAApple AS Company,
    CASE
      WHEN RESULTSCATNOTAApple != '''({}, {}, 'Non_related')''' THEN 'Apple'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.mexico_gn_q3v2`
WHERE
  (RESULTSCATNOTAApple != '''({}, {}, 'Non_related')'''
    AND AppleSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  AmazonSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAAmazon AS Company_Attribute,
  RESULTSCATNOTAAmazon AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAAmazon AS Company,
    CASE
      WHEN RESULTSCATNOTAAmazon != '''({}, {}, 'Non_related')''' THEN 'Amazon'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.mexico_gn_q3v2`
WHERE
  (RESULTSCATNOTAAmazon != '''({}, {}, 'Non_related')'''
    AND AmazonSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  FacebookSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAFacebook AS Company_Attribute,
  RESULTSCATNOTAFacebook AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAFacebook AS Company,
    CASE
      WHEN RESULTSCATNOTAFacebook != '''({}, {}, 'Non_related')''' THEN 'Facebook'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.mexico_gn_q3v2`
WHERE
  (RESULTSCATNOTAFacebook != '''({}, {}, 'Non_related')'''
    AND FacebookSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  IBMSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAIBM AS Company_Attribute,
  RESULTSCATNOTAIBM AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAIBM AS Company,
    CASE
      WHEN RESULTSCATNOTAIBM != '''({}, {}, 'Non_related')''' THEN 'IBM'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.mexico_gn_q3v2`
WHERE
  (RESULTSCATNOTAIBM != '''({}, {}, 'Non_related')'''
    AND IBMSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  ZoomSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.mexico_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  MicrosoftSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAMicrosoft AS Company_Attribute,
  RESULTSCATNOTAMicrosoft AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAMicrosoft AS Company,
    CASE
      WHEN RESULTSCATNOTAMicrosoft != '''({}, {}, 'Non_related')''' THEN 'Microsoft'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.panlatam_gn_q3v2`
WHERE
  (RESULTSCATNOTAMicrosoft != '''({}, {}, 'Non_related')'''
    AND MicrosoftSentiment != 'null')
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  GoogleSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAGoogle AS Company_Attribute,
  RESULTSCATNOTAGoogle AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAGoogle AS Company,
    CASE
      WHEN RESULTSCATNOTAGoogle != '''({}, {}, 'Non_related')''' THEN 'Google'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.panlatam_gn_q3v2`
WHERE
  (RESULTSCATNOTAGoogle != '''({}, {}, 'Non_related')'''
    AND GoogleSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  AppleSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAApple AS Company_Attribute,
  RESULTSCATNOTAApple AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAApple AS Company,
    CASE
      WHEN RESULTSCATNOTAApple != '''({}, {}, 'Non_related')''' THEN 'Apple'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.panlatam_gn_q3v2`
WHERE
  (RESULTSCATNOTAApple != '''({}, {}, 'Non_related')'''
    AND AppleSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  AmazonSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAAmazon AS Company_Attribute,
  RESULTSCATNOTAAmazon AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAAmazon AS Company,
    CASE
      WHEN RESULTSCATNOTAAmazon != '''({}, {}, 'Non_related')''' THEN 'Amazon'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.panlatam_gn_q3v2`
WHERE
  (RESULTSCATNOTAAmazon != '''({}, {}, 'Non_related')'''
    AND AmazonSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  FacebookSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAFacebook AS Company_Attribute,
  RESULTSCATNOTAFacebook AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAFacebook AS Company,
    CASE
      WHEN RESULTSCATNOTAFacebook != '''({}, {}, 'Non_related')''' THEN 'Facebook'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.panlatam_gn_q3v2`
WHERE
  (RESULTSCATNOTAFacebook != '''({}, {}, 'Non_related')'''
    AND FacebookSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  IBMSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAIBM AS Company_Attribute,
  RESULTSCATNOTAIBM AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAIBM AS Company,
    CASE
      WHEN RESULTSCATNOTAIBM != '''({}, {}, 'Non_related')''' THEN 'IBM'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.panlatam_gn_q3v2`
WHERE
  (RESULTSCATNOTAIBM != '''({}, {}, 'Non_related')'''
    AND IBMSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  ZoomSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCALORGLOBAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.panlatam_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  MicrosoftSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAMicrosoft AS Company_Attribute,
  RESULTSCATNOTAMicrosoft AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAMicrosoft AS Company,
    CASE
      WHEN RESULTSCATNOTAMicrosoft != '''({}, {}, 'Non_related')''' THEN 'Microsoft'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAMicrosoft != '''({}, {}, 'Non_related')'''
    AND MicrosoftSentiment != 'null')
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  GoogleSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAGoogle AS Company_Attribute,
  RESULTSCATNOTAGoogle AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAGoogle AS Company,
    CASE
      WHEN RESULTSCATNOTAGoogle != '''({}, {}, 'Non_related')''' THEN 'Google'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAGoogle != '''({}, {}, 'Non_related')'''
    AND GoogleSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  AppleSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAApple AS Company_Attribute,
  RESULTSCATNOTAApple AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAApple AS Company,
    CASE
      WHEN RESULTSCATNOTAApple != '''({}, {}, 'Non_related')''' THEN 'Apple'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAApple != '''({}, {}, 'Non_related')'''
    AND AppleSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  AmazonSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAAmazon AS Company_Attribute,
  RESULTSCATNOTAAmazon AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAAmazon AS Company,
    CASE
      WHEN RESULTSCATNOTAAmazon != '''({}, {}, 'Non_related')''' THEN 'Amazon'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAAmazon != '''({}, {}, 'Non_related')'''
    AND AmazonSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  FacebookSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAFacebook AS Company_Attribute,
  RESULTSCATNOTAFacebook AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAFacebook AS Company,
    CASE
      WHEN RESULTSCATNOTAFacebook != '''({}, {}, 'Non_related')''' THEN 'Facebook'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAFacebook != '''({}, {}, 'Non_related')'''
    AND FacebookSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  IBMSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAIBM AS Company_Attribute,
  RESULTSCATNOTAIBM AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAIBM AS Company,
    CASE
      WHEN RESULTSCATNOTAIBM != '''({}, {}, 'Non_related')''' THEN 'IBM'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAIBM != '''({}, {}, 'Non_related')'''
    AND IBMSentiment != 'null' )
UNION ALL
SELECT
  GNNo AS GN_Id,
  Source AS Souce,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  Tier AS Tier,
  MediaType AS MediaType,
  MediaList AS MediaList,
  CIMS AS CIMS,
  Date AS Date,
  FullMonth AS FullMonth,
  Month AS Month,
  Q AS Q,
  H AS H,
  Country AS Country,
  Sub AS Sub,
  Title AS Title,
  Contents AS Contents,
  ZoomSentiment AS Sentiment,
  IsItTitleRelated AS Title_Related,
  IsItContentRelated AS Content_Related,
  IsRelatedoverall AS Overall_Related,
  IsItRelated AS Related,
  IsSOVALL AS SOV_ALL,
  IsSOVFOCUSED AS SOV_FOCUSED,
  LOCAL AS LOCAL_OR_GLOBAL,
  DBORNDB AS DB_OR_NDB,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null' )