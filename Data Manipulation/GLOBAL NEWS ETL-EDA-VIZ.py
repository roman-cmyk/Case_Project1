#!/usr/bin/env python
# coding: utf-8

# <h1 style="color:blue"> INSTALL REQUIRED LIBRARIES </h1> 

# In[1]:


get_ipython().system('pip3 install pickle5')
get_ipython().system('pip3 install scraperapi-sdk')
get_ipython().system('pip3 install requests-html')
get_ipython().system('pip3 install htmldate')
get_ipython().system('pip3 install date_guesser')
get_ipython().system('pip3 install pyppeteer')
get_ipython().system('pip3 install googlenews')
get_ipython().system('pip3 install newspaper3k')
get_ipython().system('pip3 install pipenv')
get_ipython().system('pip3 install psutil')
get_ipython().system('pip3 install pypdf2')
get_ipython().system('pip3 install pygooglenews --upgrade')
get_ipython().system('pip3 install requests-html')
get_ipython().system('pip3 install pycaret')
get_ipython().system('pip3 install h2o')
get_ipython().system('pip3 install retrolab')
get_ipython().system('pip3 install jupyterthemes')
get_ipython().system('pip3 install cufflinks')
get_ipython().system('pip3 install plotly --upgrade')
get_ipython().system('pip3 install cufflinks --upgrade')
get_ipython().system('pip3 install tika')
get_ipython().system('pip3 install keplergl')


# <h1 style="color:blue"> DATA SOURCES </h1> 

# *   **GLOBAL NEWS**
# *   [**CIMS**](https://microsoft.media-navigator.com/index.php?option=com_content&view=article&id=20&Itemid=1017)
# *   **SUBs COVERAGE**
# *   **SPECIAL MONITORING: e.g. RODRIGO KEDE**
# *   **GOOGLE NEWS & BING NEWS API**
# *   **WEEKLY REPORT**
# *   **ASÍ NOS CUBREN LOS MEDIOS - HANNA ROMERO - COLOMBIA**
# *   [**ROB REPORTS**](https://onedrive.live.com/?authkey=%21AF%2D3tgvg5%2DDwKFw&id=6389DB86E63A25C0%2110178&cid=6389DB86E63A25C0)
# *   [**QBU REPORTS**](https://onedrive.live.com/?authkey=%21AF%2D3tgvg5%2DDwKFw&id=6389DB86E63A25C0%2110811&cid=6389DB86E63A25C0)

# <h1 style="color:blue"> IMPORT REQUIRED LIBRARIES </h1> 

# In[2]:


from pygooglenews import GoogleNews
import pandas as pd 
import PyPDF2
from GoogleNews import GoogleNews
from newspaper import Article
import urllib.request
import random
import glob
from sklearn import *
from IPython.display import Image
import cufflinks as cf
from plotly.offline import plot,iplot
import plotly.graph_objects as go
pd.options.plotting.backend = "plotly"


# In[3]:


from scraper_api import ScraperAPIClient
import pandas as pd
from pandas.io import gbq
import pickle
from IPython.display import display
pd.options.display.max_columns = None
import requests
import glob
import os
import re
import json
from zipfile import *
BOLD = '\033[1m'
END = '\033[0m'


# In[4]:


from bs4 import BeautifulSoup
import string
from nltk.tokenize import RegexpTokenizer
from nltk import bigrams
from nltk.util import ngrams
import collections
import urllib.request
from nltk.corpus import stopwords
import nltk
import pickle5 as pickle
nltk.download('stopwords')
pd.set_option('max_rows', 99999)
from urllib import request
from bs4 import BeautifulSoup


# In[5]:


import unicodedata
import warnings
pd.options.display.max_columns = None
pd.options.display.float_format = '{:,.5f}'.format 
warnings.filterwarnings("ignore")
import os, glob
from tika import parser 
from pandas import DataFrame


# <h1 style="color:blue"> LOAD REQUIRED FILES FOR ANALYSIS </h1> 

# *   **KEYWORDS EXCEL FILE**
# *   **MEDIALIST EXCEL FILE**
# *   **AUXILIAR MEDIALIST FILE**
# *   **GEOLOCATION DARA FOR KEPLER**

# In[6]:


# Read Keywords File - FY21 main themes & topics
keywords= pd.read_excel('/home/roman/Desktop/Porter Novelli MX /Projects/MICROSOFT FY21/Q4  FY21 RAW DATA/FY21_Main Themes_Keywords_r1_updated_may31.xlsx')
keywords.head(5)


# In[7]:


# Read FY21 MediaList File - Master
medialist=pd.read_excel('/home/roman/Desktop/Porter Novelli MX /Projects/MICROSOFT FY21/Q4  FY21 RAW DATA/FY21 Media List_Ajustada_CIMS_updated_may31_master2.xlsx')

medialist.fillna('No Data')

medialist['MediaList']='Yes'

medialist['clean_link_site']=medialist['Link/Site'].apply(lambda row : str(row).replace('http://','').replace('https://','').replace('/',''))

medialist=medialist[['Publication','Host','Tier', 'Media Type','clean_link_site', 'MediaList','CIMS']]
medialist.head(10)


# In[8]:


# Read FY21 MediaList File - Auxiliar FY21 MediaList (Global News)
auxiliar=pd.read_excel('/home/roman/Desktop/Porter Novelli MX /Projects/MICROSOFT FY21/Q4  FY21 RAW DATA/MediaList_FY21_Auxiliar.xlsx')

auxiliar.fillna('No Data')

auxiliar['MediaList']='Yes'

auxiliar['clean_link_site']=auxiliar['Link/Site'].apply(lambda row : str(row).replace('http://','').replace('https://','').replace('/',''))

auxiliar=auxiliar[['Publication','Host','Tier', 'Media Type','clean_link_site', 'MediaList','CIMS']]
auxiliar.head(10)


# In[9]:


# Read FY21 MediaList File - Auxiliar FY21 CIMS Media Platform
auxiliarCims=pd.read_excel('/home/roman/Desktop/Porter Novelli MX /Projects/MICROSOFT FY21/Q4  FY21 RAW DATA/Auxiliar_MediaListFY21_CIMS.xlsx')

auxiliarCims.fillna('No Data')

auxiliarCims['MediaList']='Yes'

auxiliarCims['clean_link_site']=auxiliarCims['Link/Site'].apply(lambda row : str(row).replace('http://','').replace('https://','').replace('/',''))

auxiliarCims=auxiliarCims[['Publication','Host','Tier', 'Media Type','clean_link_site', 'MediaList','CIMS','Sub']]
print(auxiliarCims.shape)
auxiliarCims.head(10)


# In[10]:


# Read Longitude & Latitude catalog

geolocation = pd.read_excel('/home/roman/Desktop/Porter Novelli MX /Projects/MICROSOFT FY21/Q4  FY21 RAW DATA/Latitude & Longitude LATAM.xlsx')
print(geolocation.shape)
geolocation.head(5)


# <h1 style="color:blue"> FUNCTIONS FOR DATA PRE-PROCESSING </h1> 

# In[11]:


def country_sub(country):
    if country =='Panama' or country =='PA' or country=='panama' or country=='Panamá':
        return ['Panama','Central']
    elif country =='Costa Rica' or country =='CR' or country=='costa rica':
        return ['Costa Rica','Central']
    elif country =='Honduras' or country =='HN' or country=='honduras':
        return ['Honduras','Central']
    elif country =='Nicaragua' or country =='NI' or country=='nicaragua':
        return ['Nicaragua','Central']
    elif country =='Guatemala' or country =='GT' or country=='guatemala':
        return ['Guatemala','Central']
    elif country =='El Salvador' or country =='SV' or country=='el salvador':
        return ['El Salvador','Central']
    elif country =='Venezuela' or country =='VE' or country=='venezuela':
        return ['Venezuela','Central']
    elif country =='Puerto Rico' or country =='PR' or country=='puerto rico':
        return ['Puerto Rico','Caribbean']
    elif country =='Dominican Republic' or country =='DO' or country=='dominican republic' or country=='republica dominicana' or country=='Rep. Dominicana':
        return ['Dominican Republic','Caribbean']
    elif country =='Trinidad & Tobago' or country =='TT' or country=='trinidad & tobago' or country=='Trinidad y Tobago' or country=='T&T':
        return ['Trinidad & Tobago','Caribbean']
    elif country =='Jamaica' or country =='JM' or country=='jamaica':
        return ['Jamaica','Caribbean']
    elif country =='Peru' or country =='PE' or country=='peru' or country=='Perú':
        return ['Peru','South']
    elif country =='Ecuador' or country =='EC' or country=='ecuador' or country=='equador' or country=='EQUADOR':
        return ['Ecuador','South']
    elif country =='Bolivia' or country =='BO' or country=='bolivia':
        return ['Bolivia','South']
    elif country =='Paraguay' or country =='PY' or country=='paraguay' or country=='paraguai' or country=='Paraguai':
        return ['Paraguay','South']
    elif country =='Uruguay' or country =='UY' or country=='uruguay'or country=='uruguai' or country=='Uruguai':
        return ['Uruguay','South']
    elif country =='Mexico' or country =='MX' or country=='mexico' or country=='México' or country=='méxico':
        return ['Mexico','Mexico']
    elif country =='PanLatam' or country =='panlatam' or country =='Latinoamérica':
        return ['PanLatam','Panlatam']
    elif country =='PanCentral' or country =='pancentral':
        return ['PanCentral','Panlatam']
    elif country =='Argentina' or country =='AR' or country=='argentina':
        return ['Argentina','Argentina']
    elif country =='Brazil' or country =='BR' or country=='brazil' or country=='brasil' or country=='Brasil':
        return ['Brazil','Brazil']
    elif country =='Chile' or country =='CL' or country=='chile':
        return ['Chile','Chile']
    elif country =='Colombia' or country =='CL' or country=='colombia':
        return ['Colombia','Colombia']
    else:
        return ['Revisar','Revisar']


# In[12]:


def read_json(file_path):
        data={}
        with open(file_path,encoding="utf8") as json_file:
            arq = json.load(json_file)
            data['Notas']=arq
            return data


# In[13]:


def crear_df_json(data):                                                                                  
    df_n=pd.DataFrame(columns=['IdNoticia', 'Fecha', 'Hora', 'TipoDeMedio', 'Medio', 'País', 'Sección','Título', 'Cuerpo', 'Tier',
                               'NroCaracteres', 'Tono', 'LinkImagen','CPE', 'Moneda', 'Audiencia', 'Tema', 'Empresa', 'NroPagina',
                               'Dimensión', 'CirculacionMedio', 'AutorConductor', 'ResumenAclaracion','LinkNota'])
    for item in data['Notas']:                                                                            
        dftemp=pd.DataFrame.from_dict(item,orient='index')                                                
        dftemp=dftemp.T                                                                                   
        df_n=df_n.append(dftemp)                                                                          
    df_n=df_n.reset_index()                                                                               
    return df_n


# In[14]:


# This function is used to get the content from online articles using 'requests' librarie
# Select a random user agent
user_agent_list = [
   #Chrome
    'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36',
    'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36',
    'Mozilla/5.0 (Windows NT 5.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36',
    'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36',
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36',
    'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36',
    'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36',
    'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36',
    'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36',
    'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36',
    #Firefox
    'Mozilla/4.0 (compatible; MSIE 9.0; Windows NT 6.1)',
    'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko',
    'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)',
    'Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko',
    'Mozilla/5.0 (Windows NT 6.2; WOW64; Trident/7.0; rv:11.0) like Gecko',
    'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko',
    'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0)',
    'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko',
    'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)',
    'Mozilla/5.0 (Windows NT 6.1; Win64; x64; Trident/7.0; rv:11.0) like Gecko',
    'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; WOW64; Trident/6.0)',
    'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/6.0)',
    'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)'
]
def get_full_content(url):
    for i in range(1,6):
    #Pick a random user agent
        user_agent = random.choice(user_agent_list)
        #Set the headers 
        headers = {'User-Agent': user_agent}

        if url:
            try:
                 
                req = urllib.request.Request(url,headers={'User-Agent': user_agent})
                response = urllib.request.urlopen(req)
                html = response.read()

                 
                soup = BeautifulSoup(html)
                paragraphs=re.findall(r'<p>(.*?)</p>',str(soup))
                paragraphs=re.sub(r'<a href=.+?(?=)>|</a>|\xa0|<strong>|</strong>|<i(.*?)</i>|<img(.*?)>','',str(paragraphs))
                paragraphs2=''.join(paragraphs)
                paragraphs2=paragraphs2.replace('\n','').replace('\t','').replace('\r','')
            except:
                paragraphs2='Sin Informacion'
                print('ups')

    return(paragraphs2)


# In[15]:


# This function is used to get content from online articles using Diffbot API
####### DIFFBOT TOKEN #####################################################
user = 'Itzel Soberanes'
API_TOKEN = '7c08babe1140abc5ac8c7ad105e95de3'
############################ FUNCIONES DIFFBOT ############################

# DiffbotClient Class Definition - Analize API
# Aquí se definen las funciones necesarias para
# trabajar con la API Analize de Diffbot. (Esta
# información está detallada en la hoja de documentación para
# la librería de Python en el sitio web oficial)
class DiffbotClient(object):

    base_url = 'http://api.diffbot.com/'

    def request(self, url, token, api, fields=None, version=3, **kwargs):
        """
        Returns a python object containing the requested resource from the diffbot api
        """
        params = {"url": url, "token": token}
        if fields:
            params['fields'] = fields
        params.update(kwargs)
        response = requests.get(self.compose_url(api, version), params=params)
        response.raise_for_status()
        return response.json()

    def compose_url(self, api, version_number):
        """
        Returns the uri for an endpoint as a string
        """
        version = self.format_version_string(version_number)
        return '{}{}/{}'.format(self.base_url, version, api)

    @staticmethod
    def format_version_string(version_number):
        """
        Returns a string representation of the API version
        """
        return 'v{}'.format(version_number)

class DiffbotJob(DiffbotClient):
    """
    Various calls for managing a Crawlbot or Bulk API job.
    """

    def request(self,params):
        response = requests.get(self.compose_url(self.jobType,3),params=params)
        response.raise_for_status
        try:
            return response.json()
        except:
            print (response.text)

    def start(self,params):
        response = self.request(params)
        return response

    def status(self):
        response = self.request(self.params)
        return response

    def update(self,**kwargs):
        temp_params = self.params
        temp_params.update(kwargs)
        response = self.request(self.params)
        return response

    def delete(self):
        temp_params = self.params
        temp_params['delete'] = 1
        response = self.request(temp_params)
        return response

    def restart(self):
        temp_params = self.params
        temp_params['restart'] = 1
        response = self.request(temp_params)
        return response

    def download(self,data_format="json"):
        """
        downloads the JSON output of a crawl or bulk job
        """

        download_url = '{}/v3/{}/download/{}-{}_data.{}'.format(
            self.base_url,self.jobType,self.params['token'],self.params['name'],data_format
            )
        download = requests.get(download_url)
        download.raise_for_status()
        if data_format == "csv":
            return download.content
        else:
            return download.json()

class DiffbotCrawl(DiffbotJob):
    """
    Initializes a Diffbot crawl. Pass additional arguments as necessary.
    """

    def __init__(self,token,name,seeds=None,api=None,apiVersion=3,**kwargs):
        self.params = {
            "token": token,
            "name": name,
        }
        startParams = dict(self.params)
        if seeds:
            startParams['seeds'] = seeds
        if api:
            startParams['apiUrl'] = self.compose_url(api,apiVersion)
        startParams.update(kwargs)
        self.jobType = "crawl"
        self.start(startParams)

        
def get_content_diffbot(url):
    diffbot = DiffbotClient()
    token = API_TOKEN
    api = "analyze"
    try:
        response = diffbot.request(url, token, api)
        if 'objects' in response:
            if len(response['objects'])>0:
                if 'text' in response['objects'][0]:
                    print("URL Content from {} is ok".format(url))
                    return response['objects'][0]['text']
                else:
                    print("URL Content from {} NOT FOUND".format(url))
                    return "No Content"
            else:
                print("URL Content from {} NOT FOUND".format(url))
                return "Empty URL, Nothing found"
        else:
            print("URL Content from {} NOT FOUND".format(url))
            return "Empty URL, Nothing found"
    except:
        print("###Something went wrong with url {}".format(url))


# In[16]:


# This function is used to get content from online articles using Scrapper API
client = ScraperAPIClient('ffb830aaca680541d8f8006aa95d6e98')
        
def get_content_scrapper(url):
    result = client.get(url).text
    soup = BeautifulSoup(result, 'html.parser')
    texto=[]
    try:
        for item in soup.find_all('p'):
            texto.append(item.get_text())
        sep = ''
        texto=sep.join(texto)
        if len(texto)>0:
            if len(texto)>200:
                print("URL Content from {} is ok".format(url))
                return texto
            else:
                print("URL Content from {} is less than 200 characters".format(url))
                return texto
        else:
            print("URL Content from {} NOT FOUND".format(url))
            return "Empty URL, Nothing found"
    except:
        print("###Something went wrong with url {}".format(url))
        return "Verificar"
    return texto


# In[17]:


def find_quarters(month):
    if month == '1':
        return ['January', '07', 'Q3', 'H2']
    elif month == '2':
        return ['February', '08', 'Q3', 'H2']
    elif month == '3':
        return ['March', '09', 'Q3', 'H2']
    elif month == '4':
        return ['April', '10', 'Q4', 'H2']
    elif month == '5':
        return ['May', '11', 'Q4', 'H2']
    elif month == '6':
        return ['June', '12', 'Q4', 'H2']
    elif month == '7':
        return ['July', '01', 'Q1', 'H2']
    elif month == '8':
        return ['August', '02', 'Q1', 'H2']
    elif month == '9':
        return ['September', '03', 'Q1', 'H2']
    elif month == '10':
        return ['October', '04', 'Q2', 'H2']
    elif month == '11':
        return ['November', '05', 'Q2', 'H2']
    elif month == '12':
        return ['December', '06', 'Q2', 'H2']


# <h1 style="color:blue"> READ JSON FILES FROM GLOBAL NEWS </h1> 

# In[18]:


# Build Required DataFrame (According To JSON File Format From Global News)
df_notas_gn=pd.DataFrame(columns=['IdNoticia', 'Fecha', 'Hora', 'TipoDeMedio', 'Medio', 'País', 'Sección','Título', 'Cuerpo',
                               'Tier', 'NroCaracteres', 'Tono', 'LinkImagen','CPE', 'Moneda', 'Audiencia', 'Tema', 'Empresa',
                               'NroPagina','Dimensión', 'CirculacionMedio', 'AutorConductor', 'ResumenAclaracion','LinkNota'])
df_notas_gn


# In[19]:


# Path To 'UNZIPPED' Folder
from zipfile import *
import glob
zip_files = glob.glob('/home/roman/Desktop/Porter Novelli MX /Projects/MICROSOFT FY21/Q4  FY21 RAW DATA/FILTRACION WINDOWS 11/*.zip')
unzipped_files='/home/roman/Desktop/Porter Novelli MX /Projects/MICROSOFT FY21/Q4  FY21 RAW DATA/UNZIPPED FILTRACION'
for zip_file in zip_files:
    file_name = zip_file.split('\\')[-1]
    print('Processing file:', file_name)
    name_unzipped=file_name.replace('.zip','.json')
    zipdata = ZipFile(zip_file)
    zipinfos = zipdata.infolist()
    for zipinfo in zipinfos:
        zipinfo.filename =name_unzipped
        zipdata.extract(zipinfo,unzipped_files)
        print('Extracted to unzipped folder as: ',name_unzipped)


# In[20]:


# Path To MSTF Unzipped Files (.JSON Format)
unzipped_files='/home/roman/Desktop/Porter Novelli MX /Projects/MICROSOFT FY21/Q4  FY21 RAW DATA/UNZIPPED FILTRACION'
lista_zip=glob.glob(unzipped_files+'*.json')
lista_zip


# In[21]:


# Path To 'UNZIPPED' Folder - ALL MSTF FILES
path='/home/roman/Desktop/Porter Novelli MX /Projects/MICROSOFT FY21/Q4  FY21 RAW DATA/UNZIPPED FILTRACION'
lista_zip = []
# r=root, d=directories, f = files
for r, d, f in os.walk(path):
    for file in f:
        if '.json' in file:
            lista_zip.append(os.path.join(r, file))
lista_zip
print(lista_zip)

for file in lista_zip:                                                                                    
    data=read_json(file)                                                                                  
    df_json=crear_df_json(data)                                                                           
    print(df_json.shape)                                                                                  
    df_notas_gn=df_notas_gn.append(df_json,'sort=False')                                                        
    print(df_notas_gn.shape)                                                                                 
df_notas_gn.head()                                                                                           
df_notas_gn=df_notas_gn.reset_index(drop=True)
print(df_notas_gn.shape)
df_notas_gn.head()


# In[23]:


print(BOLD+'Tamaño de df_notas:'+END+'{}, ({} filas y {} columnas)'.format(df_notas_gn.shape,df_notas_gn.shape[0],df_notas_gn.shape[1]))
print('\n')

print(BOLD+'Nombres de las columnas en df_notas:'+END+'{}'.format(df_notas_gn.columns))


# In[24]:


ANALIZED=pd.DataFrame(columns=['No','Source','Host','Link', 'Link Image',
                    'Date(ET)','Full Month','Month','Q','H','Author Name','Language','Country','Sub','Title','Contents', 'Sentiment',
                    'Category','Resumen_Categorias','Mayusculas_Title','Mayusculas_Contents',
 'Microsoft Sentiment',
 'Amazon Sentiment',
 'Apple Sentiment',
 'Google Sentiment',
 'Facebook Sentiment',
 'IBM Sentiment',
 'Cisco Sentiment',
 'Slack Sentiment',
 'Zoom Sentiment',
 'Dropbox Sentiment',                              
 'News Cycle',
 'Article Type',
 'Image Type',                       
])
ANALIZED


# In[25]:


ANALIZED['No']=df_notas_gn['IdNoticia']
ANALIZED['Source']=df_notas_gn['TipoDeMedio']
ANALIZED['Host']=df_notas_gn['Medio']
ANALIZED['Link']=df_notas_gn['LinkNota']
ANALIZED['Link Image']=df_notas_gn['LinkImagen']
ANALIZED['Date(ET)']=df_notas_gn['Fecha']
ANALIZED['Author Name']=df_notas_gn['AutorConductor']
ANALIZED['Country']=df_notas_gn['País']
ANALIZED['Sub']='No info'
ANALIZED['Location']='No info'
ANALIZED['Sentiment']=''
ANALIZED['Title']=df_notas_gn['Título']
ANALIZED['Highlight']=''
ANALIZED['Contents']=df_notas_gn['Cuerpo']
ANALIZED['Resumen_Categorias']=pd.np.empty((len(ANALIZED), 0)).tolist()


# In[26]:


# Filter required Q4 months (April, May & June FY21)
ANALIZED['Date(ET)']=pd.to_datetime(ANALIZED['Date(ET)'], format='%m/%d/%Y')
ANALIZED['Month'] = pd.DatetimeIndex(ANALIZED['Date(ET)']).month
ANALIZED['Full Month']=ANALIZED['Month'].apply(lambda row : find_quarters(str(row))[0])
ANALIZED['Q']=ANALIZED['Month'].apply(lambda row : find_quarters(str(row))[2])
ANALIZED['Month']=ANALIZED['Month'].apply(lambda row : find_quarters(str(row))[1])


# In[27]:


ANALIZED['Full Month'].value_counts()


# In[28]:


# Filter publications just for Q4
ANALIZED = ANALIZED.loc[(ANALIZED['Full Month'] == 'April') | (ANALIZED['Full Month'] == 'May') | (ANALIZED['Full Month'] == 'June')]


# In[29]:


print(ANALIZED.shape)
ANALIZED.head(3)


# In[30]:


ANALIZED['Full Month'].value_counts()


# In[31]:


ANALIZED['Clean_Host'] = ANALIZED['Link'].str.extract(r'(http[s]?:\/\/.+?\/)')
ANALIZED['Clean_Host']=ANALIZED['Link'].apply(lambda row : str(row).replace('http://','').replace('https://','').split('/', 1)[0])


# <h1 style="color:blue"> ADDING DATASOURCE COLUMN - GLOBAL NEWS </h1> 

# In[32]:


ANALIZED['Type'] = 'Global News'
print(ANALIZED.shape)
ANALIZED.head(5)


# <h1 style="color:blue"> MERGE ANALIZED & MEDIALIST DATAFRAMES </h1> 

# In[33]:


# Utilizar 'Siempre' ANALIZED2
print('Shape ANALIZED2:',ANALIZED.shape)
ANALIZED3=ANALIZED[ANALIZED['Link']=='']
print('Shape ANALIZED3:',ANALIZED3.shape)
ANALIZED3=ANALIZED3.merge(medialist,
                  left_on='Host',
                  right_on='Host',
                  #on='Host',         
                  how='left').drop(columns=[ 'Publication', 'clean_link_site'])

ANALIZED4=ANALIZED[ANALIZED['Link']!='']
print('Shape ANALIZED4:',ANALIZED4.shape)

ANALIZED4=ANALIZED4.merge(medialist,
                  left_on='Clean_Host',
                  right_on='clean_link_site',
                  how='left').drop(columns=['Publication',  'clean_link_site' ])

ANALIZED4= ANALIZED4.drop(columns='Host_y')
ANALIZED4=ANALIZED4.rename(columns={'Host_x':'Host'})

print(ANALIZED3.shape)
print(ANALIZED4.shape)
print(ANALIZED3.columns)
print(ANALIZED4.columns)

ANALIZED2=ANALIZED3.append(ANALIZED4)
#Verificar que al final, después de la unión de las bases de datos, 
# haya en ANALIZED2 las columnas Tier,Media Type y MediaList
print('Shape ANALIZED:',ANALIZED.shape)
print('Shape ANALIZED2:',ANALIZED2.shape)


# In[34]:


ANALIZED=ANALIZED2[['No', 'Source','Host', 'Link', 'Link Image', 'Tier', 'Media Type', 'MediaList', 'CIMS', 'Date(ET)',
       'Full Month', 'Month', 'Q', 'H', 'Author Name', 'Language', 'Country',
       'Sub', 'Title', 'Contents', 'Sentiment', 'Microsoft Sentiment',
       'Google Sentiment', 'Facebook Sentiment', 'Apple Sentiment',
       'Amazon Sentiment', 'IBM Sentiment', 'Zoom Sentiment', 'Clean_Host',
       ]]
ANALIZED.head(5)


# In[35]:


ANALIZED=ANALIZED.fillna(0)
#ANALIZED = ANALIZED.replace('nan','')

print(ANALIZED.shape)
ANALIZED.head()


# In[36]:


ANALIZED['Sub']=ANALIZED['Country'].apply(lambda row : country_sub(row)[1])
ANALIZED.head(5)


# In[37]:


# Drop not required columns
ANALIZED = ANALIZED.drop(columns=['Sentiment','Microsoft Sentiment','Google Sentiment','Facebook Sentiment','Apple Sentiment',
                                  'Amazon Sentiment','IBM Sentiment','Zoom Sentiment']).reset_index(drop=True)
ANALIZED.head(3)


# In[38]:


gn = ANALIZED.reset_index(drop = True)
print(gn.shape)
gn.head(5)


# In[39]:


list(gn['Source'].unique())


# In[40]:


list(gn['Sub'].unique())


# <h1 style="color:blue"> SUBSET "ANALIZED DATAFRAME" BY SUB </h1> 

# ## ARGENTINA

# In[41]:


arg = gn[gn['Sub'] == 'Argentina']
print(arg.shape)
arg.head(5)


# ### ANALIZING MEDIALIST=='YES' ARTICLES

# In[42]:


arg_myes = arg[arg['MediaList'] == 'Yes']
print(arg_myes.shape)
arg_myes.head(3)


# In[43]:


list(arg_myes['Host'].unique())


# In[44]:


arg_myes['Host'].value_counts()


# ### ANALIZING MEDIALIST=='NO' ARTICLES

# In[45]:


arg_mno = arg[arg['MediaList'] == 0]
print(arg_mno.shape)
arg_mno.head(3)


# In[46]:


list(arg_mno['Host'].unique())


# In[47]:


aux_arg = arg_mno['Host'].value_counts()
aux_arg = pd.DataFrame(aux_arg)
aux_arg.style.background_gradient()


# ### ADJUST INVALID RECORDS BY 'HOST' COLUMN

# In[48]:


# Considerar 'Siempre' ANALIZED2
print('Shape ANALIZED2:',arg_mno.shape)
ANALIZED3=arg_mno[arg_mno['Link']=='']
print('Shape ANALIZED3:',ANALIZED3.shape)
ANALIZED3=ANALIZED3.merge(auxiliar,
                  left_on='Host',
                  right_on='Host',         
                  how='left').drop(columns=[ 'Publication', 'clean_link_site'])

ANALIZED4=arg_mno[arg_mno['Link']!='']
print('Shape ANALIZED4:',ANALIZED4.shape)

ANALIZED4=ANALIZED4.merge(auxiliar,
                  left_on='Host',
                  right_on='Host',
                  how='left').drop(columns=['Publication',  'clean_link_site' ])

#ANALIZED4= ANALIZED4.drop(columns='Host_y')
#ANALIZED4=ANALIZED4.rename(columns={'Host_x':'Host'})

print(ANALIZED3.shape)
print(ANALIZED4.shape)
print(ANALIZED3.columns)
print(ANALIZED4.columns)

ANALIZED2=ANALIZED3.append(ANALIZED4)
#Verificar que al final, después de la unión de las bases de datos, 
# haya en ANALIZED2 las columnas Tier,Media Type y MediaList
print('Shape ANALIZED:',ANALIZED.shape)
print('Shape ANALIZED2:',ANALIZED2.shape)


# In[49]:


ANALIZED2.head(10)


# In[50]:


ANALIZED2= ANALIZED2.drop(columns=['Tier_x','Media Type_x','MediaList_x','CIMS_x'])
print(ANALIZED2.shape)
ANALIZED2.head(10)


# In[51]:


ANALIZED2= ANALIZED2.rename(columns={'Tier_y':'Tier','Media Type_y':'Media Type','MediaList_y':'MediaList','CIMS_y':'CIMS'})
print(ANALIZED2.shape)
ANALIZED2.head(10)


# In[52]:


# Rename arg_mno to arg_mno_adj (versión ajustada/actualizada/corregida) - ARGENTINA
arg_mno_adj = ANALIZED2
print(arg_mno_adj.shape)
arg_mno_adj.head(10)


# In[53]:


test = ANALIZED2[['Host','MediaList']]
test.head(10)


# In[54]:


test1 = test.groupby(by=["Host"], dropna=False).count()
test1.style.background_gradient()


# In[55]:


ANALIZED2['Tier'].value_counts()


# ## BRAZIL

# In[56]:


bra = gn[gn['Sub'] == 'Brazil']
print(bra.shape)
bra.head(10)


# ### ANALIZING MEDIALIST=='YES' ARTICLES

# In[57]:


bra_myes = bra[bra['MediaList'] == 'Yes']
print(bra_myes.shape)
bra_myes.head(10)


# In[58]:


list(bra_myes['Host'].unique())


# In[59]:


bra_myes['Host'].value_counts()


# ### ANALIZING MEDIALIST=='NO' ARTICLES*

# In[60]:


bra_mno = bra[bra['MediaList'] == 0]
print(bra_mno.shape)
bra_mno.head(10)


# In[61]:


list(bra_mno['Host'].unique())


# In[62]:


aux_bra = bra_mno['Host'].value_counts()
aux_bra = pd.DataFrame(aux_bra)
aux_bra.style.background_gradient()


# In[63]:


print('Shape ANALIZED2:',bra_mno.shape)
ANALIZED3=bra_mno[bra_mno['Link']=='']
print('Shape ANALIZED3:',ANALIZED3.shape)
ANALIZED3=ANALIZED3.merge(auxiliar,
                  left_on='Host',
                  right_on='Host',         
                  how='left').drop(columns=[ 'Publication', 'clean_link_site'])

ANALIZED4=bra_mno[bra_mno['Link']!='']
print('Shape ANALIZED4:',ANALIZED4.shape)

ANALIZED4=ANALIZED4.merge(auxiliar,
                  left_on='Host',
                  right_on='Host',
                  how='left').drop(columns=['Publication',  'clean_link_site' ])

#ANALIZED4= ANALIZED4.drop(columns='Host_y')
#ANALIZED4=ANALIZED4.rename(columns={'Host_x':'Host'})

print(ANALIZED3.shape)
print(ANALIZED4.shape)
print(ANALIZED3.columns)
print(ANALIZED4.columns)

ANALIZED2=ANALIZED3.append(ANALIZED4)
#Verificar que al final, después de la unión de las bases de datos, 
# haya en ANALIZED2 las columnas Tier,Media Type y MediaList
print('Shape ANALIZED:',ANALIZED.shape)
print('Shape ANALIZED2:',ANALIZED2.shape)


# In[64]:


ANALIZED2.head(10)


# In[65]:


ANALIZED2= ANALIZED2.drop(columns=['Tier_x','Media Type_x','MediaList_x','CIMS_x'])
print(ANALIZED2.shape)
ANALIZED2.head(5)


# In[66]:


ANALIZED2= ANALIZED2.rename(columns={'Tier_y':'Tier','Media Type_y':'Media Type','MediaList_y':'MediaList','CIMS_y':'CIMS'})
print(ANALIZED2.shape)
ANALIZED2.head(5)


# In[67]:


# Rename bra_mno to bra_mno_adj - BRAZIL
bra_mno_adj = ANALIZED2
print(bra_mno_adj.shape)
bra_mno_adj.head(5)


# In[68]:


test = ANALIZED2[['Host','MediaList']]
test.head(20)


# In[69]:


test1 = test.groupby(by=["Host"], dropna=False).count()
test1.style.background_gradient()


# ## CARIBBEAN

# In[70]:


cab = gn[gn['Sub'] == 'Caribbean']
print(cab.shape)
cab.head(5)


# ### ANALIZING MEDIALIST=='YES' ARTICLES

# In[71]:


cab_myes = cab[cab['MediaList'] == 'Yes']
print(cab_myes.shape)
cab_myes.head(3)


# In[72]:


list(cab_myes['Host'].unique())


# In[73]:


cab_myes['Host'].value_counts()


# ### ANALIZING MEDIALIST=='NO' ARTICLES

# In[74]:


cab_mno = cab[cab['MediaList'] == 0]
print(cab_mno.shape)
cab_mno.head(3)


# In[75]:


list(cab_mno['Host'].unique())


# In[76]:


aux_cab = cab_mno['Host'].value_counts()
aux_cab = pd.DataFrame(aux_cab)
aux_cab.style.background_gradient()


# In[77]:


print('Shape ANALIZED2:',cab_mno.shape)
ANALIZED3=cab_mno[cab_mno['Link']=='']
print('Shape ANALIZED3:',ANALIZED3.shape)
ANALIZED3=ANALIZED3.merge(auxiliar,
                  left_on='Host',
                  right_on='Host',         
                  how='left').drop(columns=[ 'Publication', 'clean_link_site'])

ANALIZED4=cab_mno[cab_mno['Link']!='']
print('Shape ANALIZED4:',ANALIZED4.shape)

ANALIZED4=ANALIZED4.merge(auxiliar,
                  left_on='Host',
                  right_on='Host',
                  how='left').drop(columns=['Publication',  'clean_link_site' ])

#ANALIZED4= ANALIZED4.drop(columns='Host_y')
#ANALIZED4=ANALIZED4.rename(columns={'Host_x':'Host'})

print(ANALIZED3.shape)
print(ANALIZED4.shape)
print(ANALIZED3.columns)
print(ANALIZED4.columns)

ANALIZED2=ANALIZED3.append(ANALIZED4)
#Verificar que al final, después de la unión de las bases de datos, 
# haya en ANALIZED2 las columnas Tier,Media Type y MediaList
print('Shape ANALIZED:',ANALIZED.shape)
print('Shape ANALIZED2:',ANALIZED2.shape)


# In[78]:


ANALIZED2.head(10)


# In[79]:


ANALIZED2= ANALIZED2.drop(columns=['Tier_x','Media Type_x','MediaList_x','CIMS_x'])
print(ANALIZED2.shape)
ANALIZED2.head(10)


# In[80]:


ANALIZED2= ANALIZED2.rename(columns={'Tier_y':'Tier','Media Type_y':'Media Type','MediaList_y':'MediaList','CIMS_y':'CIMS'})
print(ANALIZED2.shape)
ANALIZED2.head(10)


# In[81]:


# Rename cab_mno to cab_mno_adj - CARIBBEAN
cab_mno_adj = ANALIZED2
print(cab_mno_adj.shape)
cab_mno_adj.head(10)


# In[82]:


test = ANALIZED2[['Host','MediaList']]
test.head(10)


# In[83]:


test1 = test.groupby(by=["Host"], dropna=False).count()
test1.style.background_gradient()


# ## COLOMBIA

# In[84]:


col = gn[gn['Sub'] == 'Colombia']
print(col.shape)
col.head(10)


# ### ANALIZING MEDIALIST=='YES' ARTICLES

# In[85]:


col_myes = col[col['MediaList'] == 'Yes']
print(col_myes.shape)
col_myes.head(10)


# In[86]:


list(col_myes['Host'].unique())


# In[87]:


col_myes['Host'].value_counts()


# ### ANALIZING MEDIALIST=='NO' ARTICLES

# In[88]:


col_mno = col[col['MediaList'] == 0]
print(col_mno.shape)
col_mno.head(10)


# In[89]:


list(col_mno['Host'].unique())


# In[90]:


aux_col = col_mno['Host'].value_counts()
aux_col = pd.DataFrame(aux_col)
aux_col.style.background_gradient()


# In[91]:


print('Shape ANALIZED2:',col_mno.shape)
ANALIZED3=col_mno[col_mno['Link']=='']
print('Shape ANALIZED3:',ANALIZED3.shape)
ANALIZED3=ANALIZED3.merge(auxiliar,
                  left_on='Host',
                  right_on='Host',         
                  how='left').drop(columns=[ 'Publication', 'clean_link_site'])

ANALIZED4=col_mno[col_mno['Link']!='']
print('Shape ANALIZED4:',ANALIZED4.shape)

ANALIZED4=ANALIZED4.merge(auxiliar,
                  left_on='Host',
                  right_on='Host',
                  how='left').drop(columns=['Publication',  'clean_link_site' ])

#ANALIZED4= ANALIZED4.drop(columns='Host_y')
#ANALIZED4=ANALIZED4.rename(columns={'Host_x':'Host'})

print(ANALIZED3.shape)
print(ANALIZED4.shape)
print(ANALIZED3.columns)
print(ANALIZED4.columns)

ANALIZED2=ANALIZED3.append(ANALIZED4)
#Verificar que al final, después de la unión de las bases de datos, 
# haya en ANALIZED2 las columnas Tier,Media Type y MediaList
print('Shape ANALIZED:',ANALIZED.shape)
print('Shape ANALIZED2:',ANALIZED2.shape)


# In[92]:


ANALIZED2.head(10)


# In[93]:


ANALIZED2= ANALIZED2.drop(columns=['Tier_x','Media Type_x','MediaList_x','CIMS_x'])
print(ANALIZED2.shape)
ANALIZED2.head(10)


# In[94]:


ANALIZED2= ANALIZED2.rename(columns={'Tier_y':'Tier','Media Type_y':'Media Type','MediaList_y':'MediaList','CIMS_y':'CIMS'})
print(ANALIZED2.shape)
ANALIZED2.head(10)


# In[95]:


# Rename col_mno to col_mno_adj - COLOMBIA
col_mno_adj = ANALIZED2
print(col_mno_adj.shape)
col_mno_adj.head(10)


# In[96]:


test = ANALIZED2[['Host','MediaList']]
test.head(10)


# In[97]:


test1 = test.groupby(by=["Host"], dropna=False).count()
test1.style.background_gradient()


# ## CHILE

# In[98]:


chi = gn[gn['Sub'] == 'Chile']
print(chi.shape)
chi.head(10)


# In[99]:


chi_myes = chi[chi['MediaList'] == 'Yes']
print(chi_myes.shape)
chi_myes.head(10)


# ### ANALIZING MEDIALIST=='YES' ARTICLES*

# In[100]:


chi_myes = chi[chi['MediaList'] == 'Yes']
print(chi_myes.shape)
chi_myes.head(10)


# In[101]:


list(chi_myes['Host'].unique())


# In[102]:


chi_myes['Host'].value_counts()


# ### ANALIZING MEDIALIST=='NO' ARTICLES

# In[103]:


chi_mno = chi[chi['MediaList'] == 0]
print(chi_mno.shape)
chi_mno.head(10)


# In[104]:


list(chi_mno['Host'].unique())


# In[105]:


aux_chi = chi_mno['Host'].value_counts()
aux_chi = pd.DataFrame(aux_chi)
aux_chi.style.background_gradient()


# In[106]:


print('Shape ANALIZED2:',chi_mno.shape)
ANALIZED3=chi_mno[chi_mno['Link']=='']
print('Shape ANALIZED3:',ANALIZED3.shape)
ANALIZED3=ANALIZED3.merge(auxiliar,
                  left_on='Host',
                  right_on='Host',         
                  how='left').drop(columns=[ 'Publication', 'clean_link_site'])

ANALIZED4=chi_mno[chi_mno['Link']!='']
print('Shape ANALIZED4:',ANALIZED4.shape)

ANALIZED4=ANALIZED4.merge(auxiliar,
                  left_on='Host',
                  right_on='Host',
                  how='left').drop(columns=['Publication',  'clean_link_site' ])

#ANALIZED4= ANALIZED4.drop(columns='Host_y')
#ANALIZED4=ANALIZED4.rename(columns={'Host_x':'Host'})

print(ANALIZED3.shape)
print(ANALIZED4.shape)
print(ANALIZED3.columns)
print(ANALIZED4.columns)

ANALIZED2=ANALIZED3.append(ANALIZED4)
#Verificar que al final, después de la unión de las bases de datos, 
# haya en ANALIZED2 las columnas Tier,Media Type y MediaList
print('Shape ANALIZED:',ANALIZED.shape)
print('Shape ANALIZED2:',ANALIZED2.shape)


# In[107]:


ANALIZED2.head(10)


# In[108]:


ANALIZED2= ANALIZED2.drop(columns=['Tier_x','Media Type_x','MediaList_x','CIMS_x'])
print(ANALIZED2.shape)
ANALIZED2.head(10)


# In[109]:


ANALIZED2= ANALIZED2.rename(columns={'Tier_y':'Tier','Media Type_y':'Media Type','MediaList_y':'MediaList','CIMS_y':'CIMS'})
print(ANALIZED2.shape)
ANALIZED2.head(10)


# In[110]:


# Rename chi_mno to chi_mno_adj - CHILE
chi_mno_adj = ANALIZED2
print(chi_mno_adj.shape)
chi_mno_adj.head(10)


# In[111]:


test = ANALIZED2[['Host','MediaList']]
test.head(10)


# In[112]:


test1 = test.groupby(by=["Host"], dropna=False).count()
test1.style.background_gradient()


# ## CENTRAL

# In[113]:


cen = gn[gn['Sub'] == 'Central']
print(cen.shape)
cen.head(10)


# ### ANALIZING MEDIALIST=='YES' ARTICLES

# In[114]:


cen_myes = cen[cen['MediaList'] == 'Yes']
print(cen_myes.shape)
cen_myes.head(10)


# In[115]:


list(cen_myes['Host'].unique())


# In[116]:


cen_myes['Host'].value_counts()


# ### ANALIZING MEDIALIST=='NO' ARTICLES

# In[117]:


cen_mno = cen[cen['MediaList'] == 0]
print(cen_mno.shape)
cen_mno.head(10)


# In[118]:


list(cen_mno['Host'].unique())


# In[119]:


aux_cen = cen_mno['Host'].value_counts()
aux_cen = pd.DataFrame(aux_cen)
aux_cen.style.background_gradient()


# In[120]:


print('Shape ANALIZED2:',cen_mno.shape)
ANALIZED3=cen_mno[cen_mno['Link']=='']
print('Shape ANALIZED3:',ANALIZED3.shape)
ANALIZED3=ANALIZED3.merge(auxiliar,
                  left_on='Host',
                  right_on='Host',         
                  how='left').drop(columns=[ 'Publication', 'clean_link_site'])

ANALIZED4=cen_mno[cen_mno['Link']!='']
print('Shape ANALIZED4:',ANALIZED4.shape)

ANALIZED4=ANALIZED4.merge(auxiliar,
                  left_on='Host',
                  right_on='Host',
                  how='left').drop(columns=['Publication',  'clean_link_site' ])

#ANALIZED4= ANALIZED4.drop(columns='Host_y')
#ANALIZED4=ANALIZED4.rename(columns={'Host_x':'Host'})

print(ANALIZED3.shape)
print(ANALIZED4.shape)
print(ANALIZED3.columns)
print(ANALIZED4.columns)

ANALIZED2=ANALIZED3.append(ANALIZED4)
#Verificar que al final, después de la unión de las bases de datos, 
# haya en ANALIZED2 las columnas Tier,Media Type y MediaList
print('Shape ANALIZED:',ANALIZED.shape)
print('Shape ANALIZED2:',ANALIZED2.shape)


# In[121]:


ANALIZED2.head(10)


# In[122]:


ANALIZED2= ANALIZED2.drop(columns=['Tier_x','Media Type_x','MediaList_x','CIMS_x'])
print(ANALIZED2.shape)
ANALIZED2.head(10)


# In[123]:


ANALIZED2= ANALIZED2.rename(columns={'Tier_y':'Tier','Media Type_y':'Media Type','MediaList_y':'MediaList','CIMS_y':'CIMS'})
print(ANALIZED2.shape)
ANALIZED2.head(10)


# In[124]:


# Rename col_mno to col_mno_adj - COLOMBIA
cen_mno_adj = ANALIZED2
print(cen_mno_adj.shape)
cen_mno_adj.head(10)


# In[125]:


test = ANALIZED2[['Host','MediaList']]
test.head(10)


# In[126]:


test1 = test.groupby(by=["Host"], dropna=False).count()
test1.style.background_gradient()


# ## MEXICO

# In[127]:


mex = gn[gn['Sub'] == 'Mexico']
print(mex.shape)
mex.head(10)


# In[128]:


mex_myes = mex[mex['MediaList'] == 'Yes']
print(mex_myes.shape)
mex_myes.head(10)


# ### ANALIZING MEDIALIST=='YES' ARTICLES

# In[129]:


mex_myes = mex[mex['MediaList'] == 'Yes']
print(mex_myes.shape)
mex_myes.head(10)


# In[130]:


list(mex_myes['Host'].unique())


# In[131]:


mex_myes['Host'].value_counts()


# ### ANALIZING MEDIALIST=='NO' ARTICLES

# In[132]:


mex_mno = mex[mex['MediaList'] == 0]
print(mex_mno.shape)
mex_mno.head(10)


# In[133]:


list(mex_mno['Host'].unique())


# In[134]:


aux_mex = mex_mno['Host'].value_counts()
aux_mex = pd.DataFrame(aux_mex)
aux_mex.style.background_gradient()


# In[135]:


print('Shape ANALIZED2:',mex_mno.shape)
ANALIZED3=mex_mno[mex_mno['Link']=='']
print('Shape ANALIZED3:',ANALIZED3.shape)
ANALIZED3=ANALIZED3.merge(auxiliar,
                  left_on='Host',
                  right_on='Host',         
                  how='left').drop(columns=[ 'Publication', 'clean_link_site'])

ANALIZED4=mex_mno[mex_mno['Link']!='']
print('Shape ANALIZED4:',ANALIZED4.shape)

ANALIZED4=ANALIZED4.merge(auxiliar,
                  left_on='Host',
                  right_on='Host',
                  how='left').drop(columns=['Publication',  'clean_link_site'])

#ANALIZED4= ANALIZED4.drop(columns='Host_y')
#ANALIZED4=ANALIZED4.rename(columns={'Host_x':'Host'})

print(ANALIZED3.shape)
print(ANALIZED4.shape)
print(ANALIZED3.columns)
print(ANALIZED4.columns)

ANALIZED2=ANALIZED3.append(ANALIZED4)
#Verificar que al final, después de la unión de las bases de datos, 
# haya en ANALIZED2 las columnas Tier,Media Type y MediaList
print('Shape ANALIZED:',ANALIZED.shape)
print('Shape ANALIZED2:',ANALIZED2.shape)


# In[136]:


ANALIZED2.head(10)


# In[137]:


ANALIZED2= ANALIZED2.drop(columns=['Tier_x','Media Type_x','MediaList_x','CIMS_x'])
print(ANALIZED2.shape)
ANALIZED2.head(10)


# In[138]:


ANALIZED2= ANALIZED2.rename(columns={'Tier_y':'Tier','Media Type_y':'Media Type','MediaList_y':'MediaList','CIMS_y':'CIMS'})
print(ANALIZED2.shape)
ANALIZED2.head(10)


# In[139]:


# Rename mex_mno to mex_mno_adj - MEXICO
mex_mno_adj = ANALIZED2
print(mex_mno_adj.shape)
mex_mno_adj.head(10)


# In[140]:


test = ANALIZED2[['Host','MediaList']]
test.head(10)


# In[141]:


test1 = test.groupby(by=["Host"], dropna=False).count()
test1.style.background_gradient()


# ## SOUTH

# In[142]:


sou = gn[gn['Sub'] == 'South']
print(sou.shape)
sou.head(10)


# ### ANALIZING MEDIALIST=='YES' ARTICLES

# In[143]:


sou = gn[gn['Sub'] == 'South']
print(sou.shape)
sou.head(10)


# In[144]:


sou_myes = sou[sou['MediaList'] == 'Yes']
print(sou_myes.shape)
sou_myes.head(10)


# In[145]:


list(sou_myes['Host'].unique())


# In[146]:


sou_myes['Host'].value_counts()


# ### ANALIZING MEDIALIST=='NO' ARTICLES

# In[147]:


sou_mno = sou[sou['MediaList'] == 0]
print(sou_mno.shape)
sou_mno.head(10)


# In[148]:


list(sou_mno['Host'].unique())


# In[149]:


aux_sou = sou_mno['Host'].value_counts()
aux_sou = pd.DataFrame(aux_sou)
aux_sou.style.background_gradient()


# In[150]:


print('Shape ANALIZED2:',sou_mno.shape)
ANALIZED3=sou_mno[sou_mno['Link']=='']
print('Shape ANALIZED3:',ANALIZED3.shape)
ANALIZED3=ANALIZED3.merge(auxiliar,
                  left_on='Host',
                  right_on='Host',         
                  how='left').drop(columns=[ 'Publication', 'clean_link_site'])

ANALIZED4=sou_mno[sou_mno['Link']!='']
print('Shape ANALIZED4:',ANALIZED4.shape)

ANALIZED4=ANALIZED4.merge(auxiliar,
                  left_on='Host',
                  right_on='Host',
                  how='left').drop(columns=['Publication',  'clean_link_site'])

#ANALIZED4= ANALIZED4.drop(columns='Host_y')
#ANALIZED4=ANALIZED4.rename(columns={'Host_x':'Host'})

print(ANALIZED3.shape)
print(ANALIZED4.shape)
print(ANALIZED3.columns)
print(ANALIZED4.columns)

ANALIZED2=ANALIZED3.append(ANALIZED4)
#Verificar que al final, después de la unión de las bases de datos, 
# haya en ANALIZED2 las columnas Tier,Media Type y MediaList
print('Shape ANALIZED:',ANALIZED.shape)
print('Shape ANALIZED2:',ANALIZED2.shape)


# In[151]:


ANALIZED2.head(10)


# In[152]:


ANALIZED2= ANALIZED2.drop(columns=['Tier_x','Media Type_x','MediaList_x','CIMS_x'])
print(ANALIZED2.shape)
ANALIZED2.head(10)


# In[153]:


ANALIZED2= ANALIZED2.rename(columns={'Tier_y':'Tier','Media Type_y':'Media Type','MediaList_y':'MediaList','CIMS_y':'CIMS'})
print(ANALIZED2.shape)
ANALIZED2.head(10)


# In[154]:


# Rename sou_mno to sou_mno_adj - SOUTH
sou_mno_adj = ANALIZED2
print(sou_mno_adj.shape)
sou_mno_adj.head(10)


# In[155]:


test = ANALIZED2[['Host','MediaList']]
test.head(10)


# In[156]:


test1 = test.groupby(by=["Host"], dropna=False).count()
test1.style.background_gradient()


# ## PANLATAM

# In[157]:


pan = gn[gn['Sub'] == 'Panlatam']
print(pan.shape)
pan.head(10)


# ### ANALIZING MEDIALIST=='YES' ARTICLES

# In[158]:


pan_myes = pan[pan['MediaList'] == 'Yes']
print(pan_myes.shape)
pan_myes.head(10)


# In[159]:


list(pan_myes['Host'].unique())


# In[160]:


pan_myes['Host'].value_counts()


# ### ANALIZING MEDIALIST=='NO' ARTICLES

# In[161]:


pan_mno = pan[pan['MediaList'] == 0]
print(pan_mno.shape)
pan_mno.head(10)


# In[162]:


list(pan_mno['Host'].unique())


# In[163]:


aux_pan = pan_mno['Host'].value_counts()
aux_pan = pd.DataFrame(aux_pan)
aux_pan.style.background_gradient()


# In[164]:


print('Shape ANALIZED2:',pan_mno.shape)
ANALIZED3=pan_mno[pan_mno['Link']=='']
print('Shape ANALIZED3:',ANALIZED3.shape)
ANALIZED3=ANALIZED3.merge(auxiliar,
                  left_on='Host',
                  right_on='Host',         
                  how='left').drop(columns=[ 'Publication', 'clean_link_site'])

ANALIZED4=pan_mno[pan_mno['Link']!='']
print('Shape ANALIZED4:',ANALIZED4.shape)

ANALIZED4=ANALIZED4.merge(auxiliar,
                  left_on='Host',
                  right_on='Host',
                  how='left').drop(columns=['Publication',  'clean_link_site'])

#ANALIZED4= ANALIZED4.drop(columns='Host_y')
#ANALIZED4=ANALIZED4.rename(columns={'Host_x':'Host'})

print(ANALIZED3.shape)
print(ANALIZED4.shape)
print(ANALIZED3.columns)
print(ANALIZED4.columns)

ANALIZED2=ANALIZED3.append(ANALIZED4)
#Verificar que al final, después de la unión de las bases de datos, 
# haya en ANALIZED2 las columnas Tier,Media Type y MediaList
print('Shape ANALIZED:',ANALIZED.shape)
print('Shape ANALIZED2:',ANALIZED2.shape)


# In[165]:


ANALIZED2.head(10)


# In[166]:


ANALIZED2= ANALIZED2.drop(columns=['Tier_x','Media Type_x','MediaList_x','CIMS_x'])
print(ANALIZED2.shape)
ANALIZED2.head(10)


# In[167]:


ANALIZED2= ANALIZED2.rename(columns={'Tier_y':'Tier','Media Type_y':'Media Type','MediaList_y':'MediaList','CIMS_y':'CIMS'})
print(ANALIZED2.shape)
ANALIZED2.head(10)


# In[168]:


# Rename pan_mno to pan_mno_adj - PANLATAM
pan_mno_adj = ANALIZED2
print(pan_mno_adj.shape)
pan_mno_adj.head(10)


# In[169]:


test = ANALIZED2[['Host','MediaList']]
test.head(10)


# In[170]:


test1 = test.groupby(by=["Host"], dropna=False).count()
test1.style.background_gradient()


# <h1 style="color:blue"> CHECK POINT - SUBs DATAFRAMES </h1> 

# In[171]:


# Subs DataFrames (MediaList = Yes) - VERIFICATION
print(f'Argentina DataFrame Shape (MediaList=Yes): {arg_myes.shape}')
print(f'Brazil DataFrame Shape (MediaList=Yes): {bra_myes.shape}')
print(f'Caribbean DataFrame Shape (MediaList=Yes): {cab_myes.shape}')
print(f'Colombia DataFrame Shape (MediaList=Yes): {col_myes.shape}')
print(f'Chile DataFrame Shape (MediaList=Yes): {chi_myes.shape}')
print(f'Central DataFrame Shape (MediaList=Yes): {cen_myes.shape}')
print(f'Mexico DataFrame Shape (MediaList=Yes): {mex_myes.shape}')
print(f'South DataFrame Shape (MediaList=Yes): {sou_myes.shape}')
print(f'Panlatam DataFrame Shape (MediaList=Yes): {pan_myes.shape}')


# In[172]:


# Subs DataFrames (MediaList = No) - VERIFICATION
print(f'Argentina DataFrame Shape (MediaList=No) - ADJUSTED: {arg_mno_adj.shape}')
print(f'Brazil DataFrame Shape (MediaList=No) - ADJUSTED: {bra_mno_adj.shape}')
print(f'Caribbean DataFrame Shape (MediaList=No) - ADJUSTED: {cab_mno_adj.shape}')
print(f'Colombia DataFrame Shape (MediaList=No) - ADJUSTED: {col_mno_adj.shape}')
print(f'Chile DataFrame Shape (MediaList=No) - ADJUSTED: {chi_mno_adj.shape}')
print(f'Central DataFrame Shape (MediaList=No) - ADJUSTED: {cen_mno_adj.shape}')
print(f'Mexico DataFrame Shape (MediaList=No) - ADJUSTED: {mex_mno_adj.shape}')
print(f'South DataFrame Shape (MediaList=No) - ADJUSTED: {sou_mno_adj.shape}')
print(f'Panlatam DataFrame Shape (MediaList=No) - ADJUSTED: {pan_mno_adj.shape}')


# In[173]:


# Total MediaList articles after 1st adjustment:
argentina = arg_myes.shape[0] + arg_mno_adj.shape[0]
brazil = bra_myes.shape[0] + bra_mno_adj.shape[0]
caribbean = cab_myes.shape[0] + cab_mno_adj.shape[0]
colombia = col_myes.shape[0] + col_mno_adj.shape[0]
chile = chi_myes.shape[0] + chi_mno_adj.shape[0]
central = cen_myes.shape[0] + cen_mno_adj.shape[0]
mexico = mex_myes.shape[0] + mex_mno_adj.shape[0]
panlatam = pan_myes.shape[0] + pan_mno_adj.shape[0]
south = sou_myes.shape[0] + sou_mno_adj.shape[0]


# In[174]:


print(f'Total MediaList Articles AR: {argentina}')
print(f'Total MediaList Articles BR: {brazil}')
print(f'Total MediaList Articles CA: {caribbean}')
print(f'Total MediaList Articles CO: {colombia}')
print(f'Total MediaList Articles CH: {chile}')
print(f'Total MediaList Articles CE: {central}')
print(f'Total MediaList Articles MX: {mexico}')
print(f'Total MediaList Articles PL: {panlatam}')
print(f'Total MediaList Articles SO: {south}')


# In[175]:


# Total MediaList articles Latam Q4:
latamQ4 = argentina+brazil+caribbean+colombia+chile+central+mexico+panlatam+south
print(f'Total MediaList Articles LatAm Q4: {latamQ4}')


# In[176]:


# Ratios Latam Q4 per Sub (Raw Data from Global News) => MediaList Only
ArRatio = (argentina/latamQ4)*100
BrRatio = (brazil/latamQ4)*100
CaRatio = (caribbean/latamQ4)*100
CoRatio = (colombia/latamQ4)*100
ChRatio = (chile/latamQ4)*100
CeRatio = (central/latamQ4)*100
MeRatio = (mexico/latamQ4)*100
PaRatio = (panlatam/latamQ4)*100
SoRatio = (south/latamQ4)*100
print(f'ArRatio: {ArRatio}')
print(f'BrRatio: {BrRatio}')
print(f'CaRatio: {CaRatio}')
print(f'CoRatio: {CoRatio}')
print(f'ChRatio: {ChRatio}')
print(f'CeRatio: {CeRatio}')
print(f'MeRatio: {MeRatio}')
print(f'PaRatio: {PaRatio}')
print(f'SoRatio: {SoRatio}')


# In[177]:


# Comparison between values: before and after adjustment

########## ARGENTINA ##########
ArBefore = arg_mno[arg_mno['MediaList'] == 0].shape[0]
ArAfter = arg_mno_adj[arg_mno_adj['MediaList'] == 'Yes'].shape[0]
ArNoMediaRecords = arg_mno_adj['MediaList'].isna().sum()

########## BRAZIL ##########
BrBefore = bra_mno[bra_mno['MediaList'] == 0].shape[0]
BrAfter = bra_mno_adj[bra_mno_adj['MediaList'] == 'Yes'].shape[0]
BrNoMediaRecords = bra_mno_adj['MediaList'].isna().sum()

########## CARIBBEAN ##########
CaBefore = cab_mno[cab_mno['MediaList'] == 0].shape[0]
CaAfter = cab_mno_adj[cab_mno_adj['MediaList'] == 'Yes'].shape[0]
CaNoMediaRecords = cab_mno_adj['MediaList'].isna().sum()

########## COLOMBIA ##########
CoBefore = col_mno[col_mno['MediaList'] == 0].shape[0]
CoAfter = col_mno_adj[col_mno_adj['MediaList'] == 'Yes'].shape[0]
CoNoMediaRecords = col_mno_adj['MediaList'].isna().sum()

########## CHILE ##########
ChBefore = chi_mno[chi_mno['MediaList'] == 0].shape[0]
ChAfter = chi_mno_adj[chi_mno_adj['MediaList'] == 'Yes'].shape[0]
ChNoMediaRecords = chi_mno_adj['MediaList'].isna().sum()

########## CENTRAL ##########
CeBefore = cen_mno[cen_mno['MediaList'] == 0].shape[0]
CeAfter = cen_mno_adj[cen_mno_adj['MediaList'] == 'Yes'].shape[0]
CeNoMediaRecords = cen_mno_adj['MediaList'].isna().sum()

########## MEXICO ##########
MxBefore = mex_mno[mex_mno['MediaList'] == 0].shape[0]
MxAfter = mex_mno_adj[mex_mno_adj['MediaList'] == 'Yes'].shape[0]
MxNoMediaRecords = mex_mno_adj['MediaList'].isna().sum()

########## PANLATAM ##########
PaBefore = pan_mno[pan_mno['MediaList'] == 0].shape[0]
PaAfter = pan_mno_adj[pan_mno_adj['MediaList'] == 'Yes'].shape[0]
PaNoMediaRecords = pan_mno_adj['MediaList'].isna().sum()

########## SOUTH ##########
SoBefore = sou_mno[sou_mno['MediaList'] == 0].shape[0]
SoAfter = sou_mno_adj[sou_mno_adj['MediaList'] == 'Yes'].shape[0]
SoNoMediaRecords = sou_mno_adj['MediaList'].isna().sum()


# In[178]:


print('ARGENTINA')
print(f'Total Records Before Adjustment: {ArBefore}')
print(f'Total Records After Adjustment: {ArAfter}')
print(f'Total No MediaList Records After Adjustment: {ArNoMediaRecords}')
print('\n')
print('BRAZIL')
print(f'Total Records Before Adjustment: {BrBefore}')
print(f'Total Records After Adjustment: {BrAfter}')
print(f'Total No MediaList Records After Adjustment: {BrNoMediaRecords}')
print('\n')
print('CARIBBEAN')
print(f'Total Records Before Adjustment: {CaBefore}')
print(f'Total Records After Adjustment: {CaAfter}')
print(f'Total No MediaList Records After Adjustment: {CaNoMediaRecords}')
print('\n')
print('COLOMBIA')
print(f'Total Records Before Adjustment: {CoBefore}')
print(f'Total Records After Adjustment: {CoAfter}')
print(f'Total No MediaList Records After Adjustment: {CoNoMediaRecords}')
print('\n')
print('CHILE')
print(f'Total Records Before Adjustment: {ChBefore}')
print(f'Total Records After Adjustment: {ChAfter}')
print(f'Total No MediaList Records After Adjustment: {ChNoMediaRecords}')
print('\n')
print('CENTRAL')
print(f'Total Records Before Adjustment: {CeBefore}')
print(f'Total Records After Adjustment: {CeAfter}')
print(f'Total No MediaList Records After Adjustment: {CeNoMediaRecords}')
print('\n')
print('MEXICO')
print(f'Total Records Before Adjustment: {MxBefore}')
print(f'Total Records After Adjustment: {MxAfter}')
print(f'Total No MediaList Records After Adjustment: {MxNoMediaRecords}')
print('\n')
print('PANLATAM')
print(f'Total Records Before Adjustment: {PaBefore}')
print(f'Total Records After Adjustment: {PaAfter}')
print(f'Total No MediaList Records After Adjustment: {PaNoMediaRecords}')
print('\n')
print('SOUTH')
print(f'Total Records Before Adjustment: {SoBefore}')
print(f'Total Records After Adjustment: {SoAfter}')
print(f'Total No MediaList Records After Adjustment: {SoNoMediaRecords}')


# <h1 style="color:blue"> CHECK POINT SUMMARY </h1> 

# * ***What numbers above tell us?***
# 
#     * In Argentina after adjustment in the dataset with medialist articles identified like "NO", only 986           really were out of medialist.
#     
#     
#     * In Brazil after adjustment in the dataset with medialist articles identified like "NO", only 36,235           really were out of medialist.
# 
# 
#     * In Caribbean after adjustment in the dataset with medialist articles identified like "NO", only 4,328           really were out of medialist.
# 
# 
#     * In Colombia after adjustment in the dataset with medialist articles identified like "NO", only 379           really were out of medialist.
#     
#     
#     * In Chile after adjustment in the dataset with medialist articles identified like "NO", only 614           really were out of medialist.
# 
# 
#     * In Central after adjustment in the dataset with medialist articles identified like "NO", only 316           really were out of medialist.
# 
# 
#     * In Mexico after adjustment in the dataset with medialist articles identified like "NO", only 827           really were out of medialist.
#     
#     
#     * In PanlatAm after adjustment in the dataset with medialist articles identified like "NO", only 92           really were out of medialist.
#     
#     
#     * In South after adjustment in the dataset with medialist articles identified like "NO", only 718           really were out of medialist.

# <h1 style="color:blue"> CONCAT "sub_yes" & "sub_no_adjusted" DATAFRAMES => DOUBLE CHECK </h1> 

# ### ARGENTINA

# In[179]:


##### ARGENTINA #####
arg_f = pd.concat([arg_myes,arg_mno_adj])
arg_f.reset_index(drop = True, inplace = True)
print(arg_f.shape)
arg_f.head(3)


# ### BRAZIL

# In[180]:


##### BRAZIL #####
bra_f = pd.concat([bra_myes,bra_mno_adj])
bra_f.reset_index(drop = True, inplace = True)
print(bra_f.shape)
bra_f.head(3)


# ### CARIBBEAN

# In[181]:


##### CARIBBEAN #####
car_f = pd.concat([cab_myes,cab_mno_adj])
car_f.reset_index(drop = True, inplace = True)
print(car_f.shape)
car_f.head(3)


# ### COLOMBIA

# In[182]:


##### COLOMBIA #####
col_f = pd.concat([col_myes,col_mno_adj])
col_f.reset_index(drop = True, inplace = True)
print(col_f.shape)
col_f.head(3)


# ### CHILE

# In[183]:


##### CHILE #####
chi_f = pd.concat([chi_myes,chi_mno_adj])
chi_f.reset_index(drop = True, inplace = True)
print(chi_f.shape)
chi_f.head(3)


# ### CENTRAL

# In[184]:


##### CENTRAL #####
cen_f = pd.concat([cen_myes,cen_mno_adj])
cen_f.reset_index(drop = True, inplace = True)
print(cen_f.shape)
cen_f.head(3)


# ### MEXICO

# In[185]:


##### MEXICO #####
mex_f = pd.concat([mex_myes,mex_mno_adj])
mex_f.reset_index(drop = True, inplace = True)
print(mex_f.shape)
mex_f.head(3)


# ### PANLATAM

# In[186]:


##### PANLATAM #####
pan_f = pd.concat([pan_myes,pan_mno_adj])
pan_f.reset_index(drop = True, inplace = True)
print(pan_f.shape)
pan_f.head(3)


# ### SOUTH

# In[187]:


##### SOUTH #####
sou_f = pd.concat([sou_myes,sou_mno_adj])
sou_f.reset_index(drop = True, inplace = True)
print(sou_f.shape)
sou_f.head(3)


# <h1 style="color:blue"> REMOVE DUPLICATES </h1> 

# ### ARGENTINA

# In[188]:


# ***** DUPLICATES ARGENTINA *****
    ## Get a subset with all duplicate records using
dup_arg = arg_f[arg_f.duplicated(subset = ['No','Source','Host','Link'])]
print(dup_arg.shape)
dup_arg.head(5)


# In[189]:


# ***** DELETE DUPLICATES ARGENTINA ****
dup_arg_clean = arg_f.drop_duplicates(subset=['No','Source','Host','Link'],keep="first")
print(dup_arg_clean.shape)
dup_arg_clean.head(5)


# ### BRAZIL

# In[190]:


# ***** DUPLICATES BRAZIL *****
    ## Get a subset with all duplicate records using
dup_bra = bra_f[bra_f.duplicated(subset = ['No','Source','Host','Link'])]
print(dup_bra.shape)
dup_bra.head(5)


# In[191]:


# ***** DELETE DUPLICATES BRAZIL ****
dup_bra_clean = bra_f.drop_duplicates(subset=['No','Source','Host','Link'],keep="first")
print(dup_bra_clean.shape)
dup_bra_clean.head(5)


# ### CARIBBEAN

# In[192]:


# ***** DUPLICATES CARIBBEAN *****
    ## Get a subset with all duplicate records using
dup_cab = car_f[car_f.duplicated(subset = ['No','Source','Host','Link'])]
print(dup_cab.shape)
dup_cab.head(5)


# In[193]:


# ***** DELETE DUPLICATES CARIBBEAN ****
dup_cab_clean = car_f.drop_duplicates(subset=['No','Source','Host','Link'],keep="first")
print(dup_cab_clean.shape)
dup_cab_clean.head(5)


# ### COLOMBIA

# In[194]:


# ***** DUPLICATES COLOMBIA *****
    ## Get a subset with all duplicate records using
dup_col = col_f[col_f.duplicated(subset = ['No','Source','Host','Link'])]
print(dup_col.shape)
dup_col.head(5)


# In[195]:


# ***** DELETE DUPLICATES COLOMBIA ****
dup_col_clean = col_f.drop_duplicates(subset=['No','Source','Host','Link'],keep="first")
print(dup_col_clean.shape)
dup_col_clean.head(5)


# ### CHILE

# In[196]:


# ***** DUPLICATES CHILE *****
    ## Get a subset with all duplicate records using
dup_chi = chi_f[chi_f.duplicated(subset = ['No','Source','Host','Link'])]
print(dup_chi.shape)
dup_chi.head(5)


# In[197]:


# ***** DELETE DUPLICATES CHILE ****
dup_chi_clean = chi_f.drop_duplicates(subset=['No','Source','Host','Link'],keep="first")
print(dup_chi_clean.shape)
dup_chi_clean.head(5)


# ### CENTRAL

# In[198]:


# ***** DUPLICATES CENTRAL *****
    ## Get a subset with all duplicate records using
dup_cen = cen_f[cen_f.duplicated(subset = ['No','Source','Host','Link'])]
print(dup_cen.shape)
dup_cen.head(5)


# In[199]:


# ***** DELETE DUPLICATES CENTRAL ****
dup_cen_clean = cen_f.drop_duplicates(subset=['No','Source','Host','Link'],keep="first")
print(dup_cen_clean.shape)
dup_cen_clean.head(5)


# ### MEXICO

# In[200]:


# ***** DUPLICATES MEXICO *****
    ## Get a subset with all duplicate records using
dup_mex = mex_f[mex_f.duplicated(subset = ['No','Source','Host','Link'])]
print(dup_mex.shape)
dup_mex.head(5)


# In[201]:


# ***** DELETE DUPLICATES MEXICO ****
dup_mex_clean = mex_f.drop_duplicates(subset=['No','Source','Host','Link'],keep="first")
print(dup_mex_clean.shape)
dup_mex_clean.head(5)


# ### PANLATAM

# In[202]:


# ***** DUPLICATES PANLATAM *****
    ## Get a subset with all duplicate records using
dup_pan = pan_f[pan_f.duplicated(subset = ['No','Source','Host','Link'])]
print(dup_pan.shape)
dup_pan.head(5)


# In[203]:


# ***** DELETE DUPLICATES PANLATAM ****
dup_pan_clean = pan_f.drop_duplicates(subset=['No','Source','Host','Link'],keep="first")
print(dup_pan_clean.shape)
dup_pan_clean.head(5)


# ### SOUTH

# In[204]:


# ***** DUPLICATES SOUTH *****
    ## Get a subset with all duplicate records using
dup_sou = sou_f[sou_f.duplicated(subset = ['No','Source','Host','Link'])]
print(dup_sou.shape)
dup_sou.head(5)


# In[205]:


# ***** DELETE DUPLICATES SOUTH ****
dup_sou_clean = sou_f.drop_duplicates(subset=['No','Source','Host','Link'],keep="first")
print(dup_sou_clean.shape)
dup_sou_clean.head(5)


# <h1 style="color:blue"> COMPLETENESS ANALYSIS </h1>

# In[206]:


'''
This function is used
'''
def completeness(df):
    comple=pd.DataFrame(df.isnull().sum())
    comple.reset_index(inplace=True)
    comple=comple.rename(columns={'index':'columna',0:'total'})
    comple['completitud']=(1-comple['total']/df.shape[0])*100
    comple=comple.sort_values(by='completitud',ascending=True)
    comple.reset_index(drop=True,inplace=True)
    return comple


# ## ARGENTINA

# In[207]:


completeness(dup_arg_clean).style.background_gradient()


# ## BRAZIL

# In[208]:


completeness(dup_bra_clean).style.background_gradient()


# ## CARIBBEAN

# In[209]:


completeness(dup_cab_clean).style.background_gradient()


# ## COLOMBIA

# In[210]:


completeness(dup_col_clean).style.background_gradient()


# ## CHILE

# In[211]:


completeness(dup_chi_clean).style.background_gradient()


# ## CENTRAL

# In[212]:


completeness(dup_cen_clean).style.background_gradient()


# ## MEXICO

# In[213]:


completeness(dup_mex_clean).style.background_gradient()


# ## PANLATAM

# In[214]:


completeness(dup_pan_clean).style.background_gradient()


# In[215]:


dup_pan_clean.isnull().sum()


# ## SOUTH

# In[216]:


completeness(dup_sou_clean).style.background_gradient()


# In[217]:


dup_sou_clean.isnull().sum()


# In[218]:


dup_sou_clean['Source'].value_counts()


# In[219]:


south_host_aux = dup_sou_clean['Host'].value_counts()
south_host_aux = pd.DataFrame(south_host_aux)
south_host_aux.style.background_gradient()


# <h1 style="color:blue"> PRELIMINAR VISUALIZATION BY SUB: SOME METRICS </h1>

# *   **TOTAL ARTICLES & RATIO BY SUB**
# *   **TOTAL ARTICLES & RATIO BY MONTH**
# *   **TOTAL ARTICLES & RATIO BY HOST**
# *   **TOTAL ARTICLES & RATIO BY MEDIA MIX**
# *   **TOTAL ARTICLES & RATIO BY RAW DATA VS PROCESSED DATA**

# In[219]:


def my_bar_count(df,x,title="",x_title="",y_title=""):
    """ counts categories in the variable and generates plotly bar plot

    Parameters
    ----------
    df : pandas.DataFrame
        data frame to extract data from
    col : [string
        column from data frame to plot
    title : str, optional
        title of the plot, by default ""
    x_title : str, optional
        x axis title, by default ""
    y_title : str, optional
        y axis title, by default ""

    Returns
    -------
    plotly figure
    """
    layout = go.Layout(font_family="Courier New, monospace",
        font_color="black",title_text=title,title_font_size=20,
        xaxis= {"title": {"text": x_title,"font": {"family": 'Courier New, monospace',"size": 12, "color": '#002e4d'}}},
        yaxis= {"title": {"text": y_title,"font": {"family": 'Courier New, monospace',"size": 12, "color": '#002e4d'}}},
        title_font_family="Arial",title_font_color="#003030",
        template="plotly_white", plot_bgcolor="rgb(168,168,168)")
    aux=pd.DataFrame(df[x].value_counts()).reset_index().rename(columns={"index":"conteo"})
    fig=aux.iplot(kind='bar',x="conteo",y=x,title=title,asFigure=True,barmode="overlay",sortbars=True,color='#2b2b2b',layout=layout,width=5)
    fig.update_layout(width=800)
    fig.update_traces(marker_color='#045C8C',opacity=0.7)
    return fig


# In[220]:


fig = my_bar_count(dup_col_clean,'Host')
fig.update_layout(title_text='Total de Artículos por Host - GN',
                  title_font_size=16,
                  xaxis_title_text='Host',
                  xaxis=dict(range=[0,5]),
                  yaxis_title='Conteo',
                 font=dict(
                family="Courier New, monospace",size=13)
                 )
fig.show()


# In[221]:


completeness(col).style.background_gradient()


# In[222]:


completeness(col_f).style.background_gradient()


# In[223]:


completeness(dup_col_clean).style.background_gradient()


# In[224]:


tempcol = dup_col_clean[['No','Source','Host','Link','Title','Tier','MediaList','Media Type','CIMS']]


# In[225]:


tempcol.to_excel('tempcol.xlsx')


# In[226]:


print(dup_col_clean.shape)
dup_col_clean.head(2)


# In[227]:


list(dup_col_clean.columns)


# In[228]:


latam1 = pd.concat([dup_arg,dup_bra,dup_cab,dup_col,dup_chi,dup_cen,dup_mex,dup_pan,dup_sou])
latam1.reset_index(drop = True)
print(latam1.shape)
latam1.head(5)


# In[229]:


latam1.to_excel('latam1.xlsx')


# In[230]:


dup_arg.to_excel('ARG_Q4_FY21_GN.xlsx')


# In[231]:


dup_bra.to_excel('BRA_Q4_FY21_GN.xlsx')


# In[232]:


dup_cab.to_excel('CARIBBEAN_Q4_FY21_GN.xlsx')


# In[233]:


dup_col.to_excel('COLOMBIA_Q4_FY21_GN.xlsx')


# In[234]:


dup_chi.to_excel('CHILE_Q4_FY21_GN.xlsx')


# In[235]:


dup_cen.to_excel('CENTRAL_Q4_FY21_GN.xlsx')


# In[236]:


dup_mex.to_excel('MEXICO_Q4_FY21_GN.xlsx')


# In[237]:


dup_pan.to_excel('PANLATAM_Q4_FY21_GN.xlsx')


# In[238]:


dup_sou.to_excel('SOUTH_Q4_FY21_GN.xlsx')


# In[243]:


# Clean Latam => Sin duplicados => Windows 11 News Cycle
latam1Clean = pd.concat([dup_arg_clean,dup_bra_clean,dup_cab_clean,dup_col_clean,dup_chi_clean,dup_cen_clean,dup_mex_clean,dup_pan_clean,dup_sou_clean])
latam1Clean.reset_index(drop = True)
print(latam1Clean.shape)
latam1Clean.head(5)


