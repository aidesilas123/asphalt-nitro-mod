###### Class com.applovin.exoplayer2.m.m (com.applovin.exoplayer2.m.m)
.class public final Lcom/applovin/exoplayer2/m/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/m/m$e;,
        Lcom/applovin/exoplayer2/m/m$d;,
        Lcom/applovin/exoplayer2/m/m$c;,
        Lcom/applovin/exoplayer2/m/m$b;,
        Lcom/applovin/exoplayer2/m/m$a;
    }
.end annotation


# instance fields
.field private GL:Z

.field private Hm:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private TU:F

.field private final aeN:Lcom/applovin/exoplayer2/m/e;

.field private final aeO:Lcom/applovin/exoplayer2/m/m$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final aeP:Lcom/applovin/exoplayer2/m/m$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private aeQ:F

.field private aeR:F

.field private aeS:F

.field private aeT:I

.field private aeU:J

.field private aeV:J

.field private aeW:J

.field private aeX:J

.field private aeY:J

.field private aeZ:J

.field private afa:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/applovin/exoplayer2/m/e;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/m/e;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/m/m;->aeN:Lcom/applovin/exoplayer2/m/e;

    invoke-static {p1}, Lcom/applovin/exoplayer2/m/m;->r(Landroid/content/Context;)Lcom/applovin/exoplayer2/m/m$b;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/m/m;->aeO:Lcom/applovin/exoplayer2/m/m$b;

    if-eqz p1, :cond_17

    invoke-static {}, Lcom/applovin/exoplayer2/m/m$e;->qD()Lcom/applovin/exoplayer2/m/m$e;

    move-result-object p1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    iput-object p1, p0, Lcom/applovin/exoplayer2/m/m;->aeP:Lcom/applovin/exoplayer2/m/m$e;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/applovin/exoplayer2/m/m;->aeU:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/m/m;->aeV:J

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/applovin/exoplayer2/m/m;->aeQ:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/applovin/exoplayer2/m/m;->TU:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/applovin/exoplayer2/m/m;->aeT:I

    return-void
.end method

.method private static D(JJ)Z
    .registers 5

    sub-long/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    const-wide/32 p2, 0x1312d00

    cmp-long v0, p0, p2

    if-gtz v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private a(Landroid/view/Display;)V
    .registers 6
    .param p1    # Landroid/view/Display;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v0

    double-to-long v0, v2

    iput-wide v0, p0, Lcom/applovin/exoplayer2/m/m;->aeU:J

    const-wide/16 v2, 0x50

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/applovin/exoplayer2/m/m;->aeV:J

    goto :goto_2a

    :cond_1a
    const-string p1, "VideoFrameReleaseHelper"

    const-string v0, "Unable to query display refresh rate"

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/applovin/exoplayer2/m/m;->aeU:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/m/m;->aeV:J

    :goto_2a
    return-void
.end method

.method private at(Z)V
    .registers 6

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_30

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/m;->Hm:Landroid/view/Surface;

    if-eqz v0, :cond_30

    iget v1, p0, Lcom/applovin/exoplayer2/m/m;->aeT:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_11

    goto :goto_30

    :cond_11
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/m/m;->GL:Z

    if-eqz v2, :cond_22

    iget v2, p0, Lcom/applovin/exoplayer2/m/m;->aeR:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_22

    iget v1, p0, Lcom/applovin/exoplayer2/m/m;->TU:F

    mul-float v1, v1, v2

    :cond_22
    if-nez p1, :cond_2b

    iget p1, p0, Lcom/applovin/exoplayer2/m/m;->aeS:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2b

    return-void

    :cond_2b
    iput v1, p0, Lcom/applovin/exoplayer2/m/m;->aeS:F

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/m/m$a;->a(Landroid/view/Surface;F)V

    :cond_30
    :goto_30
    return-void
.end method

.method public static synthetic b(Lcom/applovin/exoplayer2/m/m;Landroid/view/Display;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/m/m;->a(Landroid/view/Display;)V

    return-void
.end method

.method private static f(JJJ)J
    .registers 11

    sub-long v0, p0, p2

    div-long/2addr v0, p4

    mul-long v0, v0, p4

    add-long/2addr p2, v0

    cmp-long v0, p0, p2

    if-gtz v0, :cond_d

    sub-long p4, p2, p4

    goto :goto_11

    :cond_d
    add-long/2addr p4, p2

    move-wide v3, p2

    move-wide p2, p4

    move-wide p4, v3

    :goto_11
    sub-long v0, p2, p0

    sub-long/2addr p0, p4

    cmp-long v2, v0, p0

    if-gez v2, :cond_19

    goto :goto_1a

    :cond_19
    move-wide p2, p4

    :goto_1a
    return-wide p2
.end method

.method private qA()V
    .registers 4

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1d

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/m;->Hm:Landroid/view/Surface;

    if-eqz v0, :cond_1d

    iget v1, p0, Lcom/applovin/exoplayer2/m/m;->aeT:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1d

    iget v1, p0, Lcom/applovin/exoplayer2/m/m;->aeS:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_18

    goto :goto_1d

    :cond_18
    iput v2, p0, Lcom/applovin/exoplayer2/m/m;->aeS:F

    invoke-static {v0, v2}, Lcom/applovin/exoplayer2/m/m$a;->a(Landroid/view/Surface;F)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method private qy()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/m/m;->aeW:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/applovin/exoplayer2/m/m;->aeZ:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/m/m;->aeX:J

    return-void
.end method

.method private qz()V
    .registers 9

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_73

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/m;->Hm:Landroid/view/Surface;

    if-nez v0, :cond_c

    goto/16 :goto_73

    :cond_c
    iget-object v0, p0, Lcom/applovin/exoplayer2/m/m;->aeN:Lcom/applovin/exoplayer2/m/e;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m/e;->qd()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/m;->aeN:Lcom/applovin/exoplayer2/m/e;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m/e;->qh()F

    move-result v0

    goto :goto_1d

    :cond_1b
    iget v0, p0, Lcom/applovin/exoplayer2/m/m;->aeQ:F

    :goto_1d
    iget v2, p0, Lcom/applovin/exoplayer2/m/m;->aeR:F

    cmpl-float v3, v0, v2

    if-nez v3, :cond_24

    return-void

    :cond_24
    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmpl-float v6, v0, v3

    if-eqz v6, :cond_61

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_61

    iget-object v1, p0, Lcom/applovin/exoplayer2/m/m;->aeN:Lcom/applovin/exoplayer2/m/e;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/m/e;->qd()Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/applovin/exoplayer2/m/m;->aeN:Lcom/applovin/exoplayer2/m/e;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/m/e;->qf()J

    move-result-wide v1

    const-wide v6, 0x12a05f200L

    cmp-long v3, v1, v6

    if-ltz v3, :cond_49

    const/4 v1, 0x1

    goto :goto_4a

    :cond_49
    const/4 v1, 0x0

    :goto_4a
    if-eqz v1, :cond_50

    const v1, 0x3ca3d70a    # 0.02f

    goto :goto_52

    :cond_50
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_52
    iget v2, p0, Lcom/applovin/exoplayer2/m/m;->aeR:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_5f

    goto :goto_6c

    :cond_5f
    const/4 v5, 0x0

    goto :goto_6c

    :cond_61
    if-eqz v6, :cond_64

    goto :goto_6c

    :cond_64
    iget-object v2, p0, Lcom/applovin/exoplayer2/m/m;->aeN:Lcom/applovin/exoplayer2/m/e;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/m/e;->qe()I

    move-result v2

    if-lt v2, v1, :cond_5f

    :goto_6c
    if-eqz v5, :cond_73

    iput v0, p0, Lcom/applovin/exoplayer2/m/m;->aeR:F

    invoke-direct {p0, v4}, Lcom/applovin/exoplayer2/m/m;->at(Z)V

    :cond_73
    :goto_73
    return-void
.end method

.method private static r(Landroid/content/Context;)Lcom/applovin/exoplayer2/m/m$b;
    .registers 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_11

    invoke-static {p0}, Lcom/applovin/exoplayer2/m/m$d;->s(Landroid/content/Context;)Lcom/applovin/exoplayer2/m/m$b;

    move-result-object v0

    :cond_11
    if-nez v0, :cond_17

    invoke-static {p0}, Lcom/applovin/exoplayer2/m/m$c;->s(Landroid/content/Context;)Lcom/applovin/exoplayer2/m/m$b;

    move-result-object v0

    :cond_17
    return-object v0
.end method


# virtual methods
.method public aa()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/m/m;->GL:Z

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/m;->qy()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/m/m;->at(Z)V

    return-void
.end method

.method public ab()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/m/m;->GL:Z

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/m;->qA()V

    return-void
.end method

.method public ac()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/m;->aeO:Lcom/applovin/exoplayer2/m/m$b;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lcom/applovin/exoplayer2/m/m$b;->qB()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/m;->aeP:Lcom/applovin/exoplayer2/m/m$e;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/m/m$e;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m/m$e;->qF()V

    :cond_12
    return-void
.end method

.method public bD(J)J
    .registers 13

    iget-wide v0, p0, Lcom/applovin/exoplayer2/m/m;->aeZ:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_30

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/m;->aeN:Lcom/applovin/exoplayer2/m/e;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m/e;->qd()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/m;->aeN:Lcom/applovin/exoplayer2/m/e;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m/e;->qg()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/exoplayer2/m/m;->afa:J

    iget-wide v4, p0, Lcom/applovin/exoplayer2/m/m;->aeW:J

    iget-wide v6, p0, Lcom/applovin/exoplayer2/m/m;->aeZ:J

    sub-long/2addr v4, v6

    mul-long v0, v0, v4

    long-to-float v0, v0

    iget v1, p0, Lcom/applovin/exoplayer2/m/m;->TU:F

    div-float/2addr v0, v1

    float-to-long v0, v0

    add-long/2addr v2, v0

    invoke-static {p1, p2, v2, v3}, Lcom/applovin/exoplayer2/m/m;->D(JJ)Z

    move-result v0

    if-eqz v0, :cond_2d

    move-wide v4, v2

    goto :goto_31

    :cond_2d
    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/m;->qy()V

    :cond_30
    move-wide v4, p1

    :goto_31
    iget-wide p1, p0, Lcom/applovin/exoplayer2/m/m;->aeW:J

    iput-wide p1, p0, Lcom/applovin/exoplayer2/m/m;->aeX:J

    iput-wide v4, p0, Lcom/applovin/exoplayer2/m/m;->aeY:J

    iget-object p1, p0, Lcom/applovin/exoplayer2/m/m;->aeP:Lcom/applovin/exoplayer2/m/m$e;

    if-eqz p1, :cond_58

    iget-wide v0, p0, Lcom/applovin/exoplayer2/m/m;->aeU:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-nez p2, :cond_47

    goto :goto_58

    :cond_47
    iget-wide v6, p1, Lcom/applovin/exoplayer2/m/m$e;->afe:J

    cmp-long p1, v6, v2

    if-nez p1, :cond_4e

    return-wide v4

    :cond_4e
    iget-wide v8, p0, Lcom/applovin/exoplayer2/m/m;->aeU:J

    invoke-static/range {v4 .. v9}, Lcom/applovin/exoplayer2/m/m;->f(JJJ)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/applovin/exoplayer2/m/m;->aeV:J

    sub-long/2addr p1, v0

    return-wide p1

    :cond_58
    :goto_58
    return-wide v4
.end method

.method public bw(J)V
    .registers 8

    iget-wide v0, p0, Lcom/applovin/exoplayer2/m/m;->aeX:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_e

    iput-wide v0, p0, Lcom/applovin/exoplayer2/m/m;->aeZ:J

    iget-wide v0, p0, Lcom/applovin/exoplayer2/m/m;->aeY:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/m/m;->afa:J

    :cond_e
    iget-wide v0, p0, Lcom/applovin/exoplayer2/m/m;->aeW:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/applovin/exoplayer2/m/m;->aeW:J

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/m;->aeN:Lcom/applovin/exoplayer2/m/e;

    const-wide/16 v1, 0x3e8

    mul-long p1, p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/m/e;->bw(J)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/m;->qz()V

    return-void
.end method

.method public c(Landroid/view/Surface;)V
    .registers 3
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/applovin/exoplayer2/m/d;

    if-eqz v0, :cond_5

    const/4 p1, 0x0

    :cond_5
    iget-object v0, p0, Lcom/applovin/exoplayer2/m/m;->Hm:Landroid/view/Surface;

    if-ne v0, p1, :cond_a

    return-void

    :cond_a
    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/m;->qA()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/m/m;->Hm:Landroid/view/Surface;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/m/m;->at(Z)V

    return-void
.end method

.method public fS(I)V
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/m/m;->aeT:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lcom/applovin/exoplayer2/m/m;->aeT:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/m/m;->at(Z)V

    return-void
.end method

.method public qw()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/m;->aeO:Lcom/applovin/exoplayer2/m/m$b;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/m;->aeP:Lcom/applovin/exoplayer2/m/m$e;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/m/m$e;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/m/m$e;->qE()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/m/m;->aeO:Lcom/applovin/exoplayer2/m/m$b;

    new-instance v1, Lcom/applovin/exoplayer2/m/q;

    invoke-direct {v1, p0}, Lcom/applovin/exoplayer2/m/q;-><init>(Lcom/applovin/exoplayer2/m/m;)V

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/m/m$b;->a(Lcom/applovin/exoplayer2/m/m$b$a;)V

    :cond_19
    return-void
.end method

.method public qx()V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/m;->qy()V

    return-void
.end method

.method public v(F)V
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/m/m;->TU:F

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/m;->qy()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/m/m;->at(Z)V

    return-void
.end method

.method public y(F)V
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/m/m;->aeQ:F

    iget-object p1, p0, Lcom/applovin/exoplayer2/m/m;->aeN:Lcom/applovin/exoplayer2/m/e;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/m/e;->Y()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/m/m;->qz()V

    return-void
.end method
