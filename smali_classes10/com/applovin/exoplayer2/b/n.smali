###### Class com.applovin.exoplayer2.b.n (com.applovin.exoplayer2.b.n)
.class public final Lcom/applovin/exoplayer2/b/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/b/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/b/n$f;,
        Lcom/applovin/exoplayer2/b/n$b;,
        Lcom/applovin/exoplayer2/b/n$g;,
        Lcom/applovin/exoplayer2/b/n$e;,
        Lcom/applovin/exoplayer2/b/n$h;,
        Lcom/applovin/exoplayer2/b/n$c;,
        Lcom/applovin/exoplayer2/b/n$a;,
        Lcom/applovin/exoplayer2/b/n$d;
    }
.end annotation


# static fields
.field public static kX:Z


# instance fields
.field private N:Lcom/applovin/exoplayer2/b/d;

.field private final bk:Z

.field private final bl:Z

.field private hR:I

.field private hS:F

.field private hi:Z

.field private kT:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final kY:Lcom/applovin/exoplayer2/b/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final kZ:Lcom/applovin/exoplayer2/b/n$a;

.field private kc:Landroid/media/AudioTrack;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private lA:J

.field private lB:[Lcom/applovin/exoplayer2/b/f;

.field private lC:[Ljava/nio/ByteBuffer;

.field private lD:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private lE:I

.field private lF:[B

.field private lG:I

.field private lH:I

.field private lI:Z

.field private lJ:Z

.field private lK:Z

.field private lL:Z

.field private lM:Lcom/applovin/exoplayer2/b/k;

.field private lN:J

.field private lO:Z

.field private lP:Z

.field private final la:Lcom/applovin/exoplayer2/b/m;

.field private final lb:Lcom/applovin/exoplayer2/b/x;

.field private final lc:[Lcom/applovin/exoplayer2/b/f;

.field private final ld:[Lcom/applovin/exoplayer2/b/f;

.field private final le:Landroid/os/ConditionVariable;

.field private final lf:Lcom/applovin/exoplayer2/b/j;

.field private final lg:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/applovin/exoplayer2/b/n$e;",
            ">;"
        }
    .end annotation
.end field

.field private final lh:I

.field private li:Lcom/applovin/exoplayer2/b/n$h;

.field private final lj:Lcom/applovin/exoplayer2/b/n$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/b/n$f<",
            "Lcom/applovin/exoplayer2/b/h$b;",
            ">;"
        }
    .end annotation
.end field

.field private final lk:Lcom/applovin/exoplayer2/b/n$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/b/n$f<",
            "Lcom/applovin/exoplayer2/b/h$e;",
            ">;"
        }
    .end annotation
.end field

.field private ll:Lcom/applovin/exoplayer2/b/h$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private lm:Lcom/applovin/exoplayer2/b/n$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private ln:Lcom/applovin/exoplayer2/b/n$b;

.field private lo:Lcom/applovin/exoplayer2/b/n$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private lp:Lcom/applovin/exoplayer2/b/n$e;

.field private lq:Lcom/applovin/exoplayer2/am;

.field private lr:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private ls:I

.field private lt:J

.field private lu:J

.field private lv:J

.field private lw:J

.field private lx:I

.field private ly:Z

.field private lz:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/applovin/exoplayer2/b/e;Lcom/applovin/exoplayer2/b/n$a;ZZI)V
    .registers 16
    .param p1    # Lcom/applovin/exoplayer2/b/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/b/n;->kY:Lcom/applovin/exoplayer2/b/e;

    invoke-static {p2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/b/n$a;

    iput-object p1, p0, Lcom/applovin/exoplayer2/b/n;->kZ:Lcom/applovin/exoplayer2/b/n$a;

    sget p1, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt p1, v2, :cond_19

    if-eqz p3, :cond_19

    const/4 p3, 0x1

    goto :goto_1a

    :cond_19
    const/4 p3, 0x0

    :goto_1a
    iput-boolean p3, p0, Lcom/applovin/exoplayer2/b/n;->bk:Z

    const/16 p3, 0x17

    if-lt p1, p3, :cond_24

    if-eqz p4, :cond_24

    const/4 p3, 0x1

    goto :goto_25

    :cond_24
    const/4 p3, 0x0

    :goto_25
    iput-boolean p3, p0, Lcom/applovin/exoplayer2/b/n;->bl:Z

    const/16 p3, 0x1d

    if-lt p1, p3, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 p5, 0x0

    :goto_2d
    iput p5, p0, Lcom/applovin/exoplayer2/b/n;->lh:I

    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1, v0}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/b/n;->le:Landroid/os/ConditionVariable;

    new-instance p1, Lcom/applovin/exoplayer2/b/j;

    new-instance p3, Lcom/applovin/exoplayer2/b/n$g;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/applovin/exoplayer2/b/n$g;-><init>(Lcom/applovin/exoplayer2/b/n;Lcom/applovin/exoplayer2/b/n$1;)V

    invoke-direct {p1, p3}, Lcom/applovin/exoplayer2/b/j;-><init>(Lcom/applovin/exoplayer2/b/j$a;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/b/n;->lf:Lcom/applovin/exoplayer2/b/j;

    new-instance p1, Lcom/applovin/exoplayer2/b/m;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/b/m;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/b/n;->la:Lcom/applovin/exoplayer2/b/m;

    new-instance p3, Lcom/applovin/exoplayer2/b/x;

    invoke-direct {p3}, Lcom/applovin/exoplayer2/b/x;-><init>()V

    iput-object p3, p0, Lcom/applovin/exoplayer2/b/n;->lb:Lcom/applovin/exoplayer2/b/x;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    const/4 p5, 0x3

    new-array p5, p5, [Lcom/applovin/exoplayer2/b/l;

    new-instance v2, Lcom/applovin/exoplayer2/b/t;

    invoke-direct {v2}, Lcom/applovin/exoplayer2/b/t;-><init>()V

    aput-object v2, p5, v1

    aput-object p1, p5, v0

    const/4 p1, 0x2

    aput-object p3, p5, p1

    invoke-static {p4, p5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-interface {p2}, Lcom/applovin/exoplayer2/b/n$a;->ex()[Lcom/applovin/exoplayer2/b/f;

    move-result-object p1

    invoke-static {p4, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-array p1, v1, [Lcom/applovin/exoplayer2/b/f;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/applovin/exoplayer2/b/f;

    iput-object p1, p0, Lcom/applovin/exoplayer2/b/n;->lc:[Lcom/applovin/exoplayer2/b/f;

    new-array p1, v0, [Lcom/applovin/exoplayer2/b/f;

    new-instance p2, Lcom/applovin/exoplayer2/b/p;

    invoke-direct {p2}, Lcom/applovin/exoplayer2/b/p;-><init>()V

    aput-object p2, p1, v1

    iput-object p1, p0, Lcom/applovin/exoplayer2/b/n;->ld:[Lcom/applovin/exoplayer2/b/f;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/applovin/exoplayer2/b/n;->hS:F

    sget-object p1, Lcom/applovin/exoplayer2/b/d;->jD:Lcom/applovin/exoplayer2/b/d;

    iput-object p1, p0, Lcom/applovin/exoplayer2/b/n;->N:Lcom/applovin/exoplayer2/b/d;

    iput v1, p0, Lcom/applovin/exoplayer2/b/n;->hR:I

    new-instance p1, Lcom/applovin/exoplayer2/b/k;

    const/4 p2, 0x0

    invoke-direct {p1, v1, p2}, Lcom/applovin/exoplayer2/b/k;-><init>(IF)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/b/n;->lM:Lcom/applovin/exoplayer2/b/k;

    new-instance p1, Lcom/applovin/exoplayer2/b/n$e;

    sget-object p2, Lcom/applovin/exoplayer2/am;->gC:Lcom/applovin/exoplayer2/am;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v2 .. v9}, Lcom/applovin/exoplayer2/b/n$e;-><init>(Lcom/applovin/exoplayer2/am;ZJJLcom/applovin/exoplayer2/b/n$1;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/b/n;->lp:Lcom/applovin/exoplayer2/b/n$e;

    iput-object p2, p0, Lcom/applovin/exoplayer2/b/n;->lq:Lcom/applovin/exoplayer2/am;

    const/4 p1, -0x1

    iput p1, p0, Lcom/applovin/exoplayer2/b/n;->lH:I

    new-array p1, v1, [Lcom/applovin/exoplayer2/b/f;

    iput-object p1, p0, Lcom/applovin/exoplayer2/b/n;->lB:[Lcom/applovin/exoplayer2/b/f;

    new-array p1, v1, [Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/applovin/exoplayer2/b/n;->lC:[Ljava/nio/ByteBuffer;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/b/n;->lg:Ljava/util/ArrayDeque;

    new-instance p1, Lcom/applovin/exoplayer2/b/n$f;

    const-wide/16 p2, 0x64

    invoke-direct {p1, p2, p3}, Lcom/applovin/exoplayer2/b/n$f;-><init>(J)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/b/n;->lj:Lcom/applovin/exoplayer2/b/n$f;

    new-instance p1, Lcom/applovin/exoplayer2/b/n$f;

    invoke-direct {p1, p2, p3}, Lcom/applovin/exoplayer2/b/n$f;-><init>(J)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/b/n;->lk:Lcom/applovin/exoplayer2/b/n$f;

    return-void
.end method

.method private Q(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/b/h$e;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lB:[Lcom/applovin/exoplayer2/b/f;

    array-length v0, v0

    move v1, v0

    :goto_4
    if-ltz v1, :cond_42

    if-lez v1, :cond_f

    iget-object v2, p0, Lcom/applovin/exoplayer2/b/n;->lC:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_16

    :cond_f
    iget-object v2, p0, Lcom/applovin/exoplayer2/b/n;->lD:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_14

    goto :goto_16

    :cond_14
    sget-object v2, Lcom/applovin/exoplayer2/b/f;->jO:Ljava/nio/ByteBuffer;

    :goto_16
    if-ne v1, v0, :cond_1c

    invoke-direct {p0, v2, p1, p2}, Lcom/applovin/exoplayer2/b/n;->a(Ljava/nio/ByteBuffer;J)V

    goto :goto_38

    :cond_1c
    iget-object v3, p0, Lcom/applovin/exoplayer2/b/n;->lB:[Lcom/applovin/exoplayer2/b/f;

    aget-object v3, v3, v1

    iget v4, p0, Lcom/applovin/exoplayer2/b/n;->lH:I

    if-le v1, v4, :cond_27

    invoke-interface {v3, v2}, Lcom/applovin/exoplayer2/b/f;->d(Ljava/nio/ByteBuffer;)V

    :cond_27
    invoke-interface {v3}, Lcom/applovin/exoplayer2/b/f;->dH()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/exoplayer2/b/n;->lC:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_38

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_38
    :goto_38
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3f

    return-void

    :cond_3f
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_42
    return-void
.end method

.method private R(J)V
    .registers 14

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->es()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->kZ:Lcom/applovin/exoplayer2/b/n$a;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->eq()Lcom/applovin/exoplayer2/am;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/b/n$a;->f(Lcom/applovin/exoplayer2/am;)Lcom/applovin/exoplayer2/am;

    move-result-object v0

    goto :goto_13

    :cond_11
    sget-object v0, Lcom/applovin/exoplayer2/am;->gC:Lcom/applovin/exoplayer2/am;

    :goto_13
    move-object v2, v0

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->es()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->kZ:Lcom/applovin/exoplayer2/b/n$a;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/b/n;->en()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/b/n$a;->H(Z)Z

    move-result v0

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    iget-object v9, p0, Lcom/applovin/exoplayer2/b/n;->lg:Ljava/util/ArrayDeque;

    new-instance v10, Lcom/applovin/exoplayer2/b/n$e;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-object p1, p0, Lcom/applovin/exoplayer2/b/n;->ln:Lcom/applovin/exoplayer2/b/n$b;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->ev()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/applovin/exoplayer2/b/n$b;->O(J)J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v1, v10

    move v3, v0

    invoke-direct/range {v1 .. v8}, Lcom/applovin/exoplayer2/b/n$e;-><init>(Lcom/applovin/exoplayer2/am;ZJJLcom/applovin/exoplayer2/b/n$1;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->eh()V

    iget-object p1, p0, Lcom/applovin/exoplayer2/b/n;->ll:Lcom/applovin/exoplayer2/b/h$c;

    if-eqz p1, :cond_4d

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/b/h$c;->A(Z)V

    :cond_4d
    return-void
.end method

.method private S(J)J
    .registers 7

    :goto_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lg:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lg:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/b/n$e;

    iget-wide v0, v0, Lcom/applovin/exoplayer2/b/n$e;->md:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_21

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lg:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/b/n$e;

    iput-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lp:Lcom/applovin/exoplayer2/b/n$e;

    goto :goto_0

    :cond_21
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lp:Lcom/applovin/exoplayer2/b/n$e;

    iget-wide v1, v0, Lcom/applovin/exoplayer2/b/n$e;->md:J

    sub-long v1, p1, v1

    iget-object v0, v0, Lcom/applovin/exoplayer2/b/n$e;->gy:Lcom/applovin/exoplayer2/am;

    sget-object v3, Lcom/applovin/exoplayer2/am;->gC:Lcom/applovin/exoplayer2/am;

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/am;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object p1, p0, Lcom/applovin/exoplayer2/b/n;->lp:Lcom/applovin/exoplayer2/b/n$e;

    iget-wide p1, p1, Lcom/applovin/exoplayer2/b/n$e;->mc:J

    add-long/2addr p1, v1

    return-wide p1

    :cond_37
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lg:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object p1, p0, Lcom/applovin/exoplayer2/b/n;->kZ:Lcom/applovin/exoplayer2/b/n$a;

    invoke-interface {p1, v1, v2}, Lcom/applovin/exoplayer2/b/n$a;->U(J)J

    move-result-wide p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lp:Lcom/applovin/exoplayer2/b/n$e;

    iget-wide v0, v0, Lcom/applovin/exoplayer2/b/n$e;->mc:J

    add-long/2addr v0, p1

    return-wide v0

    :cond_4b
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lg:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/b/n$e;

    iget-wide v1, v0, Lcom/applovin/exoplayer2/b/n$e;->md:J

    sub-long/2addr v1, p1

    iget-object p1, p0, Lcom/applovin/exoplayer2/b/n;->lp:Lcom/applovin/exoplayer2/b/n$e;

    iget-object p1, p1, Lcom/applovin/exoplayer2/b/n$e;->gy:Lcom/applovin/exoplayer2/am;

    iget p1, p1, Lcom/applovin/exoplayer2/am;->gD:F

    invoke-static {v1, v2, p1}, Lcom/applovin/exoplayer2/l/ai;->a(JF)J

    move-result-wide p1

    iget-wide v0, v0, Lcom/applovin/exoplayer2/b/n$e;->mc:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private T(J)J
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->ln:Lcom/applovin/exoplayer2/b/n$b;

    iget-object v1, p0, Lcom/applovin/exoplayer2/b/n;->kZ:Lcom/applovin/exoplayer2/b/n$a;

    invoke-interface {v1}, Lcom/applovin/exoplayer2/b/n$a;->ey()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/b/n$b;->O(J)J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method private static a(ILjava/nio/ByteBuffer;)I
    .registers 4

    const/16 v0, 0x400

    const/4 v1, -0x1

    packed-switch p0, :pswitch_data_58

    :pswitch_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected audio encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1d
    invoke-static {p1}, Lcom/applovin/exoplayer2/b/c;->c(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :pswitch_22
    return v0

    :pswitch_23
    const/16 p0, 0x200

    return p0

    :pswitch_26
    invoke-static {p1}, Lcom/applovin/exoplayer2/b/b;->b(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v1, :cond_2e

    const/4 p0, 0x0

    goto :goto_34

    :cond_2e
    invoke-static {p1, p0}, Lcom/applovin/exoplayer2/b/b;->a(Ljava/nio/ByteBuffer;I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x10

    :goto_34
    return p0

    :pswitch_35
    const/16 p0, 0x800

    return p0

    :pswitch_38
    return v0

    :pswitch_39
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    invoke-static {p1, p0}, Lcom/applovin/exoplayer2/l/ai;->b(Ljava/nio/ByteBuffer;I)I

    move-result p0

    invoke-static {p0}, Lcom/applovin/exoplayer2/b/r;->aH(I)I

    move-result p0

    if-eq p0, v1, :cond_48

    return p0

    :cond_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_4e
    invoke-static {p1}, Lcom/applovin/exoplayer2/b/o;->e(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :pswitch_53
    invoke-static {p1}, Lcom/applovin/exoplayer2/b/b;->a(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :pswitch_data_58
    .packed-switch 0x5
        :pswitch_53
        :pswitch_53
        :pswitch_4e
        :pswitch_4e
        :pswitch_39
        :pswitch_38
        :pswitch_35
        :pswitch_35
        :pswitch_6
        :pswitch_26
        :pswitch_23
        :pswitch_22
        :pswitch_1d
        :pswitch_53
    .end packed-switch
.end method

.method private a(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I
    .registers 5

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_b

    invoke-static {p1, p2}, Landroid/media/AudioManager;->getPlaybackOffloadSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result p1

    return p1

    :cond_b
    invoke-static {p1, p2}, Landroid/media/AudioManager;->isOffloadedPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result p1

    if-nez p1, :cond_13

    const/4 p1, 0x0

    return p1

    :cond_13
    const/16 p1, 0x1e

    if-ne v0, p1, :cond_23

    sget-object p1, Lcom/applovin/exoplayer2/l/ai;->acY:Ljava/lang/String;

    const-string p2, "Pixel"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_23

    const/4 p1, 0x2

    return p1

    :cond_23
    const/4 p1, 0x1

    return p1
.end method

.method private static a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method private a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I
    .registers 16
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const-wide/16 v1, 0x3e8

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_13

    const/4 v7, 0x1

    mul-long v8, p4, v1

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v4 .. v9}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    move-result p1

    return p1

    :cond_13
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lr:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2c

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lr:Ljava/nio/ByteBuffer;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lr:Ljava/nio/ByteBuffer;

    const v3, 0x55550001

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_2c
    iget v0, p0, Lcom/applovin/exoplayer2/b/n;->ls:I

    const/4 v3, 0x0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lr:Ljava/nio/ByteBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lr:Ljava/nio/ByteBuffer;

    const/16 v4, 0x8

    mul-long p4, p4, v1

    invoke-virtual {v0, v4, p4, p5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-object p4, p0, Lcom/applovin/exoplayer2/b/n;->lr:Ljava/nio/ByteBuffer;

    invoke-virtual {p4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput p3, p0, Lcom/applovin/exoplayer2/b/n;->ls:I

    :cond_47
    iget-object p4, p0, Lcom/applovin/exoplayer2/b/n;->lr:Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p4

    if-lez p4, :cond_5e

    iget-object p5, p0, Lcom/applovin/exoplayer2/b/n;->lr:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {p1, p5, p4, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p5

    if-gez p5, :cond_5b

    iput v3, p0, Lcom/applovin/exoplayer2/b/n;->ls:I

    return p5

    :cond_5b
    if-ge p5, p4, :cond_5e

    return v3

    :cond_5e
    invoke-static {p1, p2, p3}, Lcom/applovin/exoplayer2/b/n;->a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result p1

    if-gez p1, :cond_67

    iput v3, p0, Lcom/applovin/exoplayer2/b/n;->ls:I

    return p1

    :cond_67
    iget p2, p0, Lcom/applovin/exoplayer2/b/n;->ls:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/applovin/exoplayer2/b/n;->ls:I

    return p1
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/b/n;)Landroid/os/ConditionVariable;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/b/n;->le:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method private a(Landroid/media/AudioTrack;)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->li:Lcom/applovin/exoplayer2/b/n$h;

    if-nez v0, :cond_b

    new-instance v0, Lcom/applovin/exoplayer2/b/n$h;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/b/n$h;-><init>(Lcom/applovin/exoplayer2/b/n;)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/b/n;->li:Lcom/applovin/exoplayer2/b/n$h;

    :cond_b
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->li:Lcom/applovin/exoplayer2/b/n$h;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/b/n$h;->c(Landroid/media/AudioTrack;)V

    return-void
.end method

.method private static a(Landroid/media/AudioTrack;F)V
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;J)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/b/h$e;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->kT:Ljava/nio/ByteBuffer;

    const/16 v1, 0x15

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_18

    if-ne v0, p1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    goto :goto_3b

    :cond_18
    iput-object p1, p0, Lcom/applovin/exoplayer2/b/n;->kT:Ljava/nio/ByteBuffer;

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    if-ge v0, v1, :cond_3b

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v4, p0, Lcom/applovin/exoplayer2/b/n;->lF:[B

    if-eqz v4, :cond_29

    array-length v4, v4

    if-ge v4, v0, :cond_2d

    :cond_29
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/applovin/exoplayer2/b/n;->lF:[B

    :cond_2d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iget-object v5, p0, Lcom/applovin/exoplayer2/b/n;->lF:[B

    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v3, p0, Lcom/applovin/exoplayer2/b/n;->lG:I

    :cond_3b
    :goto_3b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    sget v4, Lcom/applovin/exoplayer2/l/ai;->acV:I

    if-ge v4, v1, :cond_6d

    iget-object p2, p0, Lcom/applovin/exoplayer2/b/n;->lf:Lcom/applovin/exoplayer2/b/j;

    iget-wide v4, p0, Lcom/applovin/exoplayer2/b/n;->lv:J

    invoke-virtual {p2, v4, v5}, Lcom/applovin/exoplayer2/b/j;->I(J)I

    move-result p2

    if-lez p2, :cond_6b

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object p3, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/applovin/exoplayer2/b/n;->lF:[B

    iget v4, p0, Lcom/applovin/exoplayer2/b/n;->lG:I

    invoke-virtual {p3, v1, v4, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result p2

    if-lez p2, :cond_91

    iget p3, p0, Lcom/applovin/exoplayer2/b/n;->lG:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/applovin/exoplayer2/b/n;->lG:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_91

    :cond_6b
    const/4 p2, 0x0

    goto :goto_91

    :cond_6d
    iget-boolean v1, p0, Lcom/applovin/exoplayer2/b/n;->hi:Z

    if-eqz v1, :cond_8b

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p2, v4

    if-eqz v1, :cond_7c

    const/4 v1, 0x1

    goto :goto_7d

    :cond_7c
    const/4 v1, 0x0

    :goto_7d
    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-object v7, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    move-object v6, p0

    move-object v8, p1

    move v9, v0

    move-wide v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/applovin/exoplayer2/b/n;->a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    move-result p2

    goto :goto_91

    :cond_8b
    iget-object p2, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    invoke-static {p2, p1, v0}, Lcom/applovin/exoplayer2/b/n;->a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result p2

    :cond_91
    :goto_91
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/applovin/exoplayer2/b/n;->lN:J

    if-gez p2, :cond_bd

    invoke-static {p2}, Lcom/applovin/exoplayer2/b/n;->aA(I)Z

    move-result p1

    if-eqz p1, :cond_a2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->el()V

    :cond_a2
    new-instance p3, Lcom/applovin/exoplayer2/b/h$e;

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->ln:Lcom/applovin/exoplayer2/b/n$b;

    iget-object v0, v0, Lcom/applovin/exoplayer2/b/n$b;->lS:Lcom/applovin/exoplayer2/v;

    invoke-direct {p3, p2, v0, p1}, Lcom/applovin/exoplayer2/b/h$e;-><init>(ILcom/applovin/exoplayer2/v;Z)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/b/n;->ll:Lcom/applovin/exoplayer2/b/h$c;

    if-eqz p1, :cond_b2

    invoke-interface {p1, p3}, Lcom/applovin/exoplayer2/b/h$c;->b(Ljava/lang/Exception;)V

    :cond_b2
    iget-boolean p1, p3, Lcom/applovin/exoplayer2/b/h$e;->by:Z

    if-nez p1, :cond_bc

    iget-object p1, p0, Lcom/applovin/exoplayer2/b/n;->lk:Lcom/applovin/exoplayer2/b/n$f;

    invoke-virtual {p1, p3}, Lcom/applovin/exoplayer2/b/n$f;->h(Ljava/lang/Exception;)V

    return-void

    :cond_bc
    throw p3

    :cond_bd
    iget-object p3, p0, Lcom/applovin/exoplayer2/b/n;->lk:Lcom/applovin/exoplayer2/b/n$f;

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/b/n$f;->clear()V

    iget-object p3, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    invoke-static {p3}, Lcom/applovin/exoplayer2/b/n;->b(Landroid/media/AudioTrack;)Z

    move-result p3

    if-eqz p3, :cond_ed

    iget-wide v4, p0, Lcom/applovin/exoplayer2/b/n;->lw:J

    const-wide/16 v6, 0x0

    cmp-long p3, v4, v6

    if-lez p3, :cond_d4

    iput-boolean v3, p0, Lcom/applovin/exoplayer2/b/n;->lP:Z

    :cond_d4
    iget-boolean p3, p0, Lcom/applovin/exoplayer2/b/n;->lK:Z

    if-eqz p3, :cond_ed

    iget-object p3, p0, Lcom/applovin/exoplayer2/b/n;->ll:Lcom/applovin/exoplayer2/b/h$c;

    if-eqz p3, :cond_ed

    if-ge p2, v0, :cond_ed

    iget-boolean p3, p0, Lcom/applovin/exoplayer2/b/n;->lP:Z

    if-nez p3, :cond_ed

    iget-object p3, p0, Lcom/applovin/exoplayer2/b/n;->lf:Lcom/applovin/exoplayer2/b/j;

    invoke-virtual {p3, v4, v5}, Lcom/applovin/exoplayer2/b/j;->J(J)J

    move-result-wide v4

    iget-object p3, p0, Lcom/applovin/exoplayer2/b/n;->ll:Lcom/applovin/exoplayer2/b/h$c;

    invoke-interface {p3, v4, v5}, Lcom/applovin/exoplayer2/b/h$c;->F(J)V

    :cond_ed
    iget-object p3, p0, Lcom/applovin/exoplayer2/b/n;->ln:Lcom/applovin/exoplayer2/b/n$b;

    iget p3, p3, Lcom/applovin/exoplayer2/b/n$b;->lU:I

    if-nez p3, :cond_f9

    iget-wide v4, p0, Lcom/applovin/exoplayer2/b/n;->lv:J

    int-to-long v6, p2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/applovin/exoplayer2/b/n;->lv:J

    :cond_f9
    if-ne p2, v0, :cond_115

    if-eqz p3, :cond_112

    iget-object p2, p0, Lcom/applovin/exoplayer2/b/n;->lD:Ljava/nio/ByteBuffer;

    if-ne p1, p2, :cond_102

    goto :goto_103

    :cond_102
    const/4 v2, 0x0

    :goto_103
    invoke-static {v2}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-wide p1, p0, Lcom/applovin/exoplayer2/b/n;->lw:J

    iget p3, p0, Lcom/applovin/exoplayer2/b/n;->lx:I

    iget v0, p0, Lcom/applovin/exoplayer2/b/n;->lE:I

    mul-int p3, p3, v0

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/applovin/exoplayer2/b/n;->lw:J

    :cond_112
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/applovin/exoplayer2/b/n;->kT:Ljava/nio/ByteBuffer;

    :cond_115
    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/b/d;)Z
    .registers 7

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_5b

    iget v0, p0, Lcom/applovin/exoplayer2/b/n;->lh:I

    if-nez v0, :cond_c

    goto :goto_5b

    :cond_c
    iget-object v0, p1, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p1, Lcom/applovin/exoplayer2/v;->dw:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/applovin/exoplayer2/l/u;->k(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1d

    return v1

    :cond_1d
    iget v2, p1, Lcom/applovin/exoplayer2/v;->dL:I

    invoke-static {v2}, Lcom/applovin/exoplayer2/l/ai;->fL(I)I

    move-result v2

    if-nez v2, :cond_26

    return v1

    :cond_26
    iget v3, p1, Lcom/applovin/exoplayer2/v;->dM:I

    invoke-static {v3, v2, v0}, Lcom/applovin/exoplayer2/b/n;->c(III)Landroid/media/AudioFormat;

    move-result-object v0

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/b/d;->dA()Landroid/media/AudioAttributes;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/applovin/exoplayer2/b/n;->a(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result p2

    if-eqz p2, :cond_5b

    const/4 v0, 0x1

    if-eq p2, v0, :cond_43

    const/4 p1, 0x2

    if-ne p2, p1, :cond_3d

    return v0

    :cond_3d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_43
    iget p2, p1, Lcom/applovin/exoplayer2/v;->dO:I

    if-nez p2, :cond_4e

    iget p1, p1, Lcom/applovin/exoplayer2/v;->dP:I

    if-eqz p1, :cond_4c

    goto :goto_4e

    :cond_4c
    const/4 p1, 0x0

    goto :goto_4f

    :cond_4e
    :goto_4e
    const/4 p1, 0x1

    :goto_4f
    iget p2, p0, Lcom/applovin/exoplayer2/b/n;->lh:I

    if-ne p2, v0, :cond_55

    const/4 p2, 0x1

    goto :goto_56

    :cond_55
    const/4 p2, 0x0

    :goto_56
    if-eqz p1, :cond_5a

    if-nez p2, :cond_5b

    :cond_5a
    const/4 v1, 0x1

    :cond_5b
    :goto_5b
    return v1
.end method

.method private static a(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/b/e;)Z
    .registers 2
    .param p1    # Lcom/applovin/exoplayer2/b/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/b/n;->b(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/b/e;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static aA(I)Z
    .registers 3

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_9

    const/4 v0, -0x6

    if-eq p0, v0, :cond_d

    :cond_9
    const/16 v0, -0x20

    if-ne p0, v0, :cond_f

    :cond_d
    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method private aB(I)Z
    .registers 3

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/b/n;->bk:Z

    if-eqz v0, :cond_c

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/ai;->fK(I)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method private static aC(I)I
    .registers 3

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_16

    const/4 v1, 0x7

    if-ne p0, v1, :cond_c

    const/16 p0, 0x8

    goto :goto_16

    :cond_c
    const/4 v1, 0x3

    if-eq p0, v1, :cond_15

    const/4 v1, 0x4

    if-eq p0, v1, :cond_15

    const/4 v1, 0x5

    if-ne p0, v1, :cond_16

    :cond_15
    const/4 p0, 0x6

    :cond_16
    :goto_16
    const/16 v1, 0x1a

    if-gt v0, v1, :cond_28

    sget-object v0, Lcom/applovin/exoplayer2/l/ai;->acW:Ljava/lang/String;

    const-string v1, "fugu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    if-ne p0, v0, :cond_28

    const/4 p0, 0x2

    :cond_28
    invoke-static {p0}, Lcom/applovin/exoplayer2/l/ai;->fL(I)I

    move-result p0

    return p0
.end method

.method private static aD(I)I
    .registers 1

    packed-switch p0, :pswitch_data_36

    :pswitch_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_9
    const p0, 0x52080

    return p0

    :pswitch_d
    const p0, 0x3e800

    return p0

    :pswitch_11
    const/16 p0, 0x1f40

    return p0

    :pswitch_14
    const p0, 0x2ebae4

    return p0

    :pswitch_18
    const/16 p0, 0x1b58

    return p0

    :pswitch_1b
    const/16 p0, 0x3e80

    return p0

    :pswitch_1e
    const p0, 0x186a0

    return p0

    :pswitch_22
    const p0, 0x9c40

    return p0

    :pswitch_26
    const p0, 0x225510

    return p0

    :pswitch_2a
    const p0, 0x2ee00

    return p0

    :pswitch_2e
    const p0, 0xbb800

    return p0

    :pswitch_32
    const p0, 0x13880

    return p0

    :pswitch_data_36
    .packed-switch 0x5
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_3
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_2e
    .end packed-switch
.end method

.method static synthetic aE(I)I
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/b/n;->aD(I)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/b/n;)Landroid/media/AudioTrack;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    return-object p0
.end method

.method private static b(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/b/e;)Landroid/util/Pair;
    .registers 9
    .param p1    # Lcom/applovin/exoplayer2/b/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/v;",
            "Lcom/applovin/exoplayer2/b/e;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    iget-object v1, p0, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/exoplayer2/v;->dw:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/applovin/exoplayer2/l/u;->k(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x7

    const/16 v4, 0x8

    const/4 v5, 0x6

    const/16 v6, 0x12

    if-eq v1, v2, :cond_2e

    if-eq v1, v5, :cond_2e

    if-eq v1, v6, :cond_2e

    const/16 v2, 0x11

    if-eq v1, v2, :cond_2e

    if-eq v1, v3, :cond_2e

    if-eq v1, v4, :cond_2e

    const/16 v2, 0xe

    if-ne v1, v2, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 v2, 0x0

    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 v2, 0x1

    :goto_2f
    if-nez v2, :cond_32

    return-object v0

    :cond_32
    if-ne v1, v6, :cond_3c

    invoke-virtual {p1, v6}, Lcom/applovin/exoplayer2/b/e;->av(I)Z

    move-result v2

    if-nez v2, :cond_3c

    const/4 v1, 0x6

    goto :goto_45

    :cond_3c
    if-ne v1, v4, :cond_45

    invoke-virtual {p1, v4}, Lcom/applovin/exoplayer2/b/e;->av(I)Z

    move-result v2

    if-nez v2, :cond_45

    const/4 v1, 0x7

    :cond_45
    :goto_45
    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/b/e;->av(I)Z

    move-result v2

    if-nez v2, :cond_4c

    return-object v0

    :cond_4c
    if-ne v1, v6, :cond_64

    sget p1, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v2, 0x1d

    if-lt p1, v2, :cond_6d

    iget p0, p0, Lcom/applovin/exoplayer2/v;->dM:I

    invoke-static {v6, p0}, Lcom/applovin/exoplayer2/b/n;->k(II)I

    move-result v5

    if-nez v5, :cond_6d

    const-string p0, "DefaultAudioSink"

    const-string p1, "E-AC3 JOC encoding supported but no channel count supported"

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_64
    iget v5, p0, Lcom/applovin/exoplayer2/v;->dL:I

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/b/e;->dC()I

    move-result p0

    if-le v5, p0, :cond_6d

    return-object v0

    :cond_6d
    invoke-static {v5}, Lcom/applovin/exoplayer2/b/n;->aC(I)I

    move-result p0

    if-nez p0, :cond_74

    return-object v0

    :cond_74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/media/AudioTrack;F)V
    .registers 2

    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return-void
.end method

.method private b(Lcom/applovin/exoplayer2/am;Z)V
    .registers 12

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->er()Lcom/applovin/exoplayer2/b/n$e;

    move-result-object v0

    iget-object v1, v0, Lcom/applovin/exoplayer2/b/n$e;->gy:Lcom/applovin/exoplayer2/am;

    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/am;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-boolean v0, v0, Lcom/applovin/exoplayer2/b/n$e;->mb:Z

    if-eq p2, v0, :cond_2e

    :cond_10
    new-instance v0, Lcom/applovin/exoplayer2/b/n$e;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/applovin/exoplayer2/b/n$e;-><init>(Lcom/applovin/exoplayer2/am;ZJJLcom/applovin/exoplayer2/b/n$1;)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->et()Z

    move-result p1

    if-eqz p1, :cond_2c

    iput-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lo:Lcom/applovin/exoplayer2/b/n$e;

    goto :goto_2e

    :cond_2c
    iput-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lp:Lcom/applovin/exoplayer2/b/n$e;

    :cond_2e
    :goto_2e
    return-void
.end method

.method private static b(Landroid/media/AudioTrack;)Z
    .registers 3

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static c(III)Landroid/media/AudioFormat;
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/exoplayer2/b/n;)Lcom/applovin/exoplayer2/b/h$c;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/b/n;->ll:Lcom/applovin/exoplayer2/b/h$c;

    return-object p0
.end method

.method static synthetic d(III)Landroid/media/AudioFormat;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/b/n;->c(III)Landroid/media/AudioFormat;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/exoplayer2/b/n;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/b/n;->lK:Z

    return p0
.end method

.method static synthetic e(Lcom/applovin/exoplayer2/b/n;)J
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->eu()J

    move-result-wide v0

    return-wide v0
.end method

.method private e(Lcom/applovin/exoplayer2/am;)V
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->et()Z

    move-result v0

    if-eqz v0, :cond_4e

    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    move-result-object v0

    iget v1, p1, Lcom/applovin/exoplayer2/am;->gD:F

    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v0

    iget p1, p1, Lcom/applovin/exoplayer2/am;->gE:F

    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    move-result-object p1

    :try_start_20
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1}, Landroid/media/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_25} :catch_26

    goto :goto_2e

    :catch_26
    move-exception p1

    const-string v0, "DefaultAudioSink"

    const-string v1, "Failed to set playback params"

    invoke-static {v0, v1, p1}, Lcom/applovin/exoplayer2/l/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2e
    new-instance p1, Lcom/applovin/exoplayer2/am;

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/PlaybackParams;->getPitch()F

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/applovin/exoplayer2/am;-><init>(FF)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lf:Lcom/applovin/exoplayer2/b/j;

    iget v1, p1, Lcom/applovin/exoplayer2/am;->gD:F

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/b/j;->i(F)V

    :cond_4e
    iput-object p1, p0, Lcom/applovin/exoplayer2/b/n;->lq:Lcom/applovin/exoplayer2/am;

    return-void
.end method

.method private eh()V
    .registers 7

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->ln:Lcom/applovin/exoplayer2/b/n$b;

    iget-object v0, v0, Lcom/applovin/exoplayer2/b/n$b;->lX:[Lcom/applovin/exoplayer2/b/f;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_1f

    aget-object v4, v0, v3

    invoke-interface {v4}, Lcom/applovin/exoplayer2/b/f;->isActive()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_19
    invoke-interface {v4}, Lcom/applovin/exoplayer2/b/f;->dI()V

    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Lcom/applovin/exoplayer2/b/f;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/applovin/exoplayer2/b/f;

    iput-object v1, p0, Lcom/applovin/exoplayer2/b/n;->lB:[Lcom/applovin/exoplayer2/b/f;

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lC:[Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->ei()V

    return-void
.end method

.method private ei()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/applovin/exoplayer2/b/n;->lB:[Lcom/applovin/exoplayer2/b/f;

    array-length v2, v1

    if-ge v0, v2, :cond_16

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/applovin/exoplayer2/b/f;->dI()V

    iget-object v2, p0, Lcom/applovin/exoplayer2/b/n;->lC:[Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lcom/applovin/exoplayer2/b/f;->dH()Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    return-void
.end method

.method private ej()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/b/h$b;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->le:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->ek()Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/applovin/exoplayer2/b/n;->b(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/b/n;->a(Landroid/media/AudioTrack;)V

    iget v0, p0, Lcom/applovin/exoplayer2/b/n;->lh:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_28

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/applovin/exoplayer2/b/n;->ln:Lcom/applovin/exoplayer2/b/n$b;

    iget-object v1, v1, Lcom/applovin/exoplayer2/b/n$b;->lS:Lcom/applovin/exoplayer2/v;

    iget v2, v1, Lcom/applovin/exoplayer2/v;->dO:I

    iget v1, v1, Lcom/applovin/exoplayer2/v;->dP:I

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    :cond_28
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/b/n;->hR:I

    iget-object v1, p0, Lcom/applovin/exoplayer2/b/n;->lf:Lcom/applovin/exoplayer2/b/j;

    iget-object v2, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->ln:Lcom/applovin/exoplayer2/b/n$b;

    iget v3, v0, Lcom/applovin/exoplayer2/b/n$b;->lU:I

    const/4 v4, 0x2

    const/4 v7, 0x1

    if-ne v3, v4, :cond_3e

    const/4 v3, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v3, 0x0

    :goto_3f
    iget v4, v0, Lcom/applovin/exoplayer2/b/n$b;->lW:I

    iget v5, v0, Lcom/applovin/exoplayer2/b/n$b;->kj:I

    iget v6, v0, Lcom/applovin/exoplayer2/b/n$b;->kk:I

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/exoplayer2/b/j;->a(Landroid/media/AudioTrack;ZIII)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->eo()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lM:Lcom/applovin/exoplayer2/b/k;

    iget v0, v0, Lcom/applovin/exoplayer2/b/k;->kM:I

    if-eqz v0, :cond_5f

    iget-object v1, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    invoke-virtual {v1, v0}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/applovin/exoplayer2/b/n;->lM:Lcom/applovin/exoplayer2/b/k;

    iget v1, v1, Lcom/applovin/exoplayer2/b/k;->kN:F

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    :cond_5f
    iput-boolean v7, p0, Lcom/applovin/exoplayer2/b/n;->lz:Z

    return-void
.end method

.method private ek()Landroid/media/AudioTrack;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/b/h$b;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->ln:Lcom/applovin/exoplayer2/b/n$b;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/b/n$b;

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/b/n;->hi:Z

    iget-object v2, p0, Lcom/applovin/exoplayer2/b/n;->N:Lcom/applovin/exoplayer2/b/d;

    iget v3, p0, Lcom/applovin/exoplayer2/b/n;->hR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/exoplayer2/b/n$b;->a(ZLcom/applovin/exoplayer2/b/d;I)Landroid/media/AudioTrack;

    move-result-object v0
    :try_end_12
    .catch Lcom/applovin/exoplayer2/b/h$b; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    move-exception v0

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->el()V

    iget-object v1, p0, Lcom/applovin/exoplayer2/b/n;->ll:Lcom/applovin/exoplayer2/b/h$c;

    if-eqz v1, :cond_1e

    invoke-interface {v1, v0}, Lcom/applovin/exoplayer2/b/h$c;->b(Ljava/lang/Exception;)V

    :cond_1e
    throw v0
.end method

.method private el()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->ln:Lcom/applovin/exoplayer2/b/n$b;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/b/n$b;->eA()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/b/n;->lO:Z

    return-void
.end method

.method private em()Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/b/h$e;
        }
    .end annotation

    iget v0, p0, Lcom/applovin/exoplayer2/b/n;->lH:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_b

    iput v3, p0, Lcom/applovin/exoplayer2/b/n;->lH:I

    :goto_9
    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iget v4, p0, Lcom/applovin/exoplayer2/b/n;->lH:I

    iget-object v5, p0, Lcom/applovin/exoplayer2/b/n;->lB:[Lcom/applovin/exoplayer2/b/f;

    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_2f

    aget-object v4, v5, v4

    if-eqz v0, :cond_1f

    invoke-interface {v4}, Lcom/applovin/exoplayer2/b/f;->dG()V

    :cond_1f
    invoke-direct {p0, v7, v8}, Lcom/applovin/exoplayer2/b/n;->Q(J)V

    invoke-interface {v4}, Lcom/applovin/exoplayer2/b/f;->cR()Z

    move-result v0

    if-nez v0, :cond_29

    return v3

    :cond_29
    iget v0, p0, Lcom/applovin/exoplayer2/b/n;->lH:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/applovin/exoplayer2/b/n;->lH:I

    goto :goto_9

    :cond_2f
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->kT:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3b

    invoke-direct {p0, v0, v7, v8}, Lcom/applovin/exoplayer2/b/n;->a(Ljava/nio/ByteBuffer;J)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->kT:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3b

    return v3

    :cond_3b
    iput v1, p0, Lcom/applovin/exoplayer2/b/n;->lH:I

    return v2
.end method

.method private eo()V
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->et()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1c

    :cond_7
    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_15

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/applovin/exoplayer2/b/n;->hS:F

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/b/n;->a(Landroid/media/AudioTrack;F)V

    goto :goto_1c

    :cond_15
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/applovin/exoplayer2/b/n;->hS:F

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/b/n;->b(Landroid/media/AudioTrack;F)V

    :goto_1c
    return-void
.end method

.method private ep()V
    .registers 13

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/b/n;->lt:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/b/n;->lu:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/b/n;->lv:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/b/n;->lw:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/b/n;->lP:Z

    iput v2, p0, Lcom/applovin/exoplayer2/b/n;->lx:I

    new-instance v11, Lcom/applovin/exoplayer2/b/n$e;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->eq()Lcom/applovin/exoplayer2/am;

    move-result-object v4

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/b/n;->en()Z

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/applovin/exoplayer2/b/n$e;-><init>(Lcom/applovin/exoplayer2/am;ZJJLcom/applovin/exoplayer2/b/n$1;)V

    iput-object v11, p0, Lcom/applovin/exoplayer2/b/n;->lp:Lcom/applovin/exoplayer2/b/n$e;

    iput-wide v0, p0, Lcom/applovin/exoplayer2/b/n;->lA:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lo:Lcom/applovin/exoplayer2/b/n$e;

    iget-object v1, p0, Lcom/applovin/exoplayer2/b/n;->lg:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lD:Ljava/nio/ByteBuffer;

    iput v2, p0, Lcom/applovin/exoplayer2/b/n;->lE:I

    iput-object v0, p0, Lcom/applovin/exoplayer2/b/n;->kT:Ljava/nio/ByteBuffer;

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/b/n;->lJ:Z

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/b/n;->lI:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/applovin/exoplayer2/b/n;->lH:I

    iput-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lr:Ljava/nio/ByteBuffer;

    iput v2, p0, Lcom/applovin/exoplayer2/b/n;->ls:I

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lb:Lcom/applovin/exoplayer2/b/x;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/b/x;->eQ()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->ei()V

    return-void
.end method

.method private eq()Lcom/applovin/exoplayer2/am;
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->er()Lcom/applovin/exoplayer2/b/n$e;

    move-result-object v0

    iget-object v0, v0, Lcom/applovin/exoplayer2/b/n$e;->gy:Lcom/applovin/exoplayer2/am;

    return-object v0
.end method

.method private er()Lcom/applovin/exoplayer2/b/n$e;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lo:Lcom/applovin/exoplayer2/b/n$e;

    if-eqz v0, :cond_5

    goto :goto_18

    :cond_5
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lg:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lg:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/b/n$e;

    goto :goto_18

    :cond_16
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lp:Lcom/applovin/exoplayer2/b/n$e;

    :goto_18
    return-object v0
.end method

.method private es()Z
    .registers 3

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/b/n;->hi:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->ln:Lcom/applovin/exoplayer2/b/n$b;

    iget-object v0, v0, Lcom/applovin/exoplayer2/b/n$b;->lS:Lcom/applovin/exoplayer2/v;

    iget-object v0, v0, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->ln:Lcom/applovin/exoplayer2/b/n$b;

    iget-object v0, v0, Lcom/applovin/exoplayer2/b/n$b;->lS:Lcom/applovin/exoplayer2/v;

    iget v0, v0, Lcom/applovin/exoplayer2/v;->dN:I

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/b/n;->aB(I)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method private et()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private eu()J
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->ln:Lcom/applovin/exoplayer2/b/n$b;

    iget v1, v0, Lcom/applovin/exoplayer2/b/n$b;->lU:I

    if-nez v1, :cond_d

    iget-wide v1, p0, Lcom/applovin/exoplayer2/b/n;->lt:J

    iget v0, v0, Lcom/applovin/exoplayer2/b/n$b;->lT:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    goto :goto_f

    :cond_d
    iget-wide v1, p0, Lcom/applovin/exoplayer2/b/n;->lu:J

    :goto_f
    return-wide v1
.end method

.method private ev()J
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->ln:Lcom/applovin/exoplayer2/b/n$b;

    iget v1, v0, Lcom/applovin/exoplayer2/b/n$b;->lU:I

    if-nez v1, :cond_d

    iget-wide v1, p0, Lcom/applovin/exoplayer2/b/n;->lv:J

    iget v0, v0, Lcom/applovin/exoplayer2/b/n$b;->kj:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    goto :goto_f

    :cond_d
    iget-wide v1, p0, Lcom/applovin/exoplayer2/b/n;->lw:J

    :goto_f
    return-wide v1
.end method

.method private ew()V
    .registers 4

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/b/n;->lJ:Z

    if-nez v0, :cond_18

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/b/n;->lJ:Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lf:Lcom/applovin/exoplayer2/b/j;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->ev()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/b/j;->L(J)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/b/n;->ls:I

    :cond_18
    return-void
.end method

.method static synthetic f(Lcom/applovin/exoplayer2/b/n;)J
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->ev()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic g(Lcom/applovin/exoplayer2/b/n;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/b/n;->lN:J

    return-wide v0
.end method

.method private static k(II)I
    .registers 6
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    const/16 v1, 0x8

    :goto_15
    if-lez v1, :cond_3a

    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v2, p0}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/ai;->fL(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/media/AudioTrack;->isDirectPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result v2

    if-eqz v2, :cond_37

    return v1

    :cond_37
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    :cond_3a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public F(Z)J
    .registers 6

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->et()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/b/n;->lz:Z

    if-eqz v0, :cond_b

    goto :goto_28

    :cond_b
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lf:Lcom/applovin/exoplayer2/b/j;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/b/j;->F(Z)J

    move-result-wide v0

    iget-object p1, p0, Lcom/applovin/exoplayer2/b/n;->ln:Lcom/applovin/exoplayer2/b/n$b;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->ev()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/applovin/exoplayer2/b/n$b;->O(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/b/n;->S(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/b/n;->T(J)J

    move-result-wide v0

    return-wide v0

    :cond_28
    :goto_28
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public G(Z)V
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->eq()Lcom/applovin/exoplayer2/am;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/applovin/exoplayer2/b/n;->b(Lcom/applovin/exoplayer2/am;Z)V

    return-void
.end method

.method public Y()V
    .registers 6

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/b/n;->dI()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lc:[Lcom/applovin/exoplayer2/b/f;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_12

    aget-object v4, v0, v3

    invoke-interface {v4}, Lcom/applovin/exoplayer2/b/f;->Y()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_12
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->ld:[Lcom/applovin/exoplayer2/b/f;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v1, :cond_20

    aget-object v4, v0, v3

    invoke-interface {v4}, Lcom/applovin/exoplayer2/b/f;->Y()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_20
    iput-boolean v2, p0, Lcom/applovin/exoplayer2/b/n;->lK:Z

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/b/n;->lO:Z

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/am;)V
    .registers 6

    new-instance v0, Lcom/applovin/exoplayer2/am;

    iget v1, p1, Lcom/applovin/exoplayer2/am;->gD:F

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v1, v2, v3}, Lcom/applovin/exoplayer2/l/ai;->a(FFF)F

    move-result v1

    iget p1, p1, Lcom/applovin/exoplayer2/am;->gE:F

    invoke-static {p1, v2, v3}, Lcom/applovin/exoplayer2/l/ai;->a(FFF)F

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/applovin/exoplayer2/am;-><init>(FF)V

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/b/n;->bl:Z

    if-eqz p1, :cond_24

    sget p1, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_24

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/b/n;->e(Lcom/applovin/exoplayer2/am;)V

    goto :goto_2b

    :cond_24
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/b/n;->en()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/applovin/exoplayer2/b/n;->b(Lcom/applovin/exoplayer2/am;Z)V

    :goto_2b
    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/b/d;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->N:Lcom/applovin/exoplayer2/b/d;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/b/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iput-object p1, p0, Lcom/applovin/exoplayer2/b/n;->N:Lcom/applovin/exoplayer2/b/d;

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/b/n;->hi:Z

    if-eqz p1, :cond_10

    return-void

    :cond_10
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/b/n;->dI()V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/b/h$c;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/b/n;->ll:Lcom/applovin/exoplayer2/b/h$c;

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/b/k;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lM:Lcom/applovin/exoplayer2/b/k;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/b/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget v0, p1, Lcom/applovin/exoplayer2/b/k;->kM:I

    iget v1, p1, Lcom/applovin/exoplayer2/b/k;->kN:F

    iget-object v2, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    if-eqz v2, :cond_21

    iget-object v3, p0, Lcom/applovin/exoplayer2/b/n;->lM:Lcom/applovin/exoplayer2/b/k;

    iget v3, v3, Lcom/applovin/exoplayer2/b/k;->kM:I

    if-eq v3, v0, :cond_1a

    invoke-virtual {v2, v0}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    :cond_1a
    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    :cond_21
    iput-object p1, p0, Lcom/applovin/exoplayer2/b/n;->lM:Lcom/applovin/exoplayer2/b/k;

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/v;I[I)V
    .registers 18
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/b/h$a;
        }
    .end annotation

    move-object v1, p0

    move-object v3, p1

    iget-object v0, v3, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_90

    iget v0, v3, Lcom/applovin/exoplayer2/v;->dN:I

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->fJ(I)Z

    move-result v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    iget v0, v3, Lcom/applovin/exoplayer2/v;->dN:I

    iget v2, v3, Lcom/applovin/exoplayer2/v;->dL:I

    invoke-static {v0, v2}, Lcom/applovin/exoplayer2/l/ai;->P(II)I

    move-result v0

    iget v2, v3, Lcom/applovin/exoplayer2/v;->dN:I

    invoke-direct {p0, v2}, Lcom/applovin/exoplayer2/b/n;->aB(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, v1, Lcom/applovin/exoplayer2/b/n;->ld:[Lcom/applovin/exoplayer2/b/f;

    goto :goto_2c

    :cond_2a
    iget-object v2, v1, Lcom/applovin/exoplayer2/b/n;->lc:[Lcom/applovin/exoplayer2/b/f;

    :goto_2c
    iget-object v5, v1, Lcom/applovin/exoplayer2/b/n;->lb:Lcom/applovin/exoplayer2/b/x;

    iget v6, v3, Lcom/applovin/exoplayer2/v;->dO:I

    iget v7, v3, Lcom/applovin/exoplayer2/v;->dP:I

    invoke-virtual {v5, v6, v7}, Lcom/applovin/exoplayer2/b/x;->o(II)V

    sget v5, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_4e

    iget v5, v3, Lcom/applovin/exoplayer2/v;->dL:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_4e

    if-nez p3, :cond_4e

    const/4 v5, 0x6

    new-array v6, v5, [I

    const/4 v7, 0x0

    :goto_47
    if-ge v7, v5, :cond_50

    aput v7, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_47

    :cond_4e
    move-object/from16 v6, p3

    :cond_50
    iget-object v5, v1, Lcom/applovin/exoplayer2/b/n;->la:Lcom/applovin/exoplayer2/b/m;

    invoke-virtual {v5, v6}, Lcom/applovin/exoplayer2/b/m;->c([I)V

    new-instance v5, Lcom/applovin/exoplayer2/b/f$a;

    iget v6, v3, Lcom/applovin/exoplayer2/v;->dM:I

    iget v7, v3, Lcom/applovin/exoplayer2/v;->dL:I

    iget v8, v3, Lcom/applovin/exoplayer2/v;->dN:I

    invoke-direct {v5, v6, v7, v8}, Lcom/applovin/exoplayer2/b/f$a;-><init>(III)V

    array-length v6, v2

    const/4 v7, 0x0

    :goto_62
    if-ge v7, v6, :cond_7b

    aget-object v8, v2, v7

    :try_start_66
    invoke-interface {v8, v5}, Lcom/applovin/exoplayer2/b/f;->a(Lcom/applovin/exoplayer2/b/f$a;)Lcom/applovin/exoplayer2/b/f$a;

    move-result-object v9

    invoke-interface {v8}, Lcom/applovin/exoplayer2/b/f;->isActive()Z

    move-result v8
    :try_end_6e
    .catch Lcom/applovin/exoplayer2/b/f$b; {:try_start_66 .. :try_end_6e} :catch_74

    if-eqz v8, :cond_71

    move-object v5, v9

    :cond_71
    add-int/lit8 v7, v7, 0x1

    goto :goto_62

    :catch_74
    move-exception v0

    new-instance v2, Lcom/applovin/exoplayer2/b/h$a;

    invoke-direct {v2, v0, p1}, Lcom/applovin/exoplayer2/b/h$a;-><init>(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/v;)V

    throw v2

    :cond_7b
    iget v6, v5, Lcom/applovin/exoplayer2/b/f$a;->jQ:I

    iget v7, v5, Lcom/applovin/exoplayer2/b/f$a;->dM:I

    iget v8, v5, Lcom/applovin/exoplayer2/b/f$a;->dL:I

    invoke-static {v8}, Lcom/applovin/exoplayer2/l/ai;->fL(I)I

    move-result v8

    iget v5, v5, Lcom/applovin/exoplayer2/b/f$a;->dL:I

    invoke-static {v6, v5}, Lcom/applovin/exoplayer2/l/ai;->P(II)I

    move-result v5

    move-object v12, v2

    move v9, v6

    move v6, v5

    const/4 v5, 0x0

    goto :goto_d9

    :cond_90
    new-array v0, v4, [Lcom/applovin/exoplayer2/b/f;

    iget v5, v3, Lcom/applovin/exoplayer2/v;->dM:I

    iget-object v6, v1, Lcom/applovin/exoplayer2/b/n;->N:Lcom/applovin/exoplayer2/b/d;

    invoke-direct {p0, p1, v6}, Lcom/applovin/exoplayer2/b/n;->a(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/b/d;)Z

    move-result v6

    if-eqz v6, :cond_b9

    iget-object v6, v3, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    invoke-static {v6}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v3, Lcom/applovin/exoplayer2/v;->dw:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/applovin/exoplayer2/l/u;->k(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget v7, v3, Lcom/applovin/exoplayer2/v;->dL:I

    invoke-static {v7}, Lcom/applovin/exoplayer2/l/ai;->fL(I)I

    move-result v7

    const/4 v8, 0x1

    move-object v12, v0

    move v9, v6

    move v8, v7

    const/4 v0, -0x1

    const/4 v6, -0x1

    move v7, v5

    const/4 v5, 0x1

    goto :goto_d9

    :cond_b9
    const/4 v6, 0x2

    iget-object v7, v1, Lcom/applovin/exoplayer2/b/n;->kY:Lcom/applovin/exoplayer2/b/e;

    invoke-static {p1, v7}, Lcom/applovin/exoplayer2/b/n;->b(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/b/e;)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_133

    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v12, v0

    move v9, v8

    const/4 v0, -0x1

    const/4 v6, -0x1

    move v8, v7

    move v7, v5

    const/4 v5, 0x2

    :goto_d9
    const-string v2, ") for: "

    if-eqz v9, :cond_116

    if-eqz v8, :cond_f9

    iput-boolean v4, v1, Lcom/applovin/exoplayer2/b/n;->lO:Z

    new-instance v13, Lcom/applovin/exoplayer2/b/n$b;

    iget-boolean v11, v1, Lcom/applovin/exoplayer2/b/n;->bl:Z

    move-object v2, v13

    move-object v3, p1

    move v4, v0

    move/from16 v10, p2

    invoke-direct/range {v2 .. v12}, Lcom/applovin/exoplayer2/b/n$b;-><init>(Lcom/applovin/exoplayer2/v;IIIIIIIZ[Lcom/applovin/exoplayer2/b/f;)V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->et()Z

    move-result v0

    if-eqz v0, :cond_f6

    iput-object v13, v1, Lcom/applovin/exoplayer2/b/n;->lm:Lcom/applovin/exoplayer2/b/n$b;

    goto :goto_f8

    :cond_f6
    iput-object v13, v1, Lcom/applovin/exoplayer2/b/n;->ln:Lcom/applovin/exoplayer2/b/n$b;

    :goto_f8
    return-void

    :cond_f9
    new-instance v0, Lcom/applovin/exoplayer2/b/h$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid output channel config (mode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/applovin/exoplayer2/b/h$a;-><init>(Ljava/lang/String;Lcom/applovin/exoplayer2/v;)V

    throw v0

    :cond_116
    new-instance v0, Lcom/applovin/exoplayer2/b/h$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid output encoding (mode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/applovin/exoplayer2/b/h$a;-><init>(Ljava/lang/String;Lcom/applovin/exoplayer2/v;)V

    throw v0

    :cond_133
    new-instance v0, Lcom/applovin/exoplayer2/b/h$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to configure passthrough for: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/applovin/exoplayer2/b/h$a;-><init>(Ljava/lang/String;Lcom/applovin/exoplayer2/v;)V

    throw v0
.end method

.method public a(Ljava/nio/ByteBuffer;JI)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/b/h$b;,
            Lcom/applovin/exoplayer2/b/h$e;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    iget-object v5, v1, Lcom/applovin/exoplayer2/b/n;->lD:Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_13

    if-ne v0, v5, :cond_11

    goto :goto_13

    :cond_11
    const/4 v5, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v5, 0x1

    :goto_14
    invoke-static {v5}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    iget-object v5, v1, Lcom/applovin/exoplayer2/b/n;->lm:Lcom/applovin/exoplayer2/b/n$b;

    const/4 v8, 0x0

    if-eqz v5, :cond_65

    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/b/n;->em()Z

    move-result v5

    if-nez v5, :cond_23

    return v7

    :cond_23
    iget-object v5, v1, Lcom/applovin/exoplayer2/b/n;->lm:Lcom/applovin/exoplayer2/b/n$b;

    iget-object v9, v1, Lcom/applovin/exoplayer2/b/n;->ln:Lcom/applovin/exoplayer2/b/n$b;

    invoke-virtual {v5, v9}, Lcom/applovin/exoplayer2/b/n$b;->a(Lcom/applovin/exoplayer2/b/n$b;)Z

    move-result v5

    if-nez v5, :cond_3b

    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/b/n;->ew()V

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/b/n;->dM()Z

    move-result v5

    if-eqz v5, :cond_37

    return v7

    :cond_37
    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/b/n;->dI()V

    goto :goto_62

    :cond_3b
    iget-object v5, v1, Lcom/applovin/exoplayer2/b/n;->lm:Lcom/applovin/exoplayer2/b/n$b;

    iput-object v5, v1, Lcom/applovin/exoplayer2/b/n;->ln:Lcom/applovin/exoplayer2/b/n$b;

    iput-object v8, v1, Lcom/applovin/exoplayer2/b/n;->lm:Lcom/applovin/exoplayer2/b/n$b;

    iget-object v5, v1, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    invoke-static {v5}, Lcom/applovin/exoplayer2/b/n;->b(Landroid/media/AudioTrack;)Z

    move-result v5

    if-eqz v5, :cond_62

    iget v5, v1, Lcom/applovin/exoplayer2/b/n;->lh:I

    const/4 v9, 0x3

    if-eq v5, v9, :cond_62

    iget-object v5, v1, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->setOffloadEndOfStream()V

    iget-object v5, v1, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    iget-object v9, v1, Lcom/applovin/exoplayer2/b/n;->ln:Lcom/applovin/exoplayer2/b/n$b;

    iget-object v9, v9, Lcom/applovin/exoplayer2/b/n$b;->lS:Lcom/applovin/exoplayer2/v;

    iget v10, v9, Lcom/applovin/exoplayer2/v;->dO:I

    iget v9, v9, Lcom/applovin/exoplayer2/v;->dP:I

    invoke-virtual {v5, v10, v9}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    iput-boolean v6, v1, Lcom/applovin/exoplayer2/b/n;->lP:Z

    :cond_62
    :goto_62
    invoke-direct {v1, v2, v3}, Lcom/applovin/exoplayer2/b/n;->R(J)V

    :cond_65
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/b/n;->et()Z

    move-result v5

    if-nez v5, :cond_7c

    :try_start_6b
    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/b/n;->ej()V
    :try_end_6e
    .catch Lcom/applovin/exoplayer2/b/h$b; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_7c

    :catch_6f
    move-exception v0

    move-object v2, v0

    iget-boolean v0, v2, Lcom/applovin/exoplayer2/b/h$b;->by:Z

    if-nez v0, :cond_7b

    iget-object v0, v1, Lcom/applovin/exoplayer2/b/n;->lj:Lcom/applovin/exoplayer2/b/n$f;

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/b/n$f;->h(Ljava/lang/Exception;)V

    return v7

    :cond_7b
    throw v2

    :cond_7c
    :goto_7c
    iget-object v5, v1, Lcom/applovin/exoplayer2/b/n;->lj:Lcom/applovin/exoplayer2/b/n$f;

    invoke-virtual {v5}, Lcom/applovin/exoplayer2/b/n$f;->clear()V

    iget-boolean v5, v1, Lcom/applovin/exoplayer2/b/n;->lz:Z

    const-wide/16 v9, 0x0

    if-eqz v5, :cond_aa

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/applovin/exoplayer2/b/n;->lA:J

    iput-boolean v7, v1, Lcom/applovin/exoplayer2/b/n;->ly:Z

    iput-boolean v7, v1, Lcom/applovin/exoplayer2/b/n;->lz:Z

    iget-boolean v5, v1, Lcom/applovin/exoplayer2/b/n;->bl:Z

    if-eqz v5, :cond_a0

    sget v5, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v11, 0x17

    if-lt v5, v11, :cond_a0

    iget-object v5, v1, Lcom/applovin/exoplayer2/b/n;->lq:Lcom/applovin/exoplayer2/am;

    invoke-direct {v1, v5}, Lcom/applovin/exoplayer2/b/n;->e(Lcom/applovin/exoplayer2/am;)V

    :cond_a0
    invoke-direct {v1, v2, v3}, Lcom/applovin/exoplayer2/b/n;->R(J)V

    iget-boolean v5, v1, Lcom/applovin/exoplayer2/b/n;->lK:Z

    if-eqz v5, :cond_aa

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/b/n;->dJ()V

    :cond_aa
    iget-object v5, v1, Lcom/applovin/exoplayer2/b/n;->lf:Lcom/applovin/exoplayer2/b/j;

    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/b/n;->ev()J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Lcom/applovin/exoplayer2/b/j;->H(J)Z

    move-result v5

    if-nez v5, :cond_b7

    return v7

    :cond_b7
    iget-object v5, v1, Lcom/applovin/exoplayer2/b/n;->lD:Ljava/nio/ByteBuffer;

    if-nez v5, :cond_167

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v11, :cond_c5

    const/4 v5, 0x1

    goto :goto_c6

    :cond_c5
    const/4 v5, 0x0

    :goto_c6
    invoke-static {v5}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_d0

    return v6

    :cond_d0
    iget-object v5, v1, Lcom/applovin/exoplayer2/b/n;->ln:Lcom/applovin/exoplayer2/b/n$b;

    iget v11, v5, Lcom/applovin/exoplayer2/b/n$b;->lU:I

    if-eqz v11, :cond_e5

    iget v11, v1, Lcom/applovin/exoplayer2/b/n;->lx:I

    if-nez v11, :cond_e5

    iget v5, v5, Lcom/applovin/exoplayer2/b/n$b;->lW:I

    invoke-static {v5, v0}, Lcom/applovin/exoplayer2/b/n;->a(ILjava/nio/ByteBuffer;)I

    move-result v5

    iput v5, v1, Lcom/applovin/exoplayer2/b/n;->lx:I

    if-nez v5, :cond_e5

    return v6

    :cond_e5
    iget-object v5, v1, Lcom/applovin/exoplayer2/b/n;->lo:Lcom/applovin/exoplayer2/b/n$e;

    if-eqz v5, :cond_f5

    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/b/n;->em()Z

    move-result v5

    if-nez v5, :cond_f0

    return v7

    :cond_f0
    invoke-direct {v1, v2, v3}, Lcom/applovin/exoplayer2/b/n;->R(J)V

    iput-object v8, v1, Lcom/applovin/exoplayer2/b/n;->lo:Lcom/applovin/exoplayer2/b/n$e;

    :cond_f5
    iget-wide v11, v1, Lcom/applovin/exoplayer2/b/n;->lA:J

    iget-object v5, v1, Lcom/applovin/exoplayer2/b/n;->ln:Lcom/applovin/exoplayer2/b/n$b;

    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/b/n;->eu()J

    move-result-wide v13

    iget-object v15, v1, Lcom/applovin/exoplayer2/b/n;->lb:Lcom/applovin/exoplayer2/b/x;

    invoke-virtual {v15}, Lcom/applovin/exoplayer2/b/x;->eR()J

    move-result-wide v15

    sub-long/2addr v13, v15

    invoke-virtual {v5, v13, v14}, Lcom/applovin/exoplayer2/b/n$b;->V(J)J

    move-result-wide v13

    add-long/2addr v11, v13

    iget-boolean v5, v1, Lcom/applovin/exoplayer2/b/n;->ly:Z

    if-nez v5, :cond_126

    sub-long v13, v11, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    const-wide/32 v15, 0x30d40

    cmp-long v5, v13, v15

    if-lez v5, :cond_126

    iget-object v5, v1, Lcom/applovin/exoplayer2/b/n;->ll:Lcom/applovin/exoplayer2/b/h$c;

    new-instance v13, Lcom/applovin/exoplayer2/b/h$d;

    invoke-direct {v13, v2, v3, v11, v12}, Lcom/applovin/exoplayer2/b/h$d;-><init>(JJ)V

    invoke-interface {v5, v13}, Lcom/applovin/exoplayer2/b/h$c;->b(Ljava/lang/Exception;)V

    iput-boolean v6, v1, Lcom/applovin/exoplayer2/b/n;->ly:Z

    :cond_126
    iget-boolean v5, v1, Lcom/applovin/exoplayer2/b/n;->ly:Z

    if-eqz v5, :cond_148

    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/b/n;->em()Z

    move-result v5

    if-nez v5, :cond_131

    return v7

    :cond_131
    sub-long v11, v2, v11

    iget-wide v13, v1, Lcom/applovin/exoplayer2/b/n;->lA:J

    add-long/2addr v13, v11

    iput-wide v13, v1, Lcom/applovin/exoplayer2/b/n;->lA:J

    iput-boolean v7, v1, Lcom/applovin/exoplayer2/b/n;->ly:Z

    invoke-direct {v1, v2, v3}, Lcom/applovin/exoplayer2/b/n;->R(J)V

    iget-object v5, v1, Lcom/applovin/exoplayer2/b/n;->ll:Lcom/applovin/exoplayer2/b/h$c;

    if-eqz v5, :cond_148

    cmp-long v13, v11, v9

    if-eqz v13, :cond_148

    invoke-interface {v5}, Lcom/applovin/exoplayer2/b/h$c;->dQ()V

    :cond_148
    iget-object v5, v1, Lcom/applovin/exoplayer2/b/n;->ln:Lcom/applovin/exoplayer2/b/n$b;

    iget v5, v5, Lcom/applovin/exoplayer2/b/n$b;->lU:I

    if-nez v5, :cond_159

    iget-wide v9, v1, Lcom/applovin/exoplayer2/b/n;->lt:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    int-to-long v11, v5

    add-long/2addr v9, v11

    iput-wide v9, v1, Lcom/applovin/exoplayer2/b/n;->lt:J

    goto :goto_163

    :cond_159
    iget-wide v9, v1, Lcom/applovin/exoplayer2/b/n;->lu:J

    iget v5, v1, Lcom/applovin/exoplayer2/b/n;->lx:I

    mul-int v5, v5, v4

    int-to-long v11, v5

    add-long/2addr v9, v11

    iput-wide v9, v1, Lcom/applovin/exoplayer2/b/n;->lu:J

    :goto_163
    iput-object v0, v1, Lcom/applovin/exoplayer2/b/n;->lD:Ljava/nio/ByteBuffer;

    iput v4, v1, Lcom/applovin/exoplayer2/b/n;->lE:I

    :cond_167
    invoke-direct {v1, v2, v3}, Lcom/applovin/exoplayer2/b/n;->Q(J)V

    iget-object v0, v1, Lcom/applovin/exoplayer2/b/n;->lD:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_177

    iput-object v8, v1, Lcom/applovin/exoplayer2/b/n;->lD:Ljava/nio/ByteBuffer;

    iput v7, v1, Lcom/applovin/exoplayer2/b/n;->lE:I

    return v6

    :cond_177
    iget-object v0, v1, Lcom/applovin/exoplayer2/b/n;->lf:Lcom/applovin/exoplayer2/b/j;

    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/b/n;->ev()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/applovin/exoplayer2/b/j;->K(J)Z

    move-result v0

    if-eqz v0, :cond_18e

    const-string v0, "DefaultAudioSink"

    const-string v2, "Resetting stalled audio track"

    invoke-static {v0, v2}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/b/n;->dI()V

    return v6

    :cond_18e
    return v7
.end method

.method public av()Lcom/applovin/exoplayer2/am;
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/b/n;->bl:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lq:Lcom/applovin/exoplayer2/am;

    goto :goto_b

    :cond_7
    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->eq()Lcom/applovin/exoplayer2/am;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public aw(I)V
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/b/n;->hR:I

    if-eq v0, p1, :cond_10

    iput p1, p0, Lcom/applovin/exoplayer2/b/n;->hR:I

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/b/n;->lL:Z

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/b/n;->dI()V

    :cond_10
    return-void
.end method

.method public cR()Z
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->et()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/b/n;->lI:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/b/n;->dM()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public d(Lcom/applovin/exoplayer2/v;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/b/n;->e(Lcom/applovin/exoplayer2/v;)I

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public dI()V
    .registers 5

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->et()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->ep()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lf:Lcom/applovin/exoplayer2/b/j;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/b/j;->v()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_16
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/applovin/exoplayer2/b/n;->b(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->li:Lcom/applovin/exoplayer2/b/n$h;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/b/n$h;

    iget-object v1, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/b/n$h;->d(Landroid/media/AudioTrack;)V

    :cond_2b
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    sget v2, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_3d

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/b/n;->lL:Z

    if-nez v2, :cond_3d

    const/4 v2, 0x0

    iput v2, p0, Lcom/applovin/exoplayer2/b/n;->hR:I

    :cond_3d
    iget-object v2, p0, Lcom/applovin/exoplayer2/b/n;->lm:Lcom/applovin/exoplayer2/b/n$b;

    if-eqz v2, :cond_45

    iput-object v2, p0, Lcom/applovin/exoplayer2/b/n;->ln:Lcom/applovin/exoplayer2/b/n$b;

    iput-object v1, p0, Lcom/applovin/exoplayer2/b/n;->lm:Lcom/applovin/exoplayer2/b/n$b;

    :cond_45
    iget-object v1, p0, Lcom/applovin/exoplayer2/b/n;->lf:Lcom/applovin/exoplayer2/b/j;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/b/j;->Y()V

    iget-object v1, p0, Lcom/applovin/exoplayer2/b/n;->le:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    new-instance v1, Lcom/applovin/exoplayer2/b/n$1;

    const-string v2, "ExoPlayer:AudioTrackReleaseThread"

    invoke-direct {v1, p0, v2, v0}, Lcom/applovin/exoplayer2/b/n$1;-><init>(Lcom/applovin/exoplayer2/b/n;Ljava/lang/String;Landroid/media/AudioTrack;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_59
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lk:Lcom/applovin/exoplayer2/b/n$f;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/b/n$f;->clear()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lj:Lcom/applovin/exoplayer2/b/n$f;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/b/n$f;->clear()V

    return-void
.end method

.method public dJ()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/b/n;->lK:Z

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->et()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lf:Lcom/applovin/exoplayer2/b/j;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/b/j;->start()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_13
    return-void
.end method

.method public dK()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/b/n;->ly:Z

    return-void
.end method

.method public dL()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/b/h$e;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/b/n;->lI:Z

    if-nez v0, :cond_16

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->et()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->em()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->ew()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/b/n;->lI:Z

    :cond_16
    return-void
.end method

.method public dM()Z
    .registers 4

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->et()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lf:Lcom/applovin/exoplayer2/b/j;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->ev()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/b/j;->M(J)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public dN()V
    .registers 4

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/b/n;->lL:Z

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/b/n;->hi:Z

    if-nez v0, :cond_1b

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/b/n;->hi:Z

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/b/n;->dI()V

    :cond_1b
    return-void
.end method

.method public dO()V
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/b/n;->hi:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/b/n;->hi:Z

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/b/n;->dI()V

    :cond_a
    return-void
.end method

.method public dP()V
    .registers 9

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_a

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/b/n;->dI()V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lk:Lcom/applovin/exoplayer2/b/n$f;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/b/n$f;->clear()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lj:Lcom/applovin/exoplayer2/b/n$f;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/b/n$f;->clear()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->et()Z

    move-result v0

    if-nez v0, :cond_1b

    return-void

    :cond_1b
    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->ep()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lf:Lcom/applovin/exoplayer2/b/j;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/b/j;->v()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_2b
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lf:Lcom/applovin/exoplayer2/b/j;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/b/j;->Y()V

    iget-object v1, p0, Lcom/applovin/exoplayer2/b/n;->lf:Lcom/applovin/exoplayer2/b/j;

    iget-object v2, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->ln:Lcom/applovin/exoplayer2/b/n$b;

    iget v3, v0, Lcom/applovin/exoplayer2/b/n$b;->lU:I

    const/4 v4, 0x2

    const/4 v7, 0x1

    if-ne v3, v4, :cond_43

    const/4 v3, 0x1

    goto :goto_44

    :cond_43
    const/4 v3, 0x0

    :goto_44
    iget v4, v0, Lcom/applovin/exoplayer2/b/n$b;->lW:I

    iget v5, v0, Lcom/applovin/exoplayer2/b/n$b;->kj:I

    iget v6, v0, Lcom/applovin/exoplayer2/b/n$b;->kk:I

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/exoplayer2/b/j;->a(Landroid/media/AudioTrack;ZIII)V

    iput-boolean v7, p0, Lcom/applovin/exoplayer2/b/n;->lz:Z

    return-void
.end method

.method public e(Lcom/applovin/exoplayer2/v;)I
    .registers 5

    iget-object v0, p1, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_3c

    iget v0, p1, Lcom/applovin/exoplayer2/v;->dN:I

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->fJ(I)Z

    move-result v0

    if-nez v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid PCM encoding: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/applovin/exoplayer2/v;->dN:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultAudioSink"

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2d
    iget p1, p1, Lcom/applovin/exoplayer2/v;->dN:I

    if-eq p1, v2, :cond_3b

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/b/n;->bk:Z

    if-eqz v0, :cond_39

    const/4 v0, 0x4

    if-ne p1, v0, :cond_39

    goto :goto_3b

    :cond_39
    const/4 p1, 0x1

    return p1

    :cond_3b
    :goto_3b
    return v2

    :cond_3c
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/b/n;->lO:Z

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->N:Lcom/applovin/exoplayer2/b/d;

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/b/n;->a(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/b/d;)Z

    move-result v0

    if-eqz v0, :cond_49

    return v2

    :cond_49
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->kY:Lcom/applovin/exoplayer2/b/e;

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/b/n;->a(Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/b/e;)Z

    move-result p1

    if-eqz p1, :cond_52

    return v2

    :cond_52
    return v1
.end method

.method public en()Z
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->er()Lcom/applovin/exoplayer2/b/n$e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/applovin/exoplayer2/b/n$e;->mb:Z

    return v0
.end method

.method public h(F)V
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/b/n;->hS:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    iput p1, p0, Lcom/applovin/exoplayer2/b/n;->hS:F

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->eo()V

    :cond_b
    return-void
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/b/n;->lK:Z

    invoke-direct {p0}, Lcom/applovin/exoplayer2/b/n;->et()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->lf:Lcom/applovin/exoplayer2/b/j;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/b/j;->dY()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/n;->kc:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_16
    return-void
.end method
