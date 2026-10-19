###### Class com.applovin.impl.mediation.MaxAdapterParametersImpl (com.applovin.impl.mediation.MaxAdapterParametersImpl)
.class public Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;
.implements Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;
.implements Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;


# instance fields
.field private adFormat:Lcom/applovin/mediation/MaxAdFormat;

.field private adUnitId:Ljava/lang/String;

.field private ala:Landroid/os/Bundle;

.field private alb:Landroid/os/Bundle;

.field private alc:Ljava/lang/Boolean;

.field private ald:Ljava/lang/Boolean;

.field private ale:Ljava/lang/Boolean;

.field private alf:Ljava/lang/String;

.field private alg:Z

.field private alh:Ljava/lang/String;

.field private ali:Ljava/lang/String;

.field private alj:J

.field private localExtraParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/applovin/impl/mediation/b/a;)Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;
    .registers 4

    invoke-static {p0}, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->a(Lcom/applovin/impl/mediation/b/f;)Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/b/a;->getThirdPartyAdPlacementId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->alh:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/b/a;->getBidResponse()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->ali:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/b/a;->getBidExpirationMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->alj:J

    return-object v0
.end method

.method static a(Lcom/applovin/impl/mediation/b/f;)Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;
    .registers 3

    new-instance v0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;

    invoke-direct {v0}, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;-><init>()V

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/b/f;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->adUnitId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/b/f;->hasUserConsent()Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->alc:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/b/f;->isAgeRestrictedUser()Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->ald:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/b/f;->isDoNotSell()Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->ale:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/b/f;->getConsentString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->alf:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/b/f;->getLocalExtraParameters()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->localExtraParameters:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/b/f;->getServerParameters()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->ala:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/b/f;->getCustomParameters()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->alb:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/b/f;->isTesting()Z

    move-result p0

    iput-boolean p0, v0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->alg:Z

    return-object v0
.end method

.method static a(Lcom/applovin/impl/mediation/b/h;Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;)Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;
    .registers 3

    invoke-static {p0}, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->a(Lcom/applovin/impl/mediation/b/f;)Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;

    move-result-object p0

    iput-object p1, p0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->adUnitId:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->adFormat:Lcom/applovin/mediation/MaxAdFormat;

    return-object p0
.end method


# virtual methods
.method public getAdFormat()Lcom/applovin/mediation/MaxAdFormat;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->adFormat:Lcom/applovin/mediation/MaxAdFormat;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->adUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getBidExpirationMillis()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->alj:J

    return-wide v0
.end method

.method public getBidResponse()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->ali:Ljava/lang/String;

    return-object v0
.end method

.method public getConsentString()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->alf:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomParameters()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->alb:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLocalExtraParameters()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->localExtraParameters:Ljava/util/Map;

    return-object v0
.end method

.method public getServerParameters()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->ala:Landroid/os/Bundle;

    return-object v0
.end method

.method public getThirdPartyAdPlacementId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->alh:Ljava/lang/String;

    return-object v0
.end method

.method public hasUserConsent()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->alc:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isAgeRestrictedUser()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->ald:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isDoNotSell()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->ale:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isTesting()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/MaxAdapterParametersImpl;->alg:Z

    return v0
.end method
