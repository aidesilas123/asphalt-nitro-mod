###### Class com.hyprmx.android.sdk.placement.Placement (com.hyprmx.android.sdk.placement.Placement)
.class public interface abstract Lcom/hyprmx/android/sdk/placement/Placement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008g\u0018\u00002\u00020\u0001J\u0008\u0010\u000c\u001a\u00020\rH&J\u0008\u0010\u000e\u001a\u00020\u000fH&J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0003H&J\u0012\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H&J\u0008\u0010\u0015\u001a\u00020\u000fH&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0018\u0010\u0006\u001a\u00020\u0007X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/hyprmx/android/sdk/placement/Placement;",
        "",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "type",
        "Lcom/hyprmx/android/sdk/placement/PlacementType;",
        "getType",
        "()Lcom/hyprmx/android/sdk/placement/PlacementType;",
        "setType",
        "(Lcom/hyprmx/android/sdk/placement/PlacementType;)V",
        "isAdAvailable",
        "",
        "loadAd",
        "",
        "loadAdWithBidResponse",
        "bidResponse",
        "setPlacementListener",
        "listener",
        "Lcom/hyprmx/android/sdk/placement/PlacementListener;",
        "showAd",
        "HyprMX-Mobile-Android-SDK_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/hyprmx/android/sdk/placement/PlacementType;
.end method

.method public abstract isAdAvailable()Z
.end method

.method public abstract loadAd()V
.end method

.method public abstract loadAdWithBidResponse(Ljava/lang/String;)Z
.end method

.method public abstract setPlacementListener(Lcom/hyprmx/android/sdk/placement/PlacementListener;)Lcom/hyprmx/android/sdk/placement/Placement;
.end method

.method public abstract setType(Lcom/hyprmx/android/sdk/placement/PlacementType;)V
.end method

.method public abstract showAd()V
.end method
