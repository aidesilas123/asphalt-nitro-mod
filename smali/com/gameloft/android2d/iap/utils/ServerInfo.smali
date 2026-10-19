###### Class com.gameloft.android2d.iap.utils.ServerInfo (com.gameloft.android2d.iap.utils.ServerInfo)
.class public Lcom/gameloft/android2d/iap/utils/ServerInfo;
.super Ljava/lang/Object;
.source "ServerInfo.java"


# static fields
.field private static a:Z

.field private static b:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

.field private static c:Z

.field private static d:Z


# instance fields
.field private e:Ljavax/xml/parsers/SAXParserFactory;

.field private f:Ljavax/xml/parsers/SAXParser;

.field private g:Lorg/xml/sax/XMLReader;

.field private h:Lcom/gameloft/android2d/iap/utils/f;

.field private i:Lcom/gameloft/android2d/iap/utils/e;

.field private j:Lorg/xml/sax/InputSource;

.field k:Lcom/gameloft/android2d/iap/utils/Device;

.field l:Lcom/gameloft/android2d/iap/utils/XPlayer;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lcom/gameloft/android2d/iap/utils/h;

.field p:Lcom/android/billingclient/api/SkuDetailsResponseListener;

.field q:Lcom/android/billingclient/api/SkuDetailsResponseListener;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->j:Lorg/xml/sax/InputSource;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->o:Lcom/gameloft/android2d/iap/utils/h;

    new-instance v0, Lcom/gameloft/android2d/iap/utils/ServerInfo$b;

    invoke-direct {v0, p0}, Lcom/gameloft/android2d/iap/utils/ServerInfo$b;-><init>(Lcom/gameloft/android2d/iap/utils/ServerInfo;)V

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->p:Lcom/android/billingclient/api/SkuDetailsResponseListener;

    new-instance v0, Lcom/gameloft/android2d/iap/utils/ServerInfo$c;

    invoke-direct {v0, p0}, Lcom/gameloft/android2d/iap/utils/ServerInfo$c;-><init>(Lcom/gameloft/android2d/iap/utils/ServerInfo;)V

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->q:Lcom/android/billingclient/api/SkuDetailsResponseListener;

    :try_start_1a
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->IsUseWPIAP()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->e:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->f:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->g:Lorg/xml/sax/XMLReader;

    :cond_32
    new-instance v0, Lcom/gameloft/android2d/iap/utils/f;

    invoke-direct {v0}, Lcom/gameloft/android2d/iap/utils/f;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->h:Lcom/gameloft/android2d/iap/utils/f;

    new-instance v0, Lcom/gameloft/android2d/iap/utils/e;

    invoke-direct {v0}, Lcom/gameloft/android2d/iap/utils/e;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->i:Lcom/gameloft/android2d/iap/utils/e;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->IsUseWPIAP()Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->g:Lorg/xml/sax/XMLReader;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->h:Lcom/gameloft/android2d/iap/utils/f;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    :cond_4d
    new-instance v0, Lcom/gameloft/android2d/iap/utils/Device;

    invoke-direct {v0}, Lcom/gameloft/android2d/iap/utils/Device;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->k:Lcom/gameloft/android2d/iap/utils/Device;

    new-instance v0, Lcom/gameloft/android2d/iap/utils/XPlayer;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->k:Lcom/gameloft/android2d/iap/utils/Device;

    const/4 v2, 0x1

    const v3, 0x7f1202ad

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/gameloft/android2d/iap/utils/XPlayer;-><init>(Lcom/gameloft/android2d/iap/utils/Device;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->l:Lcom/gameloft/android2d/iap/utils/XPlayer;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_65} :catch_65

    :catch_65
    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    sput-boolean p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->c:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    sput-boolean p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->d:Z

    return p0
.end method

.method static synthetic access$202(Z)Z
    .registers 1

    sput-boolean p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->a:Z

    return p0
.end method

.method static synthetic access$300()Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    return-object v0
.end method

.method private g(Lorg/xml/sax/InputSource;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->g:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->h:Lcom/gameloft/android2d/iap/utils/f;

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/f;->a()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->o:Lcom/gameloft/android2d/iap/utils/h;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method


# virtual methods
.method public a()Lcom/gameloft/android2d/iap/utils/e;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->i:Lcom/gameloft/android2d/iap/utils/e;

    return-object v0
.end method

.method public b()Lcom/gameloft/android2d/iap/utils/h;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->o:Lcom/gameloft/android2d/iap/utils/h;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Z
    .registers 10

    const/4 p1, 0x0

    sput-boolean p1, Lcom/gameloft/android2d/iap/IAPLib;->c0:Z

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetCRMFeed()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->f(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/h;->I()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_9f

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->hasConnectivity()Z

    move-result v0

    if-eqz v0, :cond_35

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->getSimOperator1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x25

    invoke-static {v0, v2}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    :cond_35
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/h;->L()V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/h;->K()V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/h;->N()V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    const v2, 0x7f1202ce

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1202cf

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/gameloft/android2d/iap/utils/h;->l0(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->q:Z

    if-eqz v0, :cond_79

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->downloadImageItems()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->LoadImageData()Z

    move-result v0

    if-eqz v0, :cond_78

    return v1

    :cond_78
    return p1

    :cond_79
    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->e()V

    sput-boolean p1, Lcom/gameloft/android2d/iap/utils/ServerInfo;->c:Z

    sput-boolean p1, Lcom/gameloft/android2d/iap/utils/ServerInfo;->d:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_84
    sget-boolean p1, Lcom/gameloft/android2d/iap/utils/ServerInfo;->c:Z

    if-eqz p1, :cond_8c

    sget-boolean p1, Lcom/gameloft/android2d/iap/utils/ServerInfo;->d:Z

    if-nez p1, :cond_9f

    :cond_8c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0xfa0

    cmp-long p1, v4, v6

    if-gez p1, :cond_9f

    const-wide/16 v4, 0x14

    :try_start_99
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_9d

    goto :goto_84

    :catch_9d
    nop

    goto :goto_84

    :cond_9f
    return v1
.end method

.method public d()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->j:Lorg/xml/sax/InputSource;

    if-eqz v0, :cond_32

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->m:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->g(Lorg/xml/sax/InputSource;)V

    iput-object v1, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->j:Lorg/xml/sax/InputSource;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/h;->I()Z

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/h;->N()V

    const v1, 0x7f1202ce

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1202cf

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/gameloft/android2d/iap/utils/h;->l0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    return-void
.end method

.method e()V
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/h;->f()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    if-eqz v2, :cond_56

    :cond_13
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_13

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    :cond_33
    :goto_33
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gameloft/android2d/iap/utils/g;

    if-eqz v4, :cond_33

    invoke-virtual {v4}, Lcom/gameloft/android2d/iap/utils/g;->x()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/gameloft/android2d/iap/utils/g;->f()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_33

    invoke-virtual {v4}, Lcom/gameloft/android2d/iap/utils/g;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_56
    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->p:Lcom/android/billingclient/api/SkuDetailsResponseListener;

    iget-object v2, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->q:Lcom/android/billingclient/api/SkuDetailsResponseListener;

    invoke-virtual {p0, v0, v1, v2}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->h(Ljava/util/List;Lcom/android/billingclient/api/SkuDetailsResponseListener;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    return-void
.end method

.method public f(Lorg/json/JSONObject;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->i:Lcom/gameloft/android2d/iap/utils/e;

    invoke-virtual {v0, p1}, Lcom/gameloft/android2d/iap/utils/e;->c(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->i:Lcom/gameloft/android2d/iap/utils/e;

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/e;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->o:Lcom/gameloft/android2d/iap/utils/h;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method

.method public h(Ljava/util/List;Lcom/android/billingclient/api/SkuDetailsResponseListener;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/billingclient/api/SkuDetailsResponseListener;",
            "Lcom/android/billingclient/api/SkuDetailsResponseListener;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->a:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    const-string v1, "inapp"

    invoke-virtual {v0, p1, v1, p2}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->i(Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    sget-object p2, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    const-string v0, "subs"

    invoke-virtual {p2, p1, v0, p3}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->i(Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    return-void

    :cond_13
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getGoogleDevKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3a

    const-string v2, ""

    if-ne v0, v2, :cond_1f

    goto :goto_3a

    :cond_1f
    new-instance v2, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-direct {v2, v3, v0}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v2, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    invoke-virtual {v2, v1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->e(Z)V

    sget-object v0, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b:Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    new-instance v1, Lcom/gameloft/android2d/iap/utils/ServerInfo$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/gameloft/android2d/iap/utils/ServerInfo$a;-><init>(Lcom/gameloft/android2d/iap/utils/ServerInfo;Ljava/util/List;Lcom/android/billingclient/api/SkuDetailsResponseListener;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    invoke-virtual {v0, v1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->k(Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$j;)V

    return-void

    :cond_3a
    :goto_3a
    sput-boolean v1, Lcom/gameloft/android2d/iap/utils/ServerInfo;->c:Z

    sput-boolean v1, Lcom/gameloft/android2d/iap/utils/ServerInfo;->d:Z

    return-void
.end method

###### Class com.gameloft.android2d.iap.utils.ServerInfo.a (com.gameloft.android2d.iap.utils.ServerInfo$a)
.class Lcom/gameloft/android2d/iap/utils/ServerInfo$a;
.super Ljava/lang/Object;
.source "ServerInfo.java"

# interfaces
.implements Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/utils/ServerInfo;->h(Ljava/util/List;Lcom/android/billingclient/api/SkuDetailsResponseListener;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/android/billingclient/api/SkuDetailsResponseListener;

.field final synthetic c:Lcom/android/billingclient/api/SkuDetailsResponseListener;

.field final synthetic d:Lcom/gameloft/android2d/iap/utils/ServerInfo;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/utils/ServerInfo;Ljava/util/List;Lcom/android/billingclient/api/SkuDetailsResponseListener;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
    .registers 5

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo$a;->d:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    iput-object p2, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo$a;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo$a;->b:Lcom/android/billingclient/api/SkuDetailsResponseListener;

    iput-object p4, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo$a;->c:Lcom/android/billingclient/api/SkuDetailsResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/gameloft/android2d/iap/billings/googleplaybilling/a;)V
    .registers 5

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/a;->c()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_e

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->access$002(Z)Z

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->access$102(Z)Z

    return-void

    :cond_e
    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->access$202(Z)Z

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->access$300()Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo$a;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo$a;->b:Lcom/android/billingclient/api/SkuDetailsResponseListener;

    const-string v2, "inapp"

    invoke-virtual {p1, v0, v2, v1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->i(Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->access$300()Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo$a;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo$a;->c:Lcom/android/billingclient/api/SkuDetailsResponseListener;

    const-string v2, "subs"

    invoke-virtual {p1, v0, v2, v1}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/IabHelper;->i(Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    return-void
.end method

###### Class com.gameloft.android2d.iap.utils.ServerInfo.b (com.gameloft.android2d.iap.utils.ServerInfo$b)
.class Lcom/gameloft/android2d/iap/utils/ServerInfo$b;
.super Ljava/lang/Object;
.source "ServerInfo.java"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android2d/iap/utils/ServerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/utils/ServerInfo;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/utils/ServerInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo$b;->a:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_b

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->access$002(Z)Z

    goto :goto_2a

    :cond_b
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/SkuDetails;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/gameloft/android2d/iap/utils/h;->k0(Ljava/lang/String;Lcom/android/billingclient/api/SkuDetails;)V

    goto :goto_f

    :cond_27
    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->access$002(Z)Z

    :goto_2a
    return-void
.end method

###### Class com.gameloft.android2d.iap.utils.ServerInfo.c (com.gameloft.android2d.iap.utils.ServerInfo$c)
.class Lcom/gameloft/android2d/iap/utils/ServerInfo$c;
.super Ljava/lang/Object;
.source "ServerInfo.java"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android2d/iap/utils/ServerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/utils/ServerInfo;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/utils/ServerInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/ServerInfo$c;->a:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->b()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_b

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->access$102(Z)Z

    goto :goto_2a

    :cond_b
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/SkuDetails;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/gameloft/android2d/iap/utils/h;->k0(Ljava/lang/String;Lcom/android/billingclient/api/SkuDetails;)V

    goto :goto_f

    :cond_27
    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->access$102(Z)Z

    :goto_2a
    return-void
.end method
