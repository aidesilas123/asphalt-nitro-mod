###### Class com.mbridge.msdk.mbsignalcommon.communication.BannerSignalPlugin (com.mbridge.msdk.mbsignalcommon.communication.BannerSignalPlugin)
.class public Lcom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;
.super Lcom/mbridge/msdk/mbsignalcommon/windvane/AbsFeedBackForH5;
.source "BannerSignalPlugin.java"


# instance fields
.field private final d:Ljava/lang/String;

.field private e:Lcom/mbridge/msdk/mbsignalcommon/communication/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/AbsFeedBackForH5;-><init>()V

    const-string v0, "BannerSignalPlugin"

    iput-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public click(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    const-string v0, "click"

    const-string v1, "BannerSignalPlugin"

    :try_start_4
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lcom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_13

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/c;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_f

    goto :goto_13

    :catchall_f
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public getFileInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    const-string v0, "getFileInfo"

    const-string v1, "BannerSignalPlugin"

    :try_start_4
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lcom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_13

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/c;->j(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_f

    goto :goto_13

    :catchall_f
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public getNetstat(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    const-string v0, "getNetstat"

    const-string v1, "BannerSignalPlugin"

    :try_start_4
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lcom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_13

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/c;->o(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_f

    goto :goto_13

    :catchall_f
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public handlerH5Exception(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    const-string v0, "handlerH5Exception"

    const-string v1, "BannerSignalPlugin"

    :try_start_4
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lcom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_13

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/c;->m(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_f

    goto :goto_13

    :catchall_f
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public increaseOfferFrequence(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    const-string v0, "increaseOfferFrequence"

    const-string v1, "BannerSignalPlugin"

    :try_start_4
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lcom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_13

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/c;->l(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_f

    goto :goto_13

    :catchall_f
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public init(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    const-string v0, "init"

    const-string v1, "BannerSignalPlugin"

    :try_start_4
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lcom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_13

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/c;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_f

    goto :goto_13

    :catchall_f
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public initialize(Landroid/content/Context;Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/h;->initialize(Landroid/content/Context;Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V

    :try_start_3
    instance-of v0, p1, Lcom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/mbridge/msdk/mbsignalcommon/communication/c;

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lcom/mbridge/msdk/mbsignalcommon/communication/c;

    goto :goto_2b

    :cond_c
    invoke-virtual {p2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2b

    invoke-virtual {p2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz p1, :cond_2b

    invoke-virtual {p2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/mbsignalcommon/communication/c;

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lcom/mbridge/msdk/mbsignalcommon/communication/c;
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_23

    goto :goto_2b

    :catchall_23
    move-exception p1

    const-string p2, "BannerSignalPlugin"

    const-string v0, "initialize"

    invoke-static {p2, v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public install(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    const-string v0, "install"

    const-string v1, "BannerSignalPlugin"

    :try_start_4
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lcom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_13

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/c;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_f

    goto :goto_13

    :catchall_f
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public onSignalCommunication(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    const-string v0, "onSignalCommunication"

    const-string v1, "BannerSignalPlugin"

    :try_start_4
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lcom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_13

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/c;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_f

    goto :goto_13

    :catchall_f
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public openURL(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    const-string v0, "openURL"

    const-string v1, "BannerSignalPlugin"

    :try_start_4
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lcom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_13

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/c;->n(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_f

    goto :goto_13

    :catchall_f
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public readyStatus(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    const-string v0, "readyStatus"

    const-string v1, "BannerSignalPlugin"

    :try_start_4
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lcom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_13

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/c;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_f

    goto :goto_13

    :catchall_f
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public reportUrls(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    const-string v0, "reportUrls"

    const-string v1, "BannerSignalPlugin"

    :try_start_4
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lcom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_13

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/c;->k(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_f

    goto :goto_13

    :catchall_f
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public resetCountdown(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    const-string v0, "resetCountdown"

    const-string v1, "BannerSignalPlugin"

    :try_start_4
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lcom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_13

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/c;->h(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_f

    goto :goto_13

    :catchall_f
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public sendImpressions(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    const-string v0, "sendImpressions"

    const-string v1, "BannerSignalPlugin"

    :try_start_4
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lcom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_13

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_f

    goto :goto_13

    :catchall_f
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    const-string v0, "toggleCloseBtn"

    const-string v1, "BannerSignalPlugin"

    :try_start_4
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lcom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_13

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/c;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_f

    goto :goto_13

    :catchall_f
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    const-string v0, "triggerCloseBtn"

    const-string v1, "BannerSignalPlugin"

    :try_start_4
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbsignalcommon/communication/BannerSignalPlugin;->e:Lcom/mbridge/msdk/mbsignalcommon/communication/c;

    if-eqz v2, :cond_13

    invoke-interface {v2, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/communication/c;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_f

    goto :goto_13

    :catchall_f
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    return-void
.end method
