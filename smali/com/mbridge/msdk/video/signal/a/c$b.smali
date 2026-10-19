###### Class com.mbridge.msdk.video.signal.a.c.b (com.mbridge.msdk.video.signal.a.c$b)
.class public final Lcom/mbridge/msdk/video/signal/a/c$b;
.super Ljava/lang/Object;
.source "DefaultJSCommon.java"

# interfaces
.implements Lcom/mbridge/msdk/video/signal/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/video/signal/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/mbridge/msdk/video/signal/c;

.field private b:Lcom/mbridge/msdk/video/signal/c$a;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/video/signal/c;Lcom/mbridge/msdk/video/signal/c$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/video/signal/a/c$b;->a:Lcom/mbridge/msdk/video/signal/c;

    iput-object p2, p0, Lcom/mbridge/msdk/video/signal/a/c$b;->b:Lcom/mbridge/msdk/video/signal/c$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/a/c$b;->b:Lcom/mbridge/msdk/video/signal/c$a;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/c$a;->a()V

    :cond_7
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/a/c$b;->b:Lcom/mbridge/msdk/video/signal/c$a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/video/signal/c$a;->a(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/a/c$b;->b:Lcom/mbridge/msdk/video/signal/c$a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/video/signal/c$a;->a(Z)V

    :cond_7
    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/a/c$b;->b:Lcom/mbridge/msdk/video/signal/c$a;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/mbridge/msdk/video/signal/c$a;->b()V

    :cond_7
    return-void
.end method

.method public final onDismissLoading(Lcom/mbridge/msdk/out/Campaign;)V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/a/c$b;->b:Lcom/mbridge/msdk/video/signal/c$a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onDismissLoading(Lcom/mbridge/msdk/out/Campaign;)V

    :cond_7
    return-void
.end method

.method public final onDownloadFinish(Lcom/mbridge/msdk/out/Campaign;)V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/a/c$b;->b:Lcom/mbridge/msdk/video/signal/c$a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onDownloadFinish(Lcom/mbridge/msdk/out/Campaign;)V

    :cond_7
    return-void
.end method

.method public final onDownloadProgress(I)V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/a/c$b;->b:Lcom/mbridge/msdk/video/signal/c$a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onDownloadProgress(I)V

    :cond_7
    return-void
.end method

.method public final onDownloadStart(Lcom/mbridge/msdk/out/Campaign;)V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/a/c$b;->b:Lcom/mbridge/msdk/video/signal/c$a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onDownloadStart(Lcom/mbridge/msdk/out/Campaign;)V

    :cond_7
    return-void
.end method

.method public final onFinishRedirection(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/a/c$b;->b:Lcom/mbridge/msdk/video/signal/c$a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/out/BaseTrackingListener;->onFinishRedirection(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    :cond_7
    iget-object p1, p0, Lcom/mbridge/msdk/video/signal/a/c$b;->a:Lcom/mbridge/msdk/video/signal/c;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Lcom/mbridge/msdk/video/signal/c;->d()V

    :cond_e
    return-void
.end method

.method public final onInterceptDefaultLoadingDialog()Z
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/a/c$b;->b:Lcom/mbridge/msdk/video/signal/c$a;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onInterceptDefaultLoadingDialog()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public final onRedirectionFailed(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/a/c$b;->b:Lcom/mbridge/msdk/video/signal/c$a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/out/BaseTrackingListener;->onRedirectionFailed(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    :cond_7
    iget-object p1, p0, Lcom/mbridge/msdk/video/signal/a/c$b;->a:Lcom/mbridge/msdk/video/signal/c;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Lcom/mbridge/msdk/video/signal/c;->d()V

    :cond_e
    return-void
.end method

.method public final onShowLoading(Lcom/mbridge/msdk/out/Campaign;)V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/a/c$b;->b:Lcom/mbridge/msdk/video/signal/c$a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;->onShowLoading(Lcom/mbridge/msdk/out/Campaign;)V

    :cond_7
    return-void
.end method

.method public final onStartRedirection(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/a/c$b;->b:Lcom/mbridge/msdk/video/signal/c$a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/mbridge/msdk/out/BaseTrackingListener;->onStartRedirection(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    :cond_7
    return-void
.end method
