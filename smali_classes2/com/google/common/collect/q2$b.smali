###### Class com.google.common.collect.q2.b (com.google.common.collect.q2$b)
.class final Lcom/google/common/collect/q2$b;
.super Lcom/google/common/collect/v1;
.source "RegularImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/q2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/v1<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/collect/q2;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/q2;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/q2$b;->c:Lcom/google/common/collect/q2;

    invoke-direct {p0}, Lcom/google/common/collect/v1;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/q2;Lcom/google/common/collect/q2$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/collect/q2$b;-><init>(Lcom/google/common/collect/q2;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/q2$b;->c:Lcom/google/common/collect/q2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMultiset;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/q2$b;->c:Lcom/google/common/collect/q2;

    iget-object v0, v0, Lcom/google/common/collect/q2;->e:Lcom/google/common/collect/f2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/f2;->i(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method j()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/q2$b;->c:Lcom/google/common/collect/q2;

    iget-object v0, v0, Lcom/google/common/collect/q2;->e:Lcom/google/common/collect/f2;

    invoke-virtual {v0}, Lcom/google/common/collect/f2;->C()I

    move-result v0

    return v0
.end method
