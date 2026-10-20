###### Class com.applovin.exoplayer2.af (com.applovin.exoplayer2.af)
.class final Lcom/applovin/exoplayer2/af;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final U:Lcom/applovin/exoplayer2/ba$c;

.field private final bI:Lcom/applovin/exoplayer2/ba$a;

.field private final bM:Lcom/applovin/exoplayer2/a/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private bS:I

.field private bT:Z

.field private final fM:Landroid/os/Handler;

.field private fN:J

.field private fO:Lcom/applovin/exoplayer2/ad;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fP:Lcom/applovin/exoplayer2/ad;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fQ:Lcom/applovin/exoplayer2/ad;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fR:I

.field private fS:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fT:J


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/a/a;Landroid/os/Handler;)V
    .registers 3
    .param p1    # Lcom/applovin/exoplayer2/a/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/af;->bM:Lcom/applovin/exoplayer2/a/a;

    iput-object p2, p0, Lcom/applovin/exoplayer2/af;->fM:Landroid/os/Handler;

    new-instance p1, Lcom/applovin/exoplayer2/ba$a;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/ba$a;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    new-instance p1, Lcom/applovin/exoplayer2/ba$c;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/ba$c;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/af;->U:Lcom/applovin/exoplayer2/ba$c;

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;)J
    .registers 8

    iget-object v0, p0, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {p1, p2, v0}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v0

    iget v0, v0, Lcom/applovin/exoplayer2/ba$a;->cN:I

    iget-object v1, p0, Lcom/applovin/exoplayer2/af;->fS:Ljava/lang/Object;

    const/4 v2, -0x1

    if-eqz v1, :cond_20

    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v2, :cond_20

    iget-object v3, p0, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {p1, v1, v3}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v1

    iget v1, v1, Lcom/applovin/exoplayer2/ba$a;->cN:I

    if-ne v1, v0, :cond_20

    iget-wide p1, p0, Lcom/applovin/exoplayer2/af;->fT:J

    return-wide p1

    :cond_20
    iget-object v1, p0, Lcom/applovin/exoplayer2/af;->fO:Lcom/applovin/exoplayer2/ad;

    :goto_22
    if-eqz v1, :cond_38

    iget-object v3, v1, Lcom/applovin/exoplayer2/ad;->ch:Ljava/lang/Object;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object p1, v1, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-object p1, p1, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    iget-wide p1, p1, Lcom/applovin/exoplayer2/h/o;->LL:J

    return-wide p1

    :cond_33
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ad;->ci()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    goto :goto_22

    :cond_38
    iget-object v1, p0, Lcom/applovin/exoplayer2/af;->fO:Lcom/applovin/exoplayer2/ad;

    :goto_3a
    if-eqz v1, :cond_5a

    iget-object v3, v1, Lcom/applovin/exoplayer2/ad;->ch:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v2, :cond_55

    iget-object v4, p0, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {p1, v3, v4}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v3

    iget v3, v3, Lcom/applovin/exoplayer2/ba$a;->cN:I

    if-ne v3, v0, :cond_55

    iget-object p1, v1, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-object p1, p1, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    iget-wide p1, p1, Lcom/applovin/exoplayer2/h/o;->LL:J

    return-wide p1

    :cond_55
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ad;->ci()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    goto :goto_3a

    :cond_5a
    iget-wide v0, p0, Lcom/applovin/exoplayer2/af;->fN:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/applovin/exoplayer2/af;->fN:J

    iget-object p1, p0, Lcom/applovin/exoplayer2/af;->fO:Lcom/applovin/exoplayer2/ad;

    if-nez p1, :cond_69

    iput-object p2, p0, Lcom/applovin/exoplayer2/af;->fS:Ljava/lang/Object;

    iput-wide v0, p0, Lcom/applovin/exoplayer2/af;->fT:J

    :cond_69
    return-wide v0
.end method

.method private a(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;I)J
    .registers 7

    iget-object v0, p0, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {p1, p2, v0}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    iget-object p1, p0, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {p1, p3}, Lcom/applovin/exoplayer2/ba$a;->al(I)J

    move-result-wide p1

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    iget-object p1, p0, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    iget-wide p1, p1, Lcom/applovin/exoplayer2/ba$a;->fH:J

    return-wide p1

    :cond_16
    iget-object v0, p0, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v0, p3}, Lcom/applovin/exoplayer2/ba$a;->aq(I)J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method private a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/ad;J)Lcom/applovin/exoplayer2/ae;
    .registers 21
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    iget-object v11, v10, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    invoke-virtual/range {p2 .. p2}, Lcom/applovin/exoplayer2/ad;->cd()J

    move-result-wide v0

    iget-wide v2, v11, Lcom/applovin/exoplayer2/ae;->fH:J

    add-long/2addr v0, v2

    sub-long v6, v0, p3

    iget-boolean v0, v11, Lcom/applovin/exoplayer2/ae;->fJ:Z

    const/4 v14, -0x1

    const/4 v15, 0x0

    if-eqz v0, :cond_a6

    iget-object v0, v11, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    iget-object v0, v0, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    invoke-virtual {v8, v0}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, v9, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    iget-object v3, v9, Lcom/applovin/exoplayer2/af;->U:Lcom/applovin/exoplayer2/ba$c;

    iget v0, v9, Lcom/applovin/exoplayer2/af;->bS:I

    iget-boolean v5, v9, Lcom/applovin/exoplayer2/af;->bT:Z

    move v4, v0

    move-object/from16 v0, p1

    const-wide/16 v12, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;Lcom/applovin/exoplayer2/ba$c;IZ)I

    move-result v0

    if-ne v0, v14, :cond_33

    return-object v15

    :cond_33
    iget-object v1, v9, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    const/4 v2, 0x1

    invoke-virtual {v8, v0, v1, v2}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;Z)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v1

    iget v3, v1, Lcom/applovin/exoplayer2/ba$a;->cN:I

    iget-object v1, v9, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    iget-object v1, v1, Lcom/applovin/exoplayer2/ba$a;->ch:Ljava/lang/Object;

    iget-object v2, v11, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    iget-wide v4, v2, Lcom/applovin/exoplayer2/h/o;->LL:J

    iget-object v2, v9, Lcom/applovin/exoplayer2/af;->U:Lcom/applovin/exoplayer2/ba$c;

    invoke-virtual {v8, v3, v2}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    move-result-object v2

    iget v2, v2, Lcom/applovin/exoplayer2/ba$c;->iQ:I

    if-ne v2, v0, :cond_91

    iget-object v1, v9, Lcom/applovin/exoplayer2/af;->U:Lcom/applovin/exoplayer2/ba$c;

    iget-object v2, v9, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/applovin/exoplayer2/ba;->a(Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;IJJ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_64

    return-object v15

    :cond_64
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Lcom/applovin/exoplayer2/ad;->ci()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    if-eqz v0, :cond_83

    iget-object v4, v0, Lcom/applovin/exoplayer2/ad;->ch:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_83

    iget-object v0, v0, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-object v0, v0, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    iget-wide v4, v0, Lcom/applovin/exoplayer2/h/o;->LL:J

    goto :goto_8a

    :cond_83
    iget-wide v4, v9, Lcom/applovin/exoplayer2/af;->fN:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, v9, Lcom/applovin/exoplayer2/af;->fN:J

    :goto_8a
    move-wide v10, v2

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_92

    :cond_91
    move-wide v10, v12

    :goto_92
    iget-object v6, v9, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    move-object/from16 v0, p1

    move-wide v2, v10

    invoke-static/range {v0 .. v6}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;JJLcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/h/p$a;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v3, v12

    move-wide v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;JJ)Lcom/applovin/exoplayer2/ae;

    move-result-object v0

    return-object v0

    :cond_a6
    const-wide/16 v12, 0x0

    iget-object v10, v11, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    iget-object v0, v10, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    iget-object v1, v9, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v8, v0, v1}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v10}, Lcom/applovin/exoplayer2/h/o;->la()Z

    move-result v0

    if-eqz v0, :cond_126

    iget v3, v10, Lcom/applovin/exoplayer2/h/o;->gP:I

    iget-object v0, v9, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/ba$a;->ao(I)I

    move-result v0

    if-ne v0, v14, :cond_c2

    return-object v15

    :cond_c2
    iget-object v1, v9, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    iget v2, v10, Lcom/applovin/exoplayer2/h/o;->gQ:I

    invoke-virtual {v1, v3, v2}, Lcom/applovin/exoplayer2/ba$a;->h(II)I

    move-result v4

    if-ge v4, v0, :cond_dc

    iget-object v2, v10, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    iget-wide v5, v11, Lcom/applovin/exoplayer2/ae;->de:J

    iget-wide v10, v10, Lcom/applovin/exoplayer2/h/o;->LL:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;IIJJ)Lcom/applovin/exoplayer2/ae;

    move-result-object v0

    return-object v0

    :cond_dc
    iget-wide v0, v11, Lcom/applovin/exoplayer2/ae;->de:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_107

    iget-object v1, v9, Lcom/applovin/exoplayer2/af;->U:Lcom/applovin/exoplayer2/ba$c;

    iget-object v2, v9, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    iget v3, v2, Lcom/applovin/exoplayer2/ba$a;->cN:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/applovin/exoplayer2/ba;->a(Lcom/applovin/exoplayer2/ba$c;Lcom/applovin/exoplayer2/ba$a;IJJ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_ff

    return-object v15

    :cond_ff
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_107
    iget-object v2, v10, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    iget v3, v10, Lcom/applovin/exoplayer2/h/o;->gP:I

    invoke-direct {v9, v8, v2, v3}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;I)J

    move-result-wide v2

    iget-object v4, v10, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-wide v11, v11, Lcom/applovin/exoplayer2/ae;->de:J

    iget-wide v13, v10, Lcom/applovin/exoplayer2/h/o;->LL:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-wide v3, v5

    move-wide v5, v11

    move-wide v7, v13

    invoke-direct/range {v0 .. v8}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;JJJ)Lcom/applovin/exoplayer2/ae;

    move-result-object v0

    return-object v0

    :cond_126
    iget-object v0, v9, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    iget v1, v10, Lcom/applovin/exoplayer2/h/o;->LM:I

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/ba$a;->am(I)I

    move-result v4

    iget-object v0, v9, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    iget v1, v10, Lcom/applovin/exoplayer2/h/o;->LM:I

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/ba$a;->ao(I)I

    move-result v0

    if-ne v4, v0, :cond_150

    iget-object v0, v10, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    iget v1, v10, Lcom/applovin/exoplayer2/h/o;->LM:I

    invoke-direct {v9, v8, v0, v1}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;I)J

    move-result-wide v3

    iget-object v2, v10, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    iget-wide v5, v11, Lcom/applovin/exoplayer2/ae;->fH:J

    iget-wide v10, v10, Lcom/applovin/exoplayer2/h/o;->LL:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;JJJ)Lcom/applovin/exoplayer2/ae;

    move-result-object v0

    return-object v0

    :cond_150
    iget-object v2, v10, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    iget v3, v10, Lcom/applovin/exoplayer2/h/o;->LM:I

    iget-wide v5, v11, Lcom/applovin/exoplayer2/ae;->fH:J

    iget-wide v10, v10, Lcom/applovin/exoplayer2/h/o;->LL:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;IIJJ)Lcom/applovin/exoplayer2/ae;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;JJ)Lcom/applovin/exoplayer2/ae;
    .registers 19
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object v0, p2

    iget-object v1, v0, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    move-object v11, p0

    iget-object v2, v11, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    move-object v3, p1

    invoke-virtual {p1, v1, v2}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/h/o;->la()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v4, v0, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    iget v5, v0, Lcom/applovin/exoplayer2/h/o;->gP:I

    iget v6, v0, Lcom/applovin/exoplayer2/h/o;->gQ:I

    iget-wide v9, v0, Lcom/applovin/exoplayer2/h/o;->LL:J

    move-object v2, p0

    move-object v3, p1

    move-wide v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;IIJJ)Lcom/applovin/exoplayer2/ae;

    move-result-object v0

    return-object v0

    :cond_20
    iget-object v4, v0, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    iget-wide v9, v0, Lcom/applovin/exoplayer2/h/o;->LL:J

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v5, p5

    move-wide v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;JJJ)Lcom/applovin/exoplayer2/ae;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;IIJJ)Lcom/applovin/exoplayer2/ae;
    .registers 27

    move-object/from16 v0, p0

    new-instance v7, Lcom/applovin/exoplayer2/h/p$a;

    move-object v1, v7

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lcom/applovin/exoplayer2/h/p$a;-><init>(Ljava/lang/Object;IIJ)V

    iget-object v1, v7, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    iget-object v2, v0, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v1

    iget v2, v7, Lcom/applovin/exoplayer2/h/o;->gP:I

    iget v3, v7, Lcom/applovin/exoplayer2/h/o;->gQ:I

    invoke-virtual {v1, v2, v3}, Lcom/applovin/exoplayer2/ba$a;->i(II)J

    move-result-wide v9

    iget-object v1, v0, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    move/from16 v2, p3

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/ba$a;->am(I)I

    move-result v1

    const-wide/16 v2, 0x0

    if-ne v4, v1, :cond_35

    iget-object v1, v0, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ba$a;->di()J

    move-result-wide v4

    goto :goto_36

    :cond_35
    move-wide v4, v2

    :goto_36
    iget-object v1, v0, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    iget v6, v7, Lcom/applovin/exoplayer2/h/o;->gP:I

    invoke-virtual {v1, v6}, Lcom/applovin/exoplayer2/ba$a;->ap(I)Z

    move-result v11

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v9, v12

    if-eqz v1, :cond_55

    cmp-long v1, v4, v9

    if-ltz v1, :cond_55

    const-wide/16 v4, 0x1

    sub-long v4, v9, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-wide v3, v1

    goto :goto_56

    :cond_55
    move-wide v3, v4

    :goto_56
    new-instance v15, Lcom/applovin/exoplayer2/ae;

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v1, v15

    move-object v2, v7

    move-wide/from16 v5, p5

    move-wide v7, v12

    move v12, v14

    move/from16 v13, v16

    move/from16 v14, v17

    invoke-direct/range {v1 .. v14}, Lcom/applovin/exoplayer2/ae;-><init>(Lcom/applovin/exoplayer2/h/p$a;JJJJZZZZ)V

    return-object v15
.end method

.method private a(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;JJJ)Lcom/applovin/exoplayer2/ae;
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    iget-object v5, v0, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v1, v2, v5}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    iget-object v5, v0, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v5, v3, v4}, Lcom/applovin/exoplayer2/ba$a;->B(J)I

    move-result v5

    new-instance v7, Lcom/applovin/exoplayer2/h/p$a;

    move-wide/from16 v8, p7

    invoke-direct {v7, v2, v8, v9, v5}, Lcom/applovin/exoplayer2/h/p$a;-><init>(Ljava/lang/Object;JI)V

    invoke-direct {v0, v7}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/h/p$a;)Z

    move-result v2

    invoke-direct {v0, v1, v7}, Lcom/applovin/exoplayer2/af;->b(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;)Z

    move-result v18

    invoke-direct {v0, v1, v7, v2}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;Z)Z

    move-result v19

    const/4 v1, -0x1

    if-eq v5, v1, :cond_35

    iget-object v6, v0, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v6, v5}, Lcom/applovin/exoplayer2/ba$a;->ap(I)Z

    move-result v6

    if-eqz v6, :cond_35

    const/4 v6, 0x1

    const/16 v16, 0x1

    goto :goto_38

    :cond_35
    const/4 v6, 0x0

    const/16 v16, 0x0

    :goto_38
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v5, v1, :cond_47

    iget-object v1, v0, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v1, v5}, Lcom/applovin/exoplayer2/ba$a;->al(I)J

    move-result-wide v5

    move-wide v12, v5

    goto :goto_48

    :cond_47
    move-wide v12, v8

    :goto_48
    cmp-long v1, v12, v8

    if-eqz v1, :cond_55

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v1, v12, v5

    if-nez v1, :cond_53

    goto :goto_55

    :cond_53
    move-wide v14, v12

    goto :goto_5a

    :cond_55
    :goto_55
    iget-object v1, v0, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    iget-wide v5, v1, Lcom/applovin/exoplayer2/ba$a;->fH:J

    move-wide v14, v5

    :goto_5a
    cmp-long v1, v14, v8

    if-eqz v1, :cond_6c

    cmp-long v1, v3, v14

    if-ltz v1, :cond_6c

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    sub-long v5, v14, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_6c
    move-wide v8, v3

    new-instance v1, Lcom/applovin/exoplayer2/ae;

    move-object v6, v1

    move-wide/from16 v10, p5

    move/from16 v17, v2

    invoke-direct/range {v6 .. v19}, Lcom/applovin/exoplayer2/ae;-><init>(Lcom/applovin/exoplayer2/h/p$a;JJJJZZZZ)V

    return-object v1
.end method

.method private static a(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;JJLcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/h/p$a;
    .registers 13

    invoke-virtual {p0, p1, p6}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {p6, p2, p3}, Lcom/applovin/exoplayer2/ba$a;->A(J)I

    move-result v2

    const/4 p0, -0x1

    if-ne v2, p0, :cond_14

    invoke-virtual {p6, p2, p3}, Lcom/applovin/exoplayer2/ba$a;->B(J)I

    move-result p0

    new-instance p2, Lcom/applovin/exoplayer2/h/p$a;

    invoke-direct {p2, p1, p4, p5, p0}, Lcom/applovin/exoplayer2/h/p$a;-><init>(Ljava/lang/Object;JI)V

    return-object p2

    :cond_14
    invoke-virtual {p6, v2}, Lcom/applovin/exoplayer2/ba$a;->am(I)I

    move-result v3

    new-instance p0, Lcom/applovin/exoplayer2/h/p$a;

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/applovin/exoplayer2/h/p$a;-><init>(Ljava/lang/Object;IIJ)V

    return-object p0
.end method

.method private synthetic a(Lcom/applovin/exoplayer2/common/a/s$a;Lcom/applovin/exoplayer2/h/p$a;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/af;->bM:Lcom/applovin/exoplayer2/a/a;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/common/a/s$a;->gd()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/a/a;->a(Ljava/util/List;Lcom/applovin/exoplayer2/h/p$a;)V

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/ae;Lcom/applovin/exoplayer2/ae;)Z
    .registers 8

    iget-wide v0, p1, Lcom/applovin/exoplayer2/ae;->fF:J

    iget-wide v2, p2, Lcom/applovin/exoplayer2/ae;->fF:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_14

    iget-object p1, p1, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    iget-object p2, p2, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/h/o;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method private a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;Z)Z
    .registers 10

    iget-object p2, p2, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v1

    iget-object p2, p0, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {p1, v1, p2}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object p2

    iget p2, p2, Lcom/applovin/exoplayer2/ba$a;->cN:I

    iget-object v0, p0, Lcom/applovin/exoplayer2/af;->U:Lcom/applovin/exoplayer2/ba$c;

    invoke-virtual {p1, p2, v0}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    move-result-object p2

    iget-boolean p2, p2, Lcom/applovin/exoplayer2/ba$c;->iN:Z

    if-nez p2, :cond_2b

    iget-object v2, p0, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    iget-object v3, p0, Lcom/applovin/exoplayer2/af;->U:Lcom/applovin/exoplayer2/ba$c;

    iget v4, p0, Lcom/applovin/exoplayer2/af;->bS:I

    iget-boolean v5, p0, Lcom/applovin/exoplayer2/af;->bT:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/exoplayer2/ba;->b(ILcom/applovin/exoplayer2/ba$a;Lcom/applovin/exoplayer2/ba$c;IZ)Z

    move-result p1

    if-eqz p1, :cond_2b

    if-eqz p3, :cond_2b

    const/4 p1, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    :goto_2c
    return p1
.end method

.method private a(Lcom/applovin/exoplayer2/h/p$a;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/h/o;->la()Z

    move-result v0

    if-nez v0, :cond_d

    iget p1, p1, Lcom/applovin/exoplayer2/h/o;->LM:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return p1
.end method

.method private b(Lcom/applovin/exoplayer2/ba;)Z
    .registers 10

    iget-object v0, p0, Lcom/applovin/exoplayer2/af;->fO:Lcom/applovin/exoplayer2/ad;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v2, v0, Lcom/applovin/exoplayer2/ad;->ch:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v2

    move v3, v2

    :goto_d
    iget-object v4, p0, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    iget-object v5, p0, Lcom/applovin/exoplayer2/af;->U:Lcom/applovin/exoplayer2/ba$c;

    iget v6, p0, Lcom/applovin/exoplayer2/af;->bS:I

    iget-boolean v7, p0, Lcom/applovin/exoplayer2/af;->bT:Z

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$a;Lcom/applovin/exoplayer2/ba$c;IZ)I

    move-result v3

    :goto_1a
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ci()Lcom/applovin/exoplayer2/ad;

    move-result-object v2

    if-eqz v2, :cond_2b

    iget-object v2, v0, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-boolean v2, v2, Lcom/applovin/exoplayer2/ae;->fJ:Z

    if-nez v2, :cond_2b

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ci()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    goto :goto_1a

    :cond_2b
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ci()Lcom/applovin/exoplayer2/ad;

    move-result-object v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_40

    if-nez v2, :cond_35

    goto :goto_40

    :cond_35
    iget-object v4, v2, Lcom/applovin/exoplayer2/ad;->ch:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v3, :cond_3e

    goto :goto_40

    :cond_3e
    move-object v0, v2

    goto :goto_d

    :cond_40
    :goto_40
    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/af;->b(Lcom/applovin/exoplayer2/ad;)Z

    move-result v2

    iget-object v3, v0, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    invoke-virtual {p0, p1, v3}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/ae;)Lcom/applovin/exoplayer2/ae;

    move-result-object p1

    iput-object p1, v0, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    xor-int/lit8 p1, v2, 0x1

    return p1
.end method

.method private b(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;)Z
    .registers 6

    invoke-direct {p0, p2}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/h/p$a;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p2, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    iget-object v2, p0, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {p1, v0, v2}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    move-result-object v0

    iget v0, v0, Lcom/applovin/exoplayer2/ba$a;->cN:I

    iget-object p2, p2, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/ba;->c(Ljava/lang/Object;)I

    move-result p2

    iget-object v2, p0, Lcom/applovin/exoplayer2/af;->U:Lcom/applovin/exoplayer2/ba$c;

    invoke-virtual {p1, v0, v2}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    move-result-object p1

    iget p1, p1, Lcom/applovin/exoplayer2/ba$c;->iR:I

    if-ne p1, p2, :cond_23

    const/4 v1, 0x1

    :cond_23
    return v1
.end method

.method public static synthetic c(Lcom/applovin/exoplayer2/af;Lcom/applovin/exoplayer2/common/a/s$a;Lcom/applovin/exoplayer2/h/p$a;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/common/a/s$a;Lcom/applovin/exoplayer2/h/p$a;)V

    return-void
.end method

.method private cv()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/af;->bM:Lcom/applovin/exoplayer2/a/a;

    if-eqz v0, :cond_2c

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->gc()Lcom/applovin/exoplayer2/common/a/s$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/af;->fO:Lcom/applovin/exoplayer2/ad;

    :goto_a
    if-eqz v1, :cond_18

    iget-object v2, v1, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-object v2, v2, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/common/a/s$a;->v(Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/s$a;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ad;->ci()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    goto :goto_a

    :cond_18
    iget-object v1, p0, Lcom/applovin/exoplayer2/af;->fP:Lcom/applovin/exoplayer2/ad;

    if-nez v1, :cond_1e

    const/4 v1, 0x0

    goto :goto_22

    :cond_1e
    iget-object v1, v1, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-object v1, v1, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    :goto_22
    iget-object v2, p0, Lcom/applovin/exoplayer2/af;->fM:Landroid/os/Handler;

    new-instance v3, Lcom/applovin/exoplayer2/g0;

    invoke-direct {v3, p0, v0, v1}, Lcom/applovin/exoplayer2/g0;-><init>(Lcom/applovin/exoplayer2/af;Lcom/applovin/exoplayer2/common/a/s$a;Lcom/applovin/exoplayer2/h/p$a;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2c
    return-void
.end method

.method private e(Lcom/applovin/exoplayer2/al;)Lcom/applovin/exoplayer2/ae;
    .registers 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v1, p1, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    iget-object v2, p1, Lcom/applovin/exoplayer2/al;->dc:Lcom/applovin/exoplayer2/h/p$a;

    iget-wide v3, p1, Lcom/applovin/exoplayer2/al;->de:J

    iget-wide v5, p1, Lcom/applovin/exoplayer2/al;->cO:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;JJ)Lcom/applovin/exoplayer2/ae;

    move-result-object p1

    return-object p1
.end method

.method private f(JJ)Z
    .registers 8

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_10

    cmp-long v0, p1, p3

    if-nez v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p1, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 p1, 0x1

    :goto_11
    return p1
.end method


# virtual methods
.method public a([Lcom/applovin/exoplayer2/as;Lcom/applovin/exoplayer2/j/j;Lcom/applovin/exoplayer2/k/b;Lcom/applovin/exoplayer2/ah;Lcom/applovin/exoplayer2/ae;Lcom/applovin/exoplayer2/j/k;)Lcom/applovin/exoplayer2/ad;
    .registers 18

    move-object v0, p0

    move-object/from16 v8, p5

    iget-object v1, v0, Lcom/applovin/exoplayer2/af;->fQ:Lcom/applovin/exoplayer2/ad;

    if-nez v1, :cond_1e

    iget-object v1, v8, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/h/o;->la()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-wide v1, v8, Lcom/applovin/exoplayer2/ae;->de:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1b

    goto :goto_2c

    :cond_1b
    const-wide/16 v1, 0x0

    goto :goto_2c

    :cond_1e
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ad;->cd()J

    move-result-wide v1

    iget-object v3, v0, Lcom/applovin/exoplayer2/af;->fQ:Lcom/applovin/exoplayer2/ad;

    iget-object v3, v3, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-wide v3, v3, Lcom/applovin/exoplayer2/ae;->fH:J

    add-long/2addr v1, v3

    iget-wide v3, v8, Lcom/applovin/exoplayer2/ae;->fF:J

    sub-long/2addr v1, v3

    :goto_2c
    move-wide v3, v1

    new-instance v10, Lcom/applovin/exoplayer2/ad;

    move-object v1, v10

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/applovin/exoplayer2/ad;-><init>([Lcom/applovin/exoplayer2/as;JLcom/applovin/exoplayer2/j/j;Lcom/applovin/exoplayer2/k/b;Lcom/applovin/exoplayer2/ah;Lcom/applovin/exoplayer2/ae;Lcom/applovin/exoplayer2/j/k;)V

    iget-object v1, v0, Lcom/applovin/exoplayer2/af;->fQ:Lcom/applovin/exoplayer2/ad;

    if-eqz v1, :cond_43

    invoke-virtual {v1, v10}, Lcom/applovin/exoplayer2/ad;->a(Lcom/applovin/exoplayer2/ad;)V

    goto :goto_47

    :cond_43
    iput-object v10, v0, Lcom/applovin/exoplayer2/af;->fO:Lcom/applovin/exoplayer2/ad;

    iput-object v10, v0, Lcom/applovin/exoplayer2/af;->fP:Lcom/applovin/exoplayer2/ad;

    :goto_47
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/applovin/exoplayer2/af;->fS:Ljava/lang/Object;

    iput-object v10, v0, Lcom/applovin/exoplayer2/af;->fQ:Lcom/applovin/exoplayer2/ad;

    iget v1, v0, Lcom/applovin/exoplayer2/af;->fR:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/applovin/exoplayer2/af;->fR:I

    invoke-direct {p0}, Lcom/applovin/exoplayer2/af;->cv()V

    return-object v10
.end method

.method public a(JLcom/applovin/exoplayer2/al;)Lcom/applovin/exoplayer2/ae;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/af;->fQ:Lcom/applovin/exoplayer2/ad;

    if-nez v0, :cond_9

    invoke-direct {p0, p3}, Lcom/applovin/exoplayer2/af;->e(Lcom/applovin/exoplayer2/al;)Lcom/applovin/exoplayer2/ae;

    move-result-object p1

    goto :goto_f

    :cond_9
    iget-object p3, p3, Lcom/applovin/exoplayer2/al;->ci:Lcom/applovin/exoplayer2/ba;

    invoke-direct {p0, p3, v0, p1, p2}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/ad;J)Lcom/applovin/exoplayer2/ae;

    move-result-object p1

    :goto_f
    return-object p1
.end method

.method public a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/ae;)Lcom/applovin/exoplayer2/ae;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v2, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    invoke-direct {v0, v3}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/h/p$a;)Z

    move-result v12

    invoke-direct {v0, v1, v3}, Lcom/applovin/exoplayer2/af;->b(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;)Z

    move-result v13

    invoke-direct {v0, v1, v3, v12}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/h/p$a;Z)Z

    move-result v14

    iget-object v4, v2, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    iget-object v4, v4, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    iget-object v5, v0, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v1, v4, v5}, Lcom/applovin/exoplayer2/ba;->a(Ljava/lang/Object;Lcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/h/o;->la()Z

    move-result v1

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_35

    iget v1, v3, Lcom/applovin/exoplayer2/h/o;->LM:I

    if-ne v1, v4, :cond_2e

    goto :goto_35

    :cond_2e
    iget-object v7, v0, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v7, v1}, Lcom/applovin/exoplayer2/ba$a;->al(I)J

    move-result-wide v7

    goto :goto_36

    :cond_35
    :goto_35
    move-wide v7, v5

    :goto_36
    invoke-virtual {v3}, Lcom/applovin/exoplayer2/h/o;->la()Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, v0, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    iget v5, v3, Lcom/applovin/exoplayer2/h/o;->gP:I

    iget v6, v3, Lcom/applovin/exoplayer2/h/o;->gQ:I

    invoke-virtual {v1, v5, v6}, Lcom/applovin/exoplayer2/ba$a;->i(II)J

    move-result-wide v5

    :goto_46
    move-wide v9, v5

    goto :goto_5c

    :cond_48
    cmp-long v1, v7, v5

    if-eqz v1, :cond_55

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v1, v7, v5

    if-nez v1, :cond_53

    goto :goto_55

    :cond_53
    move-wide v9, v7

    goto :goto_5c

    :cond_55
    :goto_55
    iget-object v1, v0, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ba$a;->dd()J

    move-result-wide v5

    goto :goto_46

    :goto_5c
    invoke-virtual {v3}, Lcom/applovin/exoplayer2/h/o;->la()Z

    move-result v1

    if-eqz v1, :cond_6c

    iget-object v1, v0, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    iget v4, v3, Lcom/applovin/exoplayer2/h/o;->gP:I

    invoke-virtual {v1, v4}, Lcom/applovin/exoplayer2/ba$a;->ap(I)Z

    move-result v1

    move v11, v1

    goto :goto_7d

    :cond_6c
    iget v1, v3, Lcom/applovin/exoplayer2/h/o;->LM:I

    if-eq v1, v4, :cond_7b

    iget-object v4, v0, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    invoke-virtual {v4, v1}, Lcom/applovin/exoplayer2/ba$a;->ap(I)Z

    move-result v1

    if-eqz v1, :cond_7b

    const/4 v1, 0x1

    const/4 v11, 0x1

    goto :goto_7d

    :cond_7b
    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_7d
    new-instance v15, Lcom/applovin/exoplayer2/ae;

    iget-wide v4, v2, Lcom/applovin/exoplayer2/ae;->fF:J

    iget-wide v1, v2, Lcom/applovin/exoplayer2/ae;->de:J

    move-wide/from16 v16, v1

    move-object v1, v15

    move-object v2, v3

    move-wide v3, v4

    move-wide/from16 v5, v16

    invoke-direct/range {v1 .. v14}, Lcom/applovin/exoplayer2/ae;-><init>(Lcom/applovin/exoplayer2/h/p$a;JJJJZZZZ)V

    return-object v15
.end method

.method public a(Lcom/applovin/exoplayer2/ba;I)Z
    .registers 3

    iput p2, p0, Lcom/applovin/exoplayer2/af;->bS:I

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/af;->b(Lcom/applovin/exoplayer2/ba;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/applovin/exoplayer2/ba;JJ)Z
    .registers 14

    iget-object v0, p0, Lcom/applovin/exoplayer2/af;->fO:Lcom/applovin/exoplayer2/ad;

    const/4 v1, 0x0

    :goto_3
    const/4 v2, 0x1

    if-eqz v0, :cond_7d

    iget-object v3, v0, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    if-nez v1, :cond_f

    invoke-virtual {p0, p1, v3}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/ae;)Lcom/applovin/exoplayer2/ae;

    move-result-object v1

    goto :goto_28

    :cond_f
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ba;Lcom/applovin/exoplayer2/ad;J)Lcom/applovin/exoplayer2/ae;

    move-result-object v4

    if-nez v4, :cond_1b

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/af;->b(Lcom/applovin/exoplayer2/ad;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_1b
    invoke-direct {p0, v3, v4}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ae;Lcom/applovin/exoplayer2/ae;)Z

    move-result v5

    if-nez v5, :cond_27

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/af;->b(Lcom/applovin/exoplayer2/ad;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_27
    move-object v1, v4

    :goto_28
    iget-wide v4, v3, Lcom/applovin/exoplayer2/ae;->de:J

    invoke-virtual {v1, v4, v5}, Lcom/applovin/exoplayer2/ae;->w(J)Lcom/applovin/exoplayer2/ae;

    move-result-object v4

    iput-object v4, v0, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-wide v3, v3, Lcom/applovin/exoplayer2/ae;->fH:J

    iget-wide v5, v1, Lcom/applovin/exoplayer2/ae;->fH:J

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/applovin/exoplayer2/af;->f(JJ)Z

    move-result v3

    if-nez v3, :cond_75

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->cl()V

    iget-wide p1, v1, Lcom/applovin/exoplayer2/ae;->fH:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v3

    if-nez p3, :cond_4e

    const-wide p1, 0x7fffffffffffffffL

    goto :goto_52

    :cond_4e
    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/ad;->q(J)J

    move-result-wide p1

    :goto_52
    iget-object p3, p0, Lcom/applovin/exoplayer2/af;->fP:Lcom/applovin/exoplayer2/ad;

    const/4 v1, 0x0

    if-ne v0, p3, :cond_69

    iget-object p3, v0, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-boolean p3, p3, Lcom/applovin/exoplayer2/ae;->fI:Z

    if-nez p3, :cond_69

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p3, p4, v3

    if-eqz p3, :cond_67

    cmp-long p3, p4, p1

    if-ltz p3, :cond_69

    :cond_67
    const/4 p1, 0x1

    goto :goto_6a

    :cond_69
    const/4 p1, 0x0

    :goto_6a
    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/af;->b(Lcom/applovin/exoplayer2/ad;)Z

    move-result p2

    if-nez p2, :cond_73

    if-nez p1, :cond_73

    goto :goto_74

    :cond_73
    const/4 v2, 0x0

    :goto_74
    return v2

    :cond_75
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ci()Lcom/applovin/exoplayer2/ad;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :cond_7d
    return v2
.end method

.method public b(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;J)Lcom/applovin/exoplayer2/h/p$a;
    .registers 12

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/applovin/exoplayer2/af;->bI:Lcom/applovin/exoplayer2/ba$a;

    move-object v0, p1

    move-object v1, p2

    move-wide v2, p3

    invoke-static/range {v0 .. v6}, Lcom/applovin/exoplayer2/af;->a(Lcom/applovin/exoplayer2/ba;Ljava/lang/Object;JJLcom/applovin/exoplayer2/ba$a;)Lcom/applovin/exoplayer2/h/p$a;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/applovin/exoplayer2/ad;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    invoke-static {v2}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-object v2, p0, Lcom/applovin/exoplayer2/af;->fQ:Lcom/applovin/exoplayer2/ad;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    return v1

    :cond_13
    iput-object p1, p0, Lcom/applovin/exoplayer2/af;->fQ:Lcom/applovin/exoplayer2/ad;

    :goto_15
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ad;->ci()Lcom/applovin/exoplayer2/ad;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ad;->ci()Lcom/applovin/exoplayer2/ad;

    move-result-object p1

    iget-object v2, p0, Lcom/applovin/exoplayer2/af;->fP:Lcom/applovin/exoplayer2/ad;

    if-ne p1, v2, :cond_28

    iget-object v1, p0, Lcom/applovin/exoplayer2/af;->fO:Lcom/applovin/exoplayer2/ad;

    iput-object v1, p0, Lcom/applovin/exoplayer2/af;->fP:Lcom/applovin/exoplayer2/ad;

    const/4 v1, 0x1

    :cond_28
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ad;->release()V

    iget v2, p0, Lcom/applovin/exoplayer2/af;->fR:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/applovin/exoplayer2/af;->fR:I

    goto :goto_15

    :cond_31
    iget-object p1, p0, Lcom/applovin/exoplayer2/af;->fQ:Lcom/applovin/exoplayer2/ad;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/ad;->a(Lcom/applovin/exoplayer2/ad;)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/af;->cv()V

    return v1
.end method

.method public b(Lcom/applovin/exoplayer2/ba;Z)Z
    .registers 3

    iput-boolean p2, p0, Lcom/applovin/exoplayer2/af;->bT:Z

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/af;->b(Lcom/applovin/exoplayer2/ba;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .registers 4

    iget v0, p0, Lcom/applovin/exoplayer2/af;->fR:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/applovin/exoplayer2/af;->fO:Lcom/applovin/exoplayer2/ad;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/ad;

    iget-object v1, v0, Lcom/applovin/exoplayer2/ad;->ch:Ljava/lang/Object;

    iput-object v1, p0, Lcom/applovin/exoplayer2/af;->fS:Ljava/lang/Object;

    iget-object v1, v0, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-object v1, v1, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    iget-wide v1, v1, Lcom/applovin/exoplayer2/h/o;->LL:J

    iput-wide v1, p0, Lcom/applovin/exoplayer2/af;->fT:J

    :goto_19
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->release()V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ci()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    goto :goto_19

    :cond_23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/af;->fO:Lcom/applovin/exoplayer2/ad;

    iput-object v0, p0, Lcom/applovin/exoplayer2/af;->fQ:Lcom/applovin/exoplayer2/ad;

    iput-object v0, p0, Lcom/applovin/exoplayer2/af;->fP:Lcom/applovin/exoplayer2/ad;

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/af;->fR:I

    invoke-direct {p0}, Lcom/applovin/exoplayer2/af;->cv()V

    return-void
.end method

.method public cp()Z
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/af;->fQ:Lcom/applovin/exoplayer2/ad;

    if-eqz v0, :cond_28

    iget-object v1, v0, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-boolean v1, v1, Lcom/applovin/exoplayer2/ae;->fL:Z

    if-nez v1, :cond_26

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->cf()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/applovin/exoplayer2/af;->fQ:Lcom/applovin/exoplayer2/ad;

    iget-object v0, v0, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-wide v0, v0, Lcom/applovin/exoplayer2/ae;->fH:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_26

    iget v0, p0, Lcom/applovin/exoplayer2/af;->fR:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_26

    goto :goto_28

    :cond_26
    const/4 v0, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v0, 0x1

    :goto_29
    return v0
.end method

.method public cq()Lcom/applovin/exoplayer2/ad;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/af;->fQ:Lcom/applovin/exoplayer2/ad;

    return-object v0
.end method

.method public cr()Lcom/applovin/exoplayer2/ad;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/af;->fO:Lcom/applovin/exoplayer2/ad;

    return-object v0
.end method

.method public cs()Lcom/applovin/exoplayer2/ad;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/af;->fP:Lcom/applovin/exoplayer2/ad;

    return-object v0
.end method

.method public ct()Lcom/applovin/exoplayer2/ad;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/af;->fP:Lcom/applovin/exoplayer2/ad;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ci()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/af;->fP:Lcom/applovin/exoplayer2/ad;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ci()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/af;->fP:Lcom/applovin/exoplayer2/ad;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/af;->cv()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/af;->fP:Lcom/applovin/exoplayer2/ad;

    return-object v0
.end method

.method public cu()Lcom/applovin/exoplayer2/ad;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/af;->fO:Lcom/applovin/exoplayer2/ad;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v2, p0, Lcom/applovin/exoplayer2/af;->fP:Lcom/applovin/exoplayer2/ad;

    if-ne v0, v2, :cond_10

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ci()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/af;->fP:Lcom/applovin/exoplayer2/ad;

    :cond_10
    iget-object v0, p0, Lcom/applovin/exoplayer2/af;->fO:Lcom/applovin/exoplayer2/ad;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->release()V

    iget v0, p0, Lcom/applovin/exoplayer2/af;->fR:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/applovin/exoplayer2/af;->fR:I

    if-nez v0, :cond_2d

    iput-object v1, p0, Lcom/applovin/exoplayer2/af;->fQ:Lcom/applovin/exoplayer2/ad;

    iget-object v0, p0, Lcom/applovin/exoplayer2/af;->fO:Lcom/applovin/exoplayer2/ad;

    iget-object v1, v0, Lcom/applovin/exoplayer2/ad;->ch:Ljava/lang/Object;

    iput-object v1, p0, Lcom/applovin/exoplayer2/af;->fS:Ljava/lang/Object;

    iget-object v0, v0, Lcom/applovin/exoplayer2/ad;->fx:Lcom/applovin/exoplayer2/ae;

    iget-object v0, v0, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    iget-wide v0, v0, Lcom/applovin/exoplayer2/h/o;->LL:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/af;->fT:J

    :cond_2d
    iget-object v0, p0, Lcom/applovin/exoplayer2/af;->fO:Lcom/applovin/exoplayer2/ad;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ad;->ci()Lcom/applovin/exoplayer2/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/af;->fO:Lcom/applovin/exoplayer2/ad;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/af;->cv()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/af;->fO:Lcom/applovin/exoplayer2/ad;

    return-object v0
.end method

.method public e(Lcom/applovin/exoplayer2/h/n;)Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/af;->fQ:Lcom/applovin/exoplayer2/ad;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/applovin/exoplayer2/ad;->ft:Lcom/applovin/exoplayer2/h/n;

    if-ne v0, p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public t(J)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/af;->fQ:Lcom/applovin/exoplayer2/ad;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/ad;->t(J)V

    :cond_7
    return-void
.end method
