###### Class com.tapjoy.l0 (com.tapjoy.l0)
.class public final Lcom/tapjoy/l0;
.super Lcom/tapjoy/t;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJAdUnit;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJAdUnit;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/l0;->a:Lcom/tapjoy/TJAdUnit;

    invoke-direct {p0}, Lcom/tapjoy/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/l0;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v1, v0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitActivity;

    if-eqz v1, :cond_7

    return-object v1

    :cond_7
    iget-object v0, v0, Lcom/tapjoy/TJAdUnit;->i:Lcom/tapjoy/TJWebView;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .registers 5

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tapjoy/l0;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v2}, Lcom/tapjoy/TJAdUnit;->l()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%.2f"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/l0;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v1}, Lcom/tapjoy/TJAdUnit;->o()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getVolumeArgs: volume="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; isMuted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TJAdUnit"

    invoke-static {v3, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "currentVolume"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "isMuted"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public final c()Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/l0;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnit;->i:Lcom/tapjoy/TJWebView;

    return-object v0
.end method

.method public final d()Z
    .registers 4

    iget-object v0, p0, Lcom/tapjoy/l0;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v1, v0, Lcom/tapjoy/TJAdUnit;->b:Landroid/os/Handler;

    iget-object v2, v0, Lcom/tapjoy/TJAdUnit;->F:Lcom/tapjoy/internal/x6;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lcom/tapjoy/TJAdUnit;->b:Landroid/os/Handler;

    iget-object v2, v0, Lcom/tapjoy/TJAdUnit;->G:Lcom/tapjoy/internal/i7;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lcom/tapjoy/TJAdUnit;->b:Landroid/os/Handler;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnit;->H:Lcom/tapjoy/internal/s7;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tapjoy/l0;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnit;->j:Landroid/widget/VideoView;

    if-eqz v0, :cond_66

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_66

    sget-boolean v0, Lcom/tapjoy/internal/i8;->c:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/tapjoy/l0;->a:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->i()Lcom/tapjoy/internal/i8;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "pause"

    invoke-virtual {v0, v2, v1}, Lcom/tapjoy/internal/i8;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_33
    iget-object v0, p0, Lcom/tapjoy/l0;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnit;->j:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    iget-object v0, p0, Lcom/tapjoy/l0;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v1, v0, Lcom/tapjoy/TJAdUnit;->j:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Lcom/tapjoy/TJAdUnit;->l:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video paused at: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/l0;->a:Lcom/tapjoy/TJAdUnit;

    iget v1, v1, Lcom/tapjoy/TJAdUnit;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJAdUnit"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/l0;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v1, v0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    iget v0, v0, Lcom/tapjoy/TJAdUnit;->l:I

    invoke-virtual {v1, v0}, Lcom/tapjoy/k;->o(I)V

    const/4 v0, 0x1

    return v0

    :cond_66
    const/4 v0, 0x0

    return v0
.end method
