###### Class com.fyber.inneractive.sdk.web.c (com.fyber.inneractive.sdk.web.c)
.class public Lcom/fyber/inneractive/sdk/web/c;
.super Lcom/fyber/inneractive/sdk/web/c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/fyber/inneractive/sdk/web/d0;",
        ">",
        "Lcom/fyber/inneractive/sdk/web/c0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final N:Lcom/fyber/inneractive/sdk/web/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fyber/inneractive/sdk/web/b;ZZ)V
    .registers 6

    sget-object v0, Lcom/fyber/inneractive/sdk/web/i$g;->INTERSTITIAL:Lcom/fyber/inneractive/sdk/web/i$g;

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/fyber/inneractive/sdk/web/c0;-><init>(Landroid/content/Context;ZZLcom/fyber/inneractive/sdk/web/i$g;)V

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/web/c;->N:Lcom/fyber/inneractive/sdk/web/b;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(I)V
    .registers 5

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/c;->N:Lcom/fyber/inneractive/sdk/web/b;

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/web/d;->f:Lcom/fyber/inneractive/sdk/web/d$d;

    if-eqz p1, :cond_14

    new-instance v0, Lcom/fyber/inneractive/sdk/external/InneractiveInfrastructureError;

    sget-object v1, Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;->SDK_INTERNAL_ERROR:Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;

    sget-object v2, Lcom/fyber/inneractive/sdk/flow/g;->WEBVIEW_FMP_ENDCARD_ERROR:Lcom/fyber/inneractive/sdk/flow/g;

    invoke-direct {v0, v1, v2}, Lcom/fyber/inneractive/sdk/external/InneractiveInfrastructureError;-><init>(Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;Lcom/fyber/inneractive/sdk/flow/g;)V

    invoke-interface {p1, p0, v0}, Lcom/fyber/inneractive/sdk/web/d$d;->a(Lcom/fyber/inneractive/sdk/web/d;Lcom/fyber/inneractive/sdk/external/InneractiveInfrastructureError;)V

    :cond_14
    return-void
.end method

.method public a(Landroid/webkit/WebView;)V
    .registers 9

    if-eqz p1, :cond_a5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/c;->N:Lcom/fyber/inneractive/sdk/web/b;

    if-eqz v0, :cond_a5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setLongClickable(Z)V

    new-instance v1, Lcom/fyber/inneractive/sdk/util/a0;

    invoke-direct {v1}, Lcom/fyber/inneractive/sdk/util/a0;-><init>()V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/web/c;->N:Lcom/fyber/inneractive/sdk/web/b;

    iget-object v2, v1, Lcom/fyber/inneractive/sdk/web/b;->a:Lcom/fyber/inneractive/sdk/model/vast/b;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/model/vast/b;->f:Lcom/fyber/inneractive/sdk/model/vast/l;

    if-eqz v2, :cond_7d

    :try_start_1a
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "name"

    iget-object v5, v2, Lcom/fyber/inneractive/sdk/model/vast/l;->a:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/fyber/inneractive/sdk/util/h0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "description"

    iget-object v5, v2, Lcom/fyber/inneractive/sdk/model/vast/l;->b:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/fyber/inneractive/sdk/util/h0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    iget-object v5, v2, Lcom/fyber/inneractive/sdk/model/vast/l;->c:Ljava/util/List;

    if-eqz v5, :cond_4a

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3a

    :cond_4a
    const-string v5, "icons"

    invoke-static {v3, v5, v4}, Lcom/fyber/inneractive/sdk/util/h0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "rating"

    iget v5, v2, Lcom/fyber/inneractive/sdk/model/vast/l;->d:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/fyber/inneractive/sdk/util/h0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/model/vast/l;->e:Ljava/util/List;

    if-eqz v2, :cond_77

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_67
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_67

    :cond_77
    const-string v2, "screenshots"

    invoke-static {v3, v2, v4}, Lcom/fyber/inneractive/sdk/util/h0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_7c} :catch_7d

    goto :goto_7e

    :catch_7d
    :cond_7d
    const/4 v3, 0x0

    :goto_7e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    const/4 v5, 0x1

    if-lt v2, v4, :cond_98

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v3, v2, v0

    const-string v0, "loadAssets(%s);"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/fyber/inneractive/sdk/web/a;

    invoke-direct {v2, v1}, Lcom/fyber/inneractive/sdk/web/a;-><init>(Lcom/fyber/inneractive/sdk/web/b;)V

    invoke-virtual {p1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_a5

    :cond_98
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v3, v1, v0

    const-string v0, "javascript:loadAssets(\'%s\');"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_a5
    :goto_a5
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/util/k0;)Z
    .registers 12

    const/4 v0, 0x0

    if-eqz p1, :cond_ae

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fmpendcard://"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ae

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/web/c;->N:Lcom/fyber/inneractive/sdk/web/b;

    const/4 v2, 0x1

    if-eqz v1, :cond_ad

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/web/d;->f:Lcom/fyber/inneractive/sdk/web/d$d;

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/web/d;->g:Lcom/fyber/inneractive/sdk/web/d0;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v5, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    goto :goto_29

    :cond_28
    move-object v6, v5

    :goto_29
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_36

    const-string p1, "empty type"

    invoke-virtual {v1, v3, p0, p1}, Lcom/fyber/inneractive/sdk/web/b;->a(Lcom/fyber/inneractive/sdk/web/d$d;Lcom/fyber/inneractive/sdk/web/d;Ljava/lang/String;)V

    goto/16 :goto_ad

    :cond_36
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_b0

    :goto_41
    const/4 v0, -0x1

    goto :goto_62

    :sswitch_43
    const-string v0, "click"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto :goto_41

    :cond_4c
    const/4 v0, 0x2

    goto :goto_62

    :sswitch_4e
    const-string v0, "failure"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto :goto_41

    :cond_57
    const/4 v0, 0x1

    goto :goto_62

    :sswitch_59
    const-string v8, "success"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_62

    goto :goto_41

    :cond_62
    :goto_62
    const-string v6, "version"

    packed-switch v0, :pswitch_data_be

    goto :goto_ad

    :pswitch_68
    if-eqz v4, :cond_ad

    iget-object p1, v1, Lcom/fyber/inneractive/sdk/web/b;->c:Lcom/fyber/inneractive/sdk/flow/vast/e;

    if-eqz p1, :cond_ad

    new-instance v0, Lcom/fyber/inneractive/sdk/web/b$a;

    iget-object v3, v1, Lcom/fyber/inneractive/sdk/web/b;->b:Ljava/lang/String;

    iget p1, p1, Lcom/fyber/inneractive/sdk/flow/vast/a;->d:I

    invoke-direct {v0, v3, p1}, Lcom/fyber/inneractive/sdk/web/b$a;-><init>(Ljava/lang/String;I)V

    iget-object p1, v1, Lcom/fyber/inneractive/sdk/web/b;->a:Lcom/fyber/inneractive/sdk/model/vast/b;

    iget-object v1, p1, Lcom/fyber/inneractive/sdk/model/vast/b;->h:Lcom/fyber/inneractive/sdk/model/vast/c;

    if-eqz v1, :cond_7f

    iget-object v5, v1, Lcom/fyber/inneractive/sdk/model/vast/c;->g:Ljava/lang/String;

    :cond_7f
    if-eqz v5, :cond_82

    goto :goto_84

    :cond_82
    iget-object v5, p1, Lcom/fyber/inneractive/sdk/model/vast/b;->b:Ljava/lang/String;

    :goto_84
    invoke-interface {v4, v5, p2, v0}, Lcom/fyber/inneractive/sdk/web/d0;->a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/util/k0;Lcom/fyber/inneractive/sdk/web/b$a;)Lcom/fyber/inneractive/sdk/util/x$a;

    goto :goto_ad

    :pswitch_88
    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_94

    iput-object p2, v1, Lcom/fyber/inneractive/sdk/web/b;->b:Ljava/lang/String;

    :cond_94
    const-string p2, "error"

    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p0, p1}, Lcom/fyber/inneractive/sdk/web/b;->a(Lcom/fyber/inneractive/sdk/web/d$d;Lcom/fyber/inneractive/sdk/web/d;Ljava/lang/String;)V

    goto :goto_ad

    :pswitch_9e
    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_aa

    iput-object p1, v1, Lcom/fyber/inneractive/sdk/web/b;->b:Ljava/lang/String;

    :cond_aa
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/web/d;->g()V

    :cond_ad
    :goto_ad
    return v2

    :cond_ae
    return v0

    nop

    :sswitch_data_b0
    .sparse-switch
        -0x6f4abffd -> :sswitch_59
        -0x40c3ce76 -> :sswitch_4e
        0x5a5c588 -> :sswitch_43
    .end sparse-switch

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_9e
        :pswitch_88
        :pswitch_68
    .end packed-switch
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public d()Lcom/fyber/inneractive/sdk/measurement/a$a;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
