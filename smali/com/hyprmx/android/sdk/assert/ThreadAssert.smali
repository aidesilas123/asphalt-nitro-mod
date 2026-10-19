###### Class com.hyprmx.android.sdk.p002assert.ThreadAssert (com.hyprmx.android.sdk.assert.ThreadAssert)
.class public interface abstract Lcom/hyprmx/android/sdk/assert/ThreadAssert;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008g\u0018\u00002\u00020\u0001J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u0012\u0010\u0008\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\t\u001a\u00020\u0005H\u0016R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\n8&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/hyprmx/android/sdk/assert/ThreadAssert;",
        "",
        "",
        "expectedThread",
        "getErrorMessage",
        "",
        "runningOnMainThread",
        "errorMessage",
        "shouldNeverBeCalled",
        "runningOnBackgroundThread",
        "Lcom/hyprmx/android/sdk/analytics/b;",
        "getClientErrorController",
        "()Lcom/hyprmx/android/sdk/analytics/b;",
        "setClientErrorController",
        "(Lcom/hyprmx/android/sdk/analytics/b;)V",
        "clientErrorController",
        "HyprMX-Mobile-Android-SDK_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# virtual methods
.method public abstract getClientErrorController()Lcom/hyprmx/android/sdk/analytics/b;
.end method

.method public abstract runningOnBackgroundThread()V
.end method

.method public abstract runningOnMainThread()V
.end method

.method public abstract setClientErrorController(Lcom/hyprmx/android/sdk/analytics/b;)V
.end method

.method public abstract shouldNeverBeCalled(Ljava/lang/String;)V
.end method
