###### Class com.json.adqualitysdk.sdk.i.fq (com.ironsource.adqualitysdk.sdk.i.fq)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/fq;
.super Lcom/ironsource/adqualitysdk/sdk/i/fr;
.source ""


# instance fields
.field private a:Lcom/ironsource/adqualitysdk/sdk/i/fg;

.field private b:Lcom/ironsource/adqualitysdk/sdk/i/fg;

.field private c:Lcom/ironsource/adqualitysdk/sdk/i/ej;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/fg;Lcom/ironsource/adqualitysdk/sdk/i/fg;Lcom/ironsource/adqualitysdk/sdk/i/ej;)V
    .registers 4

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/fr;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/fq;->a:Lcom/ironsource/adqualitysdk/sdk/i/fg;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/fq;->b:Lcom/ironsource/adqualitysdk/sdk/i/fg;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/fq;->c:Lcom/ironsource/adqualitysdk/sdk/i/ej;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_44

    const-class v2, Lcom/ironsource/adqualitysdk/sdk/i/fq;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_44

    :cond_10
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/fq;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/fq;->a:Lcom/ironsource/adqualitysdk/sdk/i/fg;

    if-eqz v2, :cond_1f

    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/fq;->a:Lcom/ironsource/adqualitysdk/sdk/i/fg;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_23

    :cond_1f
    iget-object v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/fq;->a:Lcom/ironsource/adqualitysdk/sdk/i/fg;

    if-eqz v2, :cond_24

    :goto_23
    return v1

    :cond_24
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/fq;->b:Lcom/ironsource/adqualitysdk/sdk/i/fg;

    if-eqz v2, :cond_31

    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/fq;->b:Lcom/ironsource/adqualitysdk/sdk/i/fg;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    goto :goto_35

    :cond_31
    iget-object v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/fq;->b:Lcom/ironsource/adqualitysdk/sdk/i/fg;

    if-eqz v2, :cond_36

    :goto_35
    return v1

    :cond_36
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/fq;->c:Lcom/ironsource/adqualitysdk/sdk/i/ej;

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/fq;->c:Lcom/ironsource/adqualitysdk/sdk/i/ej;

    if-eqz v2, :cond_41

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_41
    if-nez p1, :cond_44

    return v0

    :cond_44
    :goto_44
    return v1
.end method

.method public final hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fq;->a:Lcom/ironsource/adqualitysdk/sdk/i/fg;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/fq;->b:Lcom/ironsource/adqualitysdk/sdk/i/fg;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/fq;->c:Lcom/ironsource/adqualitysdk/sdk/i/ej;

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_22
    add-int/2addr v0, v1

    return v0
.end method

.method public final ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fq;->a:Lcom/ironsource/adqualitysdk/sdk/i/fg;

    if-eqz v0, :cond_33

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/dr;

    invoke-direct {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dr;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/dr;)V

    invoke-virtual {v0, v1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/fr;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    return-object p1

    :catchall_e
    move-exception v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/fq;->b:Lcom/ironsource/adqualitysdk/sdk/i/fg;

    if-eqz v1, :cond_33

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/fq;->c:Lcom/ironsource/adqualitysdk/sdk/i/ej;

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ej;->ｋ()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/dq;->ﻐ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/fq;->b:Lcom/ironsource/adqualitysdk/sdk/i/fg;

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/dr;

    invoke-direct {v2, v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/dr;-><init>(Ljava/util/Map;Lcom/ironsource/adqualitysdk/sdk/i/dr;)V

    invoke-virtual {v0, v2, p2}, Lcom/ironsource/adqualitysdk/sdk/i/fr;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/dr;Lcom/ironsource/adqualitysdk/sdk/i/cj;)Lcom/ironsource/adqualitysdk/sdk/i/dp;

    move-result-object p1

    return-object p1

    :cond_33
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/dp;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/dp;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
