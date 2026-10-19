###### Class com.applovin.exoplayer2.h.d (com.applovin.exoplayer2.h.d)
.class public final Lcom/applovin/exoplayer2/h/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/h/n;
.implements Lcom/applovin/exoplayer2/h/n$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/h/d$a;
    }
.end annotation


# instance fields
.field private KS:Lcom/applovin/exoplayer2/h/n$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private KT:[Lcom/applovin/exoplayer2/h/d$a;

.field private KU:J

.field KV:J

.field KW:J

.field public final ft:Lcom/applovin/exoplayer2/h/n;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/h/n;ZJJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/d;->ft:Lcom/applovin/exoplayer2/h/n;

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/applovin/exoplayer2/h/d$a;

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/d;->KT:[Lcom/applovin/exoplayer2/h/d$a;

    if-eqz p2, :cond_e

    move-wide p1, p3

    goto :goto_13

    :cond_e
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_13
    iput-wide p1, p0, Lcom/applovin/exoplayer2/h/d;->KU:J

    iput-wide p3, p0, Lcom/applovin/exoplayer2/h/d;->KV:J

    iput-wide p5, p0, Lcom/applovin/exoplayer2/h/d;->KW:J

    return-void
.end method

.method private static a(J[Lcom/applovin/exoplayer2/j/d;)Z
    .registers 7

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-eqz v3, :cond_22

    array-length p0, p2

    const/4 p1, 0x0

    :goto_9
    if-ge p1, p0, :cond_22

    aget-object v1, p2, p1

    if-eqz v1, :cond_1f

    invoke-interface {v1}, Lcom/applovin/exoplayer2/j/d;->ng()Lcom/applovin/exoplayer2/v;

    move-result-object v1

    iget-object v2, v1, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    iget-object v1, v1, Lcom/applovin/exoplayer2/v;->dw:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applovin/exoplayer2/l/u;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_22
    return v0
.end method

.method private b(JLcom/applovin/exoplayer2/av;)Lcom/applovin/exoplayer2/av;
    .registers 13

    iget-wide v0, p3, Lcom/applovin/exoplayer2/av;->ho:J

    iget-wide v2, p0, Lcom/applovin/exoplayer2/h/d;->KV:J

    sub-long v4, p1, v2

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/applovin/exoplayer2/l/ai;->b(JJJ)J

    move-result-wide v0

    iget-wide v2, p3, Lcom/applovin/exoplayer2/av;->hp:J

    iget-wide v4, p0, Lcom/applovin/exoplayer2/h/d;->KW:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_1d

    const-wide p1, 0x7fffffffffffffffL

    move-wide v6, p1

    goto :goto_1f

    :cond_1d
    sub-long/2addr v4, p1

    move-wide v6, v4

    :goto_1f
    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcom/applovin/exoplayer2/l/ai;->b(JJJ)J

    move-result-wide p1

    iget-wide v2, p3, Lcom/applovin/exoplayer2/av;->ho:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_32

    iget-wide v2, p3, Lcom/applovin/exoplayer2/av;->hp:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_32

    return-object p3

    :cond_32
    new-instance p3, Lcom/applovin/exoplayer2/av;

    invoke-direct {p3, v0, v1, p1, p2}, Lcom/applovin/exoplayer2/av;-><init>(JJ)V

    return-object p3
.end method


# virtual methods
.method public a(JLcom/applovin/exoplayer2/av;)J
    .registers 7

    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/d;->KV:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    return-wide v0

    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/h/d;->b(JLcom/applovin/exoplayer2/av;)Lcom/applovin/exoplayer2/av;

    move-result-object p3

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/d;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/h/n;->a(JLcom/applovin/exoplayer2/av;)J

    move-result-wide p1

    return-wide p1
.end method

.method public a([Lcom/applovin/exoplayer2/j/d;[Z[Lcom/applovin/exoplayer2/h/x;[ZJ)J
    .registers 19

    move-object v0, p0

    move-object v1, p3

    array-length v2, v1

    new-array v2, v2, [Lcom/applovin/exoplayer2/h/d$a;

    iput-object v2, v0, Lcom/applovin/exoplayer2/h/d;->KT:[Lcom/applovin/exoplayer2/h/d$a;

    array-length v2, v1

    new-array v9, v2, [Lcom/applovin/exoplayer2/h/x;

    const/4 v10, 0x0

    const/4 v2, 0x0

    :goto_c
    array-length v3, v1

    const/4 v11, 0x0

    if-ge v2, v3, :cond_25

    iget-object v3, v0, Lcom/applovin/exoplayer2/h/d;->KT:[Lcom/applovin/exoplayer2/h/d$a;

    aget-object v4, v1, v2

    check-cast v4, Lcom/applovin/exoplayer2/h/d$a;

    aput-object v4, v3, v2

    aget-object v4, v3, v2

    if-eqz v4, :cond_20

    aget-object v3, v3, v2

    iget-object v11, v3, Lcom/applovin/exoplayer2/h/d$a;->KX:Lcom/applovin/exoplayer2/h/x;

    :cond_20
    aput-object v11, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_25
    iget-object v2, v0, Lcom/applovin/exoplayer2/h/d;->ft:Lcom/applovin/exoplayer2/h/n;

    move-object v3, p1

    move-object v4, p2

    move-object v5, v9

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    invoke-interface/range {v2 .. v8}, Lcom/applovin/exoplayer2/h/n;->a([Lcom/applovin/exoplayer2/j/d;[Z[Lcom/applovin/exoplayer2/h/x;[ZJ)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/h/d;->kP()Z

    move-result v4

    if-eqz v4, :cond_47

    iget-wide v4, v0, Lcom/applovin/exoplayer2/h/d;->KV:J

    cmp-long v6, p5, v4

    if-nez v6, :cond_47

    move-object v6, p1

    invoke-static {v4, v5, p1}, Lcom/applovin/exoplayer2/h/d;->a(J[Lcom/applovin/exoplayer2/j/d;)Z

    move-result v4

    if-eqz v4, :cond_47

    move-wide v4, v2

    goto :goto_4c

    :cond_47
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    :goto_4c
    iput-wide v4, v0, Lcom/applovin/exoplayer2/h/d;->KU:J

    cmp-long v4, v2, p5

    if-eqz v4, :cond_67

    iget-wide v4, v0, Lcom/applovin/exoplayer2/h/d;->KV:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_65

    iget-wide v4, v0, Lcom/applovin/exoplayer2/h/d;->KW:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-eqz v8, :cond_67

    cmp-long v6, v2, v4

    if-gtz v6, :cond_65

    goto :goto_67

    :cond_65
    const/4 v4, 0x0

    goto :goto_68

    :cond_67
    :goto_67
    const/4 v4, 0x1

    :goto_68
    invoke-static {v4}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    :goto_6b
    array-length v4, v1

    if-ge v10, v4, :cond_97

    aget-object v4, v9, v10

    if-nez v4, :cond_77

    iget-object v4, v0, Lcom/applovin/exoplayer2/h/d;->KT:[Lcom/applovin/exoplayer2/h/d$a;

    aput-object v11, v4, v10

    goto :goto_8e

    :cond_77
    iget-object v4, v0, Lcom/applovin/exoplayer2/h/d;->KT:[Lcom/applovin/exoplayer2/h/d$a;

    aget-object v5, v4, v10

    if-eqz v5, :cond_85

    aget-object v5, v4, v10

    iget-object v5, v5, Lcom/applovin/exoplayer2/h/d$a;->KX:Lcom/applovin/exoplayer2/h/x;

    aget-object v6, v9, v10

    if-eq v5, v6, :cond_8e

    :cond_85
    new-instance v5, Lcom/applovin/exoplayer2/h/d$a;

    aget-object v6, v9, v10

    invoke-direct {v5, p0, v6}, Lcom/applovin/exoplayer2/h/d$a;-><init>(Lcom/applovin/exoplayer2/h/d;Lcom/applovin/exoplayer2/h/x;)V

    aput-object v5, v4, v10

    :cond_8e
    :goto_8e
    iget-object v4, v0, Lcom/applovin/exoplayer2/h/d;->KT:[Lcom/applovin/exoplayer2/h/d$a;

    aget-object v4, v4, v10

    aput-object v4, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_6b

    :cond_97
    return-wide v2
.end method

.method public a(Lcom/applovin/exoplayer2/h/n$a;J)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/d;->KS:Lcom/applovin/exoplayer2/h/n$a;

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/d;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-interface {p1, p0, p2, p3}, Lcom/applovin/exoplayer2/h/n;->a(Lcom/applovin/exoplayer2/h/n$a;J)V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/h/n;)V
    .registers 2

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/d;->KS:Lcom/applovin/exoplayer2/h/n$a;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/h/n$a;

    invoke-interface {p1, p0}, Lcom/applovin/exoplayer2/h/n$a;->a(Lcom/applovin/exoplayer2/h/n;)V

    return-void
.end method

.method public synthetic a(Lcom/applovin/exoplayer2/h/y;)V
    .registers 2

    check-cast p1, Lcom/applovin/exoplayer2/h/n;

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/h/d;->b(Lcom/applovin/exoplayer2/h/n;)V

    return-void
.end method

.method public aQ(J)J
    .registers 9

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/applovin/exoplayer2/h/d;->KU:J

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/d;->KT:[Lcom/applovin/exoplayer2/h/d$a;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_18

    aget-object v4, v0, v3

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/h/d$a;->kQ()V

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_18
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/d;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v0, p1, p2}, Lcom/applovin/exoplayer2/h/n;->aQ(J)J

    move-result-wide v0

    cmp-long v3, v0, p1

    if-eqz v3, :cond_34

    iget-wide p1, p0, Lcom/applovin/exoplayer2/h/d;->KV:J

    cmp-long v3, v0, p1

    if-ltz v3, :cond_35

    iget-wide p1, p0, Lcom/applovin/exoplayer2/h/d;->KW:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, p1, v3

    if-eqz v5, :cond_34

    cmp-long v3, v0, p1

    if-gtz v3, :cond_35

    :cond_34
    const/4 v2, 0x1

    :cond_35
    invoke-static {v2}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    return-wide v0
.end method

.method public aR(J)Z
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/d;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v0, p1, p2}, Lcom/applovin/exoplayer2/h/n;->aR(J)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/applovin/exoplayer2/h/n;)V
    .registers 2

    iget-object p1, p0, Lcom/applovin/exoplayer2/h/d;->KS:Lcom/applovin/exoplayer2/h/n$a;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/h/n$a;

    invoke-interface {p1, p0}, Lcom/applovin/exoplayer2/h/y$a;->a(Lcom/applovin/exoplayer2/h/y;)V

    return-void
.end method

.method public cg()J
    .registers 8

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/d;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/n;->cg()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    iget-wide v4, p0, Lcom/applovin/exoplayer2/h/d;->KW:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_17

    cmp-long v6, v0, v4

    if-ltz v6, :cond_17

    goto :goto_18

    :cond_17
    return-wide v0

    :cond_18
    :goto_18
    return-wide v2
.end method

.method public ch()J
    .registers 8

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/d;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/n;->ch()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    iget-wide v4, p0, Lcom/applovin/exoplayer2/h/d;->KW:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_17

    cmp-long v6, v0, v4

    if-ltz v6, :cond_17

    goto :goto_18

    :cond_17
    return-wide v0

    :cond_18
    :goto_18
    return-wide v2
.end method

.method public cj()Lcom/applovin/exoplayer2/h/ad;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/d;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/n;->cj()Lcom/applovin/exoplayer2/h/ad;

    move-result-object v0

    return-object v0
.end method

.method public d(JZ)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/d;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/h/n;->d(JZ)V

    return-void
.end method

.method public kM()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/d;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/n;->kM()V

    return-void
.end method

.method public kN()J
    .registers 10

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/h/d;->kP()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_19

    iget-wide v3, p0, Lcom/applovin/exoplayer2/h/d;->KU:J

    iput-wide v1, p0, Lcom/applovin/exoplayer2/h/d;->KU:J

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/h/d;->kN()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-eqz v0, :cond_18

    move-wide v3, v5

    :cond_18
    return-wide v3

    :cond_19
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/d;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/n;->kN()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_24

    return-wide v1

    :cond_24
    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/d;->KV:J

    const/4 v2, 0x1

    const/4 v5, 0x0

    cmp-long v6, v3, v0

    if-ltz v6, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/d;->KW:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v0, v6

    if-eqz v8, :cond_40

    cmp-long v6, v3, v0

    if-gtz v6, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v2, 0x0

    :cond_40
    :goto_40
    invoke-static {v2}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    return-wide v3
.end method

.method public kO()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/d;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/n;->kO()Z

    move-result v0

    return v0
.end method

.method kP()Z
    .registers 6

    iget-wide v0, p0, Lcom/applovin/exoplayer2/h/d;->KU:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public t(J)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/d;->ft:Lcom/applovin/exoplayer2/h/n;

    invoke-interface {v0, p1, p2}, Lcom/applovin/exoplayer2/h/n;->t(J)V

    return-void
.end method

.method public v(JJ)V
    .registers 5

    iput-wide p1, p0, Lcom/applovin/exoplayer2/h/d;->KV:J

    iput-wide p3, p0, Lcom/applovin/exoplayer2/h/d;->KW:J

    return-void
.end method

###### Class com.applovin.exoplayer2.h.d.a (com.applovin.exoplayer2.h.d$a)
.class final Lcom/applovin/exoplayer2/h/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/h/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/h/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field public final KX:Lcom/applovin/exoplayer2/h/x;

.field private KY:Z

.field final synthetic KZ:Lcom/applovin/exoplayer2/h/d;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/h/d;Lcom/applovin/exoplayer2/h/x;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/d$a;->KZ:Lcom/applovin/exoplayer2/h/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/exoplayer2/h/d$a;->KX:Lcom/applovin/exoplayer2/h/x;

    return-void
.end method


# virtual methods
.method public aS(J)I
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/d$a;->KZ:Lcom/applovin/exoplayer2/h/d;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/h/d;->kP()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, -0x3

    return p1

    :cond_a
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/d$a;->KX:Lcom/applovin/exoplayer2/h/x;

    invoke-interface {v0, p1, p2}, Lcom/applovin/exoplayer2/h/x;->aS(J)I

    move-result p1

    return p1
.end method

.method public b(Lcom/applovin/exoplayer2/w;Lcom/applovin/exoplayer2/c/g;I)I
    .registers 14

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/d$a;->KZ:Lcom/applovin/exoplayer2/h/d;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/h/d;->kP()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/h/d$a;->KY:Z

    const/4 v2, 0x4

    const/4 v3, -0x4

    if-eqz v0, :cond_14

    invoke-virtual {p2, v2}, Lcom/applovin/exoplayer2/c/a;->bs(I)V

    return v3

    :cond_14
    iget-object v0, p0, Lcom/applovin/exoplayer2/h/d$a;->KX:Lcom/applovin/exoplayer2/h/x;

    invoke-interface {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/h/x;->b(Lcom/applovin/exoplayer2/w;Lcom/applovin/exoplayer2/c/g;I)I

    move-result p3

    const/4 v0, -0x5

    const-wide/high16 v4, -0x8000000000000000L

    if-ne p3, v0, :cond_57

    iget-object p2, p1, Lcom/applovin/exoplayer2/w;->dU:Lcom/applovin/exoplayer2/v;

    invoke-static {p2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/applovin/exoplayer2/v;

    iget p3, p2, Lcom/applovin/exoplayer2/v;->dO:I

    if-nez p3, :cond_2f

    iget v1, p2, Lcom/applovin/exoplayer2/v;->dP:I

    if-eqz v1, :cond_56

    :cond_2f
    iget-object v1, p0, Lcom/applovin/exoplayer2/h/d$a;->KZ:Lcom/applovin/exoplayer2/h/d;

    iget-wide v2, v1, Lcom/applovin/exoplayer2/h/d;->KV:J

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    cmp-long v9, v2, v6

    if-eqz v9, :cond_3b

    const/4 p3, 0x0

    :cond_3b
    iget-wide v1, v1, Lcom/applovin/exoplayer2/h/d;->KW:J

    cmp-long v3, v1, v4

    if-eqz v3, :cond_42

    goto :goto_44

    :cond_42
    iget v8, p2, Lcom/applovin/exoplayer2/v;->dP:I

    :goto_44
    invoke-virtual {p2}, Lcom/applovin/exoplayer2/v;->bR()Lcom/applovin/exoplayer2/v$a;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/applovin/exoplayer2/v$a;->Q(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object p2

    invoke-virtual {p2, v8}, Lcom/applovin/exoplayer2/v$a;->R(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object p2

    iput-object p2, p1, Lcom/applovin/exoplayer2/w;->dU:Lcom/applovin/exoplayer2/v;

    :cond_56
    return v0

    :cond_57
    iget-object p1, p0, Lcom/applovin/exoplayer2/h/d$a;->KZ:Lcom/applovin/exoplayer2/h/d;

    iget-wide v6, p1, Lcom/applovin/exoplayer2/h/d;->KW:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_7f

    if-ne p3, v3, :cond_67

    iget-wide v8, p2, Lcom/applovin/exoplayer2/c/g;->rJ:J

    cmp-long v0, v8, v6

    if-gez v0, :cond_75

    :cond_67
    if-ne p3, v1, :cond_7f

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/h/d;->cg()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-nez p1, :cond_7f

    iget-boolean p1, p2, Lcom/applovin/exoplayer2/c/g;->rI:Z

    if-nez p1, :cond_7f

    :cond_75
    invoke-virtual {p2}, Lcom/applovin/exoplayer2/c/g;->clear()V

    invoke-virtual {p2, v2}, Lcom/applovin/exoplayer2/c/a;->bs(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/h/d$a;->KY:Z

    return v3

    :cond_7f
    return p3
.end method

.method public isReady()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/d$a;->KZ:Lcom/applovin/exoplayer2/h/d;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/h/d;->kP()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/d$a;->KX:Lcom/applovin/exoplayer2/h/x;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/x;->isReady()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public kQ()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/h/d$a;->KY:Z

    return-void
.end method

.method public kR()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/d$a;->KX:Lcom/applovin/exoplayer2/h/x;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/x;->kR()V

    return-void
.end method
