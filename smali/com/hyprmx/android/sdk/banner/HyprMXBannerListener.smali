###### Class com.hyprmx.android.sdk.banner.HyprMXBannerListener (com.hyprmx.android.sdk.banner.HyprMXBannerListener)
.class public interface abstract Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008g\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\r\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;",
        "",
        "onAdClicked",
        "",
        "ad",
        "Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;",
        "onAdClosed",
        "onAdFailedToLoad",
        "error",
        "Lcom/hyprmx/android/sdk/core/HyprMXErrors;",
        "onAdLeftApplication",
        "onAdLoaded",
        "onAdOpened",
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
.method public abstract onAdClicked(Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;)V
.end method

.method public abstract onAdClosed(Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;)V
.end method

.method public abstract onAdFailedToLoad(Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;Lcom/hyprmx/android/sdk/core/HyprMXErrors;)V
.end method

.method public abstract onAdLeftApplication(Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;)V
.end method

.method public abstract onAdLoaded(Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;)V
.end method

.method public abstract onAdOpened(Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;)V
.end method
