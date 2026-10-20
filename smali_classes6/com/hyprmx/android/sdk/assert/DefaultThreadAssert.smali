###### Class com.hyprmx.android.sdk.p002assert.DefaultThreadAssert (com.hyprmx.android.sdk.assert.DefaultThreadAssert)
.class public final Lcom/hyprmx/android/sdk/assert/DefaultThreadAssert;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/assert/ThreadAssert;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0008R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/hyprmx/android/sdk/assert/DefaultThreadAssert;",
        "Lcom/hyprmx/android/sdk/assert/ThreadAssert;",
        "Lcom/hyprmx/android/sdk/analytics/b;",
        "clientErrorController",
        "Lcom/hyprmx/android/sdk/analytics/b;",
        "getClientErrorController",
        "()Lcom/hyprmx/android/sdk/analytics/b;",
        "setClientErrorController",
        "(Lcom/hyprmx/android/sdk/analytics/b;)V",
        "<init>",
        "HyprMX-Mobile-Android-SDK_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private clientErrorController:Lcom/hyprmx/android/sdk/analytics/b;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/hyprmx/android/sdk/assert/DefaultThreadAssert;-><init>(Lcom/hyprmx/android/sdk/analytics/b;ILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public constructor <init>(Lcom/hyprmx/android/sdk/analytics/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/assert/DefaultThreadAssert;->clientErrorController:Lcom/hyprmx/android/sdk/analytics/b;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hyprmx/android/sdk/analytics/b;ILkotlin/jvm/internal/n;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-direct {p0, p1}, Lcom/hyprmx/android/sdk/assert/DefaultThreadAssert;-><init>(Lcom/hyprmx/android/sdk/analytics/b;)V

    return-void
.end method


# virtual methods
.method public getClientErrorController()Lcom/hyprmx/android/sdk/analytics/b;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/assert/DefaultThreadAssert;->clientErrorController:Lcom/hyprmx/android/sdk/analytics/b;

    return-object v0
.end method

.method public synthetic runningOnBackgroundThread()V
    .registers 1

    invoke-static {p0}, Lcom/hyprmx/android/sdk/assert/a;->a(Lcom/hyprmx/android/sdk/assert/ThreadAssert;)V

    return-void
.end method

.method public synthetic runningOnMainThread()V
    .registers 1

    invoke-static {p0}, Lcom/hyprmx/android/sdk/assert/a;->b(Lcom/hyprmx/android/sdk/assert/ThreadAssert;)V

    return-void
.end method

.method public setClientErrorController(Lcom/hyprmx/android/sdk/analytics/b;)V
    .registers 2

    iput-object p1, p0, Lcom/hyprmx/android/sdk/assert/DefaultThreadAssert;->clientErrorController:Lcom/hyprmx/android/sdk/analytics/b;

    return-void
.end method

.method public synthetic shouldNeverBeCalled(Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/assert/a;->c(Lcom/hyprmx/android/sdk/assert/ThreadAssert;Ljava/lang/String;)V

    return-void
.end method
