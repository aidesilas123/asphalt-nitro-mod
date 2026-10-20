###### Class com.applovin.exoplayer2.j.c.a (com.applovin.exoplayer2.j.c$a)
.class public final Lcom/applovin/exoplayer2/j/c$a;
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
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/applovin/exoplayer2/j/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final Ul:Z

.field private final Um:Lcom/applovin/exoplayer2/j/c$c;

.field private final Un:Z

.field private final Uo:I

.field private final Up:I

.field private final Uq:I

.field private final Ur:I

.field private final Us:I

.field private final Ut:Z

.field private final Uu:I

.field private final dL:I

.field private final dM:I

.field private final dq:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final dv:I


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/j/c$c;I)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/exoplayer2/j/c$a;->Um:Lcom/applovin/exoplayer2/j/c$c;

    iget-object v0, p1, Lcom/applovin/exoplayer2/v;->dq:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/exoplayer2/j/c;->aI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/c$a;->dq:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/applovin/exoplayer2/j/c;->n(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/applovin/exoplayer2/j/c$a;->Un:Z

    const/4 p3, 0x0

    :goto_15
    iget-object v1, p2, Lcom/applovin/exoplayer2/j/i;->Vr:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const v2, 0x7fffffff

    if-ge p3, v1, :cond_32

    iget-object v1, p2, Lcom/applovin/exoplayer2/j/i;->Vr:Lcom/applovin/exoplayer2/common/a/s;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/applovin/exoplayer2/j/c;->a(Lcom/applovin/exoplayer2/v;Ljava/lang/String;Z)I

    move-result v1

    if-lez v1, :cond_2f

    goto :goto_36

    :cond_2f
    add-int/lit8 p3, p3, 0x1

    goto :goto_15

    :cond_32
    const p3, 0x7fffffff

    const/4 v1, 0x0

    :goto_36
    iput p3, p0, Lcom/applovin/exoplayer2/j/c$a;->Up:I

    iput v1, p0, Lcom/applovin/exoplayer2/j/c$a;->Uo:I

    iget p3, p1, Lcom/applovin/exoplayer2/v;->ds:I

    iget v1, p2, Lcom/applovin/exoplayer2/j/i;->Vs:I

    and-int/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result p3

    iput p3, p0, Lcom/applovin/exoplayer2/j/c$a;->Uq:I

    iget p3, p1, Lcom/applovin/exoplayer2/v;->dr:I

    const/4 v1, 0x1

    and-int/2addr p3, v1

    if-eqz p3, :cond_4d

    const/4 p3, 0x1

    goto :goto_4e

    :cond_4d
    const/4 p3, 0x0

    :goto_4e
    iput-boolean p3, p0, Lcom/applovin/exoplayer2/j/c$a;->Ut:Z

    iget p3, p1, Lcom/applovin/exoplayer2/v;->dL:I

    iput p3, p0, Lcom/applovin/exoplayer2/j/c$a;->dL:I

    iget v3, p1, Lcom/applovin/exoplayer2/v;->dM:I

    iput v3, p0, Lcom/applovin/exoplayer2/j/c$a;->dM:I

    iget v3, p1, Lcom/applovin/exoplayer2/v;->dv:I

    iput v3, p0, Lcom/applovin/exoplayer2/j/c$a;->dv:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_63

    iget v5, p2, Lcom/applovin/exoplayer2/j/i;->Vu:I

    if-gt v3, v5, :cond_6a

    :cond_63
    if-eq p3, v4, :cond_6b

    iget v3, p2, Lcom/applovin/exoplayer2/j/i;->Vt:I

    if-gt p3, v3, :cond_6a

    goto :goto_6b

    :cond_6a
    const/4 v1, 0x0

    :cond_6b
    :goto_6b
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/j/c$a;->Ul:Z

    invoke-static {}, Lcom/applovin/exoplayer2/l/ai;->qa()[Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    :goto_72
    array-length v3, p3

    if-ge v1, v3, :cond_81

    aget-object v3, p3, v1

    invoke-static {p1, v3, v0}, Lcom/applovin/exoplayer2/j/c;->a(Lcom/applovin/exoplayer2/v;Ljava/lang/String;Z)I

    move-result v3

    if-lez v3, :cond_7e

    goto :goto_85

    :cond_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    :cond_81
    const v1, 0x7fffffff

    const/4 v3, 0x0

    :goto_85
    iput v1, p0, Lcom/applovin/exoplayer2/j/c$a;->Ur:I

    iput v3, p0, Lcom/applovin/exoplayer2/j/c$a;->Us:I

    :goto_89
    iget-object p3, p2, Lcom/applovin/exoplayer2/j/i;->Vv:Lcom/applovin/exoplayer2/common/a/s;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    if-ge v0, p3, :cond_a6

    iget-object p3, p1, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    if-eqz p3, :cond_a3

    iget-object v1, p2, Lcom/applovin/exoplayer2/j/i;->Vv:Lcom/applovin/exoplayer2/common/a/s;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a3

    move v2, v0

    goto :goto_a6

    :cond_a3
    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    :cond_a6
    :goto_a6
    iput v2, p0, Lcom/applovin/exoplayer2/j/c$a;->Uu:I

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/j/c$a;)I
    .registers 7

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$a;->Ul:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/j/c$a;->Un:Z

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

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$a;->Un:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$a;->Un:Z

    invoke-virtual {v1, v2, v3}, Lcom/applovin/exoplayer2/common/a/n;->d(ZZ)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$a;->Up:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$a;->Up:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/ai;->gP()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/common/a/ai;->gO()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/applovin/exoplayer2/common/a/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$a;->Uo:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$a;->Uo:I

    invoke-virtual {v1, v2, v3}, Lcom/applovin/exoplayer2/common/a/n;->r(II)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$a;->Uq:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$a;->Uq:I

    invoke-virtual {v1, v2, v3}, Lcom/applovin/exoplayer2/common/a/n;->r(II)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$a;->Ul:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$a;->Ul:Z

    invoke-virtual {v1, v2, v3}, Lcom/applovin/exoplayer2/common/a/n;->d(ZZ)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$a;->Uu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$a;->Uu:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/ai;->gP()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/common/a/ai;->gO()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/applovin/exoplayer2/common/a/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$a;->dv:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$a;->dv:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/exoplayer2/j/c$a;->Um:Lcom/applovin/exoplayer2/j/c$c;

    iget-boolean v4, v4, Lcom/applovin/exoplayer2/j/i;->Vz:Z

    if-eqz v4, :cond_84

    invoke-static {}, Lcom/applovin/exoplayer2/j/c;->ni()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/common/a/ai;->gO()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v4

    goto :goto_88

    :cond_84
    invoke-static {}, Lcom/applovin/exoplayer2/j/c;->nj()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v4

    :goto_88
    invoke-virtual {v1, v2, v3, v4}, Lcom/applovin/exoplayer2/common/a/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/j/c$a;->Ut:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/j/c$a;->Ut:Z

    invoke-virtual {v1, v2, v3}, Lcom/applovin/exoplayer2/common/a/n;->d(ZZ)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$a;->Ur:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$a;->Ur:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/ai;->gP()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/common/a/ai;->gO()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/applovin/exoplayer2/common/a/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$a;->Us:I

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$a;->Us:I

    invoke-virtual {v1, v2, v3}, Lcom/applovin/exoplayer2/common/a/n;->r(II)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$a;->dL:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$a;->dL:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/exoplayer2/common/a/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$a;->dM:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$a;->dM:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/exoplayer2/common/a/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object v1

    iget v2, p0, Lcom/applovin/exoplayer2/j/c$a;->dv:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/applovin/exoplayer2/j/c$a;->dv:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/exoplayer2/j/c$a;->dq:Ljava/lang/String;

    iget-object p1, p1, Lcom/applovin/exoplayer2/j/c$a;->dq:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_eb

    goto :goto_ef

    :cond_eb
    invoke-static {}, Lcom/applovin/exoplayer2/j/c;->nj()Lcom/applovin/exoplayer2/common/a/ai;

    move-result-object v0

    :goto_ef
    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/exoplayer2/common/a/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/applovin/exoplayer2/common/a/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/common/a/n;->fQ()I

    move-result p1

    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/applovin/exoplayer2/j/c$a;

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/j/c$a;->a(Lcom/applovin/exoplayer2/j/c$a;)I

    move-result p1

    return p1
.end method
