###### Class com.mbridge.msdk.foundation.same.net.h.a (com.mbridge.msdk.foundation.same.net.h.a)
.class public Lcom/mbridge/msdk/foundation/same/net/h/a;
.super Lcom/mbridge/msdk/foundation/same/net/h/b;
.source "CampaignRequest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/same/net/h/b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addExtraParams(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;)V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/af;->f()I

    move-result v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/af;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_1e

    const-string v2, "misk_spt"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Lcom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "misk_spt_det"

    invoke-virtual {p2, v0, v1}, Lcom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_24
    .catchall {:try_start_0 .. :try_end_1e} :catchall_22

    :cond_1e
    :goto_1e
    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/foundation/same/net/h/b;->addExtraParams(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;)V

    goto :goto_2f

    :catchall_22
    move-exception v0

    goto :goto_30

    :catch_24
    move-exception v0

    :try_start_25
    const-string v1, "CampaignRequest"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_22

    goto :goto_1e

    :goto_2f
    return-void

    :goto_30
    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/foundation/same/net/h/b;->addExtraParams(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;)V

    throw v0
.end method
