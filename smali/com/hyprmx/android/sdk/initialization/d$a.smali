###### Class com.hyprmx.android.sdk.initialization.d.a (com.hyprmx.android.sdk.initialization.d$a)
.class public final Lcom/hyprmx/android/sdk/initialization/d$a;
.super Lcom/hyprmx/android/sdk/initialization/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/initialization/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/hyprmx/android/sdk/initialization/d;-><init>(I)V

    return-void
.end method
