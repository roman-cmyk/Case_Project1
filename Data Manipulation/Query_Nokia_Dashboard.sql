## ***** QUERY FOR NOKIA DASHBOARD: NOKIA_COMPETITORS SHEET ***** ##
# BigQuery API Key: AIzaSyC_ILbNrVkZsiBnOJBehzN-5xAEg2Zr9uc
# Google Count: PN Finland
# Date: April 13th, 2021
# Author: Roman de la Rosa
# Programming Language: Legacy SQL - BigQuery
# Project: Nokia Dashboard - Competitors Sheet
# BI Engine Optimization: Yes
# Query Size: 11.7 MB
# Password Gmail Account: Business Projects rPaiq4Ik1990$%&yH
SELECT
  GNNo AS ID,
  Source AS Source,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  DateET AS DateET,
  FullMonth AS Full_Month,
  Month AS Month,
  Q AS Q,
  Title AS Title,
  Sub AS Sub,
  Country AS Country,
  Audiencia AS Audiencia,
  H AS H,
  Moneda AS Moneda,
  AuthorName AS Author_Name,
  TAGPOLICIA AS TAG_POLICIA,
  LANGUAGE AS LANGUAGE,
  (
  SELECT
    AS STRUCT CPE AS CPE_INICIAL,
    CASE
      WHEN Moneda = 'Peso Mejicano' THEN CPE/20.08575
      WHEN Moneda = 'Peso Argentino' THEN CPE/92.63620
      WHEN Moneda = 'Nuevo Sol Peruano' THEN CPE/20.361362
      WHEN Moneda = 'Boliviano' THEN CPE/6.93500
      WHEN Moneda = 'Peso Colombiano' THEN CPE/3646.91540
      WHEN Moneda = 'Colón Costarricense' THEN CPE/613.14220
      WHEN Moneda = 'Peso Chileno' THEN CPE/709.22001
      WHEN Moneda = 'Lempira Hondureña' THEN CPE/24.12248
      WHEN Moneda = 'Peso Uruguayo' THEN CPE/44.21317
      WHEN Moneda = 'Dólar Estadounidense' THEN CPE
      WHEN Moneda = 'Guaraní Paraguayo' THEN CPE/6213.83111
      WHEN Moneda = 'Quetzal Guatemalteco' THEN CPE/7.71662
  END
    ) AS CPE_USD,
  COMPETIDORESsamsung AS COMPETENCIA_Atributo,
  COMPETIDORESsamsung AS COMPETENCIA_Valor
FROM
  `msftq3fy21-1.nokia_test.nokia_all`
WHERE
  (COMPETIDORESsamsung = 'samsung'
    AND COMPETIDORESsamsung != 'None'
    AND TAGPOLICIA = '''['None']''')
UNION ALL
SELECT
  GNNo AS ID,
  Source AS Source,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  DateET AS DateET,
  FullMonth AS Full_Month,
  Month AS Month,
  Q AS Q,
  Title AS Title,
  Sub AS Sub,
  Country AS Country,
  Audiencia AS Audiencia,
  H AS H,
  Moneda AS Moneda,
  AuthorName AS Author_Name,
  TAGPOLICIA AS TAG_POLICIA,
  LANGUAGE AS LANGUAGE,
  (
  SELECT
    AS STRUCT CPE AS CPE_INICIAL,
    CASE
      WHEN Moneda = 'Peso Mejicano' THEN CPE/20.08575
      WHEN Moneda = 'Peso Argentino' THEN CPE/92.63620
      WHEN Moneda = 'Nuevo Sol Peruano' THEN CPE/20.361362
      WHEN Moneda = 'Boliviano' THEN CPE/6.93500
      WHEN Moneda = 'Peso Colombiano' THEN CPE/3646.91540
      WHEN Moneda = 'Colón Costarricense' THEN CPE/613.14220
      WHEN Moneda = 'Peso Chileno' THEN CPE/709.22001
      WHEN Moneda = 'Lempira Hondureña' THEN CPE/24.12248
      WHEN Moneda = 'Peso Uruguayo' THEN CPE/44.21317
      WHEN Moneda = 'Dólar Estadounidense' THEN CPE
      WHEN Moneda = 'Guaraní Paraguayo' THEN CPE/6213.83111
      WHEN Moneda = 'Quetzal Guatemalteco' THEN CPE/7.71662
  END
    ) AS CPE_USD,
  COMPETIDORESmotorola AS COMPETENCIA_Atributo,
  COMPETIDORESmotorola AS COMPETENCIA_Valor
FROM
  `msftq3fy21-1.nokia_test.nokia_all`
WHERE
  (COMPETIDORESmotorola = 'motorola'
    AND COMPETIDORESmotorola != 'None'
    AND TAGPOLICIA = '''['None']''')
UNION ALL
SELECT
  GNNo AS ID,
  Source AS Source,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  DateET AS DateET,
  FullMonth AS Full_Month,
  Month AS Month,
  Q AS Q,
  Title AS Title,
  Sub AS Sub,
  Country AS Country,
  Audiencia AS Audiencia,
  H AS H,
  Moneda AS Moneda,
  AuthorName AS Author_Name,
  TAGPOLICIA AS TAG_POLICIA,
  LANGUAGE AS LANGUAGE,
  (
  SELECT
    AS STRUCT CPE AS CPE_INICIAL,
    CASE
      WHEN Moneda = 'Peso Mejicano' THEN CPE/20.08575
      WHEN Moneda = 'Peso Argentino' THEN CPE/92.63620
      WHEN Moneda = 'Nuevo Sol Peruano' THEN CPE/20.361362
      WHEN Moneda = 'Boliviano' THEN CPE/6.93500
      WHEN Moneda = 'Peso Colombiano' THEN CPE/3646.91540
      WHEN Moneda = 'Colón Costarricense' THEN CPE/613.14220
      WHEN Moneda = 'Peso Chileno' THEN CPE/709.22001
      WHEN Moneda = 'Lempira Hondureña' THEN CPE/24.12248
      WHEN Moneda = 'Peso Uruguayo' THEN CPE/44.21317
      WHEN Moneda = 'Dólar Estadounidense' THEN CPE
      WHEN Moneda = 'Guaraní Paraguayo' THEN CPE/6213.83111
      WHEN Moneda = 'Quetzal Guatemalteco' THEN CPE/7.71662
  END
    ) AS CPE_USD,
  COMPETIDOREShuawei AS COMPETENCIA_Atributo,
  COMPETIDOREShuawei AS COMPETENCIA_Valor
FROM
  `msftq3fy21-1.nokia_test.nokia_all`
WHERE
  (COMPETIDOREShuawei = 'huawei'
    AND COMPETIDOREShuawei != 'None'
    AND TAGPOLICIA = '''['None']''')
UNION ALL
SELECT
  GNNo AS ID,
  Source AS Source,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  DateET AS DateET,
  FullMonth AS Full_Month,
  Month AS Month,
  Q AS Q,
  Title AS Title,
  Sub AS Sub,
  Country AS Country,
  Audiencia AS Audiencia,
  H AS H,
  Moneda AS Moneda,
  AuthorName AS Author_Name,
  TAGPOLICIA AS TAG_POLICIA,
  LANGUAGE AS LANGUAGE,
  (
  SELECT
    AS STRUCT CPE AS CPE_INICIAL,
    CASE
      WHEN Moneda = 'Peso Mejicano' THEN CPE/20.08575
      WHEN Moneda = 'Peso Argentino' THEN CPE/92.63620
      WHEN Moneda = 'Nuevo Sol Peruano' THEN CPE/20.361362
      WHEN Moneda = 'Boliviano' THEN CPE/6.93500
      WHEN Moneda = 'Peso Colombiano' THEN CPE/3646.91540
      WHEN Moneda = 'Colón Costarricense' THEN CPE/613.14220
      WHEN Moneda = 'Peso Chileno' THEN CPE/709.22001
      WHEN Moneda = 'Lempira Hondureña' THEN CPE/24.12248
      WHEN Moneda = 'Peso Uruguayo' THEN CPE/44.21317
      WHEN Moneda = 'Dólar Estadounidense' THEN CPE
      WHEN Moneda = 'Guaraní Paraguayo' THEN CPE/6213.83111
      WHEN Moneda = 'Quetzal Guatemalteco' THEN CPE/7.71662
  END
    ) AS CPE_USD,
  COMPETIDORESxiaomi AS COMPETENCIA_Atributo,
  COMPETIDORESxiaomi AS COMPETENCIA_Valor
FROM
  `msftq3fy21-1.nokia_test.nokia_all`
WHERE
  (COMPETIDORESxiaomi = 'xiaomi'
    AND COMPETIDORESxiaomi != 'None'
    AND TAGPOLICIA = '''['None']''')
UNION ALL
SELECT
  GNNo AS ID,
  Source AS Source,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  DateET AS DateET,
  FullMonth AS Full_Month,
  Month AS Month,
  Q AS Q,
  Title AS Title,
  Sub AS Sub,
  Country AS Country,
  Audiencia AS Audiencia,
  H AS H,
  Moneda AS Moneda,
  AuthorName AS Author_Name,
  TAGPOLICIA AS TAG_POLICIA,
  LANGUAGE AS LANGUAGE,
  (
  SELECT
    AS STRUCT CPE AS CPE_INICIAL,
    CASE
      WHEN Moneda = 'Peso Mejicano' THEN CPE/20.08575
      WHEN Moneda = 'Peso Argentino' THEN CPE/92.63620
      WHEN Moneda = 'Nuevo Sol Peruano' THEN CPE/20.361362
      WHEN Moneda = 'Boliviano' THEN CPE/6.93500
      WHEN Moneda = 'Peso Colombiano' THEN CPE/3646.91540
      WHEN Moneda = 'Colón Costarricense' THEN CPE/613.14220
      WHEN Moneda = 'Peso Chileno' THEN CPE/709.22001
      WHEN Moneda = 'Lempira Hondureña' THEN CPE/24.12248
      WHEN Moneda = 'Peso Uruguayo' THEN CPE/44.21317
      WHEN Moneda = 'Dólar Estadounidense' THEN CPE
      WHEN Moneda = 'Guaraní Paraguayo' THEN CPE/6213.83111
      WHEN Moneda = 'Quetzal Guatemalteco' THEN CPE/7.71662
  END
    ) AS CPE_USD,
  COMPETIDOREShmd AS COMPETENCIA_Atributo,
  COMPETIDOREShmd AS COMPETENCIA_Valor
FROM
  `msftq3fy21-1.nokia_test.nokia_all`
WHERE
  (COMPETIDOREShmd = 'hmd'
    AND COMPETIDOREShmd != 'None'
    AND TAGPOLICIA = '''['None']''')
UNION ALL
SELECT
  GNNo AS ID,
  Source AS Source,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  DateET AS DateET,
  FullMonth AS Full_Month,
  Month AS Month,
  Q AS Q,
  Title AS Title,
  Sub AS Sub,
  Country AS Country,
  Audiencia AS Audiencia,
  H AS H,
  Moneda AS Moneda,
  AuthorName AS Author_Name,
  TAGPOLICIA AS TAG_POLICIA,
  LANGUAGE AS LANGUAGE,
  (
  SELECT
    AS STRUCT CPE AS CPE_INICIAL,
    CASE
      WHEN Moneda = 'Peso Mejicano' THEN CPE/20.08575
      WHEN Moneda = 'Peso Argentino' THEN CPE/92.63620
      WHEN Moneda = 'Nuevo Sol Peruano' THEN CPE/20.361362
      WHEN Moneda = 'Boliviano' THEN CPE/6.93500
      WHEN Moneda = 'Peso Colombiano' THEN CPE/3646.91540
      WHEN Moneda = 'Colón Costarricense' THEN CPE/613.14220
      WHEN Moneda = 'Peso Chileno' THEN CPE/709.22001
      WHEN Moneda = 'Lempira Hondureña' THEN CPE/24.12248
      WHEN Moneda = 'Peso Uruguayo' THEN CPE/44.21317
      WHEN Moneda = 'Dólar Estadounidense' THEN CPE
      WHEN Moneda = 'Guaraní Paraguayo' THEN CPE/6213.83111
      WHEN Moneda = 'Quetzal Guatemalteco' THEN CPE/7.71662
  END
    ) AS CPE_USD,
  COMPETIDORESlg AS COMPETENCIA_Atributo,
  COMPETIDORESlg AS COMPETENCIA_Valor
FROM
  `msftq3fy21-1.nokia_test.nokia_all`
WHERE
  (COMPETIDORESlg = 'lg'
    AND COMPETIDORESlg != 'None'
    AND TAGPOLICIA = '''['None']''')
UNION ALL
SELECT
  GNNo AS ID,
  Source AS Source,
  Host AS Host,
  Link AS Link,
  LinkImage AS Link_Image,
  DateET AS DateET,
  FullMonth AS Full_Month,
  Month AS Month,
  Q AS Q,
  Title AS Title,
  Sub AS Sub,
  Country AS Country,
  Audiencia AS Audiencia,
  H AS H,
  Moneda AS Moneda,
  AuthorName AS Author_Name,
  TAGPOLICIA AS TAG_POLICIA,
  LANGUAGE AS LANGUAGE,
  (
  SELECT
    AS STRUCT CPE AS CPE_INICIAL,
    CASE
      WHEN Moneda = 'Peso Mejicano' THEN CPE/20.08575
      WHEN Moneda = 'Peso Argentino' THEN CPE/92.63620
      WHEN Moneda = 'Nuevo Sol Peruano' THEN CPE/20.361362
      WHEN Moneda = 'Boliviano' THEN CPE/6.93500
      WHEN Moneda = 'Peso Colombiano' THEN CPE/3646.91540
      WHEN Moneda = 'Colón Costarricense' THEN CPE/613.14220
      WHEN Moneda = 'Peso Chileno' THEN CPE/709.22001
      WHEN Moneda = 'Lempira Hondureña' THEN CPE/24.12248
      WHEN Moneda = 'Peso Uruguayo' THEN CPE/44.21317
      WHEN Moneda = 'Dólar Estadounidense' THEN CPE
      WHEN Moneda = 'Guaraní Paraguayo' THEN CPE/6213.83111
      WHEN Moneda = 'Quetzal Guatemalteco' THEN CPE/7.71662
  END
    ) AS CPE_USD,
  COMPETIDORESnokia AS COMPETENCIA_Atributo,
  COMPETIDORESnokia AS COMPETENCIA_Valor
FROM
  `msftq3fy21-1.nokia_test.nokia_all`
WHERE
  (COMPETIDORESnokia = 'nokia'
    AND COMPETIDORESnokia != 'None'
    AND TAGPOLICIA = '''['None']''')