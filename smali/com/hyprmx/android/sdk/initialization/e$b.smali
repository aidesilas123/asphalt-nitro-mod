###### Class com.hyprmx.android.sdk.initialization.e.b (com.hyprmx.android.sdk.initialization.e$b)
.class public final Lcom/hyprmx/android/sdk/initialization/e$b;
.super Lcom/hyprmx/android/sdk/initialization/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/initialization/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "newCoreJS"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hyprmx/android/sdk/initialization/e;-><init>(I)V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/initialization/e$b;->a:Ljava/lang/String;

    return-void
.end method
