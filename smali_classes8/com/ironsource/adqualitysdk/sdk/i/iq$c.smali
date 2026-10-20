###### Class com.ironsource.adqualitysdk.sdk.i.iq.c (com.ironsource.adqualitysdk.sdk.i.iq$c)
.class final Lcom/ironsource/adqualitysdk/sdk/i/iq$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ix$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/iq;->g(Lcom/ironsource/adqualitysdk/sdk/i/iw;Lcom/ironsource/adqualitysdk/sdk/i/ih;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/ironsource/adqualitysdk/sdk/i/iw;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/ih;

.field final synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/iq;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/iq;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/iw;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ih;)V
    .registers 6

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c;->e:Lcom/ironsource/adqualitysdk/sdk/i/iq;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c;->b:Lcom/ironsource/adqualitysdk/sdk/i/iw;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c;->d:Lcom/ironsource/adqualitysdk/sdk/i/ih;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾇ(Z)V
    .registers 5

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﾇ()Z

    move-result v0

    if-eqz v0, :cond_2b

    if-eqz p1, :cond_2b

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;

    invoke-direct {p1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/iq$c$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/iq$c;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c;->b:Lcom/ironsource/adqualitysdk/sdk/i/iw;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/iq$c;->d:Lcom/ironsource/adqualitysdk/sdk/i/ih;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/jt;->ﾇ(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    :cond_2b
    return-void
.end method
