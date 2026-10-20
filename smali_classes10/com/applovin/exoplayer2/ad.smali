###### Class com.applovin.exoplayer2.ad (com.applovin.exoplayer2.ad)
.class final Lcom/applovin/exoplayer2/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bC:Lcom/applovin/exoplayer2/j/j;

.field public final ch:Ljava/lang/Object;

.field private final ck:[Lcom/applovin/exoplayer2/as;

.field private final cs:Lcom/applovin/exoplayer2/ah;

.field private fA:Lcom/applovin/exoplayer2/ad;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fB:Lcom/applovin/exoplayer2/h/ad;

.field private fC:Lcom/applovin/exoplayer2/j/k;

.field private fD:J

.field public final ft:Lcom/applovin/exoplayer2/h/n;

.field public final fu:[Lcom/applovin/exoplayer2/h/x;

.field public fv:Z

.field public fw:Z

.field public fx:Lcom/applovin/exoplayer2/ae;

.field public fy:Z

.field private final fz:[Z


# direct methods
.method public constructor <init>([Lcom/applovin/exoplayer2/as;JLcom/applovin/exoplayer2/j/j;Lcom/applovin/exoplayer2/k/b;Lcom/applovin/exoplayer2/ah;Lcom/applovin/exoplayer2/ae;Lcom/applovin/exoplayer2/j/k;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/ad;->ck:[Lcom/applovin/exoplayer2/as;

    iput-wide p2, p0, Lcom/applovin/exoplayer2/ad;->fD:J

    iput-object p4, p0, Lcom/applovin/exoplayer2/ad;->bC:Lcom/applovin/exoplayer2/j/j;

    iput-object p6, p0, Lcom/applovin/exoplayer2/ad;->cs:Lcom/applovin/exoplayer2/ah;

    iget-object v0, p7, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    iget-object p2, v0, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    iput-object p2, p0, Lcom/applovin/exoplayer2/ad;->ch:Ljava/lang/Object;

    iput-object p7, p0, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    sget-object p2, Lcom/applovin/exoplayer2/h/ad;->NG:Lcom/applovin/exoplayer2/h/ad;

    iput-object p2, p0, Lcom/applovin/exoplayer2/ad;->fB:Lcom/applovin/exoplayer2/h/ad;

    iput-object p8, p0, Lcom/applovin/exoplayer2/ad;->fC:Lcom/applovin/exoplayer2/j/k;

    array-length p2, p1

    new-array p2, p2, [Lcom/applovin/exoplayer2/h/x;

    iput-object p2, p0, Lcom/applovin/exoplayer2/ad;->fu:[Lcom/applovin/exoplayer2/h/x;

    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/applovin/exoplayer2/ad;->fz:[Z

    iget-wide v3, p7, Lcom/applovin/exoplayer2/ae;->fF:J

    iget-wide v5, p7, Lcom/applovin/exoplayer2/ae;->fG:J

    move-object v1, p6

    move-object v2, p5

    invoke-static/range {v0 .. v6}, Lcom/applovin/exoplayer2/ad;->a(Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ah;Lcom/applovin/exoplayer2/k/b;JJ)Lcom/applovin/exoplayer2/h/n;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/ad;->ft:Lcom/applovin/exoplayer2/h/n;

    return-void
.end method

.method private static a(Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ah;Lcom/applovin/exoplayer2/k/b;JJ)Lcom/applovin/exoplayer2/h/n;
    .registers 14

    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/applovin/exoplayer2/ah;->a(Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/k/b;J)Lcom/applovin/exoplayer2/h/n;

    move-result-object v1

    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, p5, p0

    if-eqz p2, :cond_18

    new-instance p0, Lcom/applovin/exoplayer2/h/d;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/applovin/exoplayer2/h/d;-><init>(Lcom/applovin/exoplayer2/h/n;ZJJ)V

    move-object v1, p0

    :cond_18
    return-object v1
.end method

.method private static a(Lcom/applovin/exoplayer2/ah;Lcom/applovin/exoplayer2/h/n;)V
    .registers 3

    :try_start_0
    instance-of v0, p1, Lcom/applovin/exoplayer2/h/d;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/applovin/exoplayer2/h/d;

    iget-object p1, p1, Lcom/applovin/exoplayer2/h/d;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/ah;->f(Lcom/applovin/exoplayer2/h/n;)V

    goto :goto_18

    :cond_c
    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/ah;->f(Lcom/applovin/exoplayer2/h/n;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    move-exception p0

    const-string p1, "MediaPeriodHolder"

    const-string v0, "Period release failed."

    invoke-static {p1, v0, p0}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_18
    return-void
.end method

.method private a([Lcom/applovin/exoplayer2/h/x;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/applovin/exoplayer2/ad;->ck:[Lcom/applovin/exoplayer2/as;

    array-length v2, v1

    if-ge v0, v2, :cond_15

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/applovin/exoplayer2/as;->M()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_12

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method

.method private b([Lcom/applovin/exoplayer2/h/x;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/applovin/exoplayer2/ad;->ck:[Lcom/applovin/exoplayer2/as;

    array-length v2, v1

    if-ge v0, v2, :cond_21

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/applovin/exoplayer2/as;->M()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1e

    iget-object v1, p0, Lcom/applovin/exoplayer2/ad;->fC:Lcom/applovin/exoplayer2/j/k;

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/j/k;->eW(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    new-instance v1, Lcom/applovin/exoplayer2/h/g;

    invoke-direct {v1}, Lcom/applovin/exoplayer2/h/g;-><init>()V

    aput-object v1, p1, v0

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    return-void
.end method

.method private cm()V
    .registers 4

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ad;->co()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/applovin/exoplayer2/ad;->fC:Lcom/applovin/exoplayer2/j/k;

    iget v2, v1, Lcom/applovin/exoplayer2/j/k;->fR:I

    if-ge v0, v2, :cond_22

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/j/k;->eW(I)Z

    move-result v1

    iget-object v2, p0, Lcom/applovin/exoplayer2/ad;->fC:Lcom/applovin/exoplayer2/j/k;

    iget-object v2, v2, Lcom/applovin/exoplayer2/j/k;->VE:[Lcom/applovin/exoplayer2/j/d;

    aget-object v2, v2, v0

    if-eqz v1, :cond_1f

    if-eqz v2, :cond_1f

    invoke-interface {v2}, Lcom/applovin/exoplayer2/j/d;->enable()V

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_22
    return-void
.end method

.method private cn()V
    .registers 4

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ad;->co()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/applovin/exoplayer2/ad;->fC:Lcom/applovin/exoplayer2/j/k;

    iget v2, v1, Lcom/applovin/exoplayer2/j/k;->fR:I

    if-ge v0, v2, :cond_22

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/j/k;->eW(I)Z

    move-result v1

    iget-object v2, p0, Lcom/applovin/exoplayer2/ad;->fC:Lcom/applovin/exoplayer2/j/k;

    iget-object v2, v2, Lcom/applovin/exoplayer2/j/k;->VE:[Lcom/applovin/exoplayer2/j/d;

    aget-object v2, v2, v0

    if-eqz v1, :cond_1f

    if-eqz v2, :cond_1f

    invoke-interface {v2}, Lcom/applovin/exoplayer2/j/d;->X()V

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_22
    return-void
.end method

.method private co()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/ad;->fA:Lcom/applovin/exoplayer2/ad;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/j/k;JZ)J
    .registers 12

    iget-object v0, p0, Lcom/applovin/exoplayer2/ad;->ck:[Lcom/applovin/exoplayer2/as;

    array-length v0, v0

    new-array v6, v0, [Z

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/exoplayer2/ad;->a(Lcom/applovin/exoplayer2/j/k;JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(Lcom/applovin/exoplayer2/j/k;JZ[Z)J
    .registers 19

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    iget v4, v1, Lcom/applovin/exoplayer2/j/k;->fR:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1c

    iget-object v4, v0, Lcom/applovin/exoplayer2/ad;->fz:[Z

    if-nez p4, :cond_16

    iget-object v6, v0, Lcom/applovin/exoplayer2/ad;->fC:Lcom/applovin/exoplayer2/j/k;

    invoke-virtual {p1, v6, v3}, Lcom/applovin/exoplayer2/j/k;->a(Lcom/applovin/exoplayer2/j/k;I)Z

    move-result v6

    if-eqz v6, :cond_16

    goto :goto_17

    :cond_16
    const/4 v5, 0x0

    :goto_17
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_1c
    iget-object v3, v0, Lcom/applovin/exoplayer2/ad;->fu:[Lcom/applovin/exoplayer2/h/x;

    invoke-direct {p0, v3}, Lcom/applovin/exoplayer2/ad;->a([Lcom/applovin/exoplayer2/h/x;)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ad;->cn()V

    iput-object v1, v0, Lcom/applovin/exoplayer2/ad;->fC:Lcom/applovin/exoplayer2/j/k;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ad;->cm()V

    iget-object v6, v0, Lcom/applovin/exoplayer2/ad;->ft:Lcom/applovin/exoplayer2/h/n;

    iget-object v7, v1, Lcom/applovin/exoplayer2/j/k;->VE:[Lcom/applovin/exoplayer2/j/d;

    iget-object v8, v0, Lcom/applovin/exoplayer2/ad;->fz:[Z

    iget-object v9, v0, Lcom/applovin/exoplayer2/ad;->fu:[Lcom/applovin/exoplayer2/h/x;

    move-object/from16 v10, p5

    move-wide v11, p2

    invoke-interface/range {v6 .. v12}, Lcom/applovin/exoplayer2/h/n;->a([Lcom/applovin/exoplayer2/j/d;[Z[Lcom/applovin/exoplayer2/h/x;[ZJ)J

    move-result-wide v3

    iget-object v6, v0, Lcom/applovin/exoplayer2/ad;->fu:[Lcom/applovin/exoplayer2/h/x;

    invoke-direct {p0, v6}, Lcom/applovin/exoplayer2/ad;->b([Lcom/applovin/exoplayer2/h/x;)V

    iput-boolean v2, v0, Lcom/applovin/exoplayer2/ad;->fw:Z

    const/4 v6, 0x0

    :goto_40
    iget-object v7, v0, Lcom/applovin/exoplayer2/ad;->fu:[Lcom/applovin/exoplayer2/h/x;

    array-length v8, v7

    if-ge v6, v8, :cond_6d

    aget-object v7, v7, v6

    if-eqz v7, :cond_5e

    invoke-virtual {p1, v6}, Lcom/applovin/exoplayer2/j/k;->eW(I)Z

    move-result v7

    invoke-static {v7}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-object v7, v0, Lcom/applovin/exoplayer2/ad;->ck:[Lcom/applovin/exoplayer2/as;

    aget-object v7, v7, v6

    invoke-interface {v7}, Lcom/applovin/exoplayer2/as;->M()I

    move-result v7

    const/4 v8, -0x2

    if-eq v7, v8, :cond_6a

    iput-boolean v5, v0, Lcom/applovin/exoplayer2/ad;->fw:Z

    goto :goto_6a

    :cond_5e
    iget-object v7, v1, Lcom/applovin/exoplayer2/j/k;->VE:[Lcom/applovin/exoplayer2/j/d;

    aget-object v7, v7, v6

    if-nez v7, :cond_66

    const/4 v7, 0x1

    goto :goto_67

    :cond_66
    const/4 v7, 0x0

    :goto_67
    invoke-static {v7}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    :cond_6a
    :goto_6a
    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    :cond_6d
    return-wide v3
.end method

.method public a(FLcom/applovin/exoplayer2/ba;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/ad;->fv:Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/ad;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/n;->cj()Lcom/applovin/exoplayer2/h/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/ad;->fB:Lcom/applovin/exoplayer2/h/ad;

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/ad;->b(FLcom/applovin/exoplayer2/ba;)Lcom/applovin/exoplayer2/j/k;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-wide v0, p2, Lcom/applovin/exoplayer2/ae;->fF:J

    iget-wide v2, p2, Lcom/applovin/exoplayer2/ae;->fH:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v2, v4

    if-eqz p2, :cond_2b

    cmp-long p2, v0, v2

    if-ltz p2, :cond_2b

    const-wide/16 v0, 0x0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_2b
    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/applovin/exoplayer2/ad;->a(Lcom/applovin/exoplayer2/j/k;JZ)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/applovin/exoplayer2/ad;->fD:J

    iget-object v2, p0, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-wide v3, v2, Lcom/applovin/exoplayer2/ae;->fF:J

    sub-long/2addr v3, p1

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/applovin/exoplayer2/ad;->fD:J

    invoke-virtual {v2, p1, p2}, Lcom/applovin/exoplayer2/ae;->v(J)Lcom/applovin/exoplayer2/ae;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/ad;)V
    .registers 3
    .param p1    # Lcom/applovin/exoplayer2/ad;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/exoplayer2/ad;->fA:Lcom/applovin/exoplayer2/ad;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/applovin/exoplayer2/ad;->cn()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/ad;->fA:Lcom/applovin/exoplayer2/ad;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ad;->cm()V

    return-void
.end method

.method public b(FLcom/applovin/exoplayer2/ba;)Lcom/applovin/exoplayer2/j/k;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/ad;->bC:Lcom/applovin/exoplayer2/j/j;

    iget-object v1, p0, Lcom/applovin/exoplayer2/ad;->ck:[Lcom/applovin/exoplayer2/as;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ad;->cj()Lcom/applovin/exoplayer2/h/ad;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-object v3, v3, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/applovin/exoplayer2/j/j;->a([Lcom/applovin/exoplayer2/as;Lcom/applovin/exoplayer2/h/ad;Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ba;)Lcom/applovin/exoplayer2/j/k;

    move-result-object p2

    iget-object v0, p2, Lcom/applovin/exoplayer2/j/k;->VE:[Lcom/applovin/exoplayer2/j/d;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_20

    aget-object v3, v0, v2

    if-eqz v3, :cond_1d

    invoke-interface {v3, p1}, Lcom/applovin/exoplayer2/j/d;->v(F)V

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_20
    return-object p2
.end method

.method public cd()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/ad;->fD:J

    return-wide v0
.end method

.method public ce()J
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-wide v0, v0, Lcom/applovin/exoplayer2/ae;->fF:J

    iget-wide v2, p0, Lcom/applovin/exoplayer2/ad;->fD:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public cf()Z
    .registers 6

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ad;->fv:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ad;->fw:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/applovin/exoplayer2/ad;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/n;->cg()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public cg()J
    .registers 6

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ad;->fv:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-wide v0, v0, Lcom/applovin/exoplayer2/ae;->fF:J

    return-wide v0

    :cond_9
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ad;->fw:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/applovin/exoplayer2/ad;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/n;->cg()J

    move-result-wide v3

    goto :goto_17

    :cond_16
    move-wide v3, v1

    :goto_17
    cmp-long v0, v3, v1

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-wide v3, v0, Lcom/applovin/exoplayer2/ae;->fH:J

    :cond_1f
    return-wide v3
.end method

.method public ch()J
    .registers 3

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ad;->fv:Z

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lcom/applovin/exoplayer2/ad;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/n;->ch()J

    move-result-wide v0

    :goto_d
    return-wide v0
.end method

.method public ci()Lcom/applovin/exoplayer2/ad;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/ad;->fA:Lcom/applovin/exoplayer2/ad;

    return-object v0
.end method

.method public cj()Lcom/applovin/exoplayer2/h/ad;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/ad;->fB:Lcom/applovin/exoplayer2/h/ad;

    return-object v0
.end method

.method public ck()Lcom/applovin/exoplayer2/j/k;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/ad;->fC:Lcom/applovin/exoplayer2/j/k;

    return-object v0
.end method

.method public cl()V
    .registers 7

    iget-object v0, p0, Lcom/applovin/exoplayer2/ad;->ft:Lcom/applovin/exoplayer2/h/n;

    instance-of v1, v0, Lcom/applovin/exoplayer2/h/d;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-wide v1, v1, Lcom/applovin/exoplayer2/ae;->fG:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_15

    const-wide/high16 v1, -0x8000000000000000L

    :cond_15
    check-cast v0, Lcom/applovin/exoplayer2/h/d;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/applovin/exoplayer2/h/d;->v(JJ)V

    :cond_1c
    return-void
.end method

.method public q(J)J
    .registers 5

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ad;->cd()J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public r(J)J
    .registers 5

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/ad;->cd()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public release()V
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ad;->cn()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/ad;->cs:Lcom/applovin/exoplayer2/ah;

    iget-object v1, p0, Lcom/applovin/exoplayer2/ad;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/ad;->a(Lcom/applovin/exoplayer2/ah;Lcom/applovin/exoplayer2/h/n;)V

    return-void
.end method

.method public s(J)V
    .registers 3

    iput-wide p1, p0, Lcom/applovin/exoplayer2/ad;->fD:J

    return-void
.end method

.method public t(J)V
    .registers 4

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ad;->co()Z

    move-result v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ad;->fv:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/applovin/exoplayer2/ad;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/ad;->r(J)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Lcom/applovin/exoplayer2/h/n;->t(J)V

    :cond_14
    return-void
.end method

.method public u(J)V
    .registers 4

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ad;->co()Z

    move-result v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/ad;->r(J)J

    move-result-wide p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/ad;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v0, p1, p2}, Lcom/applovin/exoplayer2/h/n;->aR(J)Z

    return-void
.end method
