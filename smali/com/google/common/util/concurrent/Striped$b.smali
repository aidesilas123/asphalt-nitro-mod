###### Class com.google.common.util.concurrent.Striped.b (com.google.common.util.concurrent.Striped$b)
.class Lcom/google/common/util/concurrent/Striped$b;
.super Lcom/google/common/util/concurrent/Striped$f;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/Striped$f<",
        "T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:[Ljava/lang/Object;


# direct methods
.method private constructor <init>(ILcom/google/common/base/m;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/base/m<",
            "T",
            "L;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Striped$f;-><init>(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-gt p1, v2, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    const-string v2, "Stripes must be <= 2^30)"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget p1, p0, Lcom/google/common/util/concurrent/Striped$f;->a:I

    add-int/2addr p1, v1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/util/concurrent/Striped$b;->b:[Ljava/lang/Object;

    :goto_18
    iget-object p1, p0, Lcom/google/common/util/concurrent/Striped$b;->b:[Ljava/lang/Object;

    array-length v1, p1

    if-ge v0, v1, :cond_26

    invoke-interface {p2}, Lcom/google/common/base/m;->get()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_26
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/common/base/m;Lcom/google/common/util/concurrent/Striped$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/Striped$b;-><init>(ILcom/google/common/base/m;)V

    return-void
.end method
