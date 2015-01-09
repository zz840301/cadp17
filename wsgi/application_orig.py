################################# 1. 宣告原始碼  coding, 導入必要模組
#coding=utf-8
import cherrypy
import random
# for path setup
import os
# for mako
from mako.lookup import TemplateLookup

################################# 2. 全域變數設定, 近端與遠端目錄設定
cwd = os.getcwd()
if 'OPENSHIFT_REPO_DIR' in os.environ.keys():
    # 表示程式在雲端執行
    template_root_dir = os.environ['OPENSHIFT_REPO_DIR']+"/wsgi/static"
    data_dir = os.environ['OPENSHIFT_DATA_DIR']
else:
    # 表示程式在近端執行
    template_root_dir = cwd+"/static"
    data_dir = cwd+"/local_data"

################################# 3. 定義主要類別 Guess
class Guess(object):
    # 標準答案必須利用 session 機制儲存
    _cp_config = {
    # 配合 utf-8 格式之表單內容
    # 若沒有 utf-8 encoding 設定,則表單不可輸入中文
    'tools.encode.encoding': 'utf-8',
    # 加入 session 設定
    'tools.sessions.on' : True,
    'tools.sessions.storage_type' : 'file',
    'tools.sessions.locking' : 'early',
    'tools.sessions.storage_path' : data_dir+'/tmp',
    # 內定的 session timeout 時間為 60 分鐘
    'tools.sessions.timeout' : 60,
    'tools.mako.directories' :  template_root_dir+"/templates"
    }
    def __init__(self):
        if not os.path.isdir(data_dir+"/tmp"):
            try:
                os.makedirs(data_dir+"/tmp")
            except:
                print("mkdir error")
    @cherrypy.expose
    def index(self, guess=None):
        # 將標準答案存入 answer session 對應區
        theanswer = random.randint(1, 100)
        thecount = 0
        # 將答案與計算次數變數存進 session 對應變數
        cherrypy.session['answer'] = theanswer
        cherrypy.session['count'] = thecount
        套稿查詢 = TemplateLookup(directories=[template_root_dir+"/templates"])
        # 必須要從 templates 目錄取出 index.html
        內建頁面 = 套稿查詢.get_template("index.html")
        return 內建頁面.render()

    @cherrypy.expose
    def default(self, attr='default'):
        # 內建 default 方法, 找不到執行方法時, 會執行此方法
        套稿查詢 = TemplateLookup(directories=[template_root_dir+"/templates"])
        # 必須要從 templates 目錄取出 index.html
        內建頁面 = 套稿查詢.get_template("default.html")
        return 內建頁面.render()

    @cherrypy.expose
    def doCheck(self, guess=None):
        # 假如使用者直接執行 doCheck, 則設法轉回根方法
        if guess is None:
            raise cherrypy.HTTPRedirect("/")
        # 從 session 取出 answer 對應資料, 且處理直接執行 doCheck 時無法取 session 值情況
        try:
            theanswer = int(cherrypy.session.get('answer'))
        except:
            raise cherrypy.HTTPRedirect("/")
        套稿查詢 = TemplateLookup(directories=[template_root_dir+"/templates"])
        # 必須要從 templates 目錄取出 index.html
        內建頁面 = 套稿查詢.get_template("docheck.html")
        # 經由表單所取得的 guess 資料型別為 string
        try:
            theguess = int(guess)
        except:
            return 內建頁面.render(輸入="error")

        cherrypy.session['count']  += 1
        if theanswer < theguess:
            return 內建頁面.render(輸入="big", theanswer=theanswer)
        elif theanswer > theguess:
            return 內建頁面.render(輸入="small", theanswer=theanswer)
        else:
            thecount = cherrypy.session.get('count')
            return 內建頁面.render(輸入="exact", theanswer=theanswer, thecount=thecount)

    @cherrypy.expose
    def mytest(self):
        套稿查詢 = TemplateLookup(directories=[template_root_dir+"/templates"])
        # 必須要從 templates 目錄取出 mytest.html
        內建頁面 = 套稿查詢.get_template("mytest.html")
        return 內建頁面.render()

################################# 4. 程式啟動設定與執行
root = Guess()
application_conf = {# 設定靜態 templates 檔案目錄對應
        '/templates':{
        'tools.staticdir.on': True,
        'tools.staticdir.root': template_root_dir,
        'tools.staticdir.dir': 'templates',
        'tools.staticdir.index' : 'index.htm'
        }
    }
if 'OPENSHIFT_REPO_DIR' in os.environ.keys():
    # 表示在 OpenSfhit 執行
    application = cherrypy.Application(root, config = application_conf)
else:
    # 表示在近端執行
    cherrypy.quickstart(root, config = application_conf)
