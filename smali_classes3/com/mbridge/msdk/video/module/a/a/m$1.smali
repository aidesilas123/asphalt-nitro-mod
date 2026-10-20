###### Class com.mbridge.msdk.video.module.a.a.m.AnonymousClass1 (com.mbridge.msdk.video.module.a.a.m$1)
.class final Lcom/mbridge/msdk/video/module/a/a/m$1;
.super Ljava/util/TimerTask;
.source "VideoViewDefaultListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/video/module/a/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/video/module/a/a/m;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/module/a/a/m;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/a/a/m$1;->a:Lcom/mbridge/msdk/video/module/a/a/m;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/a/a/m$1;->a:Lcom/mbridge/msdk/video/module/a/a/m;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/a/a/m;->c(Lcom/mbridge/msdk/video/module/a/a/m;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mbridge/msdk/video/module/a/a/m$1$1;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/module/a/a/m$1$1;-><init>(Lcom/mbridge/msdk/video/module/a/a/m$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    goto :goto_17

    :catchall_f
    move-exception v0

    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_17
    :goto_17
    return-void
.end method
