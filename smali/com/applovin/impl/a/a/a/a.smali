###### Class com.applovin.impl.a.a.a.a (com.applovin.impl.a.a.a.a)
.class public Lcom/applovin/impl/a/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aks:J

.field private final akt:Ljava/lang/Object;

.field private aku:Ljava/lang/String;

.field private akv:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/a/a/a/a;->akt:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/applovin/impl/a/a/a/a;->aks:J

    instance-of p2, p1, Lcom/applovin/impl/sdk/ad/e;

    if-eqz p2, :cond_2c

    check-cast p1, Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdZone()Lcom/applovin/impl/sdk/ad/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/d;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p2

    if-eqz p2, :cond_24

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdZone()Lcom/applovin/impl/sdk/ad/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/d;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object p1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    iput-object p1, p0, Lcom/applovin/impl/a/a/a/a;->aku:Ljava/lang/String;

    const-string p1, "AppLovin"

    iput-object p1, p0, Lcom/applovin/impl/a/a/a/a;->akv:Ljava/lang/String;

    goto :goto_42

    :cond_2c
    instance-of p2, p1, Lcom/applovin/impl/mediation/b/a;

    if-eqz p2, :cond_42

    check-cast p1, Lcom/applovin/impl/mediation/b/a;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/impl/a/a/a/a;->aku:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/b/a;->getNetworkName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/a/a/a/a;->akv:Ljava/lang/String;

    :cond_42
    :goto_42
    return-void
.end method


# virtual methods
.method public getNetworkName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/a/a/a/a;->akv:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    const-string v0, "Unknown"

    :goto_7
    return-object v0
.end method

.method public tG()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/a/a/a/a;->aku:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    const-string v0, "Unknown"

    :goto_7
    return-object v0
.end method

.method public tH()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/a/a/a/a;->akt:Ljava/lang/Object;

    return-object v0
.end method

.method public tI()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/impl/a/a/a/a;->aks:J

    return-wide v0
.end method
