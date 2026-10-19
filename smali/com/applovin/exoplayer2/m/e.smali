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

###### Class com.applovin.exoplayer2.m.e.a (com.applovin.exoplayer2.m.e$a)
.class final Lcom/applovin/exoplayer2/m/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/m/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private adA:J

.field private adC:J

.field private adD:J

.field private adE:J

.field private adF:J

.field private adG:J

.field private final adH:[Z

.field private adI:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/applovin/exoplayer2/m/e$a;->adH:[Z

    return-void
.end method

.method private static bx(J)I
    .registers 4

    const-wide/16 v0, 0xf

    rem-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method


# virtual methods
.method public Y()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/m/e$a;->adE:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/m/e$a;->adF:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/m/e$a;->adG:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/m/e$a;->adI:I

    iget-object v1, p0, Lcom/applovin/exoplayer2/m/e$a;->adH:[Z

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method

.method public bw(J)V
    .registers 14

    iget-wide v0, p0, Lcom/applovin/exoplayer2/m/e$a;->adE:J

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_d

    iput-wide p1, p0, Lcom/applovin/exoplayer2/m/e$a;->adC:J

    goto :goto_5a

    :cond_d
    cmp-long v4, v0, v2

    if-nez v4, :cond_1c

    iget-wide v0, p0, Lcom/applovin/exoplayer2/m/e$a;->adC:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/m/e$a;->adD:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/m/e$a;->adG:J

    iput-wide v2, p0, Lcom/applovin/exoplayer2/m/e$a;->adF:J

    goto :goto_5a

    :cond_1c
    iget-wide v4, p0, Lcom/applovin/exoplayer2/m/e$a;->adA:J

    sub-long v4, p1, v4

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/m/e$a;->bx(J)I

    move-result v0

    iget-wide v6, p0, Lcom/applovin/exoplayer2/m/e$a;->adD:J

    sub-long v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    const/4 v1, 0x1

    cmp-long v10, v6, v8

    if-gtz v10, :cond_4d

    iget-wide v6, p0, Lcom/applovin/exoplayer2/m/e$a;->adF:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/applovin/exoplayer2/m/e$a;->adF:J

    iget-wide v6, p0, Lcom/applovin/exoplayer2/m/e$a;->adG:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/applovin/exoplayer2/m/e$a;->adG:J

    iget-object v4, p0, Lcom/applovin/exoplayer2/m/e$a;->adH:[Z

    aget-boolean v5, v4, v0

    if-eqz v5, :cond_5a

    const/4 v5, 0x0

    aput-boolean v5, v4, v0

    iget v0, p0, Lcom/applovin/exoplayer2/m/e$a;->adI:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/applovin/exoplayer2/m/e$a;->adI:I

    goto :goto_5a

    :cond_4d
    iget-object v4, p0, Lcom/applovin/exoplayer2/m/e$a;->adH:[Z

    aget-boolean v5, v4, v0

    if-nez v5, :cond_5a

    aput-boolean v1, v4, v0

    iget v0, p0, Lcom/applovin/exoplayer2/m/e$a;->adI:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/applovin/exoplayer2/m/e$a;->adI:I

    :cond_5a
    :goto_5a
    iget-wide v0, p0, Lcom/applovin/exoplayer2/m/e$a;->adE:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/applovin/exoplayer2/m/e$a;->adE:J

    iput-wide p1, p0, Lcom/applovin/exoplayer2/m/e$a;->adA:J

    return-void
.end method

.method public qd()Z
    .registers 6

    iget-wide v0, p0, Lcom/applovin/exoplayer2/m/e$a;->adE:J

    const-wide/16 v2, 0xf

    cmp-long v4, v0, v2

    if-lez v4, :cond_e

    iget v0, p0, Lcom/applovin/exoplayer2/m/e$a;->adI:I

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public qf()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/m/e$a;->adG:J

    return-wide v0
.end method

.method public qg()J
    .registers 6

    iget-wide v0, p0, Lcom/applovin/exoplayer2/m/e$a;->adF:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    goto :goto_c

    :cond_9
    iget-wide v2, p0, Lcom/applovin/exoplayer2/m/e$a;->adG:J

    div-long/2addr v2, v0

    :goto_c
    return-wide v2
.end method

.method public qi()Z
    .registers 6

    iget-wide v0, p0, Lcom/applovin/exoplayer2/m/e$a;->adE:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    iget-object v2, p0, Lcom/applovin/exoplayer2/m/e$a;->adH:[Z

    const-wide/16 v3, 0x1

    sub-long/2addr v0, v3

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/m/e$a;->bx(J)I

    move-result v0

    aget-boolean v0, v2, v0

    return v0
.end method
