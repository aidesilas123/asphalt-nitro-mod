###### Class com.hyprmx.android.sdk.utility.r (com.hyprmx.android.sdk.utility.r)
.class public final Lcom/hyprmx/android/sdk/utility/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;)Lcom/hyprmx/android/sdk/utility/g;
    .registers 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hyprmx/android/sdk/utility/g;

    invoke-direct {v0, p0}, Lcom/hyprmx/android/sdk/utility/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
