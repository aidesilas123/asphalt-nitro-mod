###### Class com.hyprmx.android.sdk.utility.b1 (com.hyprmx.android.sdk.utility.b1)
.class public abstract Lcom/hyprmx/android/sdk/utility/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyprmx/android/sdk/utility/b1$a;,
        Lcom/hyprmx/android/sdk/utility/b1$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/hyprmx/android/sdk/utility/b1;-><init>()V

    return-void
.end method

###### Class com.hyprmx.android.sdk.utility.b1.a (com.hyprmx.android.sdk.utility.b1$a)
.class public final Lcom/hyprmx/android/sdk/utility/b1$a;
.super Lcom/hyprmx/android/sdk/utility/b1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/utility/b1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hyprmx/android/sdk/utility/b1$a;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/hyprmx/android/sdk/utility/b1$a;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hyprmx/android/sdk/utility/b1;-><init>(I)V

    iput-boolean p1, p0, Lcom/hyprmx/android/sdk/utility/b1$a;->a:Z

    return-void
.end method

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
