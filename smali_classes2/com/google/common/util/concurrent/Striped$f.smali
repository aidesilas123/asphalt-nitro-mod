###### Class com.google.common.util.concurrent.Striped.f (com.google.common.util.concurrent.Striped$f)
.class abstract Lcom/google/common/util/concurrent/Striped$f;
.super Lcom/google/common/util/concurrent/Striped;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/Striped<",
        "T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I


# direct methods
.method constructor <init>(I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Striped;-><init>(Lcom/google/common/util/concurrent/Striped$a;)V

    const/4 v0, 0x1

    if-lez p1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const-string v2, "Stripes must be positive"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/high16 v1, 0x40000000    # 2.0f

    if-le p1, v1, :cond_15

    const/4 p1, -0x1

    goto :goto_1a

    :cond_15
    invoke-static {p1}, Lcom/google/common/util/concurrent/Striped;->a(I)I

    move-result p1

    sub-int/2addr p1, v0

    :goto_1a
    iput p1, p0, Lcom/google/common/util/concurrent/Striped$f;->a:I

    return-void
.end method
