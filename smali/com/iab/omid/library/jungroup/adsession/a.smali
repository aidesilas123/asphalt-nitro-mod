###### Class com.iab.omid.library.jungroup.adsession.a (com.iab.omid.library.jungroup.adsession.a)
.class public final Lcom/iab/omid/library/jungroup/adsession/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/iab/omid/library/jungroup/adsession/l;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/jungroup/adsession/l;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/jungroup/adsession/a;->a:Lcom/iab/omid/library/jungroup/adsession/l;

    return-void
.end method

.method public static a(Lcom/iab/omid/library/jungroup/adsession/b;)Lcom/iab/omid/library/jungroup/adsession/a;
    .registers 3

    check-cast p0, Lcom/iab/omid/library/jungroup/adsession/l;

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/adsession/l;->e:Lcom/iab/omid/library/jungroup/publisher/a;

    iget-object v1, v0, Lcom/iab/omid/library/jungroup/publisher/a;->b:Lcom/iab/omid/library/jungroup/adsession/a;

    if-nez v1, :cond_1c

    iget-boolean v1, p0, Lcom/iab/omid/library/jungroup/adsession/l;->g:Z

    if-nez v1, :cond_14

    new-instance v1, Lcom/iab/omid/library/jungroup/adsession/a;

    invoke-direct {v1, p0}, Lcom/iab/omid/library/jungroup/adsession/a;-><init>(Lcom/iab/omid/library/jungroup/adsession/l;)V

    iput-object v1, v0, Lcom/iab/omid/library/jungroup/publisher/a;->b:Lcom/iab/omid/library/jungroup/adsession/a;

    return-object v1

    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AdSession is finished"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AdEvents already exists for AdSession"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()V
    .registers 6

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/adsession/a;->a:Lcom/iab/omid/library/jungroup/adsession/l;

    iget-boolean v1, v0, Lcom/iab/omid/library/jungroup/adsession/l;->g:Z

    if-nez v1, :cond_56

    invoke-virtual {v0}, Lcom/iab/omid/library/jungroup/adsession/l;->b()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/adsession/a;->a:Lcom/iab/omid/library/jungroup/adsession/l;

    iget-boolean v1, v0, Lcom/iab/omid/library/jungroup/adsession/l;->f:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1a

    iget-boolean v1, v0, Lcom/iab/omid/library/jungroup/adsession/l;->g:Z

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    if-nez v1, :cond_22

    :try_start_1d
    invoke-virtual {v0}, Lcom/iab/omid/library/jungroup/adsession/l;->a()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    nop

    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/iab/omid/library/jungroup/adsession/a;->a:Lcom/iab/omid/library/jungroup/adsession/l;

    iget-boolean v1, v0, Lcom/iab/omid/library/jungroup/adsession/l;->f:Z

    if-eqz v1, :cond_2e

    iget-boolean v1, v0, Lcom/iab/omid/library/jungroup/adsession/l;->g:Z

    if-nez v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    if-eqz v1, :cond_4d

    iget-boolean v1, v0, Lcom/iab/omid/library/jungroup/adsession/l;->i:Z

    if-nez v1, :cond_45

    iget-object v1, v0, Lcom/iab/omid/library/jungroup/adsession/l;->e:Lcom/iab/omid/library/jungroup/publisher/a;

    invoke-virtual {v1}, Lcom/iab/omid/library/jungroup/publisher/a;->c()Landroid/webkit/WebView;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "publishImpressionEvent"

    invoke-static {v1, v4, v3}, Lcom/iab/omid/library/jungroup/b/f;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v2, v0, Lcom/iab/omid/library/jungroup/adsession/l;->i:Z

    goto :goto_4d

    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impression event can only be sent once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    :goto_4d
    return-void

    :cond_4e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impression event is not expected from the Native AdSession"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AdSession is finished"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/iab/omid/library/jungroup/adsession/media/d;)V
    .registers 7

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/adsession/a;->a:Lcom/iab/omid/library/jungroup/adsession/l;

    invoke-static {v0}, Lcom/iab/omid/library/jungroup/d/d;->a(Lcom/iab/omid/library/jungroup/adsession/l;)V

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/adsession/a;->a:Lcom/iab/omid/library/jungroup/adsession/l;

    invoke-virtual {v0}, Lcom/iab/omid/library/jungroup/adsession/l;->b()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/iab/omid/library/jungroup/adsession/a;->a:Lcom/iab/omid/library/jungroup/adsession/l;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_14
    const-string v2, "skippable"

    iget-boolean v3, p1, Lcom/iab/omid/library/jungroup/adsession/media/d;->a:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v2, p1, Lcom/iab/omid/library/jungroup/adsession/media/d;->a:Z

    if-eqz v2, :cond_26

    const-string v2, "skipOffset"

    iget-object v3, p1, Lcom/iab/omid/library/jungroup/adsession/media/d;->b:Ljava/lang/Float;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_26
    const-string v2, "autoPlay"

    iget-boolean v3, p1, Lcom/iab/omid/library/jungroup/adsession/media/d;->c:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "position"

    iget-object p1, p1, Lcom/iab/omid/library/jungroup/adsession/media/d;->d:Lcom/iab/omid/library/jungroup/adsession/media/c;

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_34} :catch_35

    goto :goto_3b

    :catch_35
    move-exception p1

    const-string v2, "VastProperties: JSON error"

    invoke-static {v2, p1}, Lcom/iab/omid/library/jungroup/d/c;->a(Ljava/lang/String;Lorg/json/JSONException;)V

    :goto_3b
    iget-boolean p1, v0, Lcom/iab/omid/library/jungroup/adsession/l;->j:Z

    if-nez p1, :cond_53

    iget-object p1, v0, Lcom/iab/omid/library/jungroup/adsession/l;->e:Lcom/iab/omid/library/jungroup/publisher/a;

    invoke-virtual {p1}, Lcom/iab/omid/library/jungroup/publisher/a;->c()Landroid/webkit/WebView;

    move-result-object p1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "publishLoadedEvent"

    invoke-static {p1, v1, v3}, Lcom/iab/omid/library/jungroup/b/f;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v2, v0, Lcom/iab/omid/library/jungroup/adsession/l;->j:Z

    return-void

    :cond_53
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Loaded event can only be sent once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Impression event is not expected from the Native AdSession"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
