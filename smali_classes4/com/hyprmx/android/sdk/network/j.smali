###### Class com.hyprmx.android.sdk.network.j (com.hyprmx.android.sdk.network.j)
.class public final Lcom/hyprmx/android/sdk/network/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;)Lcom/hyprmx/android/sdk/network/i;
    .registers 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_11

    new-instance v0, Lcom/hyprmx/android/sdk/network/b;

    invoke-direct {v0, p0}, Lcom/hyprmx/android/sdk/network/b;-><init>(Landroid/content/Context;)V

    goto :goto_16

    :cond_11
    new-instance v0, Lcom/hyprmx/android/sdk/network/c;

    invoke-direct {v0, p0}, Lcom/hyprmx/android/sdk/network/c;-><init>(Landroid/content/Context;)V

    :goto_16
    return-object v0
.end method
