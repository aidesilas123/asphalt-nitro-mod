###### Class com.mbridge.msdk.video.signal.a.k (com.mbridge.msdk.video.signal.a.k)
.class public final Lcom/mbridge/msdk/video/signal/a/k;
.super Lcom/mbridge/msdk/video/signal/a/d;
.source "JSContainerModule.java"


# instance fields
.field private a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/video/module/MBridgeContainerView;)V
    .registers 2

    invoke-direct {p0}, Lcom/mbridge/msdk/video/signal/a/d;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/video/signal/a/k;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    return-void
.end method


# virtual methods
.method public final configurationChanged(III)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/mbridge/msdk/video/signal/a/d;->configurationChanged(III)V

    :try_start_3
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/a/k;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1, p2, p3}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->configurationChanged(III)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    goto :goto_f

    :catchall_b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    :goto_f
    return-void
.end method

.method public final endCardShowing()Z
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/a/k;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->endCardShowing()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return v0

    :catchall_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/a/d;->endCardShowing()Z

    move-result v0

    return v0
.end method

.method public final hideAlertWebview()V
    .registers 2

    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/a/d;->hideAlertWebview()V

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/a/k;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->hideAlertWebview()V

    :cond_a
    return-void
.end method

.method public final ivRewardAdsWithoutVideo(Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/mbridge/msdk/video/signal/a/d;->ivRewardAdsWithoutVideo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/a/k;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->ivRewardAdsWithoutVideo(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public final miniCardShowing()Z
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/a/k;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->miniCardShowing()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return v0

    :catchall_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/a/d;->miniCardShowing()Z

    move-result v0

    return v0
.end method

.method public final readyStatus(I)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/a/k;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->readyStatus(I)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_c

    :catchall_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_c
    invoke-super {p0, p1}, Lcom/mbridge/msdk/video/signal/a/d;->readyStatus(I)V

    return-void
.end method

.method public final resizeMiniCard(III)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/mbridge/msdk/video/signal/a/d;->resizeMiniCard(III)V

    :try_start_3
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/a/k;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1, p2, p3}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->resizeMiniCard(III)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    goto :goto_f

    :catchall_b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    :goto_f
    return-void
.end method

.method public final showAlertWebView()Z
    .registers 2

    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/a/d;->showAlertWebView()Z

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/a/k;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->showAlertWebView()Z

    move-result v0

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final showEndcard(I)V
    .registers 3

    invoke-super {p0, p1}, Lcom/mbridge/msdk/video/signal/a/d;->showEndcard(I)V

    :try_start_3
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/a/k;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->showEndcard(I)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    goto :goto_f

    :catchall_b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    :goto_f
    return-void
.end method

.method public final showMiniCard(IIIII)V
    .registers 12

    invoke-super/range {p0 .. p5}, Lcom/mbridge/msdk/video/signal/a/d;->showMiniCard(IIIII)V

    :try_start_3
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/a/k;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_14

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->showMiniCard(IIIII)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_10

    goto :goto_14

    :catchall_10
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_14
    :goto_14
    return-void
.end method

.method public final showVideoClickView(I)V
    .registers 3

    invoke-super {p0, p1}, Lcom/mbridge/msdk/video/signal/a/d;->showVideoClickView(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/a/k;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->showVideoClickView(I)V

    :cond_a
    return-void
.end method

.method public final showVideoEndCover()V
    .registers 2

    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/a/d;->showVideoEndCover()V

    :try_start_3
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/a/k;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->showVideoEndCover()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    goto :goto_f

    :catchall_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    :goto_f
    return-void
.end method

.method public final toggleCloseBtn(I)V
    .registers 3

    invoke-super {p0, p1}, Lcom/mbridge/msdk/video/signal/a/d;->toggleCloseBtn(I)V

    :try_start_3
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/a/k;->a:Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->toggleCloseBtn(I)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    goto :goto_f

    :catchall_b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    :goto_f
    return-void
.end method
