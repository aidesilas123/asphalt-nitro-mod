###### Class com.hyprmx.android.sdk.initialization.d.c (com.hyprmx.android.sdk.initialization.d$c)
.class public final Lcom/hyprmx/android/sdk/initialization/d$c;
.super Lcom/hyprmx/android/sdk/initialization/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/initialization/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "placementJSON"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hyprmx/android/sdk/initialization/d;-><init>(I)V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/initialization/d$c;->a:Ljava/lang/String;

    return-void
.end method
