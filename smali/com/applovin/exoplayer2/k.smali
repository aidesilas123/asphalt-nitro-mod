###### Class com.applovin.exoplayer2.k (com.applovin.exoplayer2.k)
.class public final Lcom/applovin/exoplayer2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/z;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/k$a;
    }
.end annotation


# instance fields
.field private aA:J

.field private aB:J

.field private aC:J

.field private aD:J

.field private aE:F

.field private aF:F

.field private aG:F

.field private aH:J

.field private aI:J

.field private aJ:J

.field private final ar:F

.field private final as:F

.field private final at:J

.field private final au:F

.field private final av:J

.field private final aw:J

.field private final ax:F

.field private ay:J

.field private az:J


# direct methods
.method private constructor <init>(FFJFJJF)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/k;->ar:F

    iput p2, p0, Lcom/applovin/exoplayer2/k;->as:F

    iput-wide p3, p0, Lcom/applovin/exoplayer2/k;->at:J

    iput p5, p0, Lcom/applovin/exoplayer2/k;->au:F

    iput-wide p6, p0, Lcom/applovin/exoplayer2/k;->av:J

    iput-wide p8, p0, Lcom/applovin/exoplayer2/k;->aw:J

    iput p10, p0, Lcom/applovin/exoplayer2/k;->ax:F

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p3, p0, Lcom/applovin/exoplayer2/k;->ay:J

    iput-wide p3, p0, Lcom/applovin/exoplayer2/k;->az:J

    iput-wide p3, p0, Lcom/applovin/exoplayer2/k;->aB:J

    iput-wide p3, p0, Lcom/applovin/exoplayer2/k;->aC:J

    iput p1, p0, Lcom/applovin/exoplayer2/k;->aF:F

    iput p2, p0, Lcom/applovin/exoplayer2/k;->aE:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/applovin/exoplayer2/k;->aG:F

    iput-wide p3, p0, Lcom/applovin/exoplayer2/k;->aH:J

    iput-wide p3, p0, Lcom/applovin/exoplayer2/k;->aA:J

    iput-wide p3, p0, Lcom/applovin/exoplayer2/k;->aD:J

    iput-wide p3, p0, Lcom/applovin/exoplayer2/k;->aI:J

    iput-wide p3, p0, Lcom/applovin/exoplayer2/k;->aJ:J

    return-void
.end method

.method synthetic constructor <init>(FFJFJJFLcom/applovin/exoplayer2/k$1;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Lcom/applovin/exoplayer2/k;-><init>(FFJFJJF)V

    return-void
.end method

.method private static a(JJF)J
    .registers 5

    long-to-float p0, p0

    mul-float p0, p0, p4

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p4

    long-to-float p2, p2

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    float-to-long p0, p0

    return-wide p0
.end method

.method private an()V
    .registers 8

    iget-wide v0, p0, Lcom/applovin/exoplayer2/k;->ay:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_29

    iget-wide v4, p0, Lcom/applovin/exoplayer2/k;->az:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_12

    move-wide v0, v4

    :cond_12
    iget-wide v4, p0, Lcom/applovin/exoplayer2/k;->aB:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1d

    cmp-long v6, v0, v4

    if-gez v6, :cond_1d

    move-wide v0, v4

    :cond_1d
    iget-wide v4, p0, Lcom/applovin/exoplayer2/k;->aC:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_2a

    cmp-long v6, v0, v4

    if-lez v6, :cond_2a

    move-wide v0, v4

    goto :goto_2a

    :cond_29
    move-wide v0, v2

    :cond_2a
    :goto_2a
    iget-wide v4, p0, Lcom/applovin/exoplayer2/k;->aA:J

    cmp-long v6, v4, v0

    if-nez v6, :cond_31

    return-void

    :cond_31
    iput-wide v0, p0, Lcom/applovin/exoplayer2/k;->aA:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/k;->aD:J

    iput-wide v2, p0, Lcom/applovin/exoplayer2/k;->aI:J

    iput-wide v2, p0, Lcom/applovin/exoplayer2/k;->aJ:J

    iput-wide v2, p0, Lcom/applovin/exoplayer2/k;->aH:J

    return-void
.end method

.method private b(JJ)V
    .registers 8

    sub-long/2addr p1, p3

    iget-wide p3, p0, Lcom/applovin/exoplayer2/k;->aI:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p3, v0

    if-nez v2, :cond_13

    iput-wide p1, p0, Lcom/applovin/exoplayer2/k;->aI:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/applovin/exoplayer2/k;->aJ:J

    goto :goto_2e

    :cond_13
    iget v0, p0, Lcom/applovin/exoplayer2/k;->ax:F

    invoke-static {p3, p4, p1, p2, v0}, Lcom/applovin/exoplayer2/k;->a(JJF)J

    move-result-wide p3

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/applovin/exoplayer2/k;->aI:J

    sub-long/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    iget-wide p3, p0, Lcom/applovin/exoplayer2/k;->aJ:J

    iget v0, p0, Lcom/applovin/exoplayer2/k;->ax:F

    invoke-static {p3, p4, p1, p2, v0}, Lcom/applovin/exoplayer2/k;->a(JJF)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/applovin/exoplayer2/k;->aJ:J

    :goto_2e
    return-void
.end method

.method private i(J)V
    .registers 13

    iget-wide v0, p0, Lcom/applovin/exoplayer2/k;->aI:J

    iget-wide v2, p0, Lcom/applovin/exoplayer2/k;->aJ:J

    const-wide/16 v4, 0x3

    mul-long v2, v2, v4

    add-long v8, v0, v2

    iget-wide v0, p0, Lcom/applovin/exoplayer2/k;->aD:J

    const/high16 v2, 0x3f800000    # 1.0f

    cmp-long v3, v0, v8

    if-lez v3, :cond_3e

    iget-wide p1, p0, Lcom/applovin/exoplayer2/k;->at:J

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/h;->g(J)J

    move-result-wide p1

    iget v0, p0, Lcom/applovin/exoplayer2/k;->aG:F

    sub-float/2addr v0, v2

    long-to-float p1, p1

    mul-float v0, v0, p1

    float-to-long v0, v0

    iget p2, p0, Lcom/applovin/exoplayer2/k;->aE:F

    sub-float/2addr p2, v2

    mul-float p2, p2, p1

    float-to-long p1, p2

    add-long/2addr v0, p1

    const/4 p1, 0x3

    new-array p1, p1, [J

    const/4 p2, 0x0

    aput-wide v8, p1, p2

    const/4 p2, 0x1

    iget-wide v2, p0, Lcom/applovin/exoplayer2/k;->aA:J

    aput-wide v2, p1, p2

    const/4 p2, 0x2

    iget-wide v2, p0, Lcom/applovin/exoplayer2/k;->aD:J

    sub-long/2addr v2, v0

    aput-wide v2, p1, p2

    invoke-static {p1}, Lcom/applovin/exoplayer2/common/b/d;->a([J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/applovin/exoplayer2/k;->aD:J

    goto :goto_65

    :cond_3e
    const/4 v0, 0x0

    iget v1, p0, Lcom/applovin/exoplayer2/k;->aG:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/applovin/exoplayer2/k;->au:F

    div-float/2addr v0, v1

    float-to-long v0, v0

    sub-long v4, p1, v0

    iget-wide v6, p0, Lcom/applovin/exoplayer2/k;->aD:J

    invoke-static/range {v4 .. v9}, Lcom/applovin/exoplayer2/l/ai;->b(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/applovin/exoplayer2/k;->aD:J

    iget-wide v0, p0, Lcom/applovin/exoplayer2/k;->aC:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_65

    cmp-long v2, p1, v0

    if-lez v2, :cond_65

    iput-wide v0, p0, Lcom/applovin/exoplayer2/k;->aD:J

    :cond_65
    :goto_65
    return-void
.end method


# virtual methods
.method public a(JJ)F
    .registers 11

    iget-wide v0, p0, Lcom/applovin/exoplayer2/k;->ay:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/high16 v4, 0x3f800000    # 1.0f

    cmp-long v5, v0, v2

    if-nez v5, :cond_e

    return v4

    :cond_e
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/k;->b(JJ)V

    iget-wide p3, p0, Lcom/applovin/exoplayer2/k;->aH:J

    cmp-long v0, p3, v2

    if-eqz v0, :cond_27

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/k;->aH:J

    sub-long/2addr p3, v0

    iget-wide v0, p0, Lcom/applovin/exoplayer2/k;->at:J

    cmp-long v2, p3, v0

    if-gez v2, :cond_27

    iget p1, p0, Lcom/applovin/exoplayer2/k;->aG:F

    return p1

    :cond_27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/applovin/exoplayer2/k;->aH:J

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/k;->i(J)V

    iget-wide p3, p0, Lcom/applovin/exoplayer2/k;->aD:J

    sub-long/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/k;->av:J

    cmp-long v2, p3, v0

    if-gez v2, :cond_40

    iput v4, p0, Lcom/applovin/exoplayer2/k;->aG:F

    goto :goto_50

    :cond_40
    iget p3, p0, Lcom/applovin/exoplayer2/k;->au:F

    long-to-float p1, p1

    mul-float p3, p3, p1

    add-float/2addr p3, v4

    iget p1, p0, Lcom/applovin/exoplayer2/k;->aF:F

    iget p2, p0, Lcom/applovin/exoplayer2/k;->aE:F

    invoke-static {p3, p1, p2}, Lcom/applovin/exoplayer2/l/ai;->a(FFF)F

    move-result p1

    iput p1, p0, Lcom/applovin/exoplayer2/k;->aG:F

    :goto_50
    iget p1, p0, Lcom/applovin/exoplayer2/k;->aG:F

    return p1
.end method

.method public a(Lcom/applovin/exoplayer2/ab$e;)V
    .registers 5

    iget-wide v0, p1, Lcom/applovin/exoplayer2/ab$e;->eI:J

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/h;->g(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/k;->ay:J

    iget-wide v0, p1, Lcom/applovin/exoplayer2/ab$e;->eJ:J

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/h;->g(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/k;->aB:J

    iget-wide v0, p1, Lcom/applovin/exoplayer2/ab$e;->eK:J

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/h;->g(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/k;->aC:J

    iget v0, p1, Lcom/applovin/exoplayer2/ab$e;->aF:F

    const v1, -0x800001

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_22

    goto :goto_24

    :cond_22
    iget v0, p0, Lcom/applovin/exoplayer2/k;->ar:F

    :goto_24
    iput v0, p0, Lcom/applovin/exoplayer2/k;->aF:F

    iget p1, p1, Lcom/applovin/exoplayer2/ab$e;->aE:F

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_2d

    goto :goto_2f

    :cond_2d
    iget p1, p0, Lcom/applovin/exoplayer2/k;->as:F

    :goto_2f
    iput p1, p0, Lcom/applovin/exoplayer2/k;->aE:F

    invoke-direct {p0}, Lcom/applovin/exoplayer2/k;->an()V

    return-void
.end method

.method public al()V
    .registers 8

    iget-wide v0, p0, Lcom/applovin/exoplayer2/k;->aD:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    return-void

    :cond_c
    iget-wide v4, p0, Lcom/applovin/exoplayer2/k;->aw:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/applovin/exoplayer2/k;->aD:J

    iget-wide v4, p0, Lcom/applovin/exoplayer2/k;->aC:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1d

    cmp-long v6, v0, v4

    if-lez v6, :cond_1d

    iput-wide v4, p0, Lcom/applovin/exoplayer2/k;->aD:J

    :cond_1d
    iput-wide v2, p0, Lcom/applovin/exoplayer2/k;->aH:J

    return-void
.end method

.method public am()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/k;->aD:J

    return-wide v0
.end method

.method public h(J)V
    .registers 3

    iput-wide p1, p0, Lcom/applovin/exoplayer2/k;->az:J

    invoke-direct {p0}, Lcom/applovin/exoplayer2/k;->an()V

    return-void
.end method

###### Class com.applovin.exoplayer2.k.AnonymousClass1 (com.applovin.exoplayer2.k$1)
.class synthetic Lcom/applovin/exoplayer2/k$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.applovin.exoplayer2.k.a (com.applovin.exoplayer2.k$a)
.class public final Lcom/applovin/exoplayer2/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private aK:F

.field private aL:J

.field private ar:F

.field private as:F

.field private at:J

.field private av:J

.field private ax:F


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f7851ec    # 0.97f

    iput v0, p0, Lcom/applovin/exoplayer2/k$a;->ar:F

    const v0, 0x3f83d70a    # 1.03f

    iput v0, p0, Lcom/applovin/exoplayer2/k$a;->as:F

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/applovin/exoplayer2/k$a;->at:J

    const v0, 0x33d6bf95    # 1.0E-7f

    iput v0, p0, Lcom/applovin/exoplayer2/k$a;->aK:F

    const-wide/16 v0, 0x14

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/h;->g(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/k$a;->av:J

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/h;->g(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/k$a;->aL:J

    const v0, 0x3f7fbe77    # 0.999f

    iput v0, p0, Lcom/applovin/exoplayer2/k$a;->ax:F

    return-void
.end method


# virtual methods
.method public ao()Lcom/applovin/exoplayer2/k;
    .registers 14

    new-instance v12, Lcom/applovin/exoplayer2/k;

    iget v1, p0, Lcom/applovin/exoplayer2/k$a;->ar:F

    iget v2, p0, Lcom/applovin/exoplayer2/k$a;->as:F

    iget-wide v3, p0, Lcom/applovin/exoplayer2/k$a;->at:J

    iget v5, p0, Lcom/applovin/exoplayer2/k$a;->aK:F

    iget-wide v6, p0, Lcom/applovin/exoplayer2/k$a;->av:J

    iget-wide v8, p0, Lcom/applovin/exoplayer2/k$a;->aL:J

    iget v10, p0, Lcom/applovin/exoplayer2/k$a;->ax:F

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/applovin/exoplayer2/k;-><init>(FFJFJJFLcom/applovin/exoplayer2/k$1;)V

    return-object v12
.end method
