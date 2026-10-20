###### Class com.hyprmx.android.sdk.initialization.e.a (com.hyprmx.android.sdk.initialization.e$a)
.class public final Lcom/hyprmx/android/sdk/initialization/e$a;
.super Lcom/hyprmx/android/sdk/initialization/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/initialization/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    const-string v0, "Error upgrading javascript with unsuccessful network response."

    const-string v1, "error"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hyprmx/android/sdk/initialization/e;-><init>(I)V

    return-void
.end method
