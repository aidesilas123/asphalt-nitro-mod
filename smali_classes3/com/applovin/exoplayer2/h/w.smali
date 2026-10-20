###### Class com.applovin.exoplayer2.h.w (com.applovin.exoplayer2.h.w)
.class public Lcom/applovin/exoplayer2/h/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/h/w$b;,
        Lcom/applovin/exoplayer2/h/w$a;,
        Lcom/applovin/exoplayer2/h/w$c;
    }
.end annotation


# instance fields
.field private Gi:J

.field private final LS:Lcom/applovin/exoplayer2/d/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final MS:Lcom/applovin/exoplayer2/h/v;

.field private final MT:Lcom/applovin/exoplayer2/h/w$a;

.field private final MU:Lcom/applovin/exoplayer2/h/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/h/ab<",
            "Lcom/applovin/exoplayer2/h/w$b;",
            ">;"
        }
    .end annotation
.end field

.field private MV:Lcom/applovin/exoplayer2/h/w$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private MW:Lcom/applovin/exoplayer2/v;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private MX:Lcom/applovin/exoplayer2/d/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private MY:I

.field private MZ:[I

.field private Na:[Lcom/applovin/exoplayer2/e/x$a;

.field private Nb:I

.field private Nc:I

.field private Nd:I

.field private Ne:J

.field private Nf:J

.field private Ng:Z

.field private Nh:Z

.field private Ni:Z

.field private Nj:Z

.field private Nk:Lcom/applovin/exoplayer2/v;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Nl:Lcom/applovin/exoplayer2/v;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Nm:I

.field private Nn:Z

.field private No:Z

.field private Np:J

.field private Nq:Z

.field private final co:Landroid/os/Looper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fR:I

.field private final fY:Lcom/applovin/exoplayer2/d/g$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private tR:[I

.field private tS:[J

.field private tU:[J

.field private zJ:[I


# direct methods
.method protected constructor <init>(Lcom/applovin/exoplayer2/k/b;Landroid/os/Looper;Lcom/applovin/exoplayer2/d/h;Lcom/applovin/exoplayer2/d/g$a;)V
    .registers 5
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/applovin/exoplayer2/d/h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/applovin/exoplayer2/d/g$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/exoplayer2/h/w;->co:Landroid/os/Looper;

    iput-object p3, p0, Lcom/applovin/exoplayer2/h/w;->LS:Lcom/applovin/exoplayer2/d/h;

    iput-object p4, p0, Lcom/applovin/exoplayer2/h/w;->fY:Lcom/applovin/exoplayer2/d/g$a;

    new-instance p2, Lcom/applovin/exoplayer2/h/v;

    invoke-direct {p2, p1}, Lcom/applovin/exoplayer2/h/v;-><init>(Lcom/applovin/exoplayer2/k/b;)V

    iput-object p2, p0, Lcom/applovin/exoplayer2/h/w;->MS:Lcom/applovin/exoplayer2/h/v;

    new-instance p1, Lcom/applovin/exoplayer2/h/w$a;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/h/w$a;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/w;->MT:Lcom/applovin/exoplayer2/h/w$a;

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/applovin/exoplayer2/h/w;->MY:I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/applovin/exoplayer2/h/w;->MZ:[I

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/applovin/exoplayer2/h/w;->tS:[J

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/applovin/exoplayer2/h/w;->tU:[J

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/applovin/exoplayer2/h/w;->zJ:[I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/applovin/exoplayer2/h/w;->tR:[I

    new-array p1, p1, [Lcom/applovin/exoplayer2/e/x$a;

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/w;->Na:[Lcom/applovin/exoplayer2/e/x$a;

    new-instance p1, Lcom/applovin/exoplayer2/h/ab;

    sget-object p2, Lcom/applovin/exoplayer2/h/n0;->a:Lcom/applovin/exoplayer2/h/n0;

    invoke-direct {p1, p2}, Lcom/applovin/exoplayer2/h/ab;-><init>(Lcom/applovin/exoplayer2/l/h;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/w;->MU:Lcom/applovin/exoplayer2/h/ab;

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/applovin/exoplayer2/h/w;->Gi:J

    iput-wide p1, p0, Lcom/applovin/exoplayer2/h/w;->Ne:J

    iput-wide p1, p0, Lcom/applovin/exoplayer2/h/w;->Nf:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/h/w;->Ni:Z

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/h/w;->Nh:Z

    return-void
.end method

.method private a(IIJZ)I
    .registers 13

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p2, :cond_2a

    iget-object v3, p0, Lcom/applovin/exoplayer2/h/w;->tU:[J

    aget-wide v4, v3, p1

    cmp-long v6, v4, p3

    if-gtz v6, :cond_2a

    if-eqz p5, :cond_17

    iget-object v4, p0, Lcom/applovin/exoplayer2/h/w;->zJ:[I

    aget v4, v4, p1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_20

    :cond_17
    aget-wide v4, v3, p1

    cmp-long v1, v4, p3

    if-nez v1, :cond_1f

    move v1, v2

    goto :goto_2a

    :cond_1f
    move v1, v2

    :cond_20
    add-int/lit8 p1, p1, 0x1

    iget v3, p0, Lcom/applovin/exoplayer2/h/w;->MY:I

    if-ne p1, v3, :cond_27

    const/4 p1, 0x0

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2a
    :goto_2a
    return v1
.end method

.method private declared-synchronized a(Lcom/applovin/exoplayer2/w;Lcom/applovin/exoplayer2/c/g;ZZLcom/applovin/exoplayer2/h/w$a;)I
    .registers 10

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p2, Lcom/applovin/exoplayer2/c/g;->rI:Z

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/w;->lF()Z

    move-result v0

    const/4 v1, -0x5

    const/4 v2, -0x3

    const/4 v3, -0x4

    if-nez v0, :cond_31

    if-nez p4, :cond_2b

    iget-boolean p4, p0, Lcom/applovin/exoplayer2/h/w;->Ng:Z

    if-eqz p4, :cond_14

    goto :goto_2b

    :cond_14
    iget-object p2, p0, Lcom/applovin/exoplayer2/h/w;->Nl:Lcom/applovin/exoplayer2/v;

    if-eqz p2, :cond_29

    if-nez p3, :cond_1e

    iget-object p3, p0, Lcom/applovin/exoplayer2/h/w;->MW:Lcom/applovin/exoplayer2/v;

    if-eq p2, p3, :cond_29

    :cond_1e
    invoke-static {p2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/applovin/exoplayer2/v;

    invoke-direct {p0, p2, p1}, Lcom/applovin/exoplayer2/h/w;->a(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/w;)V
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_88

    monitor-exit p0

    return v1

    :cond_29
    monitor-exit p0

    return v2

    :cond_2b
    :goto_2b
    const/4 p1, 0x4

    :try_start_2c
    invoke-virtual {p2, p1}, Lcom/applovin/exoplayer2/c/a;->bs(I)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_88

    monitor-exit p0

    return v3

    :cond_31
    :try_start_31
    iget-object p4, p0, Lcom/applovin/exoplayer2/h/w;->MU:Lcom/applovin/exoplayer2/h/ab;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/h/w;->ly()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/applovin/exoplayer2/h/ab;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/applovin/exoplayer2/h/w$b;

    iget-object p4, p4, Lcom/applovin/exoplayer2/h/w$b;->dU:Lcom/applovin/exoplayer2/v;

    if-nez p3, :cond_83

    iget-object p3, p0, Lcom/applovin/exoplayer2/h/w;->MW:Lcom/applovin/exoplayer2/v;

    if-eq p4, p3, :cond_46

    goto :goto_83

    :cond_46
    iget p1, p0, Lcom/applovin/exoplayer2/h/w;->Nd:I

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/h/w;->dU(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/h/w;->dR(I)Z

    move-result p3

    if-nez p3, :cond_57

    const/4 p1, 0x1

    iput-boolean p1, p2, Lcom/applovin/exoplayer2/c/g;->rI:Z
    :try_end_55
    .catchall {:try_start_31 .. :try_end_55} :catchall_88

    monitor-exit p0

    return v2

    :cond_57
    :try_start_57
    iget-object p3, p0, Lcom/applovin/exoplayer2/h/w;->zJ:[I

    aget p3, p3, p1

    invoke-virtual {p2, p3}, Lcom/applovin/exoplayer2/c/a;->bs(I)V

    iget-object p3, p0, Lcom/applovin/exoplayer2/h/w;->tU:[J

    aget-wide v0, p3, p1

    iput-wide v0, p2, Lcom/applovin/exoplayer2/c/g;->rJ:J

    iget-wide p3, p0, Lcom/applovin/exoplayer2/h/w;->Gi:J

    cmp-long v2, v0, p3

    if-gez v2, :cond_6f

    const/high16 p3, -0x80000000

    invoke-virtual {p2, p3}, Lcom/applovin/exoplayer2/c/a;->bt(I)V

    :cond_6f
    iget-object p2, p0, Lcom/applovin/exoplayer2/h/w;->tR:[I

    aget p2, p2, p1

    iput p2, p5, Lcom/applovin/exoplayer2/h/w$a;->oW:I

    iget-object p2, p0, Lcom/applovin/exoplayer2/h/w;->tS:[J

    aget-wide p3, p2, p1

    iput-wide p3, p5, Lcom/applovin/exoplayer2/h/w$a;->zr:J

    iget-object p2, p0, Lcom/applovin/exoplayer2/h/w;->Na:[Lcom/applovin/exoplayer2/e/x$a;

    aget-object p1, p2, p1

    iput-object p1, p5, Lcom/applovin/exoplayer2/h/w$a;->xZ:Lcom/applovin/exoplayer2/e/x$a;
    :try_end_81
    .catchall {:try_start_57 .. :try_end_81} :catchall_88

    monitor-exit p0

    return v3

    :cond_83
    :goto_83
    :try_start_83
    invoke-direct {p0, p4, p1}, Lcom/applovin/exoplayer2/h/w;->a(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/w;)V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_88

    monitor-exit p0

    return v1

    :catchall_88
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static a(Lcom/applovin/exoplayer2/k/b;Landroid/os/Looper;Lcom/applovin/exoplayer2/d/h;Lcom/applovin/exoplayer2/d/g$a;)Lcom/applovin/exoplayer2/h/w;
    .registers 5

    new-instance v0, Lcom/applovin/exoplayer2/h/w;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Looper;

    invoke-static {p2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/applovin/exoplayer2/d/h;

    invoke-static {p3}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/applovin/exoplayer2/d/g$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/applovin/exoplayer2/h/w;-><init>(Lcom/applovin/exoplayer2/k/b;Landroid/os/Looper;Lcom/applovin/exoplayer2/d/h;Lcom/applovin/exoplayer2/d/g$a;)V

    return-object v0
.end method

.method private declared-synchronized a(JIJILcom/applovin/exoplayer2/e/x$a;)V
    .registers 16
    .param p7    # Lcom/applovin/exoplayer2/e/x$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/applovin/exoplayer2/h/w;->fR:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_20

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/h/w;->dU(I)I

    move-result v0

    iget-object v3, p0, Lcom/applovin/exoplayer2/h/w;->tS:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Lcom/applovin/exoplayer2/h/w;->tR:[I

    aget v0, v3, v0

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v0, v4, p4

    if-gtz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    :cond_20
    const/high16 v0, 0x20000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/h/w;->Ng:Z

    iget-wide v3, p0, Lcom/applovin/exoplayer2/h/w;->Nf:J

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/applovin/exoplayer2/h/w;->Nf:J

    iget v0, p0, Lcom/applovin/exoplayer2/h/w;->fR:I

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/h/w;->dU(I)I

    move-result v0

    iget-object v3, p0, Lcom/applovin/exoplayer2/h/w;->tU:[J

    aput-wide p1, v3, v0

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/w;->tS:[J

    aput-wide p4, p1, v0

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/w;->tR:[I

    aput p6, p1, v0

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/w;->zJ:[I

    aput p3, p1, v0

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/w;->Na:[Lcom/applovin/exoplayer2/e/x$a;

    aput-object p7, p1, v0

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/w;->MZ:[I

    iget p2, p0, Lcom/applovin/exoplayer2/h/w;->Nm:I

    aput p2, p1, v0

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/w;->MU:Lcom/applovin/exoplayer2/h/ab;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/h/ab;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6c

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/w;->MU:Lcom/applovin/exoplayer2/h/ab;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/h/ab;->lK()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/h/w$b;

    iget-object p1, p1, Lcom/applovin/exoplayer2/h/w$b;->dU:Lcom/applovin/exoplayer2/v;

    iget-object p2, p0, Lcom/applovin/exoplayer2/h/w;->Nl:Lcom/applovin/exoplayer2/v;

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/v;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9a

    :cond_6c
    iget-object p1, p0, Lcom/applovin/exoplayer2/h/w;->LS:Lcom/applovin/exoplayer2/d/h;

    if-eqz p1, :cond_81

    iget-object p2, p0, Lcom/applovin/exoplayer2/h/w;->co:Landroid/os/Looper;

    invoke-static {p2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Looper;

    iget-object p3, p0, Lcom/applovin/exoplayer2/h/w;->fY:Lcom/applovin/exoplayer2/d/g$a;

    iget-object p4, p0, Lcom/applovin/exoplayer2/h/w;->Nl:Lcom/applovin/exoplayer2/v;

    invoke-interface {p1, p2, p3, p4}, Lcom/applovin/exoplayer2/d/h;->a(Landroid/os/Looper;Lcom/applovin/exoplayer2/d/g$a;Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/d/h$a;

    move-result-object p1

    goto :goto_83

    :cond_81
    sget-object p1, Lcom/applovin/exoplayer2/d/h$a;->tk:Lcom/applovin/exoplayer2/d/h$a;

    :goto_83
    iget-object p2, p0, Lcom/applovin/exoplayer2/h/w;->MU:Lcom/applovin/exoplayer2/h/ab;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/h/w;->lw()I

    move-result p3

    new-instance p4, Lcom/applovin/exoplayer2/h/w$b;

    iget-object p5, p0, Lcom/applovin/exoplayer2/h/w;->Nl:Lcom/applovin/exoplayer2/v;

    invoke-static {p5}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/applovin/exoplayer2/v;

    const/4 p6, 0x0

    invoke-direct {p4, p5, p1, p6}, Lcom/applovin/exoplayer2/h/w$b;-><init>(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/d/h$a;Lcom/applovin/exoplayer2/h/w$1;)V

    invoke-virtual {p2, p3, p4}, Lcom/applovin/exoplayer2/h/ab;->b(ILjava/lang/Object;)V

    :cond_9a
    iget p1, p0, Lcom/applovin/exoplayer2/h/w;->fR:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/applovin/exoplayer2/h/w;->fR:I

    iget p2, p0, Lcom/applovin/exoplayer2/h/w;->MY:I

    if-ne p1, p2, :cond_10c

    add-int/lit16 p1, p2, 0x3e8

    new-array p3, p1, [I

    new-array p4, p1, [J

    new-array p5, p1, [J

    new-array p6, p1, [I

    new-array p7, p1, [I

    new-array v0, p1, [Lcom/applovin/exoplayer2/e/x$a;

    iget v1, p0, Lcom/applovin/exoplayer2/h/w;->Nc:I

    sub-int/2addr p2, v1

    iget-object v3, p0, Lcom/applovin/exoplayer2/h/w;->tS:[J

    invoke-static {v3, v1, p4, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/w;->tU:[J

    iget v3, p0, Lcom/applovin/exoplayer2/h/w;->Nc:I

    invoke-static {v1, v3, p5, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/w;->zJ:[I

    iget v3, p0, Lcom/applovin/exoplayer2/h/w;->Nc:I

    invoke-static {v1, v3, p6, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/w;->tR:[I

    iget v3, p0, Lcom/applovin/exoplayer2/h/w;->Nc:I

    invoke-static {v1, v3, p7, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/w;->Na:[Lcom/applovin/exoplayer2/e/x$a;

    iget v3, p0, Lcom/applovin/exoplayer2/h/w;->Nc:I

    invoke-static {v1, v3, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/w;->MZ:[I

    iget v3, p0, Lcom/applovin/exoplayer2/h/w;->Nc:I

    invoke-static {v1, v3, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/applovin/exoplayer2/h/w;->Nc:I

    iget-object v3, p0, Lcom/applovin/exoplayer2/h/w;->tS:[J

    invoke-static {v3, v2, p4, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/applovin/exoplayer2/h/w;->tU:[J

    invoke-static {v3, v2, p5, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/applovin/exoplayer2/h/w;->zJ:[I

    invoke-static {v3, v2, p6, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/applovin/exoplayer2/h/w;->tR:[I

    invoke-static {v3, v2, p7, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/applovin/exoplayer2/h/w;->Na:[Lcom/applovin/exoplayer2/e/x$a;

    invoke-static {v3, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/applovin/exoplayer2/h/w;->MZ:[I

    invoke-static {v3, v2, p3, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p4, p0, Lcom/applovin/exoplayer2/h/w;->tS:[J

    iput-object p5, p0, Lcom/applovin/exoplayer2/h/w;->tU:[J

    iput-object p6, p0, Lcom/applovin/exoplayer2/h/w;->zJ:[I

    iput-object p7, p0, Lcom/applovin/exoplayer2/h/w;->tR:[I

    iput-object v0, p0, Lcom/applovin/exoplayer2/h/w;->Na:[Lcom/applovin/exoplayer2/e/x$a;

    iput-object p3, p0, Lcom/applovin/exoplayer2/h/w;->MZ:[I

    iput v2, p0, Lcom/applovin/exoplayer2/h/w;->Nc:I

    iput p1, p0, Lcom/applovin/exoplayer2/h/w;->MY:I
    :try_end_10c
    .catchall {:try_start_1 .. :try_end_10c} :catchall_10e

    :cond_10c
    monitor-exit p0

    return-void

    :catchall_10e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static synthetic a(Lcom/applovin/exoplayer2/h/w$b;)V
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/h/w$b;->Nr:Lcom/applovin/exoplayer2/d/h$a;

    invoke-interface {p0}, Lcom/applovin/exoplayer2/d/h$a;->release()V

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/w;)V
    .registers 7

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/w;->MW:Lcom/applovin/exoplayer2/v;

    if-nez v0, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_b

    const/4 v0, 0x0

    goto :goto_d

    :cond_b
    iget-object v0, v0, Lcom/applovin/exoplayer2/v;->dC:Lcom/applovin/exoplayer2/d/e;

    :goto_d
    iput-object p1, p0, Lcom/applovin/exoplayer2/h/w;->MW:Lcom/applovin/exoplayer2/v;

    iget-object v2, p1, Lcom/applovin/exoplayer2/v;->dC:Lcom/applovin/exoplayer2/d/e;

    iget-object v3, p0, Lcom/applovin/exoplayer2/h/w;->LS:Lcom/applovin/exoplayer2/d/h;

    if-eqz v3, :cond_1e

    invoke-interface {v3, p1}, Lcom/applovin/exoplayer2/d/h;->g(Lcom/applovin/exoplayer2/v;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/applovin/exoplayer2/v;->B(I)Lcom/applovin/exoplayer2/v;

    move-result-object v3

    goto :goto_1f

    :cond_1e
    move-object v3, p1

    :goto_1f
    iput-object v3, p2, Lcom/applovin/exoplayer2/w;->dU:Lcom/applovin/exoplayer2/v;

    iget-object v3, p0, Lcom/applovin/exoplayer2/h/w;->MX:Lcom/applovin/exoplayer2/d/f;

    iput-object v3, p2, Lcom/applovin/exoplayer2/w;->dT:Lcom/applovin/exoplayer2/d/f;

    iget-object v3, p0, Lcom/applovin/exoplayer2/h/w;->LS:Lcom/applovin/exoplayer2/d/h;

    if-nez v3, :cond_2a

    return-void

    :cond_2a
    if-nez v1, :cond_33

    invoke-static {v0, v2}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    return-void

    :cond_33
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/w;->MX:Lcom/applovin/exoplayer2/d/f;

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/w;->LS:Lcom/applovin/exoplayer2/d/h;

    iget-object v2, p0, Lcom/applovin/exoplayer2/h/w;->co:Landroid/os/Looper;

    invoke-static {v2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    iget-object v3, p0, Lcom/applovin/exoplayer2/h/w;->fY:Lcom/applovin/exoplayer2/d/g$a;

    invoke-interface {v1, v2, v3, p1}, Lcom/applovin/exoplayer2/d/h;->b(Landroid/os/Looper;Lcom/applovin/exoplayer2/d/g$a;Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/d/f;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/w;->MX:Lcom/applovin/exoplayer2/d/f;

    iput-object p1, p2, Lcom/applovin/exoplayer2/w;->dT:Lcom/applovin/exoplayer2/d/f;

    if-eqz v0, :cond_50

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/w;->fY:Lcom/applovin/exoplayer2/d/g$a;

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/d/f;->b(Lcom/applovin/exoplayer2/d/g$a;)V

    :cond_50
    return-void
.end method

.method private declared-synchronized bb(J)Z
    .registers 8

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/applovin/exoplayer2/h/w;->fR:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_11

    iget-wide v3, p0, Lcom/applovin/exoplayer2/h/w;->Ne:J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_27

    cmp-long v0, p1, v3

    if-lez v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    monitor-exit p0

    return v1

    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/h/w;->lA()J

    move-result-wide v3
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_27

    cmp-long v0, v3, p1

    if-ltz v0, :cond_1b

    monitor-exit p0

    return v2

    :cond_1b
    :try_start_1b
    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/h/w;->bc(J)I

    move-result p1

    iget p2, p0, Lcom/applovin/exoplayer2/h/w;->Nb:I

    add-int/2addr p2, p1

    invoke-direct {p0, p2}, Lcom/applovin/exoplayer2/h/w;->dQ(I)J
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_27

    monitor-exit p0

    return v1

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private bc(J)I
    .registers 8

    iget v0, p0, Lcom/applovin/exoplayer2/h/w;->fR:I

    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/h/w;->dU(I)I

    move-result v1

    :cond_8
    :goto_8
    iget v2, p0, Lcom/applovin/exoplayer2/h/w;->Nd:I

    if-le v0, v2, :cond_20

    iget-object v2, p0, Lcom/applovin/exoplayer2/h/w;->tU:[J

    aget-wide v3, v2, v1

    cmp-long v2, v3, p1

    if-ltz v2, :cond_20

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    iget v1, p0, Lcom/applovin/exoplayer2/h/w;->MY:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_20
    return v0
.end method

.method private declared-synchronized c(JZZ)J
    .registers 15

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/applovin/exoplayer2/h/w;->fR:I

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_2d

    iget-object v3, p0, Lcom/applovin/exoplayer2/h/w;->tU:[J

    iget v5, p0, Lcom/applovin/exoplayer2/h/w;->Nc:I

    aget-wide v6, v3, v5

    cmp-long v3, p1, v6

    if-gez v3, :cond_12

    goto :goto_2d

    :cond_12
    if-eqz p4, :cond_1a

    iget p4, p0, Lcom/applovin/exoplayer2/h/w;->Nd:I

    if-eq p4, v0, :cond_1a

    add-int/lit8 v0, p4, 0x1

    :cond_1a
    move v6, v0

    move-object v4, p0

    move-wide v7, p1

    move v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/applovin/exoplayer2/h/w;->a(IIJZ)I

    move-result p1
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_2f

    const/4 p2, -0x1

    if-ne p1, p2, :cond_27

    monitor-exit p0

    return-wide v1

    :cond_27
    :try_start_27
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/h/w;->dS(I)J

    move-result-wide p1
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_2f

    monitor-exit p0

    return-wide p1

    :cond_2d
    :goto_2d
    monitor-exit p0

    return-wide v1

    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic d(Lcom/applovin/exoplayer2/h/w$b;)V
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/h/w;->a(Lcom/applovin/exoplayer2/h/w$b;)V

    return-void
.end method

.method private dQ(I)J
    .registers 10

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/h/w;->lw()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_12

    iget v3, p0, Lcom/applovin/exoplayer2/h/w;->fR:I

    iget v4, p0, Lcom/applovin/exoplayer2/h/w;->Nd:I

    sub-int/2addr v3, v4

    if-gt v0, v3, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    invoke-static {v3}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    iget v3, p0, Lcom/applovin/exoplayer2/h/w;->fR:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/applovin/exoplayer2/h/w;->fR:I

    iget-wide v4, p0, Lcom/applovin/exoplayer2/h/w;->Ne:J

    invoke-direct {p0, v3}, Lcom/applovin/exoplayer2/h/w;->dT(I)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/applovin/exoplayer2/h/w;->Nf:J

    if-nez v0, :cond_2e

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/h/w;->Ng:Z

    if-eqz v0, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/h/w;->Ng:Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/w;->MU:Lcom/applovin/exoplayer2/h/ab;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/h/ab;->dY(I)V

    iget p1, p0, Lcom/applovin/exoplayer2/h/w;->fR:I

    if-eqz p1, :cond_49

    sub-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/h/w;->dU(I)I

    move-result p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/w;->tS:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/w;->tR:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1

    :cond_49
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private dR(I)Z
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/w;->MX:Lcom/applovin/exoplayer2/d/f;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Lcom/applovin/exoplayer2/d/f;->P()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/w;->zJ:[I

    aget p1, v0, p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/w;->MX:Lcom/applovin/exoplayer2/d/f;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/d/f;->hs()Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    :goto_20
    return p1
.end method

.method private dS(I)J
    .registers 7
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/w;->Ne:J

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/h/w;->dT(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/h/w;->Ne:J

    iget v0, p0, Lcom/applovin/exoplayer2/h/w;->fR:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/applovin/exoplayer2/h/w;->fR:I

    iget v0, p0, Lcom/applovin/exoplayer2/h/w;->Nb:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/applovin/exoplayer2/h/w;->Nb:I

    iget v1, p0, Lcom/applovin/exoplayer2/h/w;->Nc:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/applovin/exoplayer2/h/w;->Nc:I

    iget v2, p0, Lcom/applovin/exoplayer2/h/w;->MY:I

    if-lt v1, v2, :cond_22

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/applovin/exoplayer2/h/w;->Nc:I

    :cond_22
    iget v1, p0, Lcom/applovin/exoplayer2/h/w;->Nd:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/applovin/exoplayer2/h/w;->Nd:I

    if-gez v1, :cond_2c

    const/4 p1, 0x0

    iput p1, p0, Lcom/applovin/exoplayer2/h/w;->Nd:I

    :cond_2c
    iget-object p1, p0, Lcom/applovin/exoplayer2/h/w;->MU:Lcom/applovin/exoplayer2/h/ab;

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/h/ab;->dX(I)V

    iget p1, p0, Lcom/applovin/exoplayer2/h/w;->fR:I

    if-nez p1, :cond_48

    iget p1, p0, Lcom/applovin/exoplayer2/h/w;->Nc:I

    if-nez p1, :cond_3b

    iget p1, p0, Lcom/applovin/exoplayer2/h/w;->MY:I

    :cond_3b
    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/w;->tS:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/w;->tR:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1

    :cond_48
    iget-object p1, p0, Lcom/applovin/exoplayer2/h/w;->tS:[J

    iget v0, p0, Lcom/applovin/exoplayer2/h/w;->Nc:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method private dT(I)J
    .registers 9

    const-wide/high16 v0, -0x8000000000000000L

    if-nez p1, :cond_5

    return-wide v0

    :cond_5
    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2}, Lcom/applovin/exoplayer2/h/w;->dU(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_c
    if-ge v3, p1, :cond_2b

    iget-object v4, p0, Lcom/applovin/exoplayer2/h/w;->tU:[J

    aget-wide v5, v4, v2

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v4, p0, Lcom/applovin/exoplayer2/h/w;->zJ:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1f

    goto :goto_2b

    :cond_1f
    add-int/lit8 v2, v2, -0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_28

    iget v2, p0, Lcom/applovin/exoplayer2/h/w;->MY:I

    add-int/lit8 v2, v2, -0x1

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_2b
    :goto_2b
    return-wide v0
.end method

.method private dU(I)I
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/h/w;->Nc:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/applovin/exoplayer2/h/w;->MY:I

    if-ge v0, p1, :cond_8

    goto :goto_9

    :cond_8
    sub-int/2addr v0, p1

    :goto_9
    return v0
.end method

.method private declared-synchronized lD()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/applovin/exoplayer2/h/w;->fR:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_9

    const-wide/16 v0, -0x1

    monitor-exit p0

    return-wide v0

    :cond_9
    :try_start_9
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/h/w;->dS(I)J

    move-result-wide v0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-wide v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private lE()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/w;->MX:Lcom/applovin/exoplayer2/d/f;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/w;->fY:Lcom/applovin/exoplayer2/d/g$a;

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/d/f;->b(Lcom/applovin/exoplayer2/d/g$a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/h/w;->MX:Lcom/applovin/exoplayer2/d/f;

    iput-object v0, p0, Lcom/applovin/exoplayer2/h/w;->MW:Lcom/applovin/exoplayer2/v;

    :cond_e
    return-void
.end method

.method private lF()Z
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/h/w;->Nd:I

    iget v1, p0, Lcom/applovin/exoplayer2/h/w;->fR:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private declared-synchronized lt()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/applovin/exoplayer2/h/w;->Nd:I

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/w;->MS:Lcom/applovin/exoplayer2/h/v;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/h/v;->lt()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized v(Lcom/applovin/exoplayer2/v;)Z
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/h/w;->Ni:Z

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/w;->Nl:Lcom/applovin/exoplayer2/v;

    invoke-static {p1, v1}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_46

    if-eqz v1, :cond_e

    monitor-exit p0

    return v0

    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/applovin/exoplayer2/h/w;->MU:Lcom/applovin/exoplayer2/h/ab;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/h/ab;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/w;->MU:Lcom/applovin/exoplayer2/h/ab;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/h/ab;->lK()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/h/w$b;

    iget-object v1, v1, Lcom/applovin/exoplayer2/h/w$b;->dU:Lcom/applovin/exoplayer2/v;

    invoke-virtual {v1, p1}, Lcom/applovin/exoplayer2/v;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/w;->MU:Lcom/applovin/exoplayer2/h/ab;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/h/ab;->lK()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/h/w$b;

    iget-object p1, p1, Lcom/applovin/exoplayer2/h/w$b;->dU:Lcom/applovin/exoplayer2/v;

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/w;->Nl:Lcom/applovin/exoplayer2/v;

    goto :goto_35

    :cond_33
    iput-object p1, p0, Lcom/applovin/exoplayer2/h/w;->Nl:Lcom/applovin/exoplayer2/v;

    :goto_35
    iget-object p1, p0, Lcom/applovin/exoplayer2/h/w;->Nl:Lcom/applovin/exoplayer2/v;

    iget-object v1, p1, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    iget-object p1, p1, Lcom/applovin/exoplayer2/v;->dw:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/applovin/exoplayer2/l/u;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/h/w;->Nn:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/h/w;->No:Z
    :try_end_43
    .catchall {:try_start_e .. :try_end_43} :catchall_46

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized Q(Z)Z
    .registers 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/w;->lF()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1a

    if-nez p1, :cond_18

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/h/w;->Ng:Z

    if-nez p1, :cond_18

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/w;->Nl:Lcom/applovin/exoplayer2/v;

    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/w;->MW:Lcom/applovin/exoplayer2/v;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_3a

    if-eq p1, v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :cond_18
    :goto_18
    monitor-exit p0

    return v1

    :cond_1a
    :try_start_1a
    iget-object p1, p0, Lcom/applovin/exoplayer2/h/w;->MU:Lcom/applovin/exoplayer2/h/ab;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/h/w;->ly()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/h/ab;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/h/w$b;

    iget-object p1, p1, Lcom/applovin/exoplayer2/h/w$b;->dU:Lcom/applovin/exoplayer2/v;

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/w;->MW:Lcom/applovin/exoplayer2/v;
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_3a

    if-eq p1, v0, :cond_2e

    monitor-exit p0

    return v1

    :cond_2e
    :try_start_2e
    iget p1, p0, Lcom/applovin/exoplayer2/h/w;->Nd:I

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/h/w;->dU(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/h/w;->dR(I)Z

    move-result p1
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_3a

    monitor-exit p0

    return p1

    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final Y()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/h/w;->e(Z)V

    return-void
.end method

.method public synthetic a(Lcom/applovin/exoplayer2/k/g;IZ)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/d0;->a(Lcom/applovin/exoplayer2/e/x;Lcom/applovin/exoplayer2/k/g;IZ)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/applovin/exoplayer2/k/g;IZI)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p4, p0, Lcom/applovin/exoplayer2/h/w;->MS:Lcom/applovin/exoplayer2/h/v;

    invoke-virtual {p4, p1, p2, p3}, Lcom/applovin/exoplayer2/h/v;->a(Lcom/applovin/exoplayer2/k/g;IZ)I

    move-result p1

    return p1
.end method

.method public a(Lcom/applovin/exoplayer2/w;Lcom/applovin/exoplayer2/c/g;IZ)I
    .registers 14
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    const/4 v6, 0x1

    goto :goto_9

    :cond_8
    const/4 v6, 0x0

    :goto_9
    iget-object v8, p0, Lcom/applovin/exoplayer2/h/w;->MT:Lcom/applovin/exoplayer2/h/w$a;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/applovin/exoplayer2/h/w;->a(Lcom/applovin/exoplayer2/w;Lcom/applovin/exoplayer2/c/g;ZZLcom/applovin/exoplayer2/h/w$a;)I

    move-result p1

    const/4 p4, -0x4

    if-ne p1, p4, :cond_3d

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/c/a;->gY()Z

    move-result p4

    if-nez p4, :cond_3d

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_21

    const/4 v1, 0x1

    :cond_21
    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_36

    if-eqz v1, :cond_2f

    iget-object p3, p0, Lcom/applovin/exoplayer2/h/w;->MS:Lcom/applovin/exoplayer2/h/v;

    iget-object p4, p0, Lcom/applovin/exoplayer2/h/w;->MT:Lcom/applovin/exoplayer2/h/w$a;

    invoke-virtual {p3, p2, p4}, Lcom/applovin/exoplayer2/h/v;->b(Lcom/applovin/exoplayer2/c/g;Lcom/applovin/exoplayer2/h/w$a;)V

    goto :goto_36

    :cond_2f
    iget-object p3, p0, Lcom/applovin/exoplayer2/h/w;->MS:Lcom/applovin/exoplayer2/h/v;

    iget-object p4, p0, Lcom/applovin/exoplayer2/h/w;->MT:Lcom/applovin/exoplayer2/h/w$a;

    invoke-virtual {p3, p2, p4}, Lcom/applovin/exoplayer2/h/v;->a(Lcom/applovin/exoplayer2/c/g;Lcom/applovin/exoplayer2/h/w$a;)V

    :cond_36
    :goto_36
    if-nez v1, :cond_3d

    iget p2, p0, Lcom/applovin/exoplayer2/h/w;->Nd:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/applovin/exoplayer2/h/w;->Nd:I

    :cond_3d
    return p1
.end method

.method public a(JIIILcom/applovin/exoplayer2/e/x$a;)V
    .registers 18
    .param p6    # Lcom/applovin/exoplayer2/e/x$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v8, p0

    iget-boolean v0, v8, Lcom/applovin/exoplayer2/h/w;->Nj:Z

    if-eqz v0, :cond_10

    iget-object v0, v8, Lcom/applovin/exoplayer2/h/w;->Nk:Lcom/applovin/exoplayer2/v;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/v;

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/h/w;->j(Lcom/applovin/exoplayer2/v;)V

    :cond_10
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    :goto_19
    iget-boolean v4, v8, Lcom/applovin/exoplayer2/h/w;->Nh:Z

    if-eqz v4, :cond_22

    if-nez v3, :cond_20

    return-void

    :cond_20
    iput-boolean v1, v8, Lcom/applovin/exoplayer2/h/w;->Nh:Z

    :cond_22
    iget-wide v4, v8, Lcom/applovin/exoplayer2/h/w;->Np:J

    add-long/2addr v4, p1

    iget-boolean v6, v8, Lcom/applovin/exoplayer2/h/w;->Nn:Z

    if-eqz v6, :cond_54

    iget-wide v6, v8, Lcom/applovin/exoplayer2/h/w;->Gi:J

    cmp-long v9, v4, v6

    if-gez v9, :cond_30

    return-void

    :cond_30
    if-nez v0, :cond_54

    iget-boolean v0, v8, Lcom/applovin/exoplayer2/h/w;->No:Z

    if-nez v0, :cond_50

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Overriding unexpected non-sync sample for format: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v8, Lcom/applovin/exoplayer2/h/w;->Nl:Lcom/applovin/exoplayer2/v;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "SampleQueue"

    invoke-static {v6, v0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, v8, Lcom/applovin/exoplayer2/h/w;->No:Z

    :cond_50
    or-int/lit8 v0, p3, 0x1

    move v6, v0

    goto :goto_55

    :cond_54
    move v6, p3

    :goto_55
    iget-boolean v0, v8, Lcom/applovin/exoplayer2/h/w;->Nq:Z

    if-eqz v0, :cond_66

    if-eqz v3, :cond_65

    invoke-direct {p0, v4, v5}, Lcom/applovin/exoplayer2/h/w;->bb(J)Z

    move-result v0

    if-nez v0, :cond_62

    goto :goto_65

    :cond_62
    iput-boolean v1, v8, Lcom/applovin/exoplayer2/h/w;->Nq:Z

    goto :goto_66

    :cond_65
    :goto_65
    return-void

    :cond_66
    :goto_66
    iget-object v0, v8, Lcom/applovin/exoplayer2/h/w;->MS:Lcom/applovin/exoplayer2/h/v;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/h/v;->lu()J

    move-result-wide v0

    move v7, p4

    int-to-long v2, v7

    sub-long/2addr v0, v2

    move/from16 v2, p5

    int-to-long v2, v2

    sub-long v9, v0, v2

    move-object v0, p0

    move-wide v1, v4

    move v3, v6

    move-wide v4, v9

    move v6, p4

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/applovin/exoplayer2/h/w;->a(JIJILcom/applovin/exoplayer2/e/x$a;)V

    return-void
.end method

.method public final a(Lcom/applovin/exoplayer2/h/w$c;)V
    .registers 2
    .param p1    # Lcom/applovin/exoplayer2/h/w$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/w;->MV:Lcom/applovin/exoplayer2/h/w$c;

    return-void
.end method

.method public final a(Lcom/applovin/exoplayer2/l/y;II)V
    .registers 4

    iget-object p3, p0, Lcom/applovin/exoplayer2/h/w;->MS:Lcom/applovin/exoplayer2/h/v;

    invoke-virtual {p3, p1, p2}, Lcom/applovin/exoplayer2/h/v;->c(Lcom/applovin/exoplayer2/l/y;I)V

    return-void
.end method

.method public final b(JZZ)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/w;->MS:Lcom/applovin/exoplayer2/h/v;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/h/w;->c(JZZ)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/h/v;->aY(J)V

    return-void
.end method

.method public final ba(J)V
    .registers 3

    iput-wide p1, p0, Lcom/applovin/exoplayer2/h/w;->Gi:J

    return-void
.end method

.method public synthetic c(Lcom/applovin/exoplayer2/l/y;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/e/d0;->b(Lcom/applovin/exoplayer2/e/x;Lcom/applovin/exoplayer2/l/y;I)V

    return-void
.end method

.method public final declared-synchronized dP(I)V
    .registers 4

    monitor-enter p0

    if-ltz p1, :cond_e

    :try_start_3
    iget v0, p0, Lcom/applovin/exoplayer2/h/w;->Nd:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/applovin/exoplayer2/h/w;->fR:I

    if-gt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :catchall_c
    move-exception p1

    goto :goto_19

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    iget v0, p0, Lcom/applovin/exoplayer2/h/w;->Nd:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/applovin/exoplayer2/h/w;->Nd:I
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_c

    monitor-exit p0

    return-void

    :goto_19
    monitor-exit p0

    throw p1
.end method

.method public e(Z)V
    .registers 6
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/w;->MS:Lcom/applovin/exoplayer2/h/v;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/h/v;->Y()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/h/w;->fR:I

    iput v0, p0, Lcom/applovin/exoplayer2/h/w;->Nb:I

    iput v0, p0, Lcom/applovin/exoplayer2/h/w;->Nc:I

    iput v0, p0, Lcom/applovin/exoplayer2/h/w;->Nd:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/h/w;->Nh:Z

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/applovin/exoplayer2/h/w;->Gi:J

    iput-wide v2, p0, Lcom/applovin/exoplayer2/h/w;->Ne:J

    iput-wide v2, p0, Lcom/applovin/exoplayer2/h/w;->Nf:J

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/h/w;->Ng:Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/w;->MU:Lcom/applovin/exoplayer2/h/ab;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/h/ab;->clear()V

    if-eqz p1, :cond_29

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/w;->Nk:Lcom/applovin/exoplayer2/v;

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/w;->Nl:Lcom/applovin/exoplayer2/v;

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/h/w;->Ni:Z

    :cond_29
    return-void
.end method

.method public final declared-synchronized e(JZ)Z
    .registers 12

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/w;->lt()V

    iget v0, p0, Lcom/applovin/exoplayer2/h/w;->Nd:I

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/h/w;->dU(I)I

    move-result v2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/w;->lF()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/w;->tU:[J

    aget-wide v3, v0, v2

    cmp-long v0, p1, v3

    if-ltz v0, :cond_3e

    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/w;->Nf:J

    cmp-long v3, p1, v0

    if-lez v3, :cond_22

    if-nez p3, :cond_22

    goto :goto_3e

    :cond_22
    iget p3, p0, Lcom/applovin/exoplayer2/h/w;->fR:I

    iget v0, p0, Lcom/applovin/exoplayer2/h/w;->Nd:I

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/applovin/exoplayer2/h/w;->a(IIJZ)I

    move-result p3
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_40

    const/4 v0, -0x1

    if-ne p3, v0, :cond_34

    monitor-exit p0

    return v7

    :cond_34
    :try_start_34
    iput-wide p1, p0, Lcom/applovin/exoplayer2/h/w;->Gi:J

    iget p1, p0, Lcom/applovin/exoplayer2/h/w;->Nd:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/applovin/exoplayer2/h/w;->Nd:I
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_40

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_3e
    :goto_3e
    monitor-exit p0

    return v7

    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f(JZ)I
    .registers 12

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/applovin/exoplayer2/h/w;->Nd:I

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/h/w;->dU(I)I

    move-result v2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/w;->lF()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/w;->tU:[J

    aget-wide v3, v0, v2

    cmp-long v0, p1, v3

    if-gez v0, :cond_17

    goto :goto_3a

    :cond_17
    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/w;->Nf:J

    cmp-long v3, p1, v0

    if-lez v3, :cond_26

    if-eqz p3, :cond_26

    iget p1, p0, Lcom/applovin/exoplayer2/h/w;->fR:I

    iget p2, p0, Lcom/applovin/exoplayer2/h/w;->Nd:I
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_3c

    sub-int/2addr p1, p2

    monitor-exit p0

    return p1

    :cond_26
    :try_start_26
    iget p3, p0, Lcom/applovin/exoplayer2/h/w;->fR:I

    iget v0, p0, Lcom/applovin/exoplayer2/h/w;->Nd:I

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/applovin/exoplayer2/h/w;->a(IIJZ)I

    move-result p1
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_3c

    const/4 p2, -0x1

    if-ne p1, p2, :cond_38

    monitor-exit p0

    return v7

    :cond_38
    monitor-exit p0

    return p1

    :cond_3a
    :goto_3a
    monitor-exit p0

    return v7

    :catchall_3c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j(Lcom/applovin/exoplayer2/v;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/h/w;->u(Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/v;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/h/w;->Nj:Z

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/w;->Nk:Lcom/applovin/exoplayer2/v;

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/h/w;->v(Lcom/applovin/exoplayer2/v;)Z

    move-result p1

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/w;->MV:Lcom/applovin/exoplayer2/h/w$c;

    if-eqz v1, :cond_16

    if-eqz p1, :cond_16

    invoke-interface {v1, v0}, Lcom/applovin/exoplayer2/h/w$c;->t(Lcom/applovin/exoplayer2/v;)V

    :cond_16
    return-void
.end method

.method public kR()V
    .registers 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/w;->MX:Lcom/applovin/exoplayer2/d/f;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Lcom/applovin/exoplayer2/d/f;->P()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    goto :goto_19

    :cond_c
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/w;->MX:Lcom/applovin/exoplayer2/d/f;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/d/f;->ht()Lcom/applovin/exoplayer2/d/f$a;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/d/f$a;

    throw v0

    :cond_19
    :goto_19
    return-void
.end method

.method public final declared-synchronized lA()J
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/w;->Ne:J

    iget v2, p0, Lcom/applovin/exoplayer2/h/w;->Nd:I

    invoke-direct {p0, v2}, Lcom/applovin/exoplayer2/h/w;->dT(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-wide v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized lB()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/h/w;->Ng:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final lC()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/w;->MS:Lcom/applovin/exoplayer2/h/v;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/w;->lD()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/h/v;->aY(J)V

    return-void
.end method

.method public final declared-synchronized lj()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/w;->Nf:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final lw()I
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/h/w;->Nb:I

    iget v1, p0, Lcom/applovin/exoplayer2/h/w;->fR:I

    add-int/2addr v0, v1

    return v0
.end method

.method public lx()V
    .registers 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/h/w;->lC()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/w;->lE()V

    return-void
.end method

.method public final ly()I
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/h/w;->Nb:I

    iget v1, p0, Lcom/applovin/exoplayer2/h/w;->Nd:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized lz()Lcom/applovin/exoplayer2/v;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/h/w;->Ni:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/w;->Nl:Lcom/applovin/exoplayer2/v;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    :goto_9
    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public release()V
    .registers 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/h/w;->e(Z)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/h/w;->lE()V

    return-void
.end method

.method protected u(Lcom/applovin/exoplayer2/v;)Lcom/applovin/exoplayer2/v;
    .registers 7
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/w;->Np:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_24

    iget-wide v0, p1, Lcom/applovin/exoplayer2/v;->dD:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_24

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/v;->bR()Lcom/applovin/exoplayer2/v$a;

    move-result-object v0

    iget-wide v1, p1, Lcom/applovin/exoplayer2/v;->dD:J

    iget-wide v3, p0, Lcom/applovin/exoplayer2/h/w;->Np:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/v$a;->p(J)Lcom/applovin/exoplayer2/v$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object p1

    :cond_24
    return-object p1
.end method
