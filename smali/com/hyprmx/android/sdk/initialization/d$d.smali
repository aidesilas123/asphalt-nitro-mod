###### Class com.hyprmx.android.sdk.initialization.d.C0289d (com.hyprmx.android.sdk.initialization.d$d)
.class public final Lcom/hyprmx/android/sdk/initialization/d$d;
.super Lcom/hyprmx/android/sdk/initialization/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/initialization/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const-string v0, "coreJSURL"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hyprmx/android/sdk/initialization/d;-><init>(I)V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/initialization/d$d;->a:Ljava/lang/String;

    iput p2, p0, Lcom/hyprmx/android/sdk/initialization/d$d;->b:I

    return-void
.end method
