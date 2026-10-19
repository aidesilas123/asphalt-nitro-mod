###### Class com.applovin.exoplayer2.e.b.a (com.applovin.exoplayer2.e.b.a)
.class final Lcom/applovin/exoplayer2/e/b/a;
.super Lcom/applovin/exoplayer2/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/e/b/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/e/p;IJJ)V
    .registers 23

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/applovin/exoplayer2/e/b/d;

    invoke-direct {v1, v0}, Lcom/applovin/exoplayer2/e/b/d;-><init>(Lcom/applovin/exoplayer2/e/p;)V

    new-instance v2, Lcom/applovin/exoplayer2/e/b/a$a;

    const/4 v3, 0x0

    move/from16 v4, p2

    invoke-direct {v2, v0, v4, v3}, Lcom/applovin/exoplayer2/e/b/a$a;-><init>(Lcom/applovin/exoplayer2/e/p;ILcom/applovin/exoplayer2/e/b/a$1;)V

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/e/p;->dd()J

    move-result-wide v3

    iget-wide v7, v0, Lcom/applovin/exoplayer2/e/p;->uI:J

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/e/p;->ii()J

    move-result-wide v13

    iget v0, v0, Lcom/applovin/exoplayer2/e/p;->uD:I

    const/4 v5, 0x6

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    invoke-direct/range {v0 .. v15}, Lcom/applovin/exoplayer2/e/a;-><init>(Lcom/applovin/exoplayer2/e/a$d;Lcom/applovin/exoplayer2/e/a$f;JJJJJJI)V

    return-void
.end method

###### Class com.applovin.exoplayer2.e.b.a.AnonymousClass1 (com.applovin.exoplayer2.e.b.a$1)
.class synthetic Lcom/applovin/exoplayer2/e/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.applovin.exoplayer2.e.b.a.C0030a (com.applovin.exoplayer2.e.b.a$a)
.class final Lcom/applovin/exoplayer2/e/b/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final uz:Lcom/applovin/exoplayer2/e/p;

.field private final vK:I

.field private final vL:Lcom/applovin/exoplayer2/e/m$a;


# direct methods
.method private constructor <init>(Lcom/applovin/exoplayer2/e/p;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/b/a$a;->uz:Lcom/applovin/exoplayer2/e/p;

    iput p2, p0, Lcom/applovin/exoplayer2/e/b/a$a;->vK:I

    new-instance p1, Lcom/applovin/exoplayer2/e/m$a;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/e/m$a;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/b/a$a;->vL:Lcom/applovin/exoplayer2/e/m$a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/e/p;ILcom/applovin/exoplayer2/e/b/a$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/e/b/a$a;-><init>(Lcom/applovin/exoplayer2/e/p;I)V

    return-void
.end method

.method private i(Lcom/applovin/exoplayer2/e/i;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->id()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->if()J

    move-result-wide v2

    const-wide/16 v4, 0x6

    sub-long/2addr v2, v4

    cmp-long v6, v0, v2

    if-gez v6, :cond_20

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/b/a$a;->uz:Lcom/applovin/exoplayer2/e/p;

    iget v1, p0, Lcom/applovin/exoplayer2/e/b/a$a;->vK:I

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/b/a$a;->vL:Lcom/applovin/exoplayer2/e/m$a;

    invoke-static {p1, v0, v1, v2}, Lcom/applovin/exoplayer2/e/m;->a(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/p;ILcom/applovin/exoplayer2/e/m$a;)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/e/i;->bI(I)V

    goto :goto_0

    :cond_20
    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->id()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->if()J

    move-result-wide v2

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3f

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->if()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->id()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-interface {p1, v1}, Lcom/applovin/exoplayer2/e/i;->bI(I)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/b/a$a;->uz:Lcom/applovin/exoplayer2/e/p;

    iget-wide v0, p1, Lcom/applovin/exoplayer2/e/p;->uI:J

    return-wide v0

    :cond_3f
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/b/a$a;->vL:Lcom/applovin/exoplayer2/e/m$a;

    iget-wide v0, p1, Lcom/applovin/exoplayer2/e/m$a;->uy:J

    return-wide v0
.end method


# virtual methods
.method public b(Lcom/applovin/exoplayer2/e/i;J)Lcom/applovin/exoplayer2/e/a$e;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/b/a$a;->i(Lcom/applovin/exoplayer2/e/i;)J

    move-result-wide v2

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->id()J

    move-result-wide v4

    iget-object v6, p0, Lcom/applovin/exoplayer2/e/b/a$a;->uz:Lcom/applovin/exoplayer2/e/p;

    iget v6, v6, Lcom/applovin/exoplayer2/e/p;->uD:I

    const/4 v7, 0x6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-interface {p1, v6}, Lcom/applovin/exoplayer2/e/i;->bI(I)V

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/b/a$a;->i(Lcom/applovin/exoplayer2/e/i;)J

    move-result-wide v6

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->id()J

    move-result-wide v8

    cmp-long p1, v2, p2

    if-gtz p1, :cond_2d

    cmp-long p1, v6, p2

    if-lez p1, :cond_2d

    invoke-static {v4, v5}, Lcom/applovin/exoplayer2/e/a$e;->aj(J)Lcom/applovin/exoplayer2/e/a$e;

    move-result-object p1

    return-object p1

    :cond_2d
    cmp-long p1, v6, p2

    if-gtz p1, :cond_36

    invoke-static {v6, v7, v8, v9}, Lcom/applovin/exoplayer2/e/a$e;->n(JJ)Lcom/applovin/exoplayer2/e/a$e;

    move-result-object p1

    return-object p1

    :cond_36
    invoke-static {v2, v3, v0, v1}, Lcom/applovin/exoplayer2/e/a$e;->m(JJ)Lcom/applovin/exoplayer2/e/a$e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic ib()V
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/e/b0;->a(Lcom/applovin/exoplayer2/e/a$f;)V

    return-void
.end method

###### Class com.applovin.exoplayer2.e.b.d (com.applovin.exoplayer2.e.b.d)
.class public final synthetic Lcom/applovin/exoplayer2/e/b/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/e/a$d;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/e/p;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/e/p;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/b/d;->a:Lcom/applovin/exoplayer2/e/p;

    return-void
.end method


# virtual methods
.method public final timeUsToTargetTime(J)J
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/b/d;->a:Lcom/applovin/exoplayer2/e/p;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/e/p;->an(J)J

    move-result-wide p1

    return-wide p1
.end method
