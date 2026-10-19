###### Class com.json.adqualitysdk.sdk.i.cl (com.ironsource.adqualitysdk.sdk.i.cl)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/cl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/cl$a;,
        Lcom/ironsource/adqualitysdk/sdk/i/cl$c;,
        Lcom/ironsource/adqualitysdk/sdk/i/cl$b;,
        Lcom/ironsource/adqualitysdk/sdk/i/cl$d;,
        Lcom/ironsource/adqualitysdk/sdk/i/cl$e;
    }
.end annotation


# instance fields
.field private a:Lcom/ironsource/adqualitysdk/sdk/i/cl$d;

.field private b:Lcom/ironsource/adqualitysdk/sdk/i/dn;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ironsource/adqualitysdk/sdk/i/cl;Lcom/ironsource/adqualitysdk/sdk/i/cl$d;)Lcom/ironsource/adqualitysdk/sdk/i/cl$d;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cl;->a:Lcom/ironsource/adqualitysdk/sdk/i/cl$d;

    return-object p1
.end method

.method static synthetic b(Lcom/ironsource/adqualitysdk/sdk/i/cl;Lcom/ironsource/adqualitysdk/sdk/i/dn;)Lcom/ironsource/adqualitysdk/sdk/i/dn;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cl;->b:Lcom/ironsource/adqualitysdk/sdk/i/dn;

    return-object p1
.end method


# virtual methods
.method public final ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/hp;Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/hp;",
            "Lcom/ironsource/adqualitysdk/sdk/i/dr;",
            "Lcom/ironsource/adqualitysdk/sdk/i/cj;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cl;->a:Lcom/ironsource/adqualitysdk/sdk/i/cl$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/cl$d;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/hp;)Z

    move-result v0

    if-nez v0, :cond_c

    return v1

    :cond_c
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/cl;->b:Lcom/ironsource/adqualitysdk/sdk/i/dn;

    if-eqz v0, :cond_23

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/cl;->b:Lcom/ironsource/adqualitysdk/sdk/i/dn;

    invoke-virtual {p1, p2, p3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/dn;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/dp;->ﾇ()Z

    move-result p1

    return p1

    :cond_23
    const/4 p1, 0x1

    return p1
.end method
