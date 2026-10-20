###### Class com.google.common.collect.FluentIterable.c.a (com.google.common.collect.FluentIterable$c$a)
.class Lcom/google/common/collect/FluentIterable$c$a;
.super Lcom/google/common/collect/e;
.source "FluentIterable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/FluentIterable$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/e<",
        "Ljava/util/Iterator<",
        "+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/collect/FluentIterable$c;


# direct methods
.method constructor <init>(Lcom/google/common/collect/FluentIterable$c;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/FluentIterable$c$a;->c:Lcom/google/common/collect/FluentIterable$c;

    invoke-direct {p0, p2}, Lcom/google/common/collect/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/FluentIterable$c$a;->b(I)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/FluentIterable$c$a;->c:Lcom/google/common/collect/FluentIterable$c;

    iget-object v0, v0, Lcom/google/common/collect/FluentIterable$c;->b:[Ljava/lang/Iterable;

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method
