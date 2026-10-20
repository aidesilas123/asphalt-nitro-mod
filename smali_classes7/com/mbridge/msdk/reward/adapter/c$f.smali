###### Class com.mbridge.msdk.reward.adapter.c.f (com.mbridge.msdk.reward.adapter.c$f)
.class final Lcom/mbridge/msdk/reward/adapter/c$f;
.super Lcom/mbridge/msdk/mbsignalcommon/b/b;
.source "RewardMVVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/reward/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private a:Lcom/mbridge/msdk/reward/adapter/c;

.field private b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/mbridge/msdk/videocommon/a$a;

.field private f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private g:Z

.field private h:Z

.field private i:Lcom/mbridge/msdk/reward/adapter/c$c;

.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/videocommon/a$a;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/reward/adapter/c;Lcom/mbridge/msdk/reward/adapter/c$c;Landroid/os/Handler;)V
    .registers 9

    invoke-direct {p0}, Lcom/mbridge/msdk/mbsignalcommon/b/b;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    iput-object p2, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->e:Lcom/mbridge/msdk/videocommon/a$a;

    if-eqz p6, :cond_f

    iput-object p6, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->a:Lcom/mbridge/msdk/reward/adapter/c;

    :cond_f
    iput-object p5, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object p7, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->i:Lcom/mbridge/msdk/reward/adapter/c$c;

    iput-object p8, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->j:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Landroid/webkit/WebView;I)V
    .registers 5

    iget-boolean p1, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->h:Z

    if-nez p1, :cond_e0

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->i:Lcom/mbridge/msdk/reward/adapter/c$c;

    if-eqz p1, :cond_f

    iget-object p2, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->j:Landroid/os/Handler;

    if-eqz p2, :cond_f

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->e:Lcom/mbridge/msdk/videocommon/a$a;

    const/4 v0, 0x1

    if-eqz p2, :cond_2f

    invoke-virtual {p2, v0}, Lcom/mbridge/msdk/videocommon/a$a;->a(Z)V

    :cond_2f
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_34
    const-string v1, "type"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "unitid"

    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->d:Ljava/lang/String;

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_45} :catch_46

    goto :goto_4a

    :catch_46
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_4a
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/i;->a()Lcom/mbridge/msdk/videocommon/download/i;

    move-result-object p1

    iget-object p2, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->c:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/mbridge/msdk/videocommon/download/i;->d(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/mbridge/msdk/videocommon/a/a;->a()Lcom/mbridge/msdk/videocommon/a/a;

    move-result-object p1

    iget-object p2, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v1}, Lcom/mbridge/msdk/reward/adapter/c;->f(Lcom/mbridge/msdk/reward/adapter/c;)Z

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/mbridge/msdk/videocommon/a/a;->a(Ljava/lang/String;IZ)Ljava/util/List;

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->a:Lcom/mbridge/msdk/reward/adapter/c;

    if-eqz p1, :cond_82

    invoke-static {p1}, Lcom/mbridge/msdk/reward/adapter/c;->n(Lcom/mbridge/msdk/reward/adapter/c;)Z

    move-result p1

    if-eqz p1, :cond_82

    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result p1

    if-eqz p1, :cond_97

    const/16 p1, 0x11f

    iget-object p2, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->e:Lcom/mbridge/msdk/videocommon/a$a;

    invoke-static {p1, p2, v1}, Lcom/mbridge/msdk/videocommon/a;->a(ILjava/lang/String;Lcom/mbridge/msdk/videocommon/a$a;)V

    goto :goto_97

    :cond_82
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result p1

    if-eqz p1, :cond_97

    const/16 p1, 0x5e

    iget-object p2, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->e:Lcom/mbridge/msdk/videocommon/a$a;

    invoke-static {p1, p2, v1}, Lcom/mbridge/msdk/videocommon/a;->a(ILjava/lang/String;Lcom/mbridge/msdk/videocommon/a$a;)V

    :cond_97
    :goto_97
    :try_start_97
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->a:Lcom/mbridge/msdk/reward/adapter/c;

    if-eqz p1, :cond_de

    monitor-enter p1
    :try_end_9c
    .catchall {:try_start_97 .. :try_end_9c} :catchall_d4

    :try_start_9c
    iget-object p2, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->a:Lcom/mbridge/msdk/reward/adapter/c;

    if-eqz p2, :cond_cf

    invoke-virtual {p2}, Lcom/mbridge/msdk/reward/adapter/c;->c()Z

    move-result p2

    if-eqz p2, :cond_cf

    iget-object p2, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p2}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_cf

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    const/4 v1, 0x6

    iput v1, p2, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {v1}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p2, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p2}, Lcom/mbridge/msdk/reward/adapter/c;->g(Lcom/mbridge/msdk/reward/adapter/c;)Landroid/os/Handler;

    move-result-object p2

    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->a:Lcom/mbridge/msdk/reward/adapter/c;

    :cond_cf
    monitor-exit p1

    goto :goto_de

    :catchall_d1
    move-exception p2

    monitor-exit p1
    :try_end_d3
    .catchall {:try_start_9c .. :try_end_d3} :catchall_d1

    :try_start_d3
    throw p2
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d4

    :catchall_d4
    move-exception p1

    const-string p2, "WindVaneWebView"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_de
    :goto_de
    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->h:Z

    :cond_e0
    return-void
.end method

.method public final a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/mbridge/msdk/mbsignalcommon/b/b;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :try_start_3
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->a:Lcom/mbridge/msdk/reward/adapter/c;

    if-eqz p1, :cond_1f

    monitor-enter p1
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    :try_start_8
    iget-object p2, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->a:Lcom/mbridge/msdk/reward/adapter/c;

    invoke-static {p2, p3, p4}, Lcom/mbridge/msdk/reward/adapter/c;->a(Lcom/mbridge/msdk/reward/adapter/c;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->a:Lcom/mbridge/msdk/reward/adapter/c;

    monitor-exit p1

    goto :goto_1f

    :catchall_12
    move-exception p2

    monitor-exit p1
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_12

    :try_start_14
    throw p2
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_15

    :catchall_15
    move-exception p1

    const-string p2, "WindVaneWebView"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public final a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/b/b;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->g:Z

    if-nez p2, :cond_11

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Landroid/webkit/WebView;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mbridge/msdk/reward/adapter/c$f;->g:Z

    :cond_11
    return-void
.end method
