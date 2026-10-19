###### Class com.mbridge.msdk.scheme.applet.AppletSchemeCallBack (com.mbridge.msdk.scheme.applet.AppletSchemeCallBack)
.class public abstract Lcom/mbridge/msdk/scheme/applet/AppletSchemeCallBack;
.super Ljava/lang/Object;
.source "AppletSchemeCallBack.java"

# interfaces
.implements Lcom/mbridge/msdk/scheme/applet/IAppletSchemeCallBack;


# static fields
.field private static final TAG:Ljava/lang/String; = "AppletSchemeCallBack"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppletSchemeRequestFailed(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mbridge/msdk/scheme/applet/AppletSchemeCallBack;->onRequestFailed(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_12

    :catch_4
    move-exception p1

    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_12

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppletSchemeCallBack"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public onAppletSchemeRequestStart()V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/scheme/applet/AppletSchemeCallBack;->onRequestStart()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_12

    :catch_4
    move-exception v0

    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppletSchemeCallBack"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public onAppletSchemeRequestSuccess(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/scheme/applet/AppletSchemeCallBack;->onRequestSuccess(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_12

    :catch_4
    move-exception p1

    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppletSchemeCallBack"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public onNetworkError(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mbridge/msdk/scheme/applet/AppletSchemeCallBack;->onRequestFailed(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_12

    :catch_4
    move-exception p1

    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_12

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppletSchemeCallBack"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_12
    return-void
.end method

.method protected abstract onRequestFailed(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract onRequestStart()V
.end method

.method protected abstract onRequestSuccess(Ljava/lang/String;)V
.end method
