###### Class com.hyprmx.android.sdk.bidding.b (com.hyprmx.android.sdk.bidding.b)
.class public final Lcom/hyprmx/android/sdk/bidding/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/hyprmx/android/sdk/core/js/a;)Lcom/hyprmx/android/sdk/bidding/d;
    .registers 2

    const-string v0, "jsEngine"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hyprmx/android/sdk/bidding/d;

    invoke-direct {v0, p0}, Lcom/hyprmx/android/sdk/bidding/d;-><init>(Lcom/hyprmx/android/sdk/core/js/a;)V

    return-object v0
.end method
