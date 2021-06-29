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
  IsItRelated AS Related,
  BUSINESSCONTEXT AS BUSINESSCONTEXT,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT BUSINESSCONTEXT AS BUSINESSCONTEXT,
    CASE
      WHEN BUSINESSCONTEXT != 'null' THEN 'BUSINESSCONTEXT'
  END
    ) AS BUSINESSCONTEXT,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND BUSINESSCONTEXT != 'null')
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
  IsItRelated AS Related,
  DIGITALTRANSFORMATION AS DIGITALTRANSFORMATION,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT DIGITALTRANSFORMATION AS DIGITALTRANSFORMATION,
    CASE
      WHEN DIGITALTRANSFORMATION != 'null' THEN 'DIGITALTRANSFORMATION'
  END
    ) AS DIGITALTRANSFORMATION,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND DIGITALTRANSFORMATION != 'null')
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
  IsItRelated AS Related,
  CUSTOMERENABLEMENT AS CUSTOMERENABLEMENT,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT CUSTOMERENABLEMENT AS CUSTOMERENABLEMENT,
    CASE
      WHEN CUSTOMERENABLEMENT != 'null' THEN 'CUSTOMERENABLEMENT'
  END
    ) AS CUSTOMERENABLEMENT,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND CUSTOMERENABLEMENT != 'null')
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
  IsItRelated AS Related,
  DIGITALSOVEREIGNTY AS DIGITALSOVEREIGNTY,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT DIGITALSOVEREIGNTY AS DIGITALSOVEREIGNTY,
    CASE
      WHEN DIGITALSOVEREIGNTY != 'null' THEN 'DIGITALSOVEREIGNTY'
  END
    ) AS Digital_Sovereignty,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND DIGITALSOVEREIGNTY != 'null')
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
  IsItRelated AS Related,
  EDUCATION AS EDUCATION,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT EDUCATION AS EDUCATION,
    CASE
      WHEN EDUCATION != 'null' THEN 'EDUCATION'
  END
    ) AS EDUCATION,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND EDUCATION != 'null')
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
  IsItRelated AS Related,
  INNOVATION AS INNOVATION,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT INNOVATION AS INNOVATION,
    CASE
      WHEN INNOVATION != 'null' THEN 'INNOVATION'
  END
    ) AS INNOVATION,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND INNOVATION != 'null')
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
  IsItRelated AS Related,
  ALLTECHNOLOGY AS ALLTECHNOLOGY,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT ALLTECHNOLOGY AS ALLTECHNOLOGY,
    CASE
      WHEN ALLTECHNOLOGY != 'null' THEN 'ALLTECHNOLOGY'
  END
    ) AS ALLTECHNOLOGY,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND ALLTECHNOLOGY != 'null')
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
  IsItRelated AS Related,
  AI AS AI,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT AI AS AI,
    CASE
      WHEN AI != 'null' THEN 'AI'
  END
    ) AS AI,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND AI != 'null')
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
  IsItRelated AS Related,
  ARANDVRANDMR AS ARANDVRANDMR,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT ARANDVRANDMR AS ARANDVRANDMR,
    CASE
      WHEN ARANDVRANDMR != 'null' THEN 'ARANDVRANDMR'
  END
    ) AS ARANDVRANDMR,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND ARANDVRANDMR != 'null')
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
  IsItRelated AS Related,
  BLOCKCHAIN AS BLOCKCHAIN,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT BLOCKCHAIN AS BLOCKCHAIN,
    CASE
      WHEN BLOCKCHAIN != 'null' THEN 'BLOCKCHAIN'
  END
    ) AS BLOCKCHAIN,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND BLOCKCHAIN != 'null')
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
  IsItRelated AS Related,
  AUTONOMOUS AS AUTONOMOUS,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT AUTONOMOUS AS AUTONOMOUS,
    CASE
      WHEN AUTONOMOUS != 'null' THEN 'AUTONOMOUS'
  END
    ) AS AUTONOMOUS,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND AUTONOMOUS != 'null')
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
  IsItRelated AS Related,
  CLOUD AS CLOUD,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT CLOUD AS CLOUD,
    CASE
      WHEN CLOUD != 'null' THEN 'CLOUD'
  END
    ) AS CLOUD,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND CLOUD != 'null')
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
  IsItRelated AS Related,
  DATA AS DATA,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT DATA AS DATA,
    CASE
      WHEN DATA != 'null' THEN 'DATA'
  END
    ) AS DATA,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND DATA != 'null')
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
  IsItRelated AS Related,
  IOT AS IOT,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT IOT AS IOT,
    CASE
      WHEN IOT != 'null' THEN 'IOT'
  END
    ) AS IOT,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND IOT != 'null')
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
  IsItRelated AS Related,
  OPENSOURCE AS OPENSOURCE,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT OPENSOURCE AS OPENSOURCE,
    CASE
      WHEN OPENSOURCE != 'null' THEN 'OPENSOURCE'
  END
    ) AS OPENSOURCE,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND OPENSOURCE != 'null')
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
  IsItRelated AS Related,
  BROWSER AS BROWSER,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT BROWSER AS BROWSER,
    CASE
      WHEN BROWSER != 'null' THEN 'BROWSER'
  END
    ) AS BROWSER,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND BROWSER != 'null')
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
  IsItRelated AS Related,
  QUANTUM AS QUANTUM,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT QUANTUM AS QUANTUM,
    CASE
      WHEN QUANTUM != 'null' THEN 'QUANTUM'
  END
    ) AS QUANTUM,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND QUANTUM != 'null')
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
  IsItRelated AS Related,
  APPSINFRADATAAICLOUD AS APPSINFRADATAAICLOUD,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT APPSINFRADATAAICLOUD AS APPSINFRADATAAICLOUD,
    CASE
      WHEN APPSINFRADATAAICLOUD != 'null' THEN 'APPSINFRADATAAICLOUD'
  END
    ) AS APPSINFRADATAAICLOUD,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND APPSINFRADATAAICLOUD != 'null')
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
  IsItRelated AS Related,
  GAMING AS GAMING,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT GAMING AS GAMING,
    CASE
      WHEN GAMING != 'null' THEN 'GAMING'
  END
    ) AS GAMING,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND GAMING != 'null')
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
  IsItRelated AS Related,
  MODERNLIFE AS MODERNLIFE,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT MODERNLIFE AS MODERNLIFE,
    CASE
      WHEN MODERNLIFE != 'null' THEN 'MODERNLIFE'
  END
    ) AS MODERNLIFE,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND MODERNLIFE != 'null')
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
  IsItRelated AS Related,
  MODERNWORKPLACE AS MODERNWORKPLACE,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT MODERNWORKPLACE AS MODERNWORKPLACE,
    CASE
      WHEN MODERNWORKPLACE != 'null' THEN 'MODERNWORKPLACE'
  END
    ) AS MODERNWORKPLACE,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND MODERNWORKPLACE != 'null')
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
  IsItRelated AS Related,
  SECURITY AS SECURITY,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT SECURITY AS SECURITY,
    CASE
      WHEN SECURITY != 'null' THEN 'SECURITY'
  END
    ) AS SECURITY,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND SECURITY != 'null')
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
  IsItRelated AS Related,
  ENTERPRISEMANAGEMENT AS ENTERPRISEMANAGEMENT,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT ENTERPRISEMANAGEMENT AS ENTERPRISEMANAGEMENT,
    CASE
      WHEN ENTERPRISEMANAGEMENT != 'null' THEN 'ENTERPRISEMANAGEMENT'
  END
    ) AS ENTERPRISEMANAGEMENT,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND ENTERPRISEMANAGEMENT != 'null')
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
  IsItRelated AS Related,
  ALLTRUST AS ALLTRUST,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT ALLTRUST AS ALLTRUST,
    CASE
      WHEN ALLTRUST != 'null' THEN 'ALLTRUST'
  END
    ) AS ALLTRUST,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND ALLTRUST != 'null')
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
  IsItRelated AS Related,
  BUSINESSMODEL AS BUSINESSMODEL,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT BUSINESSMODEL AS BUSINESSMODEL,
    CASE
      WHEN BUSINESSMODEL != 'null' THEN 'BUSINESSMODEL'
  END
    ) AS BUSINESSMODEL,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND BUSINESSMODEL != 'null')
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
  IsItRelated AS Related,
  ETHICS AS ETHICS,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT ETHICS AS ETHICS,
    CASE
      WHEN ETHICS != 'null' THEN 'ETHICS'
  END
    ) AS ETHICS,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND ETHICS != 'null')
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
  IsItRelated AS Related,
  LEGAL AS LEGAL,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT LEGAL AS LEGAL,
    CASE
      WHEN LEGAL != 'null' THEN 'LEGAL'
  END
    ) AS LEGAL,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND LEGAL != 'null')
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
  IsItRelated AS Related,
  PRIVACY AS PRIVACY,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT PRIVACY AS PRIVACY,
    CASE
      WHEN PRIVACY != 'null' THEN 'PRIVACY'
  END
    ) AS PRIVACY,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND PRIVACY != 'null')
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
  IsItRelated AS Related,
  RELIABILITY AS RELIABILITY,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT RELIABILITY AS RELIABILITY,
    CASE
      WHEN RELIABILITY != 'null' THEN 'RELIABILITY'
  END
    ) AS RELIABILITY,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND RELIABILITY != 'null')
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
  IsItRelated AS Related,
  SECURITY1 AS SECURITY1,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT SECURITY1 AS SECURITY1,
    CASE
      WHEN SECURITY1 != 'null' THEN 'SECURITY1'
  END
    ) AS SECURITY1,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND SECURITY1 != 'null')
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
  IsItRelated AS Related,
  ECONOMICRECOVERYWIP AS ECONOMICRECOVERYWIP,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT ECONOMICRECOVERYWIP AS ECONOMICRECOVERYWIP,
    CASE
      WHEN ECONOMICRECOVERYWIP != 'null' THEN 'ECONOMICRECOVERYWIP'
  END
    ) AS ECONOMICRECOVERYWIP,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND ECONOMICRECOVERYWIP != 'null')
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
  IsItRelated AS Related,
  FORGOOD AS FORGOOD,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT FORGOOD AS FORGOOD,
    CASE
      WHEN FORGOOD != 'null' THEN 'FORGOOD'
  END
    ) AS FORGOOD,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND FORGOOD != 'null')
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
  IsItRelated AS Related,
  DIVERSITY AS DIVERSITY,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT DIVERSITY AS DIVERSITY,
    CASE
      WHEN DIVERSITY != 'null' THEN 'DIVERSITY'
  END
    ) AS DIVERSITY,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND DIVERSITY != 'null')
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
  IsItRelated AS Related,
  SUSTAINABILITY AS SUSTAINABILITY,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT SUSTAINABILITY AS SUSTAINABILITY,
    CASE
      WHEN SUSTAINABILITY != 'null' THEN 'SUSTAINABILITY'
  END
    ) AS DIVERSITY,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND SUSTAINABILITY != 'null')
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
  IsItRelated AS Related,
  WORKPLACE AS WORKPLACE,
  RESULTSCATNOTAZoom AS Company_Attribute,
  RESULTSCATNOTAZoom AS Company_Valor,
  (
  SELECT
    AS STRUCT RESULTSCATNOTAZoom AS Company,
    CASE
      WHEN RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')''' THEN 'Zoom'
  END
    ) AS Company,
  (
  SELECT
    AS STRUCT WORKPLACE AS WORKPLACE,
    CASE
      WHEN WORKPLACE != 'null' THEN 'WORKPLACE'
  END
    ) AS WORKPLACE,
FROM
  `msftq3fy21-1.global_news_q3_v2.south_gn_q3v2`
WHERE
  (RESULTSCATNOTAZoom != '''({}, {}, 'Non_related')'''
    AND ZoomSentiment != 'null'
    AND WORKPLACE != 'null')