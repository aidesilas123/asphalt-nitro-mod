###### Class com.applovin.impl.mediation.nativeAds.MaxNativeAdImpl (com.applovin.impl.mediation.nativeAds.MaxNativeAdImpl)
.class public Lcom/applovin/impl/mediation/nativeAds/MaxNativeAdImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private adViewTracker:Lcom/applovin/impl/mediation/ads/b;

.field private clickableViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdViewTracker()Lcom/applovin/impl/mediation/ads/b;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/MaxNativeAdImpl;->adViewTracker:Lcom/applovin/impl/mediation/ads/b;

    return-object v0
.end method

.method public getClickableViews()Ljava/util/List;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/MaxNativeAdImpl;->clickableViews:Ljava/util/List;

    return-object v0
.end method

.method public setAdViewTracker(Lcom/applovin/impl/mediation/ads/b;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/mediation/nativeAds/MaxNativeAdImpl;->adViewTracker:Lcom/applovin/impl/mediation/ads/b;

    return-void
.end method

.method public setClickableViews(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/applovin/impl/mediation/nativeAds/MaxNativeAdImpl;->clickableViews:Ljava/util/List;

    return-void
.end method
