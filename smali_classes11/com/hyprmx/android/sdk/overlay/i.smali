###### Class com.hyprmx.android.sdk.overlay.i (com.hyprmx.android.sdk.overlay.i)
.class public interface abstract Lcom/hyprmx/android/sdk/overlay/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/core/a;


# virtual methods
.method public abstract asyncSavePhoto(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract synthetic createCalendarEvent(Ljava/lang/String;)V
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation
.end method

.method public abstract hyprMXBrowserClosed()V
.end method

.method public abstract synthetic openOutsideApplication(Ljava/lang/String;)V
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation
.end method

.method public abstract synthetic openShareSheet(Ljava/lang/String;)V
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation
.end method

.method public abstract setOverlayPresented(Z)V
.end method

.method public abstract showHyprMXBrowser(Ljava/lang/String;)V
.end method

.method public abstract showPlatformBrowser(Ljava/lang/String;)V
.end method

.method public abstract synthetic showToast(I)V
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation
.end method

.method public abstract synthetic storePicture(Ljava/lang/String;)V
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation
.end method
