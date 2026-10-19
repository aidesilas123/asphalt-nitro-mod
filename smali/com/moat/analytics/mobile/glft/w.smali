###### Class com.moat.analytics.mobile.glft.w (com.moat.analytics.mobile.glft.w)
.class Lcom/moat/analytics/mobile/glft/w;
.super Lcom/moat/analytics/mobile/glft/b;

# interfaces
.implements Lcom/moat/analytics/mobile/glft/WebAdTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/glft/w$a;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .registers 5
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/moat/analytics/mobile/glft/b;-><init>(Landroid/view/View;ZZ)V

    invoke-static {}, Lcom/moat/analytics/mobile/glft/u;->d()Lcom/moat/analytics/mobile/glft/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/glft/u;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x3

    const-string v1, "MoatWebAdTracker"

    const-string v2, "In initialization method."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_16
    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/glft/b;->a(Landroid/webkit/WebView;)V

    return-void
.end method


# virtual methods
.method public startTracking()V
    .registers 6

    const-string v0, "MoatWebAdTracker"

    const/4 v1, 0x3

    :try_start_3
    const-string v2, "In startTracking method."

    invoke-static {v1, v0, p0, v2}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/moat/analytics/mobile/glft/b;->startTracking()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_d

    const/4 v2, 0x1

    goto :goto_12

    :catch_d
    move-exception v2

    invoke-static {v2}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    const/4 v2, 0x0

    :goto_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to start tracking ad impression was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_21

    const-string v2, ""

    goto :goto_23

    :cond_21
    const-string v2, "un"

    :goto_23
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "successful."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, p0, v2}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public stopTracking()V
    .registers 6

    const-string v0, "MoatWebAdTracker"

    const/4 v1, 0x3

    :try_start_3
    const-string v2, "In stopTracking method."

    invoke-static {v1, v0, p0, v2}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/moat/analytics/mobile/glft/b;->stopTracking()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_d

    const/4 v2, 0x1

    goto :goto_12

    :catch_d
    move-exception v2

    invoke-static {v2}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    const/4 v2, 0x0

    :goto_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to stop tracking ad impression was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_21

    const-string v2, ""

    goto :goto_23

    :cond_21
    const-string v2, "un"

    :goto_23
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "successful."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, p0, v2}, Lcom/moat/analytics/mobile/glft/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
