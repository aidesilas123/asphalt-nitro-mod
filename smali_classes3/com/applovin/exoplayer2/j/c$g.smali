###### Class com.applovin.exoplayer2.j.c.g (com.applovin.exoplayer2.j.c$g)
.class public final Lcom/applovin/exoplayer2/j/c$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/j/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/applovin/exoplayer2/j/c$g;",
        ">;"
    }
.end annotation


# instance fields
.field public final UP:Z

.field private final UQ:Z

.field private final UR:I

.field private final Um:Lcom/applovin/exoplayer2/j/c$c;

.field private final Un:Z

.field private final Uu:I

.field private final dv:I


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/j/c$c;IZ)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/exoplayer2/j/c$g;->Um:Lcom/applovin/exoplayer2/j/c$c;

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz p4, :cond_33

    iget v4, p1, Lcom/applovin/exoplayer2/v;->dE:I

    if-eq v4, v3, :cond_14

    iget v5, p2, Lcom/applovin/exoplayer2/j/i;->Vf:I

    if-gt v4, v5, :cond_33

    :cond_14
    iget v4, p1, Lcom/applovin/exoplayer2/v;->height:I

    if-eq v4, v3, :cond_1c

    iget v5, p2, Lcom/applovin/exoplayer2/j/i;->Vg:I

    if-gt v4, v5, :cond_33

    :cond_1c
    iget v4, p1, Lcom/applovin/exoplayer2/v;->dF:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_29

    iget v5, p2, Lcom/applovin/exoplayer2/j/i;->Vh:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_33

    :cond_29
    iget v4, p1, Lcom/applovin/exoplayer2/v;->dv:I

    if-eq v4, v3, :cond_31

    iget v5, p2, Lcom/applovin/exoplayer2/j/i;->Vi:I

    if-gt v4, v5, :cond_33

    :cond_31
    const/4 v4, 0x1

    goto :goto_34

    :cond_33
    const/4 v4, 0x0

    :goto_34
    iput-boolean v4, p0, Lcom/applovin/exoplayer2/j/c$g;->UP:Z

    if-eqz p4, :cond_5e

    iget p4, p1, Lcom/applovin/exoplayer2/v;->dE:I

    if-eq p4, v3, :cond_40

    iget v4, p2, Lcom/applovin/exoplayer2/j/i;->Vj:I

    if-lt p4, v4, :cond_5e

    :cond_40
    iget p4, p1, Lcom/applovin/exoplayer2/v;->height:I

    if-eq p4, v3, :cond_48

    iget v4, p2, Lcom/applovin/exoplayer2/j/i;->Vk:I

    if-lt p4, v4, :cond_5e

    :cond_48
    iget p4, p1, Lcom/applovin/exoplayer2/v;->dF:F

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_55

    iget v0, p2, Lcom/applovin/exoplayer2/j/i;->Vl:I

    int-to-float v0, v0

    cmpl-float p4, p4, v0

    if-ltz p4, :cond_5e

    :cond_55
    iget p4, p1, Lcom/applovin/exoplayer2/v;->dv:I

    if-eq p4, v3, :cond_5f

    iget v0, p2, Lcom/applovin/exoplayer2/j/i;->Vm:I

    if-lt p4, v0, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v1, 0x0

    :cond_5f
    :goto_5f
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/j/c$g;->UQ:Z

    invoke-static {p3, v2}, Lcom/applovin/exoplayer2/j/c;->n(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/applovin/exoplayer2/j/c$g;->Un:Z

    iget p3, p1, Lcom/applovin/exoplayer2/v;->dv:I

    iput p3, p0, Lcom/applovin/exoplayer2/j/c$g;->dv:I

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/v;->bS()I

    move-result p3

    iput p3, p0, Lcom/applovin/exoplayer2/j/c$g;->UR:I

    const p3, 0x7fffffff

    :goto_74
    iget-object p4, p2, Lcom/applovin/exoplayer2/j/i;->Vq:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {p4}, Ljava/util/AbstractCollection;->size()I

    move-result p4

    if-ge v2, p4, :cond_91

    iget-object p4, p1, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    if-eqz p4, :cond_8e

    iget-object v0, p2, Lcom/applovin/exoplayer2/j/i;->Vq:Lcom/applovin/exoplayer2/common/a/s;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8e

    move p3, v2

    goto :goto_91

    :cond_8e
    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    :cond_91
    :goto_91
    iput p3, p0, Lcom/applovin/exoplayer2/j/c$g;->Uu:I

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/j/c$g;)I
    .registers 7

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$g;->UP:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$g;->Un:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/applovin/exoplayer2/j/c;->ni()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v0

    goto :goto_15

    :cond_d
    invoke-static {}, Lcom/applovin/exoplayer2/j/c;->ni()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/ai;->gO()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v0

    :goto_15
    invoke-static {}, Lcom/applovin/exoplayer2/common/a/n;->fP()Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$g;->Un:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$g;->Un:Z

    invoke-virtual {v1, v2, v3}, Lcom/applovin/exoplayer2/common/a/n;->d(ZZ)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$g;->UP:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$g;->UP:Z

    invoke-virtual {v1, v2, v3}, Lcom/applovin/exoplayer2/common/a/n;->d(ZZ)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$g;->UQ:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$g;->UQ:Z

    invoke-virtual {v1, v2, v3}, Lcom/applovin/exoplayer2/common/a/n;->d(ZZ)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$g;->Uu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$g;->Uu:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/ai;->gP()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/common/a/ai;->gO()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/applovin/exoplayer2/common/a/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$g;->dv:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$g;->dv:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/exoplayer2/j/c$g;->Um:Lcom/applovin/exoplayer2/j/c$c;

    iget-boolean v4, v4, Lcom/applovin/exoplayer2/j/i;->Vz:Z

    if-eqz v4, :cond_64

    invoke-static {}, Lcom/applovin/exoplayer2/j/c;->ni()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/common/a/ai;->gO()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v4

    goto :goto_68

    :cond_64
    invoke-static {}, Lcom/applovin/exoplayer2/j/c;->nj()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v4

    :goto_68
    invoke-virtual {v1, v2, v3, v4}, Lcom/applovin/exoplayer2/common/a/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$g;->UR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$g;->UR:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/exoplayer2/common/a/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$g;->dv:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lcom/applovin/exoplayer2/j/c$g;->dv:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/applovin/exoplayer2/common/a/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/common/a/n;->fQ()I

    move-result p1

    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/applovin/exoplayer2/j/c$g;

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/j/c$g;->a(Lcom/applovin/exoplayer2/j/c$g;)I

    move-result p1

    return p1
.end method
