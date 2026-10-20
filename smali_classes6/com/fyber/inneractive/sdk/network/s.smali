###### Class com.fyber.inneractive.sdk.network.s (com.fyber.inneractive.sdk.network.s)
.class public final Lcom/fyber/inneractive/sdk/network/s;
.super Lcom/fyber/inneractive/sdk/network/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/network/s$b;,
        Lcom/fyber/inneractive/sdk/network/s$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    invoke-static {}, Lcom/fyber/inneractive/sdk/config/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fyber/inneractive/sdk/network/l;-><init>(Ljava/lang/String;)V

    const-string v0, "osn"

    const-string v1, "Android"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "osv"

    invoke-virtual {p0, v1, v0}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/j;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "model"

    invoke-virtual {p0, v1, v0}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p8, :cond_22

    const-string p8, "8.2.4"

    :cond_22
    const-string v0, "sdkv"

    invoke-virtual {p0, v0, p8}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/j;->k()Ljava/lang/String;

    move-result-object p8

    const-string v0, "pkgn"

    invoke-virtual {p0, v0, p8}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/j;->l()Ljava/lang/String;

    move-result-object p8

    const-string v0, "pkgv"

    invoke-virtual {p0, v0, p8}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p8, "appid"

    invoke-virtual {p0, p8, p1}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "session"

    invoke-virtual {p0, p1, p2}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "adnt"

    invoke-virtual {p0, p1, p3}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "adnt_id"

    invoke-virtual {p0, p1, p4}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "creative_id"

    invoke-virtual {p0, p1, p5}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "adomain"

    invoke-virtual {p0, p1, p6}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "campaign_id"

    invoke-virtual {p0, p1, p7}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
