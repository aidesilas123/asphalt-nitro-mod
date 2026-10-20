###### Class com.applovin.exoplayer2.e.i.o (com.applovin.exoplayer2.e.i.o)
.class public final Lcom/applovin/exoplayer2/e/i/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/i/j;


# instance fields
.field private Ai:I

.field private CY:Z

.field private Da:J

.field private final Et:Lcom/applovin/exoplayer2/l/y;

.field private wl:Lcom/applovin/exoplayer2/e/x;

.field private xI:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/applovin/exoplayer2/l/y;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/o;->Et:Lcom/applovin/exoplayer2/l/y;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/o;->Da:J

    return-void
.end method


# virtual methods
.method public K(Lcom/applovin/exoplayer2/l/y;)V
    .registers 9

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/o;->wl:Lcom/applovin/exoplayer2/e/x;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/o;->CY:Z

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v0

    iget v1, p0, Lcom/applovin/exoplayer2/e/i/o;->xI:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_71

    rsub-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v4

    iget-object v5, p0, Lcom/applovin/exoplayer2/e/i/o;->Et:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v5}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v5

    iget v6, p0, Lcom/applovin/exoplayer2/e/i/o;->xI:I

    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/applovin/exoplayer2/e/i/o;->xI:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_71

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/o;->Et:Lcom/applovin/exoplayer2/l/y;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    const/16 v1, 0x49

    iget-object v4, p0, Lcom/applovin/exoplayer2/e/i/o;->Et:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v4

    if-ne v1, v4, :cond_67

    const/16 v1, 0x44

    iget-object v4, p0, Lcom/applovin/exoplayer2/e/i/o;->Et:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v4

    if-ne v1, v4, :cond_67

    const/16 v1, 0x33

    iget-object v4, p0, Lcom/applovin/exoplayer2/e/i/o;->Et:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v4

    if-eq v1, v4, :cond_57

    goto :goto_67

    :cond_57
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/o;->Et:Lcom/applovin/exoplayer2/l/y;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/o;->Et:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->pC()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/applovin/exoplayer2/e/i/o;->Ai:I

    goto :goto_71

    :cond_67
    :goto_67
    const-string p1, "Id3Reader"

    const-string v0, "Discarding invalid ID3 tag"

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/applovin/exoplayer2/e/i/o;->CY:Z

    return-void

    :cond_71
    :goto_71
    iget v1, p0, Lcom/applovin/exoplayer2/e/i/o;->Ai:I

    iget v2, p0, Lcom/applovin/exoplayer2/e/i/o;->xI:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/o;->wl:Lcom/applovin/exoplayer2/e/x;

    invoke-interface {v1, p1, v0}, Lcom/applovin/exoplayer2/e/x;->c(Lcom/applovin/exoplayer2/l/y;I)V

    iget p1, p0, Lcom/applovin/exoplayer2/e/i/o;->xI:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/applovin/exoplayer2/e/i/o;->xI:I

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/e/i/ad$d;)V
    .registers 5

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->jy()V

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->jz()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lcom/applovin/exoplayer2/e/j;->y(II)Lcom/applovin/exoplayer2/e/x;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/o;->wl:Lcom/applovin/exoplayer2/e/x;

    new-instance v0, Lcom/applovin/exoplayer2/v$a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/v$a;-><init>()V

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->jA()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/applovin/exoplayer2/v$a;->g(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object p2

    const-string v0, "application/id3"

    invoke-virtual {p2, v0}, Lcom/applovin/exoplayer2/v$a;->m(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/applovin/exoplayer2/e/x;->j(Lcom/applovin/exoplayer2/v;)V

    return-void
.end method

.method public e(JI)V
    .registers 6

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_5

    return-void

    :cond_5
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/applovin/exoplayer2/e/i/o;->CY:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_13

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/i/o;->Da:J

    :cond_13
    const/4 p1, 0x0

    iput p1, p0, Lcom/applovin/exoplayer2/e/i/o;->Ai:I

    iput p1, p0, Lcom/applovin/exoplayer2/e/i/o;->xI:I

    return-void
.end method

.method public jb()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/o;->CY:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/o;->Da:J

    return-void
.end method

.method public jc()V
    .registers 9

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/o;->wl:Lcom/applovin/exoplayer2/e/x;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/o;->CY:Z

    if-eqz v0, :cond_28

    iget v5, p0, Lcom/applovin/exoplayer2/e/i/o;->Ai:I

    if-eqz v5, :cond_28

    iget v0, p0, Lcom/applovin/exoplayer2/e/i/o;->xI:I

    if-eq v0, v5, :cond_12

    goto :goto_28

    :cond_12
    iget-wide v2, p0, Lcom/applovin/exoplayer2/e/i/o;->Da:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_25

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/o;->wl:Lcom/applovin/exoplayer2/e/x;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/applovin/exoplayer2/e/x;->a(JIIILcom/applovin/exoplayer2/e/x$a;)V

    :cond_25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/o;->CY:Z

    :cond_28
    :goto_28
    return-void
.end method
