###### Class com.google.common.util.concurrent.Striped.c (com.google.common.util.concurrent.Striped$c)
.class Lcom/google/common/util/concurrent/Striped$c;
.super Lcom/google/common/util/concurrent/Striped$f;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
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
.field final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lcom/google/common/base/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/m<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field final d:I


# direct methods
.method constructor <init>(ILcom/google/common/base/m;)V
    .registers 4
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

    iget p1, p0, Lcom/google/common/util/concurrent/Striped$f;->a:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_c

    const p1, 0x7fffffff

    goto :goto_e

    :cond_c
    add-int/lit8 p1, p1, 0x1

    :goto_e
    iput p1, p0, Lcom/google/common/util/concurrent/Striped$c;->d:I

    iput-object p2, p0, Lcom/google/common/util/concurrent/Striped$c;->c:Lcom/google/common/base/m;

    new-instance p1, Lcom/google/common/collect/MapMaker;

    invoke-direct {p1}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->m()Lcom/google/common/collect/MapMaker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->i()Ljava/util/concurrent/ConcurrentMap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/util/concurrent/Striped$c;->b:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method
