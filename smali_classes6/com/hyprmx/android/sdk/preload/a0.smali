###### Class com.hyprmx.android.sdk.preload.a0 (com.hyprmx.android.sdk.preload.a0)
.class public final Lcom/hyprmx/android/sdk/preload/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/hyprmx/android/sdk/core/js/a;)Lcom/hyprmx/android/sdk/preload/o;
    .registers 2

    const-string v0, "jsEngine"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hyprmx/android/sdk/preload/o;

    invoke-direct {v0, p0}, Lcom/hyprmx/android/sdk/preload/o;-><init>(Lcom/hyprmx/android/sdk/core/js/a;)V

    return-object v0
.end method
