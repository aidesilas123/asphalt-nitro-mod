###### Class com.applovin.exoplayer2.e.a (com.applovin.exoplayer2.e.a)
.class public abstract Lcom/applovin/exoplayer2/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/e/a$a;,
        Lcom/applovin/exoplayer2/e/a$e;,
        Lcom/applovin/exoplayer2/e/a$c;,
        Lcom/applovin/exoplayer2/e/a$d;,
        Lcom/applovin/exoplayer2/e/a$b;,
        Lcom/applovin/exoplayer2/e/a$f;
    }
.end annotation


# instance fields
.field protected final tB:Lcom/applovin/exoplayer2/e/a$a;

.field protected final tC:Lcom/applovin/exoplayer2/e/a$f;

.field protected tD:Lcom/applovin/exoplayer2/e/a$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final tE:I


# direct methods
.method protected constructor <init>(Lcom/applovin/exoplayer2/e/a$d;Lcom/applovin/exoplayer2/e/a$f;JJJJJJI)V
    .registers 32

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/applovin/exoplayer2/e/a;->tC:Lcom/applovin/exoplayer2/e/a$f;

    move/from16 v1, p15

    iput v1, v0, Lcom/applovin/exoplayer2/e/a;->tE:I

    new-instance v15, Lcom/applovin/exoplayer2/e/a$a;

    move-object v1, v15

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v1 .. v14}, Lcom/applovin/exoplayer2/e/a$a;-><init>(Lcom/applovin/exoplayer2/e/a$d;JJJJJJ)V

    iput-object v15, v0, Lcom/applovin/exoplayer2/e/a;->tB:Lcom/applovin/exoplayer2/e/a$a;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/applovin/exoplayer2/e/i;JLcom/applovin/exoplayer2/e/u;)I
    .registers 7

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v0

    cmp-long p1, p2, v0

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    iput-wide p2, p4, Lcom/applovin/exoplayer2/e/u;->uc:J

    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/a;->tD:Lcom/applovin/exoplayer2/e/a$c;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/e/a$c;

    invoke-static {v0}, Lcom/applovin/exoplayer2/e/a$c;->b(Lcom/applovin/exoplayer2/e/a$c;)J

    move-result-wide v1

    invoke-static {v0}, Lcom/applovin/exoplayer2/e/a$c;->c(Lcom/applovin/exoplayer2/e/a$c;)J

    move-result-wide v3

    invoke-static {v0}, Lcom/applovin/exoplayer2/e/a$c;->d(Lcom/applovin/exoplayer2/e/a$c;)J

    move-result-wide v5

    sub-long/2addr v3, v1

    iget v7, p0, Lcom/applovin/exoplayer2/e/a;->tE:I

    int-to-long v7, v7

    const/4 v9, 0x0

    cmp-long v10, v3, v7

    if-gtz v10, :cond_25

    invoke-virtual {p0, v9, v1, v2}, Lcom/applovin/exoplayer2/e/a;->a(ZJ)V

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/applovin/exoplayer2/e/a;->a(Lcom/applovin/exoplayer2/e/i;JLcom/applovin/exoplayer2/e/u;)I

    move-result p1

    return p1

    :cond_25
    invoke-virtual {p0, p1, v5, v6}, Lcom/applovin/exoplayer2/e/a;->a(Lcom/applovin/exoplayer2/e/i;J)Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {p0, p1, v5, v6, p2}, Lcom/applovin/exoplayer2/e/a;->a(Lcom/applovin/exoplayer2/e/i;JLcom/applovin/exoplayer2/e/u;)I

    move-result p1

    return p1

    :cond_30
    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ic()V

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/a;->tC:Lcom/applovin/exoplayer2/e/a$f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/e/a$c;->e(Lcom/applovin/exoplayer2/e/a$c;)J

    move-result-wide v2

    invoke-interface {v1, p1, v2, v3}, Lcom/applovin/exoplayer2/e/a$f;->b(Lcom/applovin/exoplayer2/e/i;J)Lcom/applovin/exoplayer2/e/a$e;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/exoplayer2/e/a$e;->a(Lcom/applovin/exoplayer2/e/a$e;)I

    move-result v2

    const/4 v3, -0x3

    if-eq v2, v3, :cond_85

    const/4 v3, -0x2

    if-eq v2, v3, :cond_78

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6c

    if-nez v2, :cond_64

    invoke-static {v1}, Lcom/applovin/exoplayer2/e/a$e;->c(Lcom/applovin/exoplayer2/e/a$e;)J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Lcom/applovin/exoplayer2/e/a;->a(Lcom/applovin/exoplayer2/e/i;J)Z

    const/4 v0, 0x1

    invoke-static {v1}, Lcom/applovin/exoplayer2/e/a$e;->c(Lcom/applovin/exoplayer2/e/a$e;)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/applovin/exoplayer2/e/a;->a(ZJ)V

    invoke-static {v1}, Lcom/applovin/exoplayer2/e/a$e;->c(Lcom/applovin/exoplayer2/e/a$e;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/applovin/exoplayer2/e/a;->a(Lcom/applovin/exoplayer2/e/i;JLcom/applovin/exoplayer2/e/u;)I

    move-result p1

    return p1

    :cond_64
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid case"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6c
    invoke-static {v1}, Lcom/applovin/exoplayer2/e/a$e;->b(Lcom/applovin/exoplayer2/e/a$e;)J

    move-result-wide v2

    invoke-static {v1}, Lcom/applovin/exoplayer2/e/a$e;->c(Lcom/applovin/exoplayer2/e/a$e;)J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/applovin/exoplayer2/e/a$c;->a(Lcom/applovin/exoplayer2/e/a$c;JJ)V

    goto :goto_0

    :cond_78
    invoke-static {v1}, Lcom/applovin/exoplayer2/e/a$e;->b(Lcom/applovin/exoplayer2/e/a$e;)J

    move-result-wide v2

    invoke-static {v1}, Lcom/applovin/exoplayer2/e/a$e;->c(Lcom/applovin/exoplayer2/e/a$e;)J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/applovin/exoplayer2/e/a$c;->b(Lcom/applovin/exoplayer2/e/a$c;JJ)V

    goto/16 :goto_0

    :cond_85
    invoke-virtual {p0, v9, v5, v6}, Lcom/applovin/exoplayer2/e/a;->a(ZJ)V

    invoke-virtual {p0, p1, v5, v6, p2}, Lcom/applovin/exoplayer2/e/a;->a(Lcom/applovin/exoplayer2/e/i;JLcom/applovin/exoplayer2/e/u;)I

    move-result p1

    return p1
.end method

.method protected final a(ZJ)V
    .registers 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/a;->tD:Lcom/applovin/exoplayer2/e/a$c;

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/a;->tC:Lcom/applovin/exoplayer2/e/a$f;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/e/a$f;->ib()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/a;->b(ZJ)V

    return-void
.end method

.method protected final a(Lcom/applovin/exoplayer2/e/i;J)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v0

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_18

    const-wide/32 v0, 0x40000

    cmp-long v2, p2, v0

    if-gtz v2, :cond_18

    long-to-int p3, p2

    invoke-interface {p1, p3}, Lcom/applovin/exoplayer2/e/i;->bH(I)V

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method public final ag(J)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/a;->tD:Lcom/applovin/exoplayer2/e/a$c;

    if-eqz v0, :cond_d

    invoke-static {v0}, Lcom/applovin/exoplayer2/e/a$c;->a(Lcom/applovin/exoplayer2/e/a$c;)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_d

    return-void

    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/e/a;->ah(J)Lcom/applovin/exoplayer2/e/a$c;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/a;->tD:Lcom/applovin/exoplayer2/e/a$c;

    return-void
.end method

.method protected ah(J)Lcom/applovin/exoplayer2/e/a$c;
    .registers 20

    move-object/from16 v0, p0

    new-instance v16, Lcom/applovin/exoplayer2/e/a$c;

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/a;->tB:Lcom/applovin/exoplayer2/e/a$a;

    move-wide/from16 v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/applovin/exoplayer2/e/a$a;->timeUsToTargetTime(J)J

    move-result-wide v4

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/a;->tB:Lcom/applovin/exoplayer2/e/a$a;

    invoke-static {v1}, Lcom/applovin/exoplayer2/e/a$a;->a(Lcom/applovin/exoplayer2/e/a$a;)J

    move-result-wide v6

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/a;->tB:Lcom/applovin/exoplayer2/e/a$a;

    invoke-static {v1}, Lcom/applovin/exoplayer2/e/a$a;->b(Lcom/applovin/exoplayer2/e/a$a;)J

    move-result-wide v8

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/a;->tB:Lcom/applovin/exoplayer2/e/a$a;

    invoke-static {v1}, Lcom/applovin/exoplayer2/e/a$a;->c(Lcom/applovin/exoplayer2/e/a$a;)J

    move-result-wide v10

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/a;->tB:Lcom/applovin/exoplayer2/e/a$a;

    invoke-static {v1}, Lcom/applovin/exoplayer2/e/a$a;->d(Lcom/applovin/exoplayer2/e/a$a;)J

    move-result-wide v12

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/a;->tB:Lcom/applovin/exoplayer2/e/a$a;

    invoke-static {v1}, Lcom/applovin/exoplayer2/e/a$a;->e(Lcom/applovin/exoplayer2/e/a$a;)J

    move-result-wide v14

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lcom/applovin/exoplayer2/e/a$c;-><init>(JJJJJJJ)V

    return-object v16
.end method

.method protected b(ZJ)V
    .registers 4

    return-void
.end method

.method public final hS()Lcom/applovin/exoplayer2/e/v;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/a;->tB:Lcom/applovin/exoplayer2/e/a$a;

    return-object v0
.end method

.method public final hT()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/a;->tD:Lcom/applovin/exoplayer2/e/a$c;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

###### Class com.applovin.exoplayer2.e.a.C0029a (com.applovin.exoplayer2.e.a$a)
.class public Lcom/applovin/exoplayer2/e/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final fH:J

.field private final tF:Lcom/applovin/exoplayer2/e/a$d;

.field private final tG:J

.field private final tH:J

.field private final tI:J

.field private final tJ:J

.field private final tK:J


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/e/a$d;JJJJJJ)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/a$a;->tF:Lcom/applovin/exoplayer2/e/a$d;

    iput-wide p2, p0, Lcom/applovin/exoplayer2/e/a$a;->fH:J

    iput-wide p4, p0, Lcom/applovin/exoplayer2/e/a$a;->tG:J

    iput-wide p6, p0, Lcom/applovin/exoplayer2/e/a$a;->tH:J

    iput-wide p8, p0, Lcom/applovin/exoplayer2/e/a$a;->tI:J

    iput-wide p10, p0, Lcom/applovin/exoplayer2/e/a$a;->tJ:J

    iput-wide p12, p0, Lcom/applovin/exoplayer2/e/a$a;->tK:J

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/e/a$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/a$a;->tG:J

    return-wide v0
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/e/a$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/a$a;->tH:J

    return-wide v0
.end method

.method static synthetic c(Lcom/applovin/exoplayer2/e/a$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/a$a;->tI:J

    return-wide v0
.end method

.method static synthetic d(Lcom/applovin/exoplayer2/e/a$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/a$a;->tJ:J

    return-wide v0
.end method

.method static synthetic e(Lcom/applovin/exoplayer2/e/a$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/a$a;->tK:J

    return-wide v0
.end method


# virtual methods
.method public ai(J)Lcom/applovin/exoplayer2/e/v$a;
    .registers 16

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/a$a;->tF:Lcom/applovin/exoplayer2/e/a$d;

    invoke-interface {v0, p1, p2}, Lcom/applovin/exoplayer2/e/a$d;->timeUsToTargetTime(J)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/applovin/exoplayer2/e/a$a;->tG:J

    iget-wide v5, p0, Lcom/applovin/exoplayer2/e/a$a;->tH:J

    iget-wide v7, p0, Lcom/applovin/exoplayer2/e/a$a;->tI:J

    iget-wide v9, p0, Lcom/applovin/exoplayer2/e/a$a;->tJ:J

    iget-wide v11, p0, Lcom/applovin/exoplayer2/e/a$a;->tK:J

    invoke-static/range {v1 .. v12}, Lcom/applovin/exoplayer2/e/a$c;->a(JJJJJJ)J

    move-result-wide v0

    new-instance v2, Lcom/applovin/exoplayer2/e/v$a;

    new-instance v3, Lcom/applovin/exoplayer2/e/w;

    invoke-direct {v3, p1, p2, v0, v1}, Lcom/applovin/exoplayer2/e/w;-><init>(JJ)V

    invoke-direct {v2, v3}, Lcom/applovin/exoplayer2/e/v$a;-><init>(Lcom/applovin/exoplayer2/e/w;)V

    return-object v2
.end method

.method public dd()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/a$a;->fH:J

    return-wide v0
.end method

.method public hU()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public timeUsToTargetTime(J)J
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/a$a;->tF:Lcom/applovin/exoplayer2/e/a$d;

    invoke-interface {v0, p1, p2}, Lcom/applovin/exoplayer2/e/a$d;->timeUsToTargetTime(J)J

    move-result-wide p1

    return-wide p1
.end method

###### Class com.applovin.exoplayer2.e.a.b (com.applovin.exoplayer2.e.a$b)
.class public final Lcom/applovin/exoplayer2/e/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public timeUsToTargetTime(J)J
    .registers 3

    return-wide p1
.end method

###### Class com.applovin.exoplayer2.e.a.c (com.applovin.exoplayer2.e.a$c)
.class public Lcom/applovin/exoplayer2/e/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "c"
.end annotation


# instance fields
.field private tG:J

.field private tH:J

.field private tI:J

.field private tJ:J

.field private final tK:J

.field private final tL:J

.field private final tM:J

.field private tN:J


# direct methods
.method protected constructor <init>(JJJJJJJ)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/a$c;->tL:J

    iput-wide p3, p0, Lcom/applovin/exoplayer2/e/a$c;->tM:J

    iput-wide p5, p0, Lcom/applovin/exoplayer2/e/a$c;->tG:J

    iput-wide p7, p0, Lcom/applovin/exoplayer2/e/a$c;->tH:J

    iput-wide p9, p0, Lcom/applovin/exoplayer2/e/a$c;->tI:J

    iput-wide p11, p0, Lcom/applovin/exoplayer2/e/a$c;->tJ:J

    iput-wide p13, p0, Lcom/applovin/exoplayer2/e/a$c;->tK:J

    invoke-static/range {p3 .. p14}, Lcom/applovin/exoplayer2/e/a$c;->a(JJJJJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/a$c;->tN:J

    return-void
.end method

.method protected static a(JJJJJJ)J
    .registers 19

    const-wide/16 v0, 0x1

    add-long v2, p6, v0

    cmp-long v4, v2, p8

    if-gez v4, :cond_2e

    add-long v2, p2, v0

    cmp-long v4, v2, p4

    if-ltz v4, :cond_f

    goto :goto_2e

    :cond_f
    sub-long v2, p0, p2

    sub-long v4, p8, p6

    long-to-float v4, v4

    sub-long v5, p4, p2

    long-to-float v5, v5

    div-float/2addr v4, v5

    long-to-float v2, v2

    mul-float v2, v2, v4

    float-to-long v2, v2

    const-wide/16 v4, 0x14

    div-long v4, v2, v4

    add-long/2addr v2, p6

    sub-long v2, v2, p10

    sub-long/2addr v2, v4

    sub-long v0, p8, v0

    move-wide p0, v2

    move-wide p2, p6

    move-wide p4, v0

    invoke-static/range {p0 .. p5}, Lcom/applovin/exoplayer2/l/ai;->b(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_2e
    :goto_2e
    return-wide p6
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/e/a$c;)J
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/a$c;->hY()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/e/a$c;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/e/a$c;->l(JJ)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/e/a$c;)J
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/a$c;->hV()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/e/a$c;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/exoplayer2/e/a$c;->k(JJ)V

    return-void
.end method

.method static synthetic c(Lcom/applovin/exoplayer2/e/a$c;)J
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/a$c;->hW()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic d(Lcom/applovin/exoplayer2/e/a$c;)J
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/a$c;->hZ()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic e(Lcom/applovin/exoplayer2/e/a$c;)J
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/a$c;->hX()J

    move-result-wide v0

    return-wide v0
.end method

.method private hV()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/a$c;->tI:J

    return-wide v0
.end method

.method private hW()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/a$c;->tJ:J

    return-wide v0
.end method

.method private hX()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/a$c;->tM:J

    return-wide v0
.end method

.method private hY()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/a$c;->tL:J

    return-wide v0
.end method

.method private hZ()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/a$c;->tN:J

    return-wide v0
.end method

.method private ia()V
    .registers 13

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/a$c;->tM:J

    iget-wide v2, p0, Lcom/applovin/exoplayer2/e/a$c;->tG:J

    iget-wide v4, p0, Lcom/applovin/exoplayer2/e/a$c;->tH:J

    iget-wide v6, p0, Lcom/applovin/exoplayer2/e/a$c;->tI:J

    iget-wide v8, p0, Lcom/applovin/exoplayer2/e/a$c;->tJ:J

    iget-wide v10, p0, Lcom/applovin/exoplayer2/e/a$c;->tK:J

    invoke-static/range {v0 .. v11}, Lcom/applovin/exoplayer2/e/a$c;->a(JJJJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/a$c;->tN:J

    return-void
.end method

.method private k(JJ)V
    .registers 5

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/a$c;->tG:J

    iput-wide p3, p0, Lcom/applovin/exoplayer2/e/a$c;->tI:J

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/a$c;->ia()V

    return-void
.end method

.method private l(JJ)V
    .registers 5

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/a$c;->tH:J

    iput-wide p3, p0, Lcom/applovin/exoplayer2/e/a$c;->tJ:J

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/a$c;->ia()V

    return-void
.end method

###### Class com.applovin.exoplayer2.e.a.d (com.applovin.exoplayer2.e.a$d)
.class public interface abstract Lcom/applovin/exoplayer2/e/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "d"
.end annotation


# virtual methods
.method public abstract timeUsToTargetTime(J)J
.end method

###### Class com.applovin.exoplayer2.e.a.e (com.applovin.exoplayer2.e.a$e)
.class public final Lcom/applovin/exoplayer2/e/a$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final tO:Lcom/applovin/exoplayer2/e/a$e;


# instance fields
.field private final bs:I

.field private final tP:J

.field private final tQ:J


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v6, Lcom/applovin/exoplayer2/e/a$e;

    const/4 v1, -0x3

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/applovin/exoplayer2/e/a$e;-><init>(IJJ)V

    sput-object v6, Lcom/applovin/exoplayer2/e/a$e;->tO:Lcom/applovin/exoplayer2/e/a$e;

    return-void
.end method

.method private constructor <init>(IJJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/e/a$e;->bs:I

    iput-wide p2, p0, Lcom/applovin/exoplayer2/e/a$e;->tP:J

    iput-wide p4, p0, Lcom/applovin/exoplayer2/e/a$e;->tQ:J

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/e/a$e;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/e/a$e;->bs:I

    return p0
.end method

.method public static aj(J)Lcom/applovin/exoplayer2/e/a$e;
    .registers 9

    new-instance v6, Lcom/applovin/exoplayer2/e/a$e;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v6

    move-wide v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/applovin/exoplayer2/e/a$e;-><init>(IJJ)V

    return-object v6
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/e/a$e;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/a$e;->tP:J

    return-wide v0
.end method

.method static synthetic c(Lcom/applovin/exoplayer2/e/a$e;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/a$e;->tQ:J

    return-wide v0
.end method

.method public static m(JJ)Lcom/applovin/exoplayer2/e/a$e;
    .registers 11

    new-instance v6, Lcom/applovin/exoplayer2/e/a$e;

    const/4 v1, -0x1

    move-object v0, v6

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/applovin/exoplayer2/e/a$e;-><init>(IJJ)V

    return-object v6
.end method

.method public static n(JJ)Lcom/applovin/exoplayer2/e/a$e;
    .registers 11

    new-instance v6, Lcom/applovin/exoplayer2/e/a$e;

    const/4 v1, -0x2

    move-object v0, v6

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/applovin/exoplayer2/e/a$e;-><init>(IJJ)V

    return-object v6
.end method

###### Class com.applovin.exoplayer2.e.a.f (com.applovin.exoplayer2.e.a$f)
.class public interface abstract Lcom/applovin/exoplayer2/e/a$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "f"
.end annotation


# virtual methods
.method public abstract b(Lcom/applovin/exoplayer2/e/i;J)Lcom/applovin/exoplayer2/e/a$e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ib()V
.end method
