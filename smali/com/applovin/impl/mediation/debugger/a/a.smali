###### Class com.applovin.impl.mediation.debugger.a.a (com.applovin.impl.mediation.debugger.a.a)
.class public Lcom/applovin/impl/mediation/debugger/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/DTBAdCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/debugger/a/a$a;
    }
.end annotation


# instance fields
.field private final aoh:Lcom/applovin/impl/mediation/debugger/a/a$a;

.field private aoi:Lcom/amazon/device/ads/DTBAdRequest;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final format:Lcom/applovin/mediation/MaxAdFormat;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/mediation/debugger/a/b;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/mediation/debugger/a/a$a;)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/device/ads/DTBAdSize;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/a/b;->uF()Lcom/amazon/device/ads/DTBAdSize;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/mediation/debugger/a/a;-><init>(Ljava/util/List;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/mediation/debugger/a/a$a;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/mediation/debugger/a/a$a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Lcom/applovin/mediation/MaxAdFormat;",
            "Lcom/applovin/impl/mediation/debugger/a/a$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/a/a;->format:Lcom/applovin/mediation/MaxAdFormat;

    iput-object p3, p0, Lcom/applovin/impl/mediation/debugger/a/a;->aoh:Lcom/applovin/impl/mediation/debugger/a/a$a;

    :try_start_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lcom/amazon/device/ads/DTBAdSize;

    const/4 p3, 0x0

    :goto_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_23

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/amazon/device/ads/DTBAdSize;

    if-eqz v1, :cond_20

    check-cast v0, Lcom/amazon/device/ads/DTBAdSize;

    aput-object v0, p2, p3

    :cond_20
    add-int/lit8 p3, p3, 0x1

    goto :goto_e

    :cond_23
    new-instance p1, Lcom/amazon/device/ads/DTBAdRequest;

    invoke-direct {p1}, Lcom/amazon/device/ads/DTBAdRequest;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/a/a;->aoi:Lcom/amazon/device/ads/DTBAdRequest;

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/DTBAdRequest;->setSizes([Lcom/amazon/device/ads/DTBAdSize;)V
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_2d

    :catchall_2d
    return-void
.end method


# virtual methods
.method public loadAd()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/a;->aoi:Lcom/amazon/device/ads/DTBAdRequest;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/a;->aoh:Lcom/applovin/impl/mediation/debugger/a/a$a;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/applovin/impl/mediation/debugger/a/a;->format:Lcom/applovin/mediation/MaxAdFormat;

    invoke-interface {v0, v1, v2}, Lcom/applovin/impl/mediation/debugger/a/a$a;->onAdLoadFailed(Lcom/amazon/device/ads/AdError;Lcom/applovin/mediation/MaxAdFormat;)V

    return-void

    :cond_d
    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/DTBAdRequest;->loadAd(Lcom/amazon/device/ads/DTBAdCallback;)V

    return-void
.end method

.method public onFailure(Lcom/amazon/device/ads/AdError;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/a;->aoh:Lcom/applovin/impl/mediation/debugger/a/a$a;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/a/a;->format:Lcom/applovin/mediation/MaxAdFormat;

    invoke-interface {v0, p1, v1}, Lcom/applovin/impl/mediation/debugger/a/a$a;->onAdLoadFailed(Lcom/amazon/device/ads/AdError;Lcom/applovin/mediation/MaxAdFormat;)V

    return-void
.end method

.method public onSuccess(Lcom/amazon/device/ads/DTBAdResponse;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/a/a;->aoh:Lcom/applovin/impl/mediation/debugger/a/a$a;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/a/a;->format:Lcom/applovin/mediation/MaxAdFormat;

    invoke-interface {v0, p1, v1}, Lcom/applovin/impl/mediation/debugger/a/a$a;->onAdResponseLoaded(Lcom/amazon/device/ads/DTBAdResponse;Lcom/applovin/mediation/MaxAdFormat;)V

    return-void
.end method

###### Class com.applovin.impl.mediation.debugger.a.a.InterfaceC0065a (com.applovin.impl.mediation.debugger.a.a$a)
.class public interface abstract Lcom/applovin/impl/mediation/debugger/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/mediation/debugger/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract onAdLoadFailed(Lcom/amazon/device/ads/AdError;Lcom/applovin/mediation/MaxAdFormat;)V
.end method

.method public abstract onAdResponseLoaded(Lcom/amazon/device/ads/DTBAdResponse;Lcom/applovin/mediation/MaxAdFormat;)V
.end method
