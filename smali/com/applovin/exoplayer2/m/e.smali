###### Class com.applovin.exoplayer2.m.e (com.applovin.exoplayer2.m.e)
.class final Lcom/applovin/exoplayer2/m/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/m/e$a;
    }
.end annotation


# instance fields
.field private adA:J

.field private adB:I

.field private adw:Lcom/applovin/exoplayer2/m/e$a;

.field private adx:Lcom/applovin/exoplayer2/m/e$a;

.field private ady:Z

.field private adz:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/applovin/exoplayer2/m/e$a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/m/e$a;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/m/e;->adw:Lcom/applovin/exoplayer2/m/e$a;

    new-instance v0, Lcom/applovin/exoplayer2/m/e$a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/m/e$a;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/m/e;->adx:Lcom/applovin/exoplayer2/m/e$a;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/applovin/exoplayer2/m/e;->adA:J

    return-void
.end method


# virtual methods
.method public Y()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/e;->adw:Lcom/applovin/exoplayer2/m/e$a;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m/e$a;->Y()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/e;->adx:Lcom/applovin/exoplayer2/m/e$a;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m/e$a;->Y()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/m/e;->ady:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/applovin/exoplayer2/m/e;->adA:J

    iput v0, p0, Lcom/applovin/exoplayer2/m/e;->adB:I

    return-void
.end method

.method public bw(J)V
    .registers 10

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/e;->adw:Lcom/applovin/exoplayer2/m/e$a;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/m/e$a;->bw(J)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/e;->adw:Lcom/applovin/exoplayer2/m/e$a;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m/e$a;->qd()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/m/e;->adz:Z

    if-nez v0, :cond_16

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/m/e;->ady:Z

    goto :goto_40

    :cond_16
    iget-wide v3, p0, Lcom/applovin/exoplayer2/m/e;->adA:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_40

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/m/e;->ady:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/e;->adx:Lcom/applovin/exoplayer2/m/e$a;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m/e$a;->qi()Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_2d
    iget-object v0, p0, Lcom/applovin/exoplayer2/m/e;->adx:Lcom/applovin/exoplayer2/m/e$a;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m/e$a;->Y()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/e;->adx:Lcom/applovin/exoplayer2/m/e$a;

    iget-wide v3, p0, Lcom/applovin/exoplayer2/m/e;->adA:J

    invoke-virtual {v0, v3, v4}, Lcom/applovin/exoplayer2/m/e$a;->bw(J)V

    :cond_39
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/m/e;->ady:Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/e;->adx:Lcom/applovin/exoplayer2/m/e$a;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/m/e$a;->bw(J)V

    :cond_40
    :goto_40
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/m/e;->ady:Z

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/e;->adx:Lcom/applovin/exoplayer2/m/e$a;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m/e$a;->qd()Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/e;->adw:Lcom/applovin/exoplayer2/m/e$a;

    iget-object v3, p0, Lcom/applovin/exoplayer2/m/e;->adx:Lcom/applovin/exoplayer2/m/e$a;

    iput-object v3, p0, Lcom/applovin/exoplayer2/m/e;->adw:Lcom/applovin/exoplayer2/m/e$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/m/e;->adx:Lcom/applovin/exoplayer2/m/e$a;

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/m/e;->ady:Z

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/m/e;->adz:Z

    :cond_58
    iput-wide p1, p0, Lcom/applovin/exoplayer2/m/e;->adA:J

    iget-object p1, p0, Lcom/applovin/exoplayer2/m/e;->adw:Lcom/applovin/exoplayer2/m/e$a;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/m/e$a;->qd()Z

    move-result p1

    if-eqz p1, :cond_63

    goto :goto_67

    :cond_63
    iget p1, p0, Lcom/applovin/exoplayer2/m/e;->adB:I

    add-int/lit8 v2, p1, 0x1

    :goto_67
    iput v2, p0, Lcom/applovin/exoplayer2/m/e;->adB:I

    return-void
.end method

.method public qd()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/e;->adw:Lcom/applovin/exoplayer2/m/e$a;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m/e$a;->qd()Z

    move-result v0

    return v0
.end method

.method public qe()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/m/e;->adB:I

    return v0
.end method

.method public qf()J
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/m/e;->qd()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/e;->adw:Lcom/applovin/exoplayer2/m/e$a;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m/e$a;->qf()J

    move-result-wide v0

    goto :goto_12

    :cond_d
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_12
    return-wide v0
.end method

.method public qg()J
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/m/e;->qd()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/e;->adw:Lcom/applovin/exoplayer2/m/e$a;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m/e$a;->qg()J

    move-result-wide v0

    goto :goto_12

    :cond_d
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_12
    return-wide v0
.end method

.method public qh()F
    .registers 5

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/m/e;->qd()Z

    move-result v0

    if-eqz v0, :cond_15

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    iget-object v2, p0, Lcom/applovin/exoplayer2/m/e;->adw:Lcom/applovin/exoplayer2/m/e$a;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/m/e$a;->qg()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_17

    :cond_15
    const/high16 v0, -0x40800000    # -1.0f

    :goto_17
    return v0
.end method
