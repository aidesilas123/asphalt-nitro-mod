###### Class com.kidoz.sdk.api.ads.fullscreen.KidozFullScreenAdManager.InternalFullScreenEventListener (com.kidoz.sdk.api.ads.fullscreen.KidozFullScreenAdManager$InternalFullScreenEventListener)
.class abstract Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager$InternalFullScreenEventListener;
.super Ljava/lang/Object;
.source "KidozFullScreenAdManager.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "InternalFullScreenEventListener"
.end annotation


# instance fields
.field private final instanceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager$InternalFullScreenEventListener;->instanceId:Ljava/lang/String;

    return-void
.end method
