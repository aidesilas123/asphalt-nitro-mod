###### Class com.hyprmx.android.sdk.analytics.e (com.hyprmx.android.sdk.analytics.e)
.class public final Lcom/hyprmx/android/sdk/analytics/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/hyprmx/android/sdk/core/js/a;Lcom/hyprmx/android/sdk/analytics/b;Lcom/hyprmx/android/sdk/network/k;)Lcom/hyprmx/android/sdk/analytics/c;
    .registers 4

    const-string v0, "jsEngine"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientErrorController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hyprmx/android/sdk/analytics/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/hyprmx/android/sdk/analytics/c;-><init>(Lcom/hyprmx/android/sdk/core/js/a;Lcom/hyprmx/android/sdk/analytics/b;Lcom/hyprmx/android/sdk/network/k;)V

    return-object v0
.end method
