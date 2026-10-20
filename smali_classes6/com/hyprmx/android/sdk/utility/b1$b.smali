###### Class com.hyprmx.android.sdk.utility.b1.b (com.hyprmx.android.sdk.utility.b1$b)
.class public final Lcom/hyprmx/android/sdk/utility/b1$b;
.super Lcom/hyprmx/android/sdk/utility/b1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/utility/b1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Z

.field public final b:J


# direct methods
.method public constructor <init>(ZJ)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hyprmx/android/sdk/utility/b1;-><init>(I)V

    iput-boolean p1, p0, Lcom/hyprmx/android/sdk/utility/b1$b;->a:Z

    iput-wide p2, p0, Lcom/hyprmx/android/sdk/utility/b1$b;->b:J

    return-void
.end method
