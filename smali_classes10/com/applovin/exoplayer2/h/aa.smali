###### Class com.applovin.exoplayer2.h.aa (com.applovin.exoplayer2.h.aa)
.class public final Lcom/applovin/exoplayer2/h/aa;
.super Lcom/applovin/exoplayer2/ba;
.source "SourceFile"


# static fields
.field private static final Nv:Ljava/lang/Object;

.field private static final Nw:Lcom/applovin/exoplayer2/ab;


# instance fields
.field private final NA:J

.field private final NB:Z

.field private final Nx:J

.field private final Ny:J

.field private final Nz:J

.field private final eb:Lcom/applovin/exoplayer2/ab$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final gL:Lcom/applovin/exoplayer2/ab;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final iI:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final iJ:J

.field private final iK:J

.field private final iL:J

.field private final iM:Z

.field private final iN:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/h/aa;->Nv:Ljava/lang/Object;

    new-instance v0, Lcom/applovin/exoplayer2/ab$b;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/ab$b;-><init>()V

    const-string v1, "SinglePeriodTimeline"

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/ab$b;->n(Ljava/lang/String;)Lcom/applovin/exoplayer2/ab$b;

    move-result-object v0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/ab$b;->b(Landroid/net/Uri;)Lcom/applovin/exoplayer2/ab$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ab$b;->bV()Lcom/applovin/exoplayer2/ab;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/h/aa;->Nw:Lcom/applovin/exoplayer2/ab;

    return-void
.end method

.method public constructor <init>(JJJJJJJZZZLjava/lang/Object;Lcom/applovin/exoplayer2/ab;Lcom/applovin/exoplayer2/ab$e;)V
    .registers 24
    .param p18    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p20    # Lcom/applovin/exoplayer2/ab$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ba;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Lcom/applovin/exoplayer2/h/aa;->iJ:J

    move-wide v1, p3

    iput-wide v1, v0, Lcom/applovin/exoplayer2/h/aa;->iK:J

    move-wide v1, p5

    iput-wide v1, v0, Lcom/applovin/exoplayer2/h/aa;->iL:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/applovin/exoplayer2/h/aa;->Nx:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/applovin/exoplayer2/h/aa;->Ny:J

    move-wide v1, p11

    iput-wide v1, v0, Lcom/applovin/exoplayer2/h/aa;->Nz:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/applovin/exoplayer2/h/aa;->NA:J

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/applovin/exoplayer2/h/aa;->iM:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/applovin/exoplayer2/h/aa;->iN:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/applovin/exoplayer2/h/aa;->NB:Z

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/applovin/exoplayer2/h/aa;->iI:Ljava/lang/Object;

    invoke-static/range {p19 .. p19}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/ab;

    iput-object v1, v0, Lcom/applovin/exoplayer2/h/aa;->gL:Lcom/applovin/exoplayer2/ab;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/applovin/exoplayer2/h/aa;->eb:Lcom/applovin/exoplayer2/ab$e;

    return-void
.end method

.method public constructor <init>(JJJJZZZLjava/lang/Object;Lcom/applovin/exoplayer2/ab;)V
    .registers 35
    .param p12    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v15, p13

    if-eqz p11, :cond_7

    iget-object v0, v15, Lcom/applovin/exoplayer2/ab;->eb:Lcom/applovin/exoplayer2/ab$e;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    move-object/from16 v20, v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, p9

    move/from16 v16, p10

    move-object/from16 v18, p12

    move-object/from16 v19, p13

    invoke-direct/range {v0 .. v20}, Lcom/applovin/exoplayer2/h/aa;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/applovin/exoplayer2/ab;Lcom/applovin/exoplayer2/ab$e;)V

    return-void
.end method

.method public constructor <init>(JZZZLjava/lang/Object;Lcom/applovin/exoplayer2/ab;)V
    .registers 22
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-direct/range {v0 .. v13}, Lcom/applovin/exoplayer2/h/aa;-><init>(JJJJZZZLjava/lang/Object;Lcom/applovin/exoplayer2/ab;)V

    return-void
.end method


# virtual methods
.method public a(ILcom/applovin/exoplayer2/ba$a;Z)Lcom/applovin/exoplayer2/ba$a;
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/applovin/exoplayer2/l/a;->h(III)I

    if-eqz p3, :cond_a

    sget-object p1, Lcom/applovin/exoplayer2/h/aa;->Nv:Ljava/lang/Object;

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    move-object v2, p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/applovin/exoplayer2/h/aa;->Nx:J

    iget-wide v6, p0, Lcom/applovin/exoplayer2/h/aa;->Nz:J

    neg-long v6, v6

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Lcom/applovin/exoplayer2/ba$a;->a(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/applovin/exoplayer2/ba$a;

    move-result-object p1

    return-object p1
.end method

.method public a(ILcom/applovin/exoplayer2/ba$c;J)Lcom/applovin/exoplayer2/ba$c;
    .registers 29

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v3, p1

    invoke-static {v3, v1, v2}, Lcom/applovin/exoplayer2/l/a;->h(III)I

    iget-wide v1, v0, Lcom/applovin/exoplayer2/h/aa;->NA:J

    iget-boolean v14, v0, Lcom/applovin/exoplayer2/h/aa;->iN:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v14, :cond_2e

    iget-boolean v5, v0, Lcom/applovin/exoplayer2/h/aa;->NB:Z

    if-nez v5, :cond_2e

    const-wide/16 v5, 0x0

    cmp-long v7, p3, v5

    if-eqz v7, :cond_2e

    iget-wide v5, v0, Lcom/applovin/exoplayer2/h/aa;->Ny:J

    cmp-long v7, v5, v3

    if-nez v7, :cond_27

    :goto_24
    move-wide/from16 v16, v3

    goto :goto_30

    :cond_27
    add-long v1, v1, p3

    cmp-long v7, v1, v5

    if-lez v7, :cond_2e

    goto :goto_24

    :cond_2e
    move-wide/from16 v16, v1

    :goto_30
    sget-object v4, Lcom/applovin/exoplayer2/ba$c;->iF:Ljava/lang/Object;

    iget-object v5, v0, Lcom/applovin/exoplayer2/h/aa;->gL:Lcom/applovin/exoplayer2/ab;

    iget-object v6, v0, Lcom/applovin/exoplayer2/h/aa;->iI:Ljava/lang/Object;

    iget-wide v7, v0, Lcom/applovin/exoplayer2/h/aa;->iJ:J

    iget-wide v9, v0, Lcom/applovin/exoplayer2/h/aa;->iK:J

    iget-wide v11, v0, Lcom/applovin/exoplayer2/h/aa;->iL:J

    iget-boolean v13, v0, Lcom/applovin/exoplayer2/h/aa;->iM:Z

    iget-object v15, v0, Lcom/applovin/exoplayer2/h/aa;->eb:Lcom/applovin/exoplayer2/ab$e;

    iget-wide v1, v0, Lcom/applovin/exoplayer2/h/aa;->Ny:J

    move-wide/from16 v18, v1

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-wide v1, v0, Lcom/applovin/exoplayer2/h/aa;->Nz:J

    move-wide/from16 v22, v1

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v23}, Lcom/applovin/exoplayer2/ba$c;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ab;Ljava/lang/Object;JJJZZLcom/applovin/exoplayer2/ab$e;JJIIJ)Lcom/applovin/exoplayer2/ba$c;

    move-result-object v1

    return-object v1
.end method

.method public b(I)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/applovin/exoplayer2/l/a;->h(III)I

    sget-object p1, Lcom/applovin/exoplayer2/h/aa;->Nv:Ljava/lang/Object;

    return-object p1
.end method

.method public c(Ljava/lang/Object;)I
    .registers 3

    sget-object v0, Lcom/applovin/exoplayer2/h/aa;->Nv:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    goto :goto_b

    :cond_a
    const/4 p1, -0x1

    :goto_b
    return p1
.end method

.method public cP()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public cQ()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
