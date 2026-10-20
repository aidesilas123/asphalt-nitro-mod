###### Class com.mbridge.msdk.videocommon.download.e (com.mbridge.msdk.videocommon.download.e)
.class public final Lcom/mbridge/msdk/videocommon/download/e;
.super Ljava/lang/Object;
.source "DownLoadUtils.java"


# direct methods
.method public static a(Ljava/lang/String;Lcom/mbridge/msdk/videocommon/download/g$c;Z)V
    .registers 5

    :try_start_0
    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/ak;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_18

    :cond_d
    sget-object v0, Lcom/mbridge/msdk/videocommon/download/f$a;->a:Lcom/mbridge/msdk/videocommon/download/f;

    new-instance v1, Lcom/mbridge/msdk/videocommon/download/e$1;

    invoke-direct {v1, p1, p0, p2}, Lcom/mbridge/msdk/videocommon/download/e$1;-><init>(Lcom/mbridge/msdk/videocommon/download/g$c;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/videocommon/download/f;->a(Lcom/mbridge/msdk/foundation/same/e/a;)V

    goto :goto_28

    :cond_18
    :goto_18
    if-eqz p1, :cond_1f

    const-string p0, "url is error"

    invoke-interface {p1, p0}, Lcom/mbridge/msdk/videocommon/download/g$c;->a(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    :cond_1f
    return-void

    :catchall_20
    move-exception p0

    sget-boolean p1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_28
    :goto_28
    return-void
.end method
