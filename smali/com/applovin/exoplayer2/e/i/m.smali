###### Class com.applovin.exoplayer2.e.i.m (com.applovin.exoplayer2.e.i.m)
.class public final Lcom/applovin/exoplayer2/e/i/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/i/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/e/i/m$a;
    }
.end annotation


# instance fields
.field private Ct:Ljava/lang/String;

.field private final DA:Z

.field private final DB:Z

.field private final DC:Lcom/applovin/exoplayer2/e/i/r;

.field private final DD:Lcom/applovin/exoplayer2/e/i/r;

.field private final DE:Lcom/applovin/exoplayer2/e/i/r;

.field private DF:Lcom/applovin/exoplayer2/e/i/m$a;

.field private DG:Z

.field private final DH:Lcom/applovin/exoplayer2/l/y;

.field private final Df:[Z

.field private Dh:J

.field private Dk:J

.field private final Dz:Lcom/applovin/exoplayer2/e/i/z;

.field private vJ:Z

.field private wl:Lcom/applovin/exoplayer2/e/x;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/e/i/z;ZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/m;->Dz:Lcom/applovin/exoplayer2/e/i/z;

    iput-boolean p2, p0, Lcom/applovin/exoplayer2/e/i/m;->DA:Z

    iput-boolean p3, p0, Lcom/applovin/exoplayer2/e/i/m;->DB:Z

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/m;->Df:[Z

    new-instance p1, Lcom/applovin/exoplayer2/e/i/r;

    const/4 p2, 0x7

    const/16 p3, 0x80

    invoke-direct {p1, p2, p3}, Lcom/applovin/exoplayer2/e/i/r;-><init>(II)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/m;->DC:Lcom/applovin/exoplayer2/e/i/r;

    new-instance p1, Lcom/applovin/exoplayer2/e/i/r;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p3}, Lcom/applovin/exoplayer2/e/i/r;-><init>(II)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/m;->DD:Lcom/applovin/exoplayer2/e/i/r;

    new-instance p1, Lcom/applovin/exoplayer2/e/i/r;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p3}, Lcom/applovin/exoplayer2/e/i/r;-><init>(II)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/m;->DE:Lcom/applovin/exoplayer2/e/i/r;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/i/m;->Dk:J

    new-instance p1, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/l/y;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/m;->DH:Lcom/applovin/exoplayer2/l/y;

    return-void
.end method

.method private a(JIIJ)V
    .registers 14

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/m;->vJ:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DF:Lcom/applovin/exoplayer2/e/i/m$a;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/m$a;->jo()Z

    move-result v0

    if-eqz v0, :cond_ed

    :cond_c
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DC:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0, p4}, Lcom/applovin/exoplayer2/e/i/r;->cC(I)Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DD:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0, p4}, Lcom/applovin/exoplayer2/e/i/r;->cC(I)Z

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/m;->vJ:Z

    const/4 v1, 0x3

    if-nez v0, :cond_b4

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DC:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/r;->jq()Z

    move-result v0

    if-eqz v0, :cond_ed

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DD:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/r;->jq()Z

    move-result v0

    if-eqz v0, :cond_ed

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/m;->DC:Lcom/applovin/exoplayer2/e/i/r;

    iget-object v3, v2, Lcom/applovin/exoplayer2/e/i/r;->EJ:[B

    iget v2, v2, Lcom/applovin/exoplayer2/e/i/r;->EK:I

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/m;->DD:Lcom/applovin/exoplayer2/e/i/r;

    iget-object v3, v2, Lcom/applovin/exoplayer2/e/i/r;->EJ:[B

    iget v2, v2, Lcom/applovin/exoplayer2/e/i/r;->EK:I

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/m;->DC:Lcom/applovin/exoplayer2/e/i/r;

    iget-object v3, v2, Lcom/applovin/exoplayer2/e/i/r;->EJ:[B

    iget v2, v2, Lcom/applovin/exoplayer2/e/i/r;->EK:I

    invoke-static {v3, v1, v2}, Lcom/applovin/exoplayer2/l/v;->n([BII)Lcom/applovin/exoplayer2/l/v$b;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/i/m;->DD:Lcom/applovin/exoplayer2/e/i/r;

    iget-object v4, v3, Lcom/applovin/exoplayer2/e/i/r;->EJ:[B

    iget v3, v3, Lcom/applovin/exoplayer2/e/i/r;->EK:I

    invoke-static {v4, v1, v3}, Lcom/applovin/exoplayer2/l/v;->o([BII)Lcom/applovin/exoplayer2/l/v$a;

    move-result-object v1

    iget v3, v2, Lcom/applovin/exoplayer2/l/v$b;->acv:I

    iget v4, v2, Lcom/applovin/exoplayer2/l/v$b;->acw:I

    iget v5, v2, Lcom/applovin/exoplayer2/l/v$b;->acx:I

    invoke-static {v3, v4, v5}, Lcom/applovin/exoplayer2/l/e;->i(III)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/exoplayer2/e/i/m;->wl:Lcom/applovin/exoplayer2/e/x;

    new-instance v5, Lcom/applovin/exoplayer2/v$a;

    invoke-direct {v5}, Lcom/applovin/exoplayer2/v$a;-><init>()V

    iget-object v6, p0, Lcom/applovin/exoplayer2/e/i/m;->Ct:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/applovin/exoplayer2/v$a;->g(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v5

    const-string v6, "video/avc"

    invoke-virtual {v5, v6}, Lcom/applovin/exoplayer2/v$a;->m(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/applovin/exoplayer2/v$a;->k(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v3

    iget v5, v2, Lcom/applovin/exoplayer2/l/v$b;->dE:I

    invoke-virtual {v3, v5}, Lcom/applovin/exoplayer2/v$a;->J(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v3

    iget v5, v2, Lcom/applovin/exoplayer2/l/v$b;->height:I

    invoke-virtual {v3, v5}, Lcom/applovin/exoplayer2/v$a;->K(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v3

    iget v5, v2, Lcom/applovin/exoplayer2/l/v$b;->acy:F

    invoke-virtual {v3, v5}, Lcom/applovin/exoplayer2/v$a;->e(F)Lcom/applovin/exoplayer2/v$a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/applovin/exoplayer2/v$a;->c(Ljava/util/List;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/applovin/exoplayer2/e/x;->j(Lcom/applovin/exoplayer2/v;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/m;->vJ:Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DF:Lcom/applovin/exoplayer2/e/i/m$a;

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/e/i/m$a;->a(Lcom/applovin/exoplayer2/l/v$b;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DF:Lcom/applovin/exoplayer2/e/i/m$a;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/e/i/m$a;->a(Lcom/applovin/exoplayer2/l/v$a;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DC:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/r;->Y()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DD:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/r;->Y()V

    goto :goto_ed

    :cond_b4
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DC:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/r;->jq()Z

    move-result v0

    if-eqz v0, :cond_d1

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DC:Lcom/applovin/exoplayer2/e/i/r;

    iget-object v2, v0, Lcom/applovin/exoplayer2/e/i/r;->EJ:[B

    iget v0, v0, Lcom/applovin/exoplayer2/e/i/r;->EK:I

    invoke-static {v2, v1, v0}, Lcom/applovin/exoplayer2/l/v;->n([BII)Lcom/applovin/exoplayer2/l/v$b;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/m;->DF:Lcom/applovin/exoplayer2/e/i/m$a;

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/e/i/m$a;->a(Lcom/applovin/exoplayer2/l/v$b;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DC:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/r;->Y()V

    goto :goto_ed

    :cond_d1
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DD:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/r;->jq()Z

    move-result v0

    if-eqz v0, :cond_ed

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DD:Lcom/applovin/exoplayer2/e/i/r;

    iget-object v2, v0, Lcom/applovin/exoplayer2/e/i/r;->EJ:[B

    iget v0, v0, Lcom/applovin/exoplayer2/e/i/r;->EK:I

    invoke-static {v2, v1, v0}, Lcom/applovin/exoplayer2/l/v;->o([BII)Lcom/applovin/exoplayer2/l/v$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/m;->DF:Lcom/applovin/exoplayer2/e/i/m$a;

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/e/i/m$a;->a(Lcom/applovin/exoplayer2/l/v$a;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DD:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/r;->Y()V

    :cond_ed
    :goto_ed
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DE:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0, p4}, Lcom/applovin/exoplayer2/e/i/r;->cC(I)Z

    move-result p4

    if-eqz p4, :cond_115

    iget-object p4, p0, Lcom/applovin/exoplayer2/e/i/m;->DE:Lcom/applovin/exoplayer2/e/i/r;

    iget-object v0, p4, Lcom/applovin/exoplayer2/e/i/r;->EJ:[B

    iget p4, p4, Lcom/applovin/exoplayer2/e/i/r;->EK:I

    invoke-static {v0, p4}, Lcom/applovin/exoplayer2/l/v;->i([BI)I

    move-result p4

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DH:Lcom/applovin/exoplayer2/l/y;

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/m;->DE:Lcom/applovin/exoplayer2/e/i/r;

    iget-object v1, v1, Lcom/applovin/exoplayer2/e/i/r;->EJ:[B

    invoke-virtual {v0, v1, p4}, Lcom/applovin/exoplayer2/l/y;->l([BI)V

    iget-object p4, p0, Lcom/applovin/exoplayer2/e/i/m;->DH:Lcom/applovin/exoplayer2/l/y;

    const/4 v0, 0x4

    invoke-virtual {p4, v0}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iget-object p4, p0, Lcom/applovin/exoplayer2/e/i/m;->Dz:Lcom/applovin/exoplayer2/e/i/z;

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DH:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p4, p5, p6, v0}, Lcom/applovin/exoplayer2/e/i/z;->a(JLcom/applovin/exoplayer2/l/y;)V

    :cond_115
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/m;->DF:Lcom/applovin/exoplayer2/e/i/m$a;

    iget-boolean v5, p0, Lcom/applovin/exoplayer2/e/i/m;->vJ:Z

    iget-boolean v6, p0, Lcom/applovin/exoplayer2/e/i/m;->DG:Z

    move-wide v2, p1

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/exoplayer2/e/i/m$a;->a(JIZZ)Z

    move-result p1

    if-eqz p1, :cond_126

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/m;->DG:Z

    :cond_126
    return-void
.end method

.method private a(JIJ)V
    .registers 13

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/m;->vJ:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DF:Lcom/applovin/exoplayer2/e/i/m$a;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/m$a;->jo()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_c
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DC:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0, p3}, Lcom/applovin/exoplayer2/e/i/r;->cB(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DD:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0, p3}, Lcom/applovin/exoplayer2/e/i/r;->cB(I)V

    :cond_16
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DE:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0, p3}, Lcom/applovin/exoplayer2/e/i/r;->cB(I)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/m;->DF:Lcom/applovin/exoplayer2/e/i/m$a;

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/exoplayer2/e/i/m$a;->a(JIJ)V

    return-void
.end method

.method private f([BII)V
    .registers 5

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/m;->vJ:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DF:Lcom/applovin/exoplayer2/e/i/m$a;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/m$a;->jo()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_c
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DC:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/i/r;->g([BII)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DD:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/i/r;->g([BII)V

    :cond_16
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DE:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/i/r;->g([BII)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DF:Lcom/applovin/exoplayer2/e/i/m$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/i/m$a;->g([BII)V

    return-void
.end method

.method private jm()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->wl:Lcom/applovin/exoplayer2/e/x;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DF:Lcom/applovin/exoplayer2/e/i/m$a;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public K(Lcom/applovin/exoplayer2/l/y;)V
    .registers 16

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/i/m;->jm()V

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v0

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v2

    iget-wide v3, p0, Lcom/applovin/exoplayer2/e/i/m;->Dh:J

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/applovin/exoplayer2/e/i/m;->Dh:J

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/i/m;->wl:Lcom/applovin/exoplayer2/e/x;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v4

    invoke-interface {v3, p1, v4}, Lcom/applovin/exoplayer2/e/x;->c(Lcom/applovin/exoplayer2/l/y;I)V

    :goto_22
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/m;->Df:[Z

    invoke-static {v2, v0, v1, p1}, Lcom/applovin/exoplayer2/l/v;->a([BII[Z)I

    move-result p1

    if-ne p1, v1, :cond_2e

    invoke-direct {p0, v2, v0, v1}, Lcom/applovin/exoplayer2/e/i/m;->f([BII)V

    return-void

    :cond_2e
    invoke-static {v2, p1}, Lcom/applovin/exoplayer2/l/v;->j([BI)I

    move-result v6

    sub-int v3, p1, v0

    if-lez v3, :cond_39

    invoke-direct {p0, v2, v0, p1}, Lcom/applovin/exoplayer2/e/i/m;->f([BII)V

    :cond_39
    sub-int v10, v1, p1

    iget-wide v4, p0, Lcom/applovin/exoplayer2/e/i/m;->Dh:J

    int-to-long v7, v10

    sub-long/2addr v4, v7

    if-gez v3, :cond_44

    neg-int v0, v3

    move v11, v0

    goto :goto_46

    :cond_44
    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_46
    iget-wide v12, p0, Lcom/applovin/exoplayer2/e/i/m;->Dk:J

    move-object v7, p0

    move-wide v8, v4

    invoke-direct/range {v7 .. v13}, Lcom/applovin/exoplayer2/e/i/m;->a(JIIJ)V

    iget-wide v7, p0, Lcom/applovin/exoplayer2/e/i/m;->Dk:J

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/applovin/exoplayer2/e/i/m;->a(JIJ)V

    add-int/lit8 v0, p1, 0x3

    goto :goto_22
.end method

.method public a(Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/e/i/ad$d;)V
    .registers 7

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->jy()V

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->jA()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->Ct:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->jz()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/applovin/exoplayer2/e/j;->y(II)Lcom/applovin/exoplayer2/e/x;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->wl:Lcom/applovin/exoplayer2/e/x;

    new-instance v1, Lcom/applovin/exoplayer2/e/i/m$a;

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/e/i/m;->DA:Z

    iget-boolean v3, p0, Lcom/applovin/exoplayer2/e/i/m;->DB:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/applovin/exoplayer2/e/i/m$a;-><init>(Lcom/applovin/exoplayer2/e/x;ZZ)V

    iput-object v1, p0, Lcom/applovin/exoplayer2/e/i/m;->DF:Lcom/applovin/exoplayer2/e/i/m$a;

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->Dz:Lcom/applovin/exoplayer2/e/i/z;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/e/i/z;->a(Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/e/i/ad$d;)V

    return-void
.end method

.method public e(JI)V
    .registers 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_b

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/i/m;->Dk:J

    :cond_b
    iget-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/m;->DG:Z

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_13

    const/4 p2, 0x1

    goto :goto_14

    :cond_13
    const/4 p2, 0x0

    :goto_14
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/m;->DG:Z

    return-void
.end method

.method public jb()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/m;->Dh:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DG:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/m;->Dk:J

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->Df:[Z

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/v;->b([Z)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DC:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/r;->Y()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DD:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/r;->Y()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DE:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/r;->Y()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m;->DF:Lcom/applovin/exoplayer2/e/i/m$a;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/m$a;->Y()V

    :cond_29
    return-void
.end method

.method public jc()V
    .registers 1

    return-void
.end method

###### Class com.applovin.exoplayer2.e.i.m.AnonymousClass1 (com.applovin.exoplayer2.e.i.m$1)
.class synthetic Lcom/applovin/exoplayer2/e/i/m$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/i/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.applovin.exoplayer2.e.i.m.a (com.applovin.exoplayer2.e.i.m$a)
.class final Lcom/applovin/exoplayer2/e/i/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/i/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/e/i/m$a$a;
    }
.end annotation


# instance fields
.field private final DA:Z

.field private final DB:Z

.field private final DI:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/applovin/exoplayer2/l/v$b;",
            ">;"
        }
    .end annotation
.end field

.field private final DJ:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/applovin/exoplayer2/l/v$a;",
            ">;"
        }
    .end annotation
.end field

.field private final DK:Lcom/applovin/exoplayer2/l/z;

.field private DL:[B

.field private DM:I

.field private DN:I

.field private DO:J

.field private DP:J

.field private DQ:Lcom/applovin/exoplayer2/e/i/m$a$a;

.field private DR:Lcom/applovin/exoplayer2/e/i/m$a$a;

.field private Da:J

.field private Dl:J

.field private Dm:Z

.field private Dp:Z

.field private Dv:Z

.field private final wl:Lcom/applovin/exoplayer2/e/x;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/e/x;ZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/m$a;->wl:Lcom/applovin/exoplayer2/e/x;

    iput-boolean p2, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DA:Z

    iput-boolean p3, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DB:Z

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DI:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DJ:Landroid/util/SparseArray;

    new-instance p1, Lcom/applovin/exoplayer2/e/i/m$a$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/applovin/exoplayer2/e/i/m$a$a;-><init>(Lcom/applovin/exoplayer2/e/i/m$1;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DQ:Lcom/applovin/exoplayer2/e/i/m$a$a;

    new-instance p1, Lcom/applovin/exoplayer2/e/i/m$a$a;

    invoke-direct {p1, p2}, Lcom/applovin/exoplayer2/e/i/m$a$a;-><init>(Lcom/applovin/exoplayer2/e/i/m$1;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DR:Lcom/applovin/exoplayer2/e/i/m$a$a;

    const/16 p1, 0x80

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DL:[B

    new-instance p2, Lcom/applovin/exoplayer2/l/z;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p3}, Lcom/applovin/exoplayer2/l/z;-><init>([BII)V

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e/i/m$a;->Y()V

    return-void
.end method

.method private cw(I)V
    .registers 10

    iget-wide v1, p0, Lcom/applovin/exoplayer2/e/i/m$a;->Da:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-boolean v3, p0, Lcom/applovin/exoplayer2/e/i/m$a;->Dm:Z

    iget-wide v4, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DO:J

    iget-wide v6, p0, Lcom/applovin/exoplayer2/e/i/m$a;->Dl:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m$a;->wl:Lcom/applovin/exoplayer2/e/x;

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/applovin/exoplayer2/e/x;->a(JIIILcom/applovin/exoplayer2/e/x$a;)V

    return-void
.end method


# virtual methods
.method public Y()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/m$a;->Dp:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/m$a;->Dv:Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DR:Lcom/applovin/exoplayer2/e/i/m$a$a;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/m$a$a;->clear()V

    return-void
.end method

.method public a(JIJ)V
    .registers 6

    iput p3, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DN:I

    iput-wide p4, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DP:J

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DO:J

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DA:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_d

    if-eq p3, p2, :cond_19

    :cond_d
    iget-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DB:Z

    if-eqz p1, :cond_29

    const/4 p1, 0x5

    if-eq p3, p1, :cond_19

    if-eq p3, p2, :cond_19

    const/4 p1, 0x2

    if-ne p3, p1, :cond_29

    :cond_19
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DQ:Lcom/applovin/exoplayer2/e/i/m$a$a;

    iget-object p3, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DR:Lcom/applovin/exoplayer2/e/i/m$a$a;

    iput-object p3, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DQ:Lcom/applovin/exoplayer2/e/i/m$a$a;

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DR:Lcom/applovin/exoplayer2/e/i/m$a$a;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/e/i/m$a$a;->clear()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DM:I

    iput-boolean p2, p0, Lcom/applovin/exoplayer2/e/i/m$a;->Dp:Z

    :cond_29
    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/l/v$a;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DJ:Landroid/util/SparseArray;

    iget v1, p1, Lcom/applovin/exoplayer2/l/v$a;->DY:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/l/v$b;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DI:Landroid/util/SparseArray;

    iget v1, p1, Lcom/applovin/exoplayer2/l/v$b;->act:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public a(JIZZ)Z
    .registers 11

    iget v0, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DN:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x9

    if-eq v0, v3, :cond_16

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DB:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DR:Lcom/applovin/exoplayer2/e/i/m$a$a;

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DQ:Lcom/applovin/exoplayer2/e/i/m$a$a;

    invoke-static {v0, v3}, Lcom/applovin/exoplayer2/e/i/m$a$a;->a(Lcom/applovin/exoplayer2/e/i/m$a$a;Lcom/applovin/exoplayer2/e/i/m$a$a;)Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_16
    if-eqz p4, :cond_24

    iget-boolean p4, p0, Lcom/applovin/exoplayer2/e/i/m$a;->Dv:Z

    if-eqz p4, :cond_24

    iget-wide v3, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DO:J

    sub-long/2addr p1, v3

    long-to-int p2, p1

    add-int/2addr p3, p2

    invoke-direct {p0, p3}, Lcom/applovin/exoplayer2/e/i/m$a;->cw(I)V

    :cond_24
    iget-wide p1, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DO:J

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/i/m$a;->Dl:J

    iget-wide p1, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DP:J

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/i/m$a;->Da:J

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/e/i/m$a;->Dm:Z

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/e/i/m$a;->Dv:Z

    :cond_30
    iget-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DA:Z

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DR:Lcom/applovin/exoplayer2/e/i/m$a$a;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/e/i/m$a$a;->jp()Z

    move-result p5

    :cond_3a
    iget-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/m$a;->Dm:Z

    iget p2, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DN:I

    const/4 p3, 0x5

    if-eq p2, p3, :cond_45

    if-eqz p5, :cond_46

    if-ne p2, v2, :cond_46

    :cond_45
    const/4 v1, 0x1

    :cond_46
    or-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/m$a;->Dm:Z

    return p1
.end method

.method public g([BII)V
    .registers 27

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-boolean v2, v0, Lcom/applovin/exoplayer2/e/i/m$a;->Dp:Z

    if-nez v2, :cond_9

    return-void

    :cond_9
    sub-int v2, p3, v1

    iget-object v3, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DL:[B

    array-length v4, v3

    iget v5, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DM:I

    add-int v6, v5, v2

    const/4 v7, 0x2

    if-ge v4, v6, :cond_1e

    add-int/2addr v5, v2

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DL:[B

    :cond_1e
    iget-object v3, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DL:[B

    iget v4, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DM:I

    move-object/from16 v5, p1

    invoke-static {v5, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DM:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DM:I

    iget-object v2, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    iget-object v3, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DL:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lcom/applovin/exoplayer2/l/z;->s([BII)V

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/l/z;->fD(I)Z

    move-result v1

    if-nez v1, :cond_3f

    return-void

    :cond_3f
    iget-object v1, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/z;->ph()V

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    invoke-virtual {v1, v7}, Lcom/applovin/exoplayer2/l/z;->bQ(I)I

    move-result v10

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/l/z;->bR(I)V

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/z;->pL()Z

    move-result v1

    if-nez v1, :cond_59

    return-void

    :cond_59
    iget-object v1, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/z;->pM()I

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/z;->pL()Z

    move-result v1

    if-nez v1, :cond_67

    return-void

    :cond_67
    iget-object v1, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/z;->pM()I

    move-result v11

    iget-boolean v1, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DB:Z

    if-nez v1, :cond_79

    iput-boolean v4, v0, Lcom/applovin/exoplayer2/e/i/m$a;->Dp:Z

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DR:Lcom/applovin/exoplayer2/e/i/m$a$a;

    invoke-virtual {v1, v11}, Lcom/applovin/exoplayer2/e/i/m$a$a;->cx(I)V

    return-void

    :cond_79
    iget-object v1, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/z;->pL()Z

    move-result v1

    if-nez v1, :cond_82

    return-void

    :cond_82
    iget-object v1, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/z;->pM()I

    move-result v13

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DJ:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_93

    iput-boolean v4, v0, Lcom/applovin/exoplayer2/e/i/m$a;->Dp:Z

    return-void

    :cond_93
    iget-object v1, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DJ:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/l/v$a;

    iget-object v3, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DI:Landroid/util/SparseArray;

    iget v5, v1, Lcom/applovin/exoplayer2/l/v$a;->act:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/applovin/exoplayer2/l/v$b;

    iget-boolean v3, v9, Lcom/applovin/exoplayer2/l/v$b;->acz:Z

    if-eqz v3, :cond_b8

    iget-object v3, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    invoke-virtual {v3, v7}, Lcom/applovin/exoplayer2/l/z;->fD(I)Z

    move-result v3

    if-nez v3, :cond_b3

    return-void

    :cond_b3
    iget-object v3, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    invoke-virtual {v3, v7}, Lcom/applovin/exoplayer2/l/z;->bR(I)V

    :cond_b8
    iget-object v3, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    iget v5, v9, Lcom/applovin/exoplayer2/l/v$b;->acB:I

    invoke-virtual {v3, v5}, Lcom/applovin/exoplayer2/l/z;->fD(I)Z

    move-result v3

    if-nez v3, :cond_c3

    return-void

    :cond_c3
    iget-object v3, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    iget v5, v9, Lcom/applovin/exoplayer2/l/v$b;->acB:I

    invoke-virtual {v3, v5}, Lcom/applovin/exoplayer2/l/z;->bQ(I)I

    move-result v12

    iget-boolean v3, v9, Lcom/applovin/exoplayer2/l/v$b;->acA:Z

    const/4 v5, 0x1

    if-nez v3, :cond_f7

    iget-object v3, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    invoke-virtual {v3, v5}, Lcom/applovin/exoplayer2/l/z;->fD(I)Z

    move-result v3

    if-nez v3, :cond_d9

    return-void

    :cond_d9
    iget-object v3, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/l/z;->ik()Z

    move-result v3

    if-eqz v3, :cond_f5

    iget-object v6, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    invoke-virtual {v6, v5}, Lcom/applovin/exoplayer2/l/z;->fD(I)Z

    move-result v6

    if-nez v6, :cond_ea

    return-void

    :cond_ea
    iget-object v6, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    invoke-virtual {v6}, Lcom/applovin/exoplayer2/l/z;->ik()Z

    move-result v6

    move v14, v3

    move/from16 v16, v6

    const/4 v15, 0x1

    goto :goto_fb

    :cond_f5
    move v14, v3

    goto :goto_f8

    :cond_f7
    const/4 v14, 0x0

    :goto_f8
    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_fb
    iget v3, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DN:I

    if-ne v3, v2, :cond_102

    const/16 v17, 0x1

    goto :goto_104

    :cond_102
    const/16 v17, 0x0

    :goto_104
    if-eqz v17, :cond_118

    iget-object v2, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/l/z;->pL()Z

    move-result v2

    if-nez v2, :cond_10f

    return-void

    :cond_10f
    iget-object v2, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/l/z;->pM()I

    move-result v2

    move/from16 v18, v2

    goto :goto_11a

    :cond_118
    const/16 v18, 0x0

    :goto_11a
    iget v2, v9, Lcom/applovin/exoplayer2/l/v$b;->acC:I

    if-nez v2, :cond_14e

    iget-object v2, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    iget v3, v9, Lcom/applovin/exoplayer2/l/v$b;->acD:I

    invoke-virtual {v2, v3}, Lcom/applovin/exoplayer2/l/z;->fD(I)Z

    move-result v2

    if-nez v2, :cond_129

    return-void

    :cond_129
    iget-object v2, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    iget v3, v9, Lcom/applovin/exoplayer2/l/v$b;->acD:I

    invoke-virtual {v2, v3}, Lcom/applovin/exoplayer2/l/z;->bQ(I)I

    move-result v2

    iget-boolean v1, v1, Lcom/applovin/exoplayer2/l/v$a;->acu:Z

    if-eqz v1, :cond_14b

    if-nez v14, :cond_14b

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/z;->pL()Z

    move-result v1

    if-nez v1, :cond_140

    return-void

    :cond_140
    iget-object v1, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/z;->pN()I

    move-result v1

    move/from16 v20, v1

    move/from16 v19, v2

    goto :goto_18c

    :cond_14b
    move/from16 v19, v2

    goto :goto_18a

    :cond_14e
    if-ne v2, v5, :cond_188

    iget-boolean v2, v9, Lcom/applovin/exoplayer2/l/v$b;->acE:Z

    if-nez v2, :cond_188

    iget-object v2, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/l/z;->pL()Z

    move-result v2

    if-nez v2, :cond_15d

    return-void

    :cond_15d
    iget-object v2, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/l/z;->pN()I

    move-result v2

    iget-boolean v1, v1, Lcom/applovin/exoplayer2/l/v$a;->acu:Z

    if-eqz v1, :cond_181

    if-nez v14, :cond_181

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/z;->pL()Z

    move-result v1

    if-nez v1, :cond_172

    return-void

    :cond_172
    iget-object v1, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DK:Lcom/applovin/exoplayer2/l/z;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/z;->pN()I

    move-result v1

    move/from16 v22, v1

    move/from16 v21, v2

    const/16 v19, 0x0

    const/16 v20, 0x0

    goto :goto_190

    :cond_181
    move/from16 v21, v2

    const/16 v19, 0x0

    const/16 v20, 0x0

    goto :goto_18e

    :cond_188
    const/16 v19, 0x0

    :goto_18a
    const/16 v20, 0x0

    :goto_18c
    const/16 v21, 0x0

    :goto_18e
    const/16 v22, 0x0

    :goto_190
    iget-object v8, v0, Lcom/applovin/exoplayer2/e/i/m$a;->DR:Lcom/applovin/exoplayer2/e/i/m$a$a;

    invoke-virtual/range {v8 .. v22}, Lcom/applovin/exoplayer2/e/i/m$a$a;->a(Lcom/applovin/exoplayer2/l/v$b;IIIIZZZZIIIII)V

    iput-boolean v4, v0, Lcom/applovin/exoplayer2/e/i/m$a;->Dp:Z

    return-void
.end method

.method public jo()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/m$a;->DB:Z

    return v0
.end method

###### Class com.applovin.exoplayer2.e.i.m.a.C0035a (com.applovin.exoplayer2.e.i.m$a$a)
.class final Lcom/applovin/exoplayer2/e/i/m$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/i/m$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private DS:Z

.field private DT:Z

.field private DU:Lcom/applovin/exoplayer2/l/v$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private DV:I

.field private DW:I

.field private DX:I

.field private DY:I

.field private DZ:Z

.field private Ea:Z

.field private Eb:Z

.field private Ec:Z

.field private Ed:I

.field private Ee:I

.field private Ef:I

.field private Eg:I

.field private Eh:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/e/i/m$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/i/m$a$a;-><init>()V

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/e/i/m$a$a;)Z
    .registers 8

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->DS:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-boolean v0, p1, Lcom/applovin/exoplayer2/e/i/m$a$a;->DS:Z

    const/4 v2, 0x1

    if-nez v0, :cond_c

    return v2

    :cond_c
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->DU:Lcom/applovin/exoplayer2/l/v$b;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/l/v$b;

    iget-object v3, p1, Lcom/applovin/exoplayer2/e/i/m$a$a;->DU:Lcom/applovin/exoplayer2/l/v$b;

    invoke-static {v3}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/exoplayer2/l/v$b;

    iget v4, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->DX:I

    iget v5, p1, Lcom/applovin/exoplayer2/e/i/m$a$a;->DX:I

    if-ne v4, v5, :cond_7a

    iget v4, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->DY:I

    iget v5, p1, Lcom/applovin/exoplayer2/e/i/m$a$a;->DY:I

    if-ne v4, v5, :cond_7a

    iget-boolean v4, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->DZ:Z

    iget-boolean v5, p1, Lcom/applovin/exoplayer2/e/i/m$a$a;->DZ:Z

    if-ne v4, v5, :cond_7a

    iget-boolean v4, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->Ea:Z

    if-eqz v4, :cond_3c

    iget-boolean v4, p1, Lcom/applovin/exoplayer2/e/i/m$a$a;->Ea:Z

    if-eqz v4, :cond_3c

    iget-boolean v4, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->Eb:Z

    iget-boolean v5, p1, Lcom/applovin/exoplayer2/e/i/m$a$a;->Eb:Z

    if-ne v4, v5, :cond_7a

    :cond_3c
    iget v4, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->DV:I

    iget v5, p1, Lcom/applovin/exoplayer2/e/i/m$a$a;->DV:I

    if-eq v4, v5, :cond_46

    if-eqz v4, :cond_7a

    if-eqz v5, :cond_7a

    :cond_46
    iget v0, v0, Lcom/applovin/exoplayer2/l/v$b;->acC:I

    if-nez v0, :cond_5a

    iget v4, v3, Lcom/applovin/exoplayer2/l/v$b;->acC:I

    if-nez v4, :cond_5a

    iget v4, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->Ee:I

    iget v5, p1, Lcom/applovin/exoplayer2/e/i/m$a$a;->Ee:I

    if-ne v4, v5, :cond_7a

    iget v4, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->Ef:I

    iget v5, p1, Lcom/applovin/exoplayer2/e/i/m$a$a;->Ef:I

    if-ne v4, v5, :cond_7a

    :cond_5a
    if-ne v0, v2, :cond_6c

    iget v0, v3, Lcom/applovin/exoplayer2/l/v$b;->acC:I

    if-ne v0, v2, :cond_6c

    iget v0, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->Eg:I

    iget v3, p1, Lcom/applovin/exoplayer2/e/i/m$a$a;->Eg:I

    if-ne v0, v3, :cond_7a

    iget v0, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->Eh:I

    iget v3, p1, Lcom/applovin/exoplayer2/e/i/m$a$a;->Eh:I

    if-ne v0, v3, :cond_7a

    :cond_6c
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->Ec:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/e/i/m$a$a;->Ec:Z

    if-ne v0, v3, :cond_7a

    if-eqz v0, :cond_7b

    iget v0, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->Ed:I

    iget p1, p1, Lcom/applovin/exoplayer2/e/i/m$a$a;->Ed:I

    if-eq v0, p1, :cond_7b

    :cond_7a
    const/4 v1, 0x1

    :cond_7b
    return v1
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/e/i/m$a$a;Lcom/applovin/exoplayer2/e/i/m$a$a;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/i/m$a$a;->a(Lcom/applovin/exoplayer2/e/i/m$a$a;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/l/v$b;IIIIZZZZIIIII)V
    .registers 15

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->DU:Lcom/applovin/exoplayer2/l/v$b;

    iput p2, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->DV:I

    iput p3, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->DW:I

    iput p4, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->DX:I

    iput p5, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->DY:I

    iput-boolean p6, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->DZ:Z

    iput-boolean p7, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->Ea:Z

    iput-boolean p8, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->Eb:Z

    iput-boolean p9, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->Ec:Z

    iput p10, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->Ed:I

    iput p11, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->Ee:I

    iput p12, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->Ef:I

    iput p13, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->Eg:I

    iput p14, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->Eh:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->DS:Z

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->DT:Z

    return-void
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->DT:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->DS:Z

    return-void
.end method

.method public cx(I)V
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->DW:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->DT:Z

    return-void
.end method

.method public jp()Z
    .registers 3

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->DT:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/applovin/exoplayer2/e/i/m$a$a;->DW:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_c

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
