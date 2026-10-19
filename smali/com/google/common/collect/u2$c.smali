###### Class com.google.common.collect.u2.c (com.google.common.collect.u2$c)
.class final Lcom/google/common/collect/u2$c;
.super Lcom/google/common/collect/ImmutableList;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/u2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/collect/u2;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/u2;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/u2$c;->c:Lcom/google/common/collect/u2;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/u2;Lcom/google/common/collect/u2$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/collect/u2$c;-><init>(Lcom/google/common/collect/u2;)V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u2$c;->c:Lcom/google/common/collect/u2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/u2;->J(I)Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/google/common/collect/u2$c;->c:Lcom/google/common/collect/u2;

    invoke-interface {v0}, Lcom/google/common/collect/l3;->size()I

    move-result v0

    return v0
.end method
