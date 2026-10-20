###### Class com.hyprmx.android.sdk.core.t (com.hyprmx.android.sdk.core.t)
.class public final Lcom/hyprmx/android/sdk/core/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/hyprmx/android/sdk/core/q;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/hyprmx/android/sdk/core/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hyprmx/android/sdk/core/q;-><init>(I)V

    sput-object v0, Lcom/hyprmx/android/sdk/core/t;->a:Lcom/hyprmx/android/sdk/core/q;

    return-void
.end method

.method public static final a()Lcom/hyprmx/android/sdk/core/q;
    .registers 1

    sget-object v0, Lcom/hyprmx/android/sdk/core/t;->a:Lcom/hyprmx/android/sdk/core/q;

    return-object v0
.end method
