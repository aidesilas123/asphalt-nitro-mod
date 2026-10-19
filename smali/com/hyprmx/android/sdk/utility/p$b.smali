###### Class com.hyprmx.android.sdk.utility.p.b (com.hyprmx.android.sdk.utility.p$b)
.class public final Lcom/hyprmx/android/sdk/utility/p$b;
.super Lcom/hyprmx/android/sdk/utility/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/utility/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    const-string v0, "googleAdId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hyprmx/android/sdk/utility/p;-><init>(I)V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/utility/p$b;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/hyprmx/android/sdk/utility/p$b;->b:Z

    return-void
.end method
