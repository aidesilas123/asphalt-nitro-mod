###### Class com.iab.omid.library.gameloft.publisher.AdSessionStatePublisher (com.iab.omid.library.gameloft.publisher.AdSessionStatePublisher)
.class public abstract Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;
    }
.end annotation


# instance fields
.field private a:Lcom/iab/omid/library/gameloft/e/b;

.field private b:Lcom/iab/omid/library/gameloft/adsession/AdEvents;

.field private c:Lcom/iab/omid/library/gameloft/adsession/video/VideoEvents;

.field private d:Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;

.field private e:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->h()V

    new-instance v0, Lcom/iab/omid/library/gameloft/e/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iab/omid/library/gameloft/e/b;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->a:Lcom/iab/omid/library/gameloft/e/b;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(F)V
    .registers 4

    invoke-static {}, Lcom/iab/omid/library/gameloft/b/d;->a()Lcom/iab/omid/library/gameloft/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/iab/omid/library/gameloft/b/d;->a(Landroid/webkit/WebView;F)V

    return-void
.end method

.method a(Landroid/webkit/WebView;)V
    .registers 3

    new-instance v0, Lcom/iab/omid/library/gameloft/e/b;

    invoke-direct {v0, p1}, Lcom/iab/omid/library/gameloft/e/b;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->a:Lcom/iab/omid/library/gameloft/e/b;

    return-void
.end method

.method public a(Lcom/iab/omid/library/gameloft/adsession/AdEvents;)V
    .registers 2

    iput-object p1, p0, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->b:Lcom/iab/omid/library/gameloft/adsession/AdEvents;

    return-void
.end method

.method public a(Lcom/iab/omid/library/gameloft/adsession/AdSessionConfiguration;)V
    .registers 4

    invoke-static {}, Lcom/iab/omid/library/gameloft/b/d;->a()Lcom/iab/omid/library/gameloft/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iab/omid/library/gameloft/adsession/AdSessionConfiguration;->toJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/iab/omid/library/gameloft/b/d;->a(Landroid/webkit/WebView;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lcom/iab/omid/library/gameloft/adsession/ErrorType;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/iab/omid/library/gameloft/b/d;->a()Lcom/iab/omid/library/gameloft/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/iab/omid/library/gameloft/b/d;->a(Landroid/webkit/WebView;Lcom/iab/omid/library/gameloft/adsession/ErrorType;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/iab/omid/library/gameloft/adsession/a;Lcom/iab/omid/library/gameloft/adsession/AdSessionContext;)V
    .registers 8

    invoke-virtual {p1}, Lcom/iab/omid/library/gameloft/adsession/a;->getAdSessionId()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "environment"

    const-string v2, "app"

    invoke-static {v0, v1, v2}, Lcom/iab/omid/library/gameloft/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/iab/omid/library/gameloft/adsession/AdSessionContext;->getAdSessionContextType()Lcom/iab/omid/library/gameloft/adsession/AdSessionContextType;

    move-result-object v1

    const-string v3, "adSessionType"

    invoke-static {v0, v3, v1}, Lcom/iab/omid/library/gameloft/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/iab/omid/library/gameloft/d/a;->d()Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "deviceInfo"

    invoke-static {v0, v3, v1}, Lcom/iab/omid/library/gameloft/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "clid"

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "vlid"

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "supports"

    invoke-static {v0, v3, v1}, Lcom/iab/omid/library/gameloft/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lcom/iab/omid/library/gameloft/adsession/AdSessionContext;->getPartner()Lcom/iab/omid/library/gameloft/adsession/Partner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iab/omid/library/gameloft/adsession/Partner;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "partnerName"

    invoke-static {v1, v4, v3}, Lcom/iab/omid/library/gameloft/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/iab/omid/library/gameloft/adsession/AdSessionContext;->getPartner()Lcom/iab/omid/library/gameloft/adsession/Partner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iab/omid/library/gameloft/adsession/Partner;->getVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "partnerVersion"

    invoke-static {v1, v4, v3}, Lcom/iab/omid/library/gameloft/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "omidNativeInfo"

    invoke-static {v0, v3, v1}, Lcom/iab/omid/library/gameloft/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "libraryVersion"

    const-string v4, "1.2.19-Gameloft"

    invoke-static {v1, v3, v4}, Lcom/iab/omid/library/gameloft/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/iab/omid/library/gameloft/b/c;->a()Lcom/iab/omid/library/gameloft/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iab/omid/library/gameloft/b/c;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "appId"

    invoke-static {v1, v4, v3}, Lcom/iab/omid/library/gameloft/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v2, v1}, Lcom/iab/omid/library/gameloft/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/iab/omid/library/gameloft/adsession/AdSessionContext;->getCustomReferenceData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8d

    invoke-virtual {p2}, Lcom/iab/omid/library/gameloft/adsession/AdSessionContext;->getCustomReferenceData()Ljava/lang/String;

    move-result-object v1

    const-string v2, "customReferenceData"

    invoke-static {v0, v2, v1}, Lcom/iab/omid/library/gameloft/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lcom/iab/omid/library/gameloft/adsession/AdSessionContext;->getVerificationScriptResources()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iab/omid/library/gameloft/adsession/VerificationScriptResource;

    invoke-virtual {v2}, Lcom/iab/omid/library/gameloft/adsession/VerificationScriptResource;->getVendorKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/iab/omid/library/gameloft/adsession/VerificationScriptResource;->getVerificationParameters()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/iab/omid/library/gameloft/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9a

    :cond_b2
    invoke-static {}, Lcom/iab/omid/library/gameloft/b/d;->a()Lcom/iab/omid/library/gameloft/b/d;

    move-result-object p2

    invoke-virtual {p0}, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {p2, v2, p1, v0, v1}, Lcom/iab/omid/library/gameloft/b/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lcom/iab/omid/library/gameloft/adsession/video/VideoEvents;)V
    .registers 2

    iput-object p1, p0, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->c:Lcom/iab/omid/library/gameloft/adsession/video/VideoEvents;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/iab/omid/library/gameloft/b/d;->a()Lcom/iab/omid/library/gameloft/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/iab/omid/library/gameloft/b/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .registers 7

    iget-wide v0, p0, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->e:J

    cmp-long v2, p2, v0

    if-ltz v2, :cond_15

    sget-object p2, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;->b:Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;

    iput-object p2, p0, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->d:Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;

    invoke-static {}, Lcom/iab/omid/library/gameloft/b/d;->a()Lcom/iab/omid/library/gameloft/b/d;

    move-result-object p2

    invoke-virtual {p0}, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/iab/omid/library/gameloft/b/d;->c(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    invoke-static {}, Lcom/iab/omid/library/gameloft/b/d;->a()Lcom/iab/omid/library/gameloft/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/iab/omid/library/gameloft/b/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->e()Z

    move-result v0

    if-eqz v0, :cond_18

    if-eqz p1, :cond_b

    const-string p1, "foregrounded"

    goto :goto_d

    :cond_b
    const-string p1, "backgrounded"

    :goto_d
    invoke-static {}, Lcom/iab/omid/library/gameloft/b/d;->a()Lcom/iab/omid/library/gameloft/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/iab/omid/library/gameloft/b/d;->d(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->a:Lcom/iab/omid/library/gameloft/e/b;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public b(Ljava/lang/String;J)V
    .registers 7

    iget-wide v0, p0, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->e:J

    cmp-long v2, p2, v0

    if-ltz v2, :cond_19

    iget-object p2, p0, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->d:Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;

    sget-object p3, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;->c:Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;

    if-eq p2, p3, :cond_19

    iput-object p3, p0, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->d:Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;

    invoke-static {}, Lcom/iab/omid/library/gameloft/b/d;->a()Lcom/iab/omid/library/gameloft/b/d;

    move-result-object p2

    invoke-virtual {p0}, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/iab/omid/library/gameloft/b/d;->c(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public c()Lcom/iab/omid/library/gameloft/adsession/AdEvents;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->b:Lcom/iab/omid/library/gameloft/adsession/AdEvents;

    return-object v0
.end method

.method public d()Lcom/iab/omid/library/gameloft/adsession/video/VideoEvents;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->c:Lcom/iab/omid/library/gameloft/adsession/video/VideoEvents;

    return-object v0
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->a:Lcom/iab/omid/library/gameloft/e/b;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public f()V
    .registers 3

    invoke-static {}, Lcom/iab/omid/library/gameloft/b/d;->a()Lcom/iab/omid/library/gameloft/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/gameloft/b/d;->a(Landroid/webkit/WebView;)V

    return-void
.end method

.method public g()V
    .registers 3

    invoke-static {}, Lcom/iab/omid/library/gameloft/b/d;->a()Lcom/iab/omid/library/gameloft/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/gameloft/b/d;->b(Landroid/webkit/WebView;)V

    return-void
.end method

.method public getWebView()Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->a:Lcom/iab/omid/library/gameloft/e/b;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method public h()V
    .registers 3

    invoke-static {}, Lcom/iab/omid/library/gameloft/d/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->e:J

    sget-object v0, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;->a:Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;

    iput-object v0, p0, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;->d:Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;

    return-void
.end method

###### Class com.iab.omid.library.gameloft.publisher.AdSessionStatePublisher.a (com.iab.omid.library.gameloft.publisher.AdSessionStatePublisher$a)
.class final enum Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;

.field public static final enum b:Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;

.field public static final enum c:Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;

.field private static final synthetic d:[Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;

    const-string v1, "AD_STATE_IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;->a:Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;

    new-instance v1, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;

    const-string v3, "AD_STATE_VISIBLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;->b:Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;

    new-instance v3, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;

    const-string v5, "AD_STATE_NOTVISIBLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;->c:Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;->d:[Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;
    .registers 2

    const-class v0, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;

    return-object p0
.end method

.method public static values()[Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;
    .registers 1

    sget-object v0, Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;->d:[Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;

    invoke-virtual {v0}, [Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iab/omid/library/gameloft/publisher/AdSessionStatePublisher$a;

    return-object v0
.end method
