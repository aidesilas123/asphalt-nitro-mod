###### Class com.applovin.exoplayer2.j.a (com.applovin.exoplayer2.j.a)
.class public Lcom/applovin/exoplayer2/j/a;
.super Lcom/applovin/exoplayer2/j/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/j/a$a;,
        Lcom/applovin/exoplayer2/j/a$b;
    }
.end annotation


# instance fields
.field private final TO:J

.field private final TP:J

.field private final TQ:J

.field private final TR:F

.field private final TS:F

.field private final TT:Lcom/applovin/exoplayer2/common/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Lcom/applovin/exoplayer2/j/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private TU:F

.field private TV:I

.field private TW:J

.field private TX:Lcom/applovin/exoplayer2/h/b/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final bO:Lcom/applovin/exoplayer2/k/d;

.field private final bR:Lcom/applovin/exoplayer2/l/d;

.field private tA:I


# direct methods
.method protected constructor <init>(Lcom/applovin/exoplayer2/h/ac;[IILcom/applovin/exoplayer2/k/d;JJJFFLjava/util/List;Lcom/applovin/exoplayer2/l/d;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/h/ac;",
            "[II",
            "Lcom/applovin/exoplayer2/k/d;",
            "JJJFF",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/j/a$a;",
            ">;",
            "Lcom/applovin/exoplayer2/l/d;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/j/b;-><init>(Lcom/applovin/exoplayer2/h/ac;[II)V

    cmp-long p1, p9, p5

    if-gez p1, :cond_f

    const-string p1, "AdaptiveTrackSelection"

    const-string p2, "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs"

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    move-wide p9, p5

    :cond_f
    iput-object p4, p0, Lcom/applovin/exoplayer2/j/a;->bO:Lcom/applovin/exoplayer2/k/d;

    const-wide/16 p1, 0x3e8

    mul-long p5, p5, p1

    iput-wide p5, p0, Lcom/applovin/exoplayer2/j/a;->TO:J

    mul-long p7, p7, p1

    iput-wide p7, p0, Lcom/applovin/exoplayer2/j/a;->TP:J

    mul-long p9, p9, p1

    iput-wide p9, p0, Lcom/applovin/exoplayer2/j/a;->TQ:J

    iput p11, p0, Lcom/applovin/exoplayer2/j/a;->TR:F

    iput p12, p0, Lcom/applovin/exoplayer2/j/a;->TS:F

    invoke-static {p13}, Lcom/applovin/exoplayer2/common/a/s;->d(Ljava/util/Collection;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/j/a;->TT:Lcom/applovin/exoplayer2/common/a/s;

    iput-object p14, p0, Lcom/applovin/exoplayer2/j/a;->bR:Lcom/applovin/exoplayer2/l/d;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/applovin/exoplayer2/j/a;->TU:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/applovin/exoplayer2/j/a;->tA:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/applovin/exoplayer2/j/a;->TW:J

    return-void
.end method

.method private static a([Lcom/applovin/exoplayer2/j/d$a;)Lcom/applovin/exoplayer2/common/a/s;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/applovin/exoplayer2/j/d$a;",
            ")",
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Lcom/applovin/exoplayer2/j/a$a;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    array-length v3, p0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-ge v2, v3, :cond_2f

    aget-object v3, p0, v2

    if-eqz v3, :cond_28

    aget-object v3, p0, v2

    iget-object v3, v3, Lcom/applovin/exoplayer2/j/d$a;->Ue:[I

    array-length v3, v3

    if-le v3, v6, :cond_28

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->gc()Lcom/applovin/exoplayer2/common/a/s$a;

    move-result-object v3

    new-instance v6, Lcom/applovin/exoplayer2/j/a$a;

    invoke-direct {v6, v4, v5, v4, v5}, Lcom/applovin/exoplayer2/j/a$a;-><init>(JJ)V

    invoke-virtual {v3, v6}, Lcom/applovin/exoplayer2/common/a/s$a;->v(Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/s$a;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_28
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_2f
    invoke-static {p0}, Lcom/applovin/exoplayer2/j/a;->b([Lcom/applovin/exoplayer2/j/d$a;)[[J

    move-result-object v2

    array-length v3, v2

    new-array v3, v3, [I

    array-length v7, v2

    new-array v7, v7, [J

    const/4 v8, 0x0

    :goto_3a
    array-length v9, v2

    if-ge v8, v9, :cond_4d

    aget-object v9, v2, v8

    array-length v9, v9

    if-nez v9, :cond_44

    move-wide v10, v4

    goto :goto_48

    :cond_44
    aget-object v9, v2, v8

    aget-wide v10, v9, v1

    :goto_48
    aput-wide v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3a

    :cond_4d
    invoke-static {v0, v7}, Lcom/applovin/exoplayer2/j/a;->a(Ljava/util/List;[J)V

    invoke-static {v2}, Lcom/applovin/exoplayer2/j/a;->a([[J)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v4

    const/4 v5, 0x0

    :goto_55
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    if-ge v5, v8, :cond_76

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget v9, v3, v8

    add-int/2addr v9, v6

    aput v9, v3, v8

    aget-object v10, v2, v8

    aget-wide v9, v10, v9

    aput-wide v9, v7, v8

    invoke-static {v0, v7}, Lcom/applovin/exoplayer2/j/a;->a(Ljava/util/List;[J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_55

    :cond_76
    const/4 v2, 0x0

    :goto_77
    array-length v3, p0

    if-ge v2, v3, :cond_8b

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_88

    aget-wide v3, v7, v2

    const-wide/16 v5, 0x2

    mul-long v3, v3, v5

    aput-wide v3, v7, v2

    :cond_88
    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    :cond_8b
    invoke-static {v0, v7}, Lcom/applovin/exoplayer2/j/a;->a(Ljava/util/List;[J)V

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->gc()Lcom/applovin/exoplayer2/common/a/s$a;

    move-result-object p0

    :goto_92
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_af

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/exoplayer2/common/a/s$a;

    if-nez v2, :cond_a5

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->ga()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v2

    goto :goto_a9

    :cond_a5
    invoke-virtual {v2}, Lcom/applovin/exoplayer2/common/a/s$a;->gd()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v2

    :goto_a9
    invoke-virtual {p0, v2}, Lcom/applovin/exoplayer2/common/a/s$a;->v(Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/s$a;

    add-int/lit8 v1, v1, 0x1

    goto :goto_92

    :cond_af
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/s$a;->gd()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object p0

    return-object p0
.end method

.method private static a([[J)Lcom/applovin/exoplayer2/common/a/s;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[J)",
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/ad;->gI()Lcom/applovin/exoplayer2/common/a/ad$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/common/a/ad$c;->gM()Lcom/applovin/exoplayer2/common/a/ad$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/common/a/ad$b;->gL()Lcom/applovin/exoplayer2/common/a/z;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    array-length v4, v0

    if-ge v3, v4, :cond_70

    aget-object v4, v0, v3

    array-length v4, v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_1a

    goto :goto_6d

    :cond_1a
    aget-object v4, v0, v3

    array-length v4, v4

    new-array v5, v4, [D

    const/4 v6, 0x0

    :goto_20
    aget-object v7, v0, v3

    array-length v7, v7

    const-wide/16 v8, 0x0

    if-ge v6, v7, :cond_40

    aget-object v7, v0, v3

    aget-wide v10, v7, v6

    const-wide/16 v12, -0x1

    cmp-long v7, v10, v12

    if-nez v7, :cond_32

    goto :goto_3b

    :cond_32
    aget-object v7, v0, v3

    aget-wide v8, v7, v6

    long-to-double v7, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    :goto_3b
    aput-wide v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_40
    add-int/lit8 v4, v4, -0x1

    aget-wide v6, v5, v4

    aget-wide v10, v5, v2

    sub-double/2addr v6, v10

    const/4 v10, 0x0

    :goto_48
    if-ge v10, v4, :cond_6d

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    aget-wide v13, v5, v10

    add-int/lit8 v10, v10, 0x1

    aget-wide v15, v5, v10

    add-double/2addr v13, v15

    mul-double v13, v13, v11

    cmpl-double v11, v6, v8

    if-nez v11, :cond_5c

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    goto :goto_61

    :cond_5c
    aget-wide v11, v5, v2

    sub-double/2addr v13, v11

    div-double v11, v13, v6

    :goto_61
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v1, v11, v12}, Lcom/applovin/exoplayer2/common/a/ac;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_48

    :cond_6d
    :goto_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_70
    invoke-interface {v1}, Lcom/applovin/exoplayer2/common/a/ac;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/common/a/s;->d(Ljava/util/Collection;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;[J)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/common/a/s$a<",
            "Lcom/applovin/exoplayer2/j/a$a;",
            ">;>;[J)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_4
    array-length v4, p1

    if-ge v3, v4, :cond_d

    aget-wide v4, p1, v3

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_29

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/exoplayer2/common/a/s$a;

    if-nez v3, :cond_1c

    goto :goto_26

    :cond_1c
    new-instance v4, Lcom/applovin/exoplayer2/j/a$a;

    aget-wide v5, p1, v0

    invoke-direct {v4, v1, v2, v5, v6}, Lcom/applovin/exoplayer2/j/a$a;-><init>(JJ)V

    invoke-virtual {v3, v4}, Lcom/applovin/exoplayer2/common/a/s$a;->v(Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/s$a;

    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_29
    return-void
.end method

.method private static b([Lcom/applovin/exoplayer2/j/d$a;)[[J
    .registers 10

    array-length v0, p0

    new-array v0, v0, [[J

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    array-length v3, p0

    if-ge v2, v3, :cond_38

    aget-object v3, p0, v2

    if-nez v3, :cond_11

    new-array v3, v1, [J

    aput-object v3, v0, v2

    goto :goto_35

    :cond_11
    iget-object v4, v3, Lcom/applovin/exoplayer2/j/d$a;->Ue:[I

    array-length v4, v4

    new-array v4, v4, [J

    aput-object v4, v0, v2

    const/4 v4, 0x0

    :goto_19
    iget-object v5, v3, Lcom/applovin/exoplayer2/j/d$a;->Ue:[I

    array-length v6, v5

    if-ge v4, v6, :cond_30

    aget-object v6, v0, v2

    iget-object v7, v3, Lcom/applovin/exoplayer2/j/d$a;->Ud:Lcom/applovin/exoplayer2/h/ac;

    aget v5, v5, v4

    invoke-virtual {v7, v5}, Lcom/applovin/exoplayer2/h/ac;->dZ(I)Lcom/applovin/exoplayer2/v;

    move-result-object v5

    iget v5, v5, Lcom/applovin/exoplayer2/v;->dv:I

    int-to-long v7, v5

    aput-wide v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_30
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/util/Arrays;->sort([J)V

    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_38
    return-object v0
.end method

.method static synthetic c([Lcom/applovin/exoplayer2/j/d$a;)Lcom/applovin/exoplayer2/common/a/s;
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/j/a;->a([Lcom/applovin/exoplayer2/j/d$a;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public X()V
    .registers 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/a;->TX:Lcom/applovin/exoplayer2/h/b/b;

    return-void
.end method

.method public enable()V
    .registers 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/applovin/exoplayer2/j/a;->TW:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/j/a;->TX:Lcom/applovin/exoplayer2/h/b/b;

    return-void
.end method

.method public ne()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/j/a;->TV:I

    return v0
.end method

.method public v(F)V
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/j/a;->TU:F

    return-void
.end method

###### Class com.applovin.exoplayer2.j.a.C0048a (com.applovin.exoplayer2.j.a$a)
.class public final Lcom/applovin/exoplayer2/j/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final TY:J

.field public final TZ:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/applovin/exoplayer2/j/a$a;->TY:J

    iput-wide p3, p0, Lcom/applovin/exoplayer2/j/a$a;->TZ:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/applovin/exoplayer2/j/a$a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/applovin/exoplayer2/j/a$a;

    iget-wide v3, p0, Lcom/applovin/exoplayer2/j/a$a;->TY:J

    iget-wide v5, p1, Lcom/applovin/exoplayer2/j/a$a;->TY:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1d

    iget-wide v3, p0, Lcom/applovin/exoplayer2/j/a$a;->TZ:J

    iget-wide v5, p1, Lcom/applovin/exoplayer2/j/a$a;->TZ:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method public hashCode()I
    .registers 5

    iget-wide v0, p0, Lcom/applovin/exoplayer2/j/a$a;->TY:J

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/applovin/exoplayer2/j/a$a;->TZ:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

###### Class com.applovin.exoplayer2.j.a.b (com.applovin.exoplayer2.j.a$b)
.class public Lcom/applovin/exoplayer2/j/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/j/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final TR:F

.field private final TS:F

.field private final Ua:I

.field private final Ub:I

.field private final Uc:I

.field private final bR:Lcom/applovin/exoplayer2/l/d;


# direct methods
.method public constructor <init>()V
    .registers 8

    sget-object v6, Lcom/applovin/exoplayer2/l/d;->abJ:Lcom/applovin/exoplayer2/l/d;

    const/16 v1, 0x2710

    const/16 v2, 0x61a8

    const/16 v3, 0x61a8

    const v4, 0x3f333333    # 0.7f

    const/high16 v5, 0x3f400000    # 0.75f

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/applovin/exoplayer2/j/a$b;-><init>(IIIFFLcom/applovin/exoplayer2/l/d;)V

    return-void
.end method

.method public constructor <init>(IIIFFLcom/applovin/exoplayer2/l/d;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/j/a$b;->Ua:I

    iput p2, p0, Lcom/applovin/exoplayer2/j/a$b;->Ub:I

    iput p3, p0, Lcom/applovin/exoplayer2/j/a$b;->Uc:I

    iput p4, p0, Lcom/applovin/exoplayer2/j/a$b;->TR:F

    iput p5, p0, Lcom/applovin/exoplayer2/j/a$b;->TS:F

    iput-object p6, p0, Lcom/applovin/exoplayer2/j/a$b;->bR:Lcom/applovin/exoplayer2/l/d;

    return-void
.end method


# virtual methods
.method protected a(Lcom/applovin/exoplayer2/h/ac;[IILcom/applovin/exoplayer2/k/d;Lcom/applovin/exoplayer2/common/a/s;)Lcom/applovin/exoplayer2/j/a;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/h/ac;",
            "[II",
            "Lcom/applovin/exoplayer2/k/d;",
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Lcom/applovin/exoplayer2/j/a$a;",
            ">;)",
            "Lcom/applovin/exoplayer2/j/a;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v16, Lcom/applovin/exoplayer2/j/a;

    iget v1, v0, Lcom/applovin/exoplayer2/j/a$b;->Ua:I

    int-to-long v6, v1

    iget v1, v0, Lcom/applovin/exoplayer2/j/a$b;->Ub:I

    int-to-long v8, v1

    iget v1, v0, Lcom/applovin/exoplayer2/j/a$b;->Uc:I

    int-to-long v10, v1

    iget v12, v0, Lcom/applovin/exoplayer2/j/a$b;->TR:F

    iget v13, v0, Lcom/applovin/exoplayer2/j/a$b;->TS:F

    iget-object v15, v0, Lcom/applovin/exoplayer2/j/a$b;->bR:Lcom/applovin/exoplayer2/l/d;

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v14, p5

    invoke-direct/range {v1 .. v15}, Lcom/applovin/exoplayer2/j/a;-><init>(Lcom/applovin/exoplayer2/h/ac;[IILcom/applovin/exoplayer2/k/d;JJJFFLjava/util/List;Lcom/applovin/exoplayer2/l/d;)V

    return-object v16
.end method

.method public final a([Lcom/applovin/exoplayer2/j/d$a;Lcom/applovin/exoplayer2/k/d;Lcom/applovin/exoplayer2/h/p$a;Lcom/applovin/exoplayer2/ba;)[Lcom/applovin/exoplayer2/j/d;
    .registers 14

    invoke-static {p1}, Lcom/applovin/exoplayer2/j/a;->c([Lcom/applovin/exoplayer2/j/d$a;)Lcom/applovin/exoplayer2/common/a/s;

    move-result-object p3

    array-length p4, p1

    new-array p4, p4, [Lcom/applovin/exoplayer2/j/d;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_3c

    aget-object v2, p1, v1

    if-eqz v2, :cond_39

    iget-object v5, v2, Lcom/applovin/exoplayer2/j/d$a;->Ue:[I

    array-length v3, v5

    if-nez v3, :cond_16

    goto :goto_39

    :cond_16
    array-length v3, v5

    const/4 v4, 0x1

    if-ne v3, v4, :cond_26

    new-instance v3, Lcom/applovin/exoplayer2/j/e;

    iget-object v4, v2, Lcom/applovin/exoplayer2/j/d$a;->Ud:Lcom/applovin/exoplayer2/h/ac;

    aget v5, v5, v0

    iget v2, v2, Lcom/applovin/exoplayer2/j/d$a;->bs:I

    invoke-direct {v3, v4, v5, v2}, Lcom/applovin/exoplayer2/j/e;-><init>(Lcom/applovin/exoplayer2/h/ac;II)V

    goto :goto_37

    :cond_26
    iget-object v4, v2, Lcom/applovin/exoplayer2/j/d$a;->Ud:Lcom/applovin/exoplayer2/h/ac;

    iget v6, v2, Lcom/applovin/exoplayer2/j/d$a;->bs:I

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/applovin/exoplayer2/common/a/s;

    move-object v3, p0

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/applovin/exoplayer2/j/a$b;->a(Lcom/applovin/exoplayer2/h/ac;[IILcom/applovin/exoplayer2/k/d;Lcom/applovin/exoplayer2/common/a/s;)Lcom/applovin/exoplayer2/j/a;

    move-result-object v3

    :goto_37
    aput-object v3, p4, v1

    :cond_39
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_3c
    return-object p4
.end method
