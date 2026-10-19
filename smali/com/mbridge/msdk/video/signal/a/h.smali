###### Class com.mbridge.msdk.video.signal.a.h (com.mbridge.msdk.video.signal.a.h)
.class public final Lcom/mbridge/msdk/video/signal/a/h;
.super Lcom/mbridge/msdk/video/signal/a/a;
.source "JSActivityProxy.java"


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .registers 3

    invoke-direct {p0}, Lcom/mbridge/msdk/video/signal/a/a;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/video/signal/a/h;->b:I

    iput-object p1, p0, Lcom/mbridge/msdk/video/signal/a/h;->a:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/a/a;->a()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/mbridge/msdk/video/signal/a/h;->b:I

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/a/h;->a:Landroid/webkit/WebView;

    const-string v2, "onSystemPause"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/mbridge/msdk/video/signal/a/a;->a(I)V

    iput p1, p0, Lcom/mbridge/msdk/video/signal/a/h;->b:I

    return-void
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/mbridge/msdk/video/signal/a/a;->a(Landroid/content/res/Configuration;)V

    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_30

    const/4 v1, 0x2

    const-string v2, "orientation"

    if-ne p1, v1, :cond_15

    :try_start_f
    const-string p1, "landscape"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1a

    :cond_15
    const-string p1, "portrait"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1a
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/a/h;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v2, p1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_34
    return-void
.end method

.method public final b()V
    .registers 5

    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/a/a;->b()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/video/signal/a/h;->b:I

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/a/h;->a:Landroid/webkit/WebView;

    const-string v2, "onSystemResume"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final f()V
    .registers 5

    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/a/a;->f()V

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/a/h;->a:Landroid/webkit/WebView;

    const-string v2, "onSystemDestory"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final g()V
    .registers 5

    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/a/a;->g()V

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/a/h;->a:Landroid/webkit/WebView;

    const-string v2, "onSystemBackPressed"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final h()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/video/signal/a/h;->b:I

    return v0
.end method
