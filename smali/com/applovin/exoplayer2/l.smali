###### Class com.applovin.exoplayer2.l (com.applovin.exoplayer2.l)
.class public Lcom/applovin/exoplayer2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/aa;


# instance fields
.field private final aM:Lcom/applovin/exoplayer2/k/m;

.field private final aN:J

.field private final aO:J

.field private final aP:J

.field private final aQ:J

.field private final aR:I

.field private final aS:Z

.field private final aT:J

.field private final aU:Z

.field private aV:I

.field private aW:Z


# direct methods
.method public constructor <init>()V
    .registers 11

    new-instance v1, Lcom/applovin/exoplayer2/k/m;

    const/4 v0, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v1, v0, v2}, Lcom/applovin/exoplayer2/k/m;-><init>(ZI)V

    const v2, 0xc350

    const v3, 0xc350

    const/16 v4, 0x9c4

    const/16 v5, 0x1388

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/applovin/exoplayer2/l;-><init>(Lcom/applovin/exoplayer2/k/m;IIIIIZIZ)V

    return-void
.end method

.method protected constructor <init>(Lcom/applovin/exoplayer2/k/m;IIIIIZIZ)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const-string v1, "bufferForPlaybackMs"

    const-string v2, "0"

    invoke-static {p4, v0, v1, v2}, Lcom/applovin/exoplayer2/l;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "bufferForPlaybackAfterRebufferMs"

    invoke-static {p5, v0, v3, v2}, Lcom/applovin/exoplayer2/l;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v4, "minBufferMs"

    invoke-static {p2, p4, v4, v1}, Lcom/applovin/exoplayer2/l;->a(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p5, v4, v3}, Lcom/applovin/exoplayer2/l;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "maxBufferMs"

    invoke-static {p3, p2, v1, v4}, Lcom/applovin/exoplayer2/l;->a(IILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "backBufferDurationMs"

    invoke-static {p8, v0, v1, v2}, Lcom/applovin/exoplayer2/l;->a(IILjava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/l;->aM:Lcom/applovin/exoplayer2/k/m;

    int-to-long p1, p2

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/h;->g(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/applovin/exoplayer2/l;->aN:J

    int-to-long p1, p3

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/h;->g(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/applovin/exoplayer2/l;->aO:J

    int-to-long p1, p4

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/h;->g(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/applovin/exoplayer2/l;->aP:J

    int-to-long p1, p5

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/h;->g(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/applovin/exoplayer2/l;->aQ:J

    iput p6, p0, Lcom/applovin/exoplayer2/l;->aR:I

    const/4 p1, -0x1

    if-eq p6, p1, :cond_46

    goto :goto_48

    :cond_46
    const/high16 p6, 0xc80000

    :goto_48
    iput p6, p0, Lcom/applovin/exoplayer2/l;->aV:I

    iput-boolean p7, p0, Lcom/applovin/exoplayer2/l;->aS:Z

    int-to-long p1, p8

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/h;->g(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/applovin/exoplayer2/l;->aT:J

    iput-boolean p9, p0, Lcom/applovin/exoplayer2/l;->aU:Z

    return-void
.end method

.method private static a(IILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-lt p0, p1, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be less than "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/l/a;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method private e(Z)V
    .registers 4

    iget v0, p0, Lcom/applovin/exoplayer2/l;->aR:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/high16 v0, 0xc80000

    :cond_7
    iput v0, p0, Lcom/applovin/exoplayer2/l;->aV:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/l;->aW:Z

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/applovin/exoplayer2/l;->aM:Lcom/applovin/exoplayer2/k/m;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/k/m;->Y()V

    :cond_13
    return-void
.end method

.method private static s(I)I
    .registers 2

    const/high16 v0, 0x20000

    packed-switch p0, :pswitch_data_18

    :pswitch_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_b
    return v0

    :pswitch_c
    const/high16 p0, 0x7d00000

    return p0

    :pswitch_f
    const/high16 p0, 0xc80000

    return p0

    :pswitch_12
    const/high16 p0, 0x89a0000

    return p0

    :pswitch_15
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_18
    .packed-switch -0x2
        :pswitch_15
        :pswitch_5
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method protected a([Lcom/applovin/exoplayer2/ar;[Lcom/applovin/exoplayer2/j/d;)I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_17

    aget-object v2, p2, v0

    if-eqz v2, :cond_14

    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/applovin/exoplayer2/ar;->M()I

    move-result v2

    invoke-static {v2}, Lcom/applovin/exoplayer2/l;->s(I)I

    move-result v2

    add-int/2addr v1, v2

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_17
    const/high16 p1, 0xc80000

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public a([Lcom/applovin/exoplayer2/ar;Lcom/applovin/exoplayer2/h/ad;[Lcom/applovin/exoplayer2/j/d;)V
    .registers 5

    iget p2, p0, Lcom/applovin/exoplayer2/l;->aR:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    invoke-virtual {p0, p1, p3}, Lcom/applovin/exoplayer2/l;->a([Lcom/applovin/exoplayer2/ar;[Lcom/applovin/exoplayer2/j/d;)I

    move-result p2

    :cond_9
    iput p2, p0, Lcom/applovin/exoplayer2/l;->aV:I

    iget-object p1, p0, Lcom/applovin/exoplayer2/l;->aM:Lcom/applovin/exoplayer2/k/m;

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/k/m;->fj(I)V

    return-void
.end method

.method public a(JFZJ)Z
    .registers 10

    invoke-static {p1, p2, p3}, Lcom/applovin/exoplayer2/l/ai;->b(JF)J

    move-result-wide p1

    if-eqz p4, :cond_9

    iget-wide p3, p0, Lcom/applovin/exoplayer2/l;->aQ:J

    goto :goto_b

    :cond_9
    iget-wide p3, p0, Lcom/applovin/exoplayer2/l;->aP:J

    :goto_b
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p5, v0

    if-eqz v2, :cond_1b

    const-wide/16 v0, 0x2

    div-long/2addr p5, v0

    invoke-static {p5, p6, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :cond_1b
    const-wide/16 p5, 0x0

    cmp-long v0, p3, p5

    if-lez v0, :cond_36

    cmp-long p5, p1, p3

    if-gez p5, :cond_36

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/l;->aS:Z

    if-nez p1, :cond_34

    iget-object p1, p0, Lcom/applovin/exoplayer2/l;->aM:Lcom/applovin/exoplayer2/k/m;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/k/m;->ok()I

    move-result p1

    iget p2, p0, Lcom/applovin/exoplayer2/l;->aV:I

    if-lt p1, p2, :cond_34

    goto :goto_36

    :cond_34
    const/4 p1, 0x0

    goto :goto_37

    :cond_36
    :goto_36
    const/4 p1, 0x1

    :goto_37
    return p1
.end method

.method public ab()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/l;->e(Z)V

    return-void
.end method

.method public ap()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/l;->e(Z)V

    return-void
.end method

.method public aq()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/l;->e(Z)V

    return-void
.end method

.method public ar()Lcom/applovin/exoplayer2/k/b;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/l;->aM:Lcom/applovin/exoplayer2/k/m;

    return-object v0
.end method

.method public as()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/l;->aT:J

    return-wide v0
.end method

.method public at()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/l;->aU:Z

    return v0
.end method

.method public b(JJF)Z
    .registers 12

    iget-object p1, p0, Lcom/applovin/exoplayer2/l;->aM:Lcom/applovin/exoplayer2/k/m;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/k/m;->ok()I

    move-result p1

    iget p2, p0, Lcom/applovin/exoplayer2/l;->aV:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p1, p2, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    iget-wide v2, p0, Lcom/applovin/exoplayer2/l;->aN:J

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p5, p2

    if-lez p2, :cond_21

    invoke-static {v2, v3, p5}, Lcom/applovin/exoplayer2/l/ai;->a(JF)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/applovin/exoplayer2/l;->aO:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_21
    const-wide/32 v4, 0x7a120

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    cmp-long p2, p3, v2

    if-gez p2, :cond_44

    iget-boolean p2, p0, Lcom/applovin/exoplayer2/l;->aS:Z

    if-nez p2, :cond_34

    if-nez p1, :cond_33

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :cond_34
    :goto_34
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/l;->aW:Z

    if-nez v0, :cond_4e

    cmp-long p1, p3, v4

    if-gez p1, :cond_4e

    const-string p1, "DefaultLoadControl"

    const-string p2, "Target buffer size reached with less than 500ms of buffered media data."

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e

    :cond_44
    iget-wide v2, p0, Lcom/applovin/exoplayer2/l;->aO:J

    cmp-long p2, p3, v2

    if-gez p2, :cond_4c

    if-eqz p1, :cond_4e

    :cond_4c
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/l;->aW:Z

    :cond_4e
    :goto_4e
    iget-boolean p1, p0, Lcom/applovin/exoplayer2/l;->aW:Z

    return p1
.end method
