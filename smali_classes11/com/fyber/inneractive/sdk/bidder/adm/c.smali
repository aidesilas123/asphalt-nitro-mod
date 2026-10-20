###### Class com.fyber.inneractive.sdk.bidder.adm.c (com.fyber.inneractive.sdk.bidder.adm.c)
.class public Lcom/fyber/inneractive/sdk/bidder/adm/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/network/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fyber/inneractive/sdk/network/w<",
        "Lcom/fyber/inneractive/sdk/response/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/bidder/adm/f$a;

.field public final synthetic b:Lcom/fyber/inneractive/sdk/response/e;

.field public final synthetic c:Lcom/fyber/inneractive/sdk/bidder/adm/f;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/bidder/adm/f;Lcom/fyber/inneractive/sdk/bidder/adm/f$a;Lcom/fyber/inneractive/sdk/response/e;)V
    .registers 4

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/c;->c:Lcom/fyber/inneractive/sdk/bidder/adm/f;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/bidder/adm/c;->a:Lcom/fyber/inneractive/sdk/bidder/adm/f$a;

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/bidder/adm/c;->b:Lcom/fyber/inneractive/sdk/response/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Exception;Z)V
    .registers 7

    check-cast p1, Lcom/fyber/inneractive/sdk/response/e;

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_64

    sget-object p2, Lcom/fyber/inneractive/sdk/metrics/c;->d:Lcom/fyber/inneractive/sdk/metrics/c;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/c;->c:Lcom/fyber/inneractive/sdk/bidder/adm/f;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/bidder/adm/f;->d:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/fyber/inneractive/sdk/metrics/c;->b(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/metrics/g;

    move-result-object v1

    const-string v2, "success"

    invoke-interface {v1, v2}, Lcom/fyber/inneractive/sdk/metrics/g;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/c;->a:Lcom/fyber/inneractive/sdk/bidder/adm/f$a;

    if-eqz v1, :cond_91

    check-cast v1, Lcom/fyber/inneractive/sdk/flow/t$a;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, v1, Lcom/fyber/inneractive/sdk/flow/t$a;->d:Lcom/fyber/inneractive/sdk/flow/t;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, p3

    const-string p3, "%s : InneractiveAdSpotImpl data available"

    invoke-static {p3, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p3, v1, Lcom/fyber/inneractive/sdk/flow/t$a;->d:Lcom/fyber/inneractive/sdk/flow/t;

    iget-object v0, v1, Lcom/fyber/inneractive/sdk/flow/t$a;->b:Lcom/fyber/inneractive/sdk/config/global/s;

    iget-object v1, p3, Lcom/fyber/inneractive/sdk/flow/t;->d:Lcom/fyber/inneractive/sdk/flow/k$a;

    iget-object v2, p3, Lcom/fyber/inneractive/sdk/flow/t;->l:Lcom/fyber/inneractive/sdk/flow/l;

    if-eqz v2, :cond_91

    iput-object v1, v2, Lcom/fyber/inneractive/sdk/flow/k;->b:Lcom/fyber/inneractive/sdk/flow/k$a;

    invoke-virtual {p3}, Lcom/fyber/inneractive/sdk/flow/t;->getLocalUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/fyber/inneractive/sdk/metrics/c;->b(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/metrics/g;

    move-result-object p2

    invoke-interface {p2}, Lcom/fyber/inneractive/sdk/metrics/g;->a()V

    iput-object p1, v2, Lcom/fyber/inneractive/sdk/flow/l;->g:Lcom/fyber/inneractive/sdk/response/e;

    invoke-static {}, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->i()Z

    move-result p2

    if-eqz p2, :cond_5d

    iput-object v0, v2, Lcom/fyber/inneractive/sdk/flow/k;->c:Lcom/fyber/inneractive/sdk/config/global/s;

    new-instance p2, Lcom/fyber/inneractive/sdk/network/o;

    invoke-virtual {p3}, Lcom/fyber/inneractive/sdk/flow/t;->getLocalUniqueId()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v0, p1, p3, v2}, Lcom/fyber/inneractive/sdk/network/o;-><init>(Lcom/fyber/inneractive/sdk/config/global/s;Lcom/fyber/inneractive/sdk/response/e;Ljava/lang/String;Lcom/fyber/inneractive/sdk/network/k$a;)V

    iput-object p2, v2, Lcom/fyber/inneractive/sdk/flow/k;->d:Lcom/fyber/inneractive/sdk/network/k;

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/network/o;->c()Z

    goto :goto_91

    :cond_5d
    invoke-static {v2}, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->addListener(Lcom/fyber/inneractive/sdk/config/IAConfigManager$OnConfigurationReadyAndValidListener;)V

    invoke-static {}, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->a()V

    goto :goto_91

    :cond_64
    sget-object p1, Lcom/fyber/inneractive/sdk/metrics/c;->d:Lcom/fyber/inneractive/sdk/metrics/c;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/c;->c:Lcom/fyber/inneractive/sdk/bidder/adm/f;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/bidder/adm/f;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/fyber/inneractive/sdk/metrics/c;->b(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/metrics/g;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/fyber/inneractive/sdk/metrics/g;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/c;->a:Lcom/fyber/inneractive/sdk/bidder/adm/f$a;

    if-eqz p1, :cond_91

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/bidder/adm/c;->c:Lcom/fyber/inneractive/sdk/bidder/adm/f;

    invoke-static {v1, p2}, Lcom/fyber/inneractive/sdk/bidder/adm/f;->a(Lcom/fyber/inneractive/sdk/bidder/adm/f;Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_84

    sget-object v1, Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;->NO_FILL:Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;

    goto :goto_86

    :cond_84
    sget-object v1, Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;->CONNECTION_ERROR:Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;

    :goto_86
    new-array v0, v0, [Lcom/fyber/inneractive/sdk/response/e;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/bidder/adm/c;->b:Lcom/fyber/inneractive/sdk/response/e;

    aput-object v2, v0, p3

    check-cast p1, Lcom/fyber/inneractive/sdk/flow/t$a;

    invoke-virtual {p1, p2, v1, v0}, Lcom/fyber/inneractive/sdk/flow/t$a;->a(Ljava/lang/Exception;Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;[Lcom/fyber/inneractive/sdk/response/e;)V

    :cond_91
    :goto_91
    return-void
.end method
