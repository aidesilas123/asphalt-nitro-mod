###### Class com.iab.omid.library.jungroup.adsession.media.b (com.iab.omid.library.jungroup.adsession.media.b)
.class public final Lcom/iab/omid/library/jungroup/adsession/media/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/iab/omid/library/jungroup/adsession/l;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/jungroup/adsession/l;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/jungroup/adsession/media/b;->a:Lcom/iab/omid/library/jungroup/adsession/l;

    return-void
.end method

.method public static a(Lcom/iab/omid/library/jungroup/adsession/b;)Lcom/iab/omid/library/jungroup/adsession/media/b;
    .registers 3

    move-object v0, p0

    check-cast v0, Lcom/iab/omid/library/jungroup/adsession/l;

    const-string v1, "AdSession is null"

    invoke-static {v1, p0}, Lcom/iab/omid/library/jungroup/d/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/iab/omid/library/jungroup/adsession/l;->c()Z

    move-result p0

    if-eqz p0, :cond_3c

    iget-boolean p0, v0, Lcom/iab/omid/library/jungroup/adsession/l;->f:Z

    if-nez p0, :cond_34

    iget-boolean p0, v0, Lcom/iab/omid/library/jungroup/adsession/l;->g:Z

    if-nez p0, :cond_2c

    iget-object p0, v0, Lcom/iab/omid/library/jungroup/adsession/l;->e:Lcom/iab/omid/library/jungroup/publisher/a;

    iget-object v1, p0, Lcom/iab/omid/library/jungroup/publisher/a;->c:Lcom/iab/omid/library/jungroup/adsession/media/b;

    if-nez v1, :cond_24

    new-instance v1, Lcom/iab/omid/library/jungroup/adsession/media/b;

    invoke-direct {v1, v0}, Lcom/iab/omid/library/jungroup/adsession/media/b;-><init>(Lcom/iab/omid/library/jungroup/adsession/l;)V

    iput-object v1, p0, Lcom/iab/omid/library/jungroup/publisher/a;->c:Lcom/iab/omid/library/jungroup/adsession/media/b;

    return-object v1

    :cond_24
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "MediaEvents already exists for AdSession"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AdSession is finished"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AdSession is started"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot create MediaEvents for JavaScript AdSession"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()V
    .registers 6

    sget-object v0, Lcom/iab/omid/library/jungroup/adsession/media/a;->b:Lcom/iab/omid/library/jungroup/adsession/media/a;

    iget-object v1, p0, Lcom/iab/omid/library/jungroup/adsession/media/b;->a:Lcom/iab/omid/library/jungroup/adsession/l;

    invoke-static {v1}, Lcom/iab/omid/library/jungroup/d/d;->a(Lcom/iab/omid/library/jungroup/adsession/l;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "interactionType"

    invoke-static {v1, v2, v0}, Lcom/iab/omid/library/jungroup/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/adsession/media/b;->a:Lcom/iab/omid/library/jungroup/adsession/l;

    iget-object v0, v0, Lcom/iab/omid/library/jungroup/adsession/l;->e:Lcom/iab/omid/library/jungroup/publisher/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/jungroup/publisher/a;->c()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "adUserInteraction"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "publishMediaEvent"

    invoke-static {v0, v1, v2}, Lcom/iab/omid/library/jungroup/b/f;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(F)V
    .registers 6

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_4b

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/adsession/media/b;->a:Lcom/iab/omid/library/jungroup/adsession/l;

    invoke-static {v0}, Lcom/iab/omid/library/jungroup/d/d;->a(Lcom/iab/omid/library/jungroup/adsession/l;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "duration"

    invoke-static {v0, v1, p1}, Lcom/iab/omid/library/jungroup/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "mediaPlayerVolume"

    invoke-static {v0, v1, p1}, Lcom/iab/omid/library/jungroup/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/iab/omid/library/jungroup/b/g;->a()Lcom/iab/omid/library/jungroup/b/g;

    move-result-object p1

    iget p1, p1, Lcom/iab/omid/library/jungroup/b/g;->a:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "deviceVolume"

    invoke-static {v0, v1, p1}, Lcom/iab/omid/library/jungroup/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/iab/omid/library/jungroup/adsession/media/b;->a:Lcom/iab/omid/library/jungroup/adsession/l;

    iget-object p1, p1, Lcom/iab/omid/library/jungroup/adsession/l;->e:Lcom/iab/omid/library/jungroup/publisher/a;

    invoke-virtual {p1}, Lcom/iab/omid/library/jungroup/publisher/a;->c()Landroid/webkit/WebView;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "start"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "publishMediaEvent"

    invoke-static {p1, v0, v1}, Lcom/iab/omid/library/jungroup/b/f;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Media duration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
