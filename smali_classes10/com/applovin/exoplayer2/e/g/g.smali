###### Class com.applovin.exoplayer2.e.g.g (com.applovin.exoplayer2.e.g.g)
.class public final Lcom/applovin/exoplayer2/e/g/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/h;
.implements Lcom/applovin/exoplayer2/e/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/e/g/g$a;
    }
.end annotation


# static fields
.field public static final vq:Lcom/applovin/exoplayer2/e/l;


# instance fields
.field private final AA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/g/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private AB:I

.field private AC:[Lcom/applovin/exoplayer2/e/g/g$a;

.field private AD:[[J

.field private AE:I

.field private AF:I

.field private Aa:J

.field private Ab:I

.field private Ac:Lcom/applovin/exoplayer2/l/y;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final Az:Lcom/applovin/exoplayer2/e/g/i;

.field private fH:J

.field private final jF:I

.field private final uO:Lcom/applovin/exoplayer2/l/y;

.field private vG:Lcom/applovin/exoplayer2/e/j;

.field private final wm:Lcom/applovin/exoplayer2/l/y;

.field private final wn:Lcom/applovin/exoplayer2/l/y;

.field private wu:Lcom/applovin/exoplayer2/g/f/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private xI:I

.field private xJ:I

.field private xK:I

.field private final zU:Lcom/applovin/exoplayer2/l/y;

.field private final zV:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/applovin/exoplayer2/e/g/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private zY:I

.field private zZ:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/e/g/q;->a:Lcom/applovin/exoplayer2/e/g/q;

    sput-object v0, Lcom/applovin/exoplayer2/e/g/g;->vq:Lcom/applovin/exoplayer2/e/l;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/e/g/g;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/e/g/g;->jF:I

    const/4 v0, 0x4

    and-int/2addr p1, v0

    if-eqz p1, :cond_b

    const/4 p1, 0x3

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    iput p1, p0, Lcom/applovin/exoplayer2/e/g/g;->zY:I

    new-instance p1, Lcom/applovin/exoplayer2/e/g/i;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/e/g/i;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/g;->Az:Lcom/applovin/exoplayer2/e/g/i;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/g;->AA:Ljava/util/List;

    new-instance p1, Lcom/applovin/exoplayer2/l/y;

    const/16 v1, 0x10

    invoke-direct {p1, v1}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/g;->zU:Lcom/applovin/exoplayer2/l/y;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/g;->zV:Ljava/util/ArrayDeque;

    new-instance p1, Lcom/applovin/exoplayer2/l/y;

    sget-object v1, Lcom/applovin/exoplayer2/l/v;->abK:[B

    invoke-direct {p1, v1}, Lcom/applovin/exoplayer2/l/y;-><init>([B)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/g;->wm:Lcom/applovin/exoplayer2/l/y;

    new-instance p1, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {p1, v0}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/g;->wn:Lcom/applovin/exoplayer2/l/y;

    new-instance p1, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/l/y;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/g;->uO:Lcom/applovin/exoplayer2/l/y;

    const/4 p1, -0x1

    iput p1, p0, Lcom/applovin/exoplayer2/e/g/g;->AB:I

    return-void
.end method

.method private static D(Lcom/applovin/exoplayer2/l/y;)I
    .registers 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/e/g/g;->co(I)I

    move-result v0

    if-eqz v0, :cond_10

    return v0

    :cond_10
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    :cond_14
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v0

    if-lez v0, :cond_25

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/e/g/g;->co(I)I

    move-result v0

    if-eqz v0, :cond_14

    return v0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method private G(Lcom/applovin/exoplayer2/e/i;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/applovin/exoplayer2/e/g/g;->Ab:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/g;->zU:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    invoke-interface {p1, v0, v3, v2, v1}, Lcom/applovin/exoplayer2/e/i;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/g/g;->iV()V

    return v3

    :cond_18
    iput v2, p0, Lcom/applovin/exoplayer2/e/g/g;->Ab:I

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/g;->zU:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/g;->zU:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->pv()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/applovin/exoplayer2/e/g/g;->Aa:J

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/g;->zU:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/e/g/g;->zZ:I

    :cond_2f
    iget-wide v4, p0, Lcom/applovin/exoplayer2/e/g/g;->Aa:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/g;->zU:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v2}, Lcom/applovin/exoplayer2/e/i;->a([BII)V

    iget v0, p0, Lcom/applovin/exoplayer2/e/g/g;->Ab:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/applovin/exoplayer2/e/g/g;->Ab:I

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/g;->zU:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->pF()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/applovin/exoplayer2/e/g/g;->Aa:J

    goto :goto_79

    :cond_4e
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_79

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->if()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_6a

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/g;->zV:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/e/g/a$a;

    if-eqz v0, :cond_6a

    iget-wide v4, v0, Lcom/applovin/exoplayer2/e/g/a$a;->zl:J

    :cond_6a
    cmp-long v0, v4, v6

    if-eqz v0, :cond_79

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lcom/applovin/exoplayer2/e/g/g;->Ab:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/applovin/exoplayer2/e/g/g;->Aa:J

    :cond_79
    :goto_79
    iget-wide v4, p0, Lcom/applovin/exoplayer2/e/g/g;->Aa:J

    iget v0, p0, Lcom/applovin/exoplayer2/e/g/g;->Ab:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_10d

    iget v0, p0, Lcom/applovin/exoplayer2/e/g/g;->zZ:I

    invoke-static {v0}, Lcom/applovin/exoplayer2/e/g/g;->cn(I)Z

    move-result v0

    if-eqz v0, :cond_c1

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/applovin/exoplayer2/e/g/g;->Aa:J

    add-long/2addr v2, v4

    iget v0, p0, Lcom/applovin/exoplayer2/e/g/g;->Ab:I

    int-to-long v6, v0

    sub-long/2addr v2, v6

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_a4

    iget v0, p0, Lcom/applovin/exoplayer2/e/g/g;->zZ:I

    const v4, 0x6d657461

    if-ne v0, v4, :cond_a4

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/g/g;->K(Lcom/applovin/exoplayer2/e/i;)V

    :cond_a4
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/g/g;->zV:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/applovin/exoplayer2/e/g/a$a;

    iget v4, p0, Lcom/applovin/exoplayer2/e/g/g;->zZ:I

    invoke-direct {v0, v4, v2, v3}, Lcom/applovin/exoplayer2/e/g/a$a;-><init>(IJ)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v4, p0, Lcom/applovin/exoplayer2/e/g/g;->Aa:J

    iget p1, p0, Lcom/applovin/exoplayer2/e/g/g;->Ab:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_bd

    invoke-direct {p0, v2, v3}, Lcom/applovin/exoplayer2/e/g/g;->au(J)V

    goto :goto_10c

    :cond_bd
    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/g/g;->iL()V

    goto :goto_10c

    :cond_c1
    iget v0, p0, Lcom/applovin/exoplayer2/e/g/g;->zZ:I

    invoke-static {v0}, Lcom/applovin/exoplayer2/e/g/g;->cm(I)Z

    move-result v0

    if-eqz v0, :cond_fc

    iget p1, p0, Lcom/applovin/exoplayer2/e/g/g;->Ab:I

    if-ne p1, v2, :cond_cf

    const/4 p1, 0x1

    goto :goto_d0

    :cond_cf
    const/4 p1, 0x0

    :goto_d0
    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-wide v4, p0, Lcom/applovin/exoplayer2/e/g/g;->Aa:J

    const-wide/32 v6, 0x7fffffff

    cmp-long p1, v4, v6

    if-gtz p1, :cond_de

    const/4 p1, 0x1

    goto :goto_df

    :cond_de
    const/4 p1, 0x0

    :goto_df
    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    new-instance p1, Lcom/applovin/exoplayer2/l/y;

    iget-wide v4, p0, Lcom/applovin/exoplayer2/e/g/g;->Aa:J

    long-to-int v0, v4

    invoke-direct {p1, v0}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/g;->zU:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v4

    invoke-static {v0, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/g;->Ac:Lcom/applovin/exoplayer2/l/y;

    iput v1, p0, Lcom/applovin/exoplayer2/e/g/g;->zY:I

    goto :goto_10c

    :cond_fc
    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v2

    iget p1, p0, Lcom/applovin/exoplayer2/e/g/g;->Ab:I

    int-to-long v4, p1

    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/applovin/exoplayer2/e/g/g;->az(J)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/g;->Ac:Lcom/applovin/exoplayer2/l/y;

    iput v1, p0, Lcom/applovin/exoplayer2/e/g/g;->zY:I

    :goto_10c
    return v1

    :cond_10d
    const-string p1, "Atom size less than header length (unsupported)."

    invoke-static {p1}, Lcom/applovin/exoplayer2/ai;->p(Ljava/lang/String;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1
.end method

.method private K(Lcom/applovin/exoplayer2/e/i;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/g;->uO:Lcom/applovin/exoplayer2/l/y;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/y;->U(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/g;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/applovin/exoplayer2/e/i;->c([BII)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/g;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-static {v0}, Lcom/applovin/exoplayer2/e/g/b;->p(Lcom/applovin/exoplayer2/l/y;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/g;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/e/i;->bH(I)V

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ic()V

    return-void
.end method

.method private static a(Lcom/applovin/exoplayer2/e/g/n;J)I
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/e/g/n;->aA(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/e/g/n;->aB(J)I

    move-result v0

    :cond_b
    return v0
.end method

.method private static a(Lcom/applovin/exoplayer2/e/g/n;JJ)J
    .registers 5

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/e/g/g;->a(Lcom/applovin/exoplayer2/e/g/n;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_8

    return-wide p3

    :cond_8
    iget-object p0, p0, Lcom/applovin/exoplayer2/e/g/n;->tS:[J

    aget-wide p1, p0, p1

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private static a([Lcom/applovin/exoplayer2/e/g/g$a;)[[J
    .registers 16

    array-length v0, p0

    new-array v0, v0, [[J

    array-length v1, p0

    new-array v1, v1, [I

    array-length v2, p0

    new-array v2, v2, [J

    array-length v3, p0

    new-array v3, v3, [Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_e
    array-length v6, p0

    if-ge v5, v6, :cond_28

    aget-object v6, p0, v5

    iget-object v6, v6, Lcom/applovin/exoplayer2/e/g/g$a;->AH:Lcom/applovin/exoplayer2/e/g/n;

    iget v6, v6, Lcom/applovin/exoplayer2/e/g/n;->jA:I

    new-array v6, v6, [J

    aput-object v6, v0, v5

    aget-object v6, p0, v5

    iget-object v6, v6, Lcom/applovin/exoplayer2/e/g/g$a;->AH:Lcom/applovin/exoplayer2/e/g/n;

    iget-object v6, v6, Lcom/applovin/exoplayer2/e/g/n;->Bq:[J

    aget-wide v7, v6, v4

    aput-wide v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_28
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    :goto_2b
    array-length v8, p0

    if-ge v7, v8, :cond_71

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, -0x1

    const/4 v11, 0x0

    :goto_35
    array-length v12, p0

    if-ge v11, v12, :cond_48

    aget-boolean v12, v3, v11

    if-nez v12, :cond_45

    aget-wide v12, v2, v11

    cmp-long v14, v12, v8

    if-gtz v14, :cond_45

    aget-wide v8, v2, v11

    move v10, v11

    :cond_45
    add-int/lit8 v11, v11, 0x1

    goto :goto_35

    :cond_48
    aget v8, v1, v10

    aget-object v9, v0, v10

    aput-wide v5, v9, v8

    aget-object v9, p0, v10

    iget-object v9, v9, Lcom/applovin/exoplayer2/e/g/g$a;->AH:Lcom/applovin/exoplayer2/e/g/n;

    iget-object v9, v9, Lcom/applovin/exoplayer2/e/g/n;->tR:[I

    aget v9, v9, v8

    int-to-long v11, v9

    add-long/2addr v5, v11

    const/4 v9, 0x1

    add-int/2addr v8, v9

    aput v8, v1, v10

    aget-object v11, v0, v10

    array-length v11, v11

    if-ge v8, v11, :cond_6c

    aget-object v9, p0, v10

    iget-object v9, v9, Lcom/applovin/exoplayer2/e/g/g$a;->AH:Lcom/applovin/exoplayer2/e/g/n;

    iget-object v9, v9, Lcom/applovin/exoplayer2/e/g/n;->Bq:[J

    aget-wide v8, v9, v8

    aput-wide v8, v2, v10

    goto :goto_2b

    :cond_6c
    aput-boolean v9, v3, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    :cond_71
    return-object v0
.end method

.method private au(J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/g;->zV:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/g;->zV:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/e/g/a$a;

    iget-wide v2, v0, Lcom/applovin/exoplayer2/e/g/a$a;->zl:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/g;->zV:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/e/g/a$a;

    iget v2, v0, Lcom/applovin/exoplayer2/e/g/a;->bs:I

    const v3, 0x6d6f6f76

    if-ne v2, v3, :cond_31

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/e/g/g;->g(Lcom/applovin/exoplayer2/e/g/a$a;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/g;->zV:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iput v1, p0, Lcom/applovin/exoplayer2/e/g/g;->zY:I

    goto :goto_0

    :cond_31
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/g/g;->zV:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/g/g;->zV:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/e/g/a$a;

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/e/g/a$a;->a(Lcom/applovin/exoplayer2/e/g/a$a;)V

    goto :goto_0

    :cond_45
    iget p1, p0, Lcom/applovin/exoplayer2/e/g/g;->zY:I

    if-eq p1, v1, :cond_4c

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/g/g;->iL()V

    :cond_4c
    return-void
.end method

.method private ax(J)I
    .registers 23

    move-object/from16 v0, p0

    const/4 v2, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, 0x1

    const-wide v11, 0x7fffffffffffffffL

    const/4 v13, 0x1

    const-wide v14, 0x7fffffffffffffffL

    :goto_16
    iget-object v1, v0, Lcom/applovin/exoplayer2/e/g/g;->AC:[Lcom/applovin/exoplayer2/e/g/g$a;

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/applovin/exoplayer2/e/g/g$a;

    array-length v1, v1

    if-ge v7, v1, :cond_6b

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/g/g;->AC:[Lcom/applovin/exoplayer2/e/g/g$a;

    aget-object v1, v1, v7

    iget v3, v1, Lcom/applovin/exoplayer2/e/g/g$a;->zB:I

    iget-object v1, v1, Lcom/applovin/exoplayer2/e/g/g$a;->AH:Lcom/applovin/exoplayer2/e/g/n;

    iget v4, v1, Lcom/applovin/exoplayer2/e/g/n;->jA:I

    if-ne v3, v4, :cond_2e

    goto :goto_68

    :cond_2e
    iget-object v1, v1, Lcom/applovin/exoplayer2/e/g/n;->tS:[J

    aget-wide v4, v1, v3

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/g/g;->AD:[[J

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    aget-object v1, v1, v7

    aget-wide v16, v1, v3

    sub-long v4, v4, p1

    const-wide/16 v18, 0x0

    cmp-long v1, v4, v18

    if-ltz v1, :cond_50

    const-wide/32 v18, 0x40000

    cmp-long v1, v4, v18

    if-ltz v1, :cond_4e

    goto :goto_50

    :cond_4e
    const/4 v1, 0x0

    goto :goto_51

    :cond_50
    :goto_50
    const/4 v1, 0x1

    :goto_51
    if-nez v1, :cond_55

    if-nez v13, :cond_5b

    :cond_55
    if-ne v1, v13, :cond_60

    cmp-long v3, v4, v14

    if-gez v3, :cond_60

    :cond_5b
    move v13, v1

    move-wide v14, v4

    move v6, v7

    move-wide/from16 v11, v16

    :cond_60
    cmp-long v3, v16, v8

    if-gez v3, :cond_68

    move v10, v1

    move v2, v7

    move-wide/from16 v8, v16

    :cond_68
    :goto_68
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    :cond_6b
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v8, v3

    if-eqz v1, :cond_7e

    if-eqz v10, :cond_7e

    const-wide/32 v3, 0xa00000

    add-long/2addr v8, v3

    cmp-long v1, v11, v8

    if-gez v1, :cond_7f

    :cond_7e
    move v2, v6

    :cond_7f
    return v2
.end method

.method private ay(J)V
    .registers 10

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/g;->AC:[Lcom/applovin/exoplayer2/e/g/g$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/applovin/exoplayer2/e/g/g$a;->AH:Lcom/applovin/exoplayer2/e/g/n;

    invoke-virtual {v4, p1, p2}, Lcom/applovin/exoplayer2/e/g/n;->aA(J)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_15

    invoke-virtual {v4, p1, p2}, Lcom/applovin/exoplayer2/e/g/n;->aB(J)I

    move-result v5

    :cond_15
    iput v5, v3, Lcom/applovin/exoplayer2/e/g/g$a;->zB:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1a
    return-void
.end method

.method private az(J)V
    .registers 16

    iget v0, p0, Lcom/applovin/exoplayer2/e/g/g;->zZ:I

    const v1, 0x6d707664

    if-ne v0, v1, :cond_21

    new-instance v0, Lcom/applovin/exoplayer2/g/f/b;

    const-wide/16 v3, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    iget v1, p0, Lcom/applovin/exoplayer2/e/g/g;->Ab:I

    int-to-long v5, v1

    add-long v9, p1, v5

    iget-wide v5, p0, Lcom/applovin/exoplayer2/e/g/g;->Aa:J

    int-to-long v1, v1

    sub-long v11, v5, v1

    move-object v2, v0

    move-wide v5, p1

    invoke-direct/range {v2 .. v12}, Lcom/applovin/exoplayer2/g/f/b;-><init>(JJJJJ)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/g/g;->wu:Lcom/applovin/exoplayer2/g/f/b;

    :cond_21
    return-void
.end method

.method private static synthetic b(Lcom/applovin/exoplayer2/e/g/k;)Lcom/applovin/exoplayer2/e/g/k;
    .registers 1

    return-object p0
.end method

.method public static synthetic c()[Lcom/applovin/exoplayer2/e/h;
    .registers 1

    invoke-static {}, Lcom/applovin/exoplayer2/e/g/g;->ih()[Lcom/applovin/exoplayer2/e/h;

    move-result-object v0

    return-object v0
.end method

.method private static cm(I)Z
    .registers 2

    const v0, 0x6d646864

    if-eq p0, v0, :cond_5d

    const v0, 0x6d766864

    if-eq p0, v0, :cond_5d

    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_5d

    const v0, 0x73747364

    if-eq p0, v0, :cond_5d

    const v0, 0x73747473

    if-eq p0, v0, :cond_5d

    const v0, 0x73747373

    if-eq p0, v0, :cond_5d

    const v0, 0x63747473

    if-eq p0, v0, :cond_5d

    const v0, 0x656c7374

    if-eq p0, v0, :cond_5d

    const v0, 0x73747363

    if-eq p0, v0, :cond_5d

    const v0, 0x7374737a

    if-eq p0, v0, :cond_5d

    const v0, 0x73747a32

    if-eq p0, v0, :cond_5d

    const v0, 0x7374636f

    if-eq p0, v0, :cond_5d

    const v0, 0x636f3634

    if-eq p0, v0, :cond_5d

    const v0, 0x746b6864

    if-eq p0, v0, :cond_5d

    const v0, 0x66747970

    if-eq p0, v0, :cond_5d

    const v0, 0x75647461

    if-eq p0, v0, :cond_5d

    const v0, 0x6b657973

    if-eq p0, v0, :cond_5d

    const v0, 0x696c7374

    if-ne p0, v0, :cond_5b

    goto :goto_5d

    :cond_5b
    const/4 p0, 0x0

    goto :goto_5e

    :cond_5d
    :goto_5d
    const/4 p0, 0x1

    :goto_5e
    return p0
.end method

.method private static cn(I)Z
    .registers 2

    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_26

    const v0, 0x7472616b

    if-eq p0, v0, :cond_26

    const v0, 0x6d646961

    if-eq p0, v0, :cond_26

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_26

    const v0, 0x7374626c

    if-eq p0, v0, :cond_26

    const v0, 0x65647473

    if-eq p0, v0, :cond_26

    const v0, 0x6d657461

    if-ne p0, v0, :cond_24

    goto :goto_26

    :cond_24
    const/4 p0, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 p0, 0x1

    :goto_27
    return p0
.end method

.method private static co(I)I
    .registers 2

    const v0, 0x68656963

    if-eq p0, v0, :cond_e

    const v0, 0x71742020

    if-eq p0, v0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x2

    return p0
.end method

.method private d(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/g/g;->Aa:J

    iget v2, p0, Lcom/applovin/exoplayer2/e/g/g;->Ab:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-object v4, p0, Lcom/applovin/exoplayer2/e/g/g;->Ac:Lcom/applovin/exoplayer2/l/y;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_44

    invoke-virtual {v4}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object p2

    iget v7, p0, Lcom/applovin/exoplayer2/e/g/g;->Ab:I

    long-to-int v1, v0

    invoke-interface {p1, p2, v7, v1}, Lcom/applovin/exoplayer2/e/i;->a([BII)V

    iget p1, p0, Lcom/applovin/exoplayer2/e/g/g;->zZ:I

    const p2, 0x66747970

    if-ne p1, p2, :cond_29

    invoke-static {v4}, Lcom/applovin/exoplayer2/e/g/g;->D(Lcom/applovin/exoplayer2/l/y;)I

    move-result p1

    iput p1, p0, Lcom/applovin/exoplayer2/e/g/g;->AF:I

    goto :goto_4f

    :cond_29
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/g/g;->zV:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4f

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/g/g;->zV:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/e/g/a$a;

    new-instance p2, Lcom/applovin/exoplayer2/e/g/a$b;

    iget v0, p0, Lcom/applovin/exoplayer2/e/g/g;->zZ:I

    invoke-direct {p2, v0, v4}, Lcom/applovin/exoplayer2/e/g/a$b;-><init>(ILcom/applovin/exoplayer2/l/y;)V

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/e/g/a$a;->a(Lcom/applovin/exoplayer2/e/g/a$b;)V

    goto :goto_4f

    :cond_44
    const-wide/32 v7, 0x40000

    cmp-long v4, v0, v7

    if-gez v4, :cond_51

    long-to-int p2, v0

    invoke-interface {p1, p2}, Lcom/applovin/exoplayer2/e/i;->bH(I)V

    :cond_4f
    :goto_4f
    const/4 p1, 0x0

    goto :goto_59

    :cond_51
    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v7

    add-long/2addr v7, v0

    iput-wide v7, p2, Lcom/applovin/exoplayer2/e/u;->uc:J

    const/4 p1, 0x1

    :goto_59
    invoke-direct {p0, v2, v3}, Lcom/applovin/exoplayer2/e/g/g;->au(J)V

    if-eqz p1, :cond_64

    iget p1, p0, Lcom/applovin/exoplayer2/e/g/g;->zY:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_64

    goto :goto_65

    :cond_64
    const/4 v5, 0x0

    :goto_65
    return v5
.end method

.method private e(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/g;->Az:Lcom/applovin/exoplayer2/e/g/i;

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/g/g;->AA:Ljava/util/List;

    invoke-virtual {v0, p1, p2, v1}, Lcom/applovin/exoplayer2/e/g/i;->a(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;Ljava/util/List;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    iget-wide v0, p2, Lcom/applovin/exoplayer2/e/u;->uc:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_16

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/g/g;->iL()V

    :cond_16
    return p1
.end method

.method private f(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v0

    iget v2, p0, Lcom/applovin/exoplayer2/e/g/g;->AB:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/e/g/g;->ax(J)I

    move-result v2

    iput v2, p0, Lcom/applovin/exoplayer2/e/g/g;->AB:I

    if-ne v2, v3, :cond_12

    return v3

    :cond_12
    iget-object v2, p0, Lcom/applovin/exoplayer2/e/g/g;->AC:[Lcom/applovin/exoplayer2/e/g/g$a;

    invoke-static {v2}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/applovin/exoplayer2/e/g/g$a;

    iget v4, p0, Lcom/applovin/exoplayer2/e/g/g;->AB:I

    aget-object v2, v2, v4

    iget-object v4, v2, Lcom/applovin/exoplayer2/e/g/g$a;->vH:Lcom/applovin/exoplayer2/e/x;

    iget v5, v2, Lcom/applovin/exoplayer2/e/g/g$a;->zB:I

    iget-object v6, v2, Lcom/applovin/exoplayer2/e/g/g$a;->AH:Lcom/applovin/exoplayer2/e/g/n;

    iget-object v7, v6, Lcom/applovin/exoplayer2/e/g/n;->tS:[J

    aget-wide v8, v7, v5

    iget-object v6, v6, Lcom/applovin/exoplayer2/e/g/n;->tR:[I

    aget v6, v6, v5

    sub-long v0, v8, v0

    iget v7, p0, Lcom/applovin/exoplayer2/e/g/g;->xI:I

    int-to-long v10, v7

    add-long/2addr v0, v10

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    cmp-long v7, v0, v10

    if-ltz v7, :cond_114

    const-wide/32 v10, 0x40000

    cmp-long v7, v0, v10

    if-ltz v7, :cond_42

    goto/16 :goto_114

    :cond_42
    iget-object p2, v2, Lcom/applovin/exoplayer2/e/g/g$a;->AG:Lcom/applovin/exoplayer2/e/g/k;

    iget p2, p2, Lcom/applovin/exoplayer2/e/g/k;->AR:I

    if-ne p2, v12, :cond_4d

    const-wide/16 v7, 0x8

    add-long/2addr v0, v7

    add-int/lit8 v6, v6, -0x8

    :cond_4d
    long-to-int p2, v0

    invoke-interface {p1, p2}, Lcom/applovin/exoplayer2/e/i;->bH(I)V

    iget-object p2, v2, Lcom/applovin/exoplayer2/e/g/g$a;->AG:Lcom/applovin/exoplayer2/e/g/k;

    iget v0, p2, Lcom/applovin/exoplayer2/e/g/k;->wo:I

    const/4 v1, 0x0

    if-eqz v0, :cond_b8

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/g/g;->wn:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object p2

    aput-byte v1, p2, v1

    aput-byte v1, p2, v12

    const/4 v0, 0x2

    aput-byte v1, p2, v0

    iget-object v0, v2, Lcom/applovin/exoplayer2/e/g/g$a;->AG:Lcom/applovin/exoplayer2/e/g/k;

    iget v0, v0, Lcom/applovin/exoplayer2/e/g/k;->wo:I

    rsub-int/lit8 v7, v0, 0x4

    :goto_6b
    iget v8, p0, Lcom/applovin/exoplayer2/e/g/g;->xJ:I

    if-ge v8, v6, :cond_f4

    iget v8, p0, Lcom/applovin/exoplayer2/e/g/g;->xK:I

    if-nez v8, :cond_a4

    invoke-interface {p1, p2, v7, v0}, Lcom/applovin/exoplayer2/e/i;->a([BII)V

    iget v8, p0, Lcom/applovin/exoplayer2/e/g/g;->xI:I

    add-int/2addr v8, v0

    iput v8, p0, Lcom/applovin/exoplayer2/e/g/g;->xI:I

    iget-object v8, p0, Lcom/applovin/exoplayer2/e/g/g;->wn:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v8, v1}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iget-object v8, p0, Lcom/applovin/exoplayer2/e/g/g;->wn:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v8}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v8

    if-ltz v8, :cond_9c

    iput v8, p0, Lcom/applovin/exoplayer2/e/g/g;->xK:I

    iget-object v8, p0, Lcom/applovin/exoplayer2/e/g/g;->wm:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v8, v1}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iget-object v8, p0, Lcom/applovin/exoplayer2/e/g/g;->wm:Lcom/applovin/exoplayer2/l/y;

    const/4 v9, 0x4

    invoke-interface {v4, v8, v9}, Lcom/applovin/exoplayer2/e/x;->c(Lcom/applovin/exoplayer2/l/y;I)V

    iget v8, p0, Lcom/applovin/exoplayer2/e/g/g;->xJ:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/applovin/exoplayer2/e/g/g;->xJ:I

    add-int/2addr v6, v7

    goto :goto_6b

    :cond_9c
    const/4 p1, 0x0

    const-string p2, "Invalid NAL length"

    invoke-static {p2, p1}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    :cond_a4
    invoke-interface {v4, p1, v8, v1}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/k/g;IZ)I

    move-result v8

    iget v9, p0, Lcom/applovin/exoplayer2/e/g/g;->xI:I

    add-int/2addr v9, v8

    iput v9, p0, Lcom/applovin/exoplayer2/e/g/g;->xI:I

    iget v9, p0, Lcom/applovin/exoplayer2/e/g/g;->xJ:I

    add-int/2addr v9, v8

    iput v9, p0, Lcom/applovin/exoplayer2/e/g/g;->xJ:I

    iget v9, p0, Lcom/applovin/exoplayer2/e/g/g;->xK:I

    sub-int/2addr v9, v8

    iput v9, p0, Lcom/applovin/exoplayer2/e/g/g;->xK:I

    goto :goto_6b

    :cond_b8
    iget-object p2, p2, Lcom/applovin/exoplayer2/e/g/k;->dU:Lcom/applovin/exoplayer2/v;

    iget-object p2, p2, Lcom/applovin/exoplayer2/v;->dz:Ljava/lang/String;

    const-string v0, "audio/ac4"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_da

    iget p2, p0, Lcom/applovin/exoplayer2/e/g/g;->xJ:I

    if-nez p2, :cond_d8

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/g/g;->uO:Lcom/applovin/exoplayer2/l/y;

    invoke-static {v6, p2}, Lcom/applovin/exoplayer2/b/c;->a(ILcom/applovin/exoplayer2/l/y;)V

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/g/g;->uO:Lcom/applovin/exoplayer2/l/y;

    const/4 v0, 0x7

    invoke-interface {v4, p2, v0}, Lcom/applovin/exoplayer2/e/x;->c(Lcom/applovin/exoplayer2/l/y;I)V

    iget p2, p0, Lcom/applovin/exoplayer2/e/g/g;->xJ:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/applovin/exoplayer2/e/g/g;->xJ:I

    :cond_d8
    add-int/lit8 v6, v6, 0x7

    :cond_da
    :goto_da
    iget p2, p0, Lcom/applovin/exoplayer2/e/g/g;->xJ:I

    if-ge p2, v6, :cond_f4

    sub-int p2, v6, p2

    invoke-interface {v4, p1, p2, v1}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/k/g;IZ)I

    move-result p2

    iget v0, p0, Lcom/applovin/exoplayer2/e/g/g;->xI:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/applovin/exoplayer2/e/g/g;->xI:I

    iget v0, p0, Lcom/applovin/exoplayer2/e/g/g;->xJ:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/applovin/exoplayer2/e/g/g;->xJ:I

    iget v0, p0, Lcom/applovin/exoplayer2/e/g/g;->xK:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/applovin/exoplayer2/e/g/g;->xK:I

    goto :goto_da

    :cond_f4
    move v8, v6

    iget-object p1, v2, Lcom/applovin/exoplayer2/e/g/g$a;->AH:Lcom/applovin/exoplayer2/e/g/n;

    iget-object p2, p1, Lcom/applovin/exoplayer2/e/g/n;->Bq:[J

    aget-wide v6, p2, v5

    iget-object p1, p1, Lcom/applovin/exoplayer2/e/g/n;->zJ:[I

    aget p1, p1, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v5, v6

    move v7, p1

    invoke-interface/range {v4 .. v10}, Lcom/applovin/exoplayer2/e/x;->a(JIIILcom/applovin/exoplayer2/e/x$a;)V

    iget p1, v2, Lcom/applovin/exoplayer2/e/g/g$a;->zB:I

    add-int/2addr p1, v12

    iput p1, v2, Lcom/applovin/exoplayer2/e/g/g$a;->zB:I

    iput v3, p0, Lcom/applovin/exoplayer2/e/g/g;->AB:I

    iput v1, p0, Lcom/applovin/exoplayer2/e/g/g;->xI:I

    iput v1, p0, Lcom/applovin/exoplayer2/e/g/g;->xJ:I

    iput v1, p0, Lcom/applovin/exoplayer2/e/g/g;->xK:I

    return v1

    :cond_114
    :goto_114
    iput-wide v8, p2, Lcom/applovin/exoplayer2/e/u;->uc:J

    return v12
.end method

.method private g(Lcom/applovin/exoplayer2/e/g/a$a;)V
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget v2, v0, Lcom/applovin/exoplayer2/e/g/g;->AF:I

    const/4 v11, 0x1

    if-ne v2, v11, :cond_10

    const/4 v7, 0x1

    goto :goto_11

    :cond_10
    const/4 v7, 0x0

    :goto_11
    new-instance v12, Lcom/applovin/exoplayer2/e/r;

    invoke-direct {v12}, Lcom/applovin/exoplayer2/e/r;-><init>()V

    const v2, 0x75647461

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/e/g/a$a;->ci(I)Lcom/applovin/exoplayer2/e/g/a$b;

    move-result-object v2

    if-eqz v2, :cond_33

    invoke-static {v2}, Lcom/applovin/exoplayer2/e/g/b;->b(Lcom/applovin/exoplayer2/e/g/a$b;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/applovin/exoplayer2/g/a;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/applovin/exoplayer2/g/a;

    if-eqz v3, :cond_30

    invoke-virtual {v12, v3}, Lcom/applovin/exoplayer2/e/r;->e(Lcom/applovin/exoplayer2/g/a;)Z

    :cond_30
    move-object v14, v2

    move-object v15, v3

    goto :goto_35

    :cond_33
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_35
    const v2, 0x6d657461

    invoke-virtual {v1, v2}, Lcom/applovin/exoplayer2/e/g/a$a;->cj(I)Lcom/applovin/exoplayer2/e/g/a$a;

    move-result-object v2

    if-eqz v2, :cond_44

    invoke-static {v2}, Lcom/applovin/exoplayer2/e/g/b;->b(Lcom/applovin/exoplayer2/e/g/a$a;)Lcom/applovin/exoplayer2/g/a;

    move-result-object v2

    move-object v8, v2

    goto :goto_45

    :cond_44
    const/4 v8, 0x0

    :goto_45
    iget v2, v0, Lcom/applovin/exoplayer2/e/g/g;->jF:I

    and-int/2addr v2, v11

    if-eqz v2, :cond_4c

    const/4 v6, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v6, 0x0

    :goto_4d
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    sget-object v16, Lcom/applovin/exoplayer2/e/g/r;->a:Lcom/applovin/exoplayer2/e/g/r;

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v13, v8

    move-object/from16 v8, v16

    invoke-static/range {v1 .. v8}, Lcom/applovin/exoplayer2/e/g/b;->a(Lcom/applovin/exoplayer2/e/g/a$a;Lcom/applovin/exoplayer2/e/r;JLcom/applovin/exoplayer2/d/e;ZZLcom/applovin/exoplayer2/common/base/Function;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/applovin/exoplayer2/e/g/g;->vG:Lcom/applovin/exoplayer2/e/j;

    invoke-static {v2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/exoplayer2/e/j;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x0

    const/4 v8, -0x1

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    :goto_72
    if-ge v7, v3, :cond_128

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    check-cast v6, Lcom/applovin/exoplayer2/e/g/n;

    iget v4, v6, Lcom/applovin/exoplayer2/e/g/n;->jA:I

    if-nez v4, :cond_8e

    move-object/from16 v20, v1

    move/from16 v21, v3

    move-object v5, v9

    const/4 v3, -0x1

    const/4 v9, 0x1

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_11f

    :cond_8e
    iget-object v4, v6, Lcom/applovin/exoplayer2/e/g/n;->AG:Lcom/applovin/exoplayer2/e/g/k;

    move/from16 v19, v8

    move-object v5, v9

    iget-wide v8, v4, Lcom/applovin/exoplayer2/e/g/k;->fH:J

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v20, v8, v17

    if-eqz v20, :cond_9f

    goto :goto_a1

    :cond_9f
    iget-wide v8, v6, Lcom/applovin/exoplayer2/e/g/n;->fH:J

    :goto_a1
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    move-object/from16 v20, v1

    new-instance v1, Lcom/applovin/exoplayer2/e/g/g$a;

    move/from16 v21, v3

    iget v3, v4, Lcom/applovin/exoplayer2/e/g/k;->bs:I

    invoke-interface {v2, v7, v3}, Lcom/applovin/exoplayer2/e/j;->y(II)Lcom/applovin/exoplayer2/e/x;

    move-result-object v3

    invoke-direct {v1, v4, v6, v3}, Lcom/applovin/exoplayer2/e/g/g$a;-><init>(Lcom/applovin/exoplayer2/e/g/k;Lcom/applovin/exoplayer2/e/g/n;Lcom/applovin/exoplayer2/e/x;)V

    iget v3, v6, Lcom/applovin/exoplayer2/e/g/n;->zH:I

    add-int/lit8 v3, v3, 0x1e

    move-wide/from16 v22, v10

    iget-object v10, v4, Lcom/applovin/exoplayer2/e/g/k;->dU:Lcom/applovin/exoplayer2/v;

    invoke-virtual {v10}, Lcom/applovin/exoplayer2/v;->bR()Lcom/applovin/exoplayer2/v$a;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/applovin/exoplayer2/v$a;->I(I)Lcom/applovin/exoplayer2/v$a;

    iget v3, v4, Lcom/applovin/exoplayer2/e/g/k;->bs:I

    const/4 v11, 0x2

    if-ne v3, v11, :cond_dd

    const-wide/16 v24, 0x0

    cmp-long v3, v8, v24

    if-lez v3, :cond_dd

    iget v3, v6, Lcom/applovin/exoplayer2/e/g/n;->jA:I

    const/4 v6, 0x1

    if-le v3, v6, :cond_dd

    int-to-float v3, v3

    long-to-float v6, v8

    const v8, 0x49742400    # 1000000.0f

    div-float/2addr v6, v8

    div-float/2addr v3, v6

    invoke-virtual {v10, v3}, Lcom/applovin/exoplayer2/v$a;->d(F)Lcom/applovin/exoplayer2/v$a;

    :cond_dd
    iget v3, v4, Lcom/applovin/exoplayer2/e/g/k;->bs:I

    invoke-static {v3, v12, v10}, Lcom/applovin/exoplayer2/e/g/f;->a(ILcom/applovin/exoplayer2/e/r;Lcom/applovin/exoplayer2/v$a;)V

    iget v3, v4, Lcom/applovin/exoplayer2/e/g/k;->bs:I

    new-array v6, v11, [Lcom/applovin/exoplayer2/g/a;

    const/4 v8, 0x0

    aput-object v14, v6, v8

    iget-object v8, v0, Lcom/applovin/exoplayer2/e/g/g;->AA:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_f3

    const/4 v8, 0x0

    goto :goto_fa

    :cond_f3
    new-instance v8, Lcom/applovin/exoplayer2/g/a;

    iget-object v9, v0, Lcom/applovin/exoplayer2/e/g/g;->AA:Ljava/util/List;

    invoke-direct {v8, v9}, Lcom/applovin/exoplayer2/g/a;-><init>(Ljava/util/List;)V

    :goto_fa
    const/4 v9, 0x1

    aput-object v8, v6, v9

    invoke-static {v3, v15, v13, v10, v6}, Lcom/applovin/exoplayer2/e/g/f;->a(ILcom/applovin/exoplayer2/g/a;Lcom/applovin/exoplayer2/g/a;Lcom/applovin/exoplayer2/v$a;[Lcom/applovin/exoplayer2/g/a;)V

    iget-object v3, v1, Lcom/applovin/exoplayer2/e/g/g$a;->vH:Lcom/applovin/exoplayer2/e/x;

    invoke-virtual {v10}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/applovin/exoplayer2/e/x;->j(Lcom/applovin/exoplayer2/v;)V

    iget v3, v4, Lcom/applovin/exoplayer2/e/g/k;->bs:I

    move/from16 v6, v19

    if-ne v3, v11, :cond_118

    const/4 v3, -0x1

    if-ne v6, v3, :cond_119

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    move v8, v4

    goto :goto_11a

    :cond_118
    const/4 v3, -0x1

    :cond_119
    move v8, v6

    :goto_11a
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v10, v22

    :goto_11f
    add-int/lit8 v7, v7, 0x1

    move-object v9, v5

    move-object/from16 v1, v20

    move/from16 v3, v21

    goto/16 :goto_72

    :cond_128
    move v6, v8

    move-object v5, v9

    iput v6, v0, Lcom/applovin/exoplayer2/e/g/g;->AE:I

    iput-wide v10, v0, Lcom/applovin/exoplayer2/e/g/g;->fH:J

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/applovin/exoplayer2/e/g/g$a;

    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/applovin/exoplayer2/e/g/g$a;

    iput-object v1, v0, Lcom/applovin/exoplayer2/e/g/g;->AC:[Lcom/applovin/exoplayer2/e/g/g$a;

    invoke-static {v1}, Lcom/applovin/exoplayer2/e/g/g;->a([Lcom/applovin/exoplayer2/e/g/g$a;)[[J

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/exoplayer2/e/g/g;->AD:[[J

    invoke-interface {v2}, Lcom/applovin/exoplayer2/e/j;->ig()V

    invoke-interface {v2, v0}, Lcom/applovin/exoplayer2/e/j;->a(Lcom/applovin/exoplayer2/e/v;)V

    return-void
.end method

.method public static synthetic h(Lcom/applovin/exoplayer2/e/g/k;)Lcom/applovin/exoplayer2/e/g/k;
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/e/g/g;->b(Lcom/applovin/exoplayer2/e/g/k;)Lcom/applovin/exoplayer2/e/g/k;

    move-result-object p0

    return-object p0
.end method

.method private iL()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/e/g/g;->zY:I

    iput v0, p0, Lcom/applovin/exoplayer2/e/g/g;->Ab:I

    return-void
.end method

.method private iV()V
    .registers 7

    iget v0, p0, Lcom/applovin/exoplayer2/e/g/g;->AF:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4b

    iget v0, p0, Lcom/applovin/exoplayer2/e/g/g;->jF:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/g;->vG:Lcom/applovin/exoplayer2/e/j;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/e/j;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/applovin/exoplayer2/e/j;->y(II)Lcom/applovin/exoplayer2/e/x;

    move-result-object v1

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/g/g;->wu:Lcom/applovin/exoplayer2/g/f/b;

    if-nez v3, :cond_1e

    const/4 v2, 0x0

    goto :goto_2b

    :cond_1e
    new-instance v3, Lcom/applovin/exoplayer2/g/a;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/applovin/exoplayer2/g/a$a;

    iget-object v5, p0, Lcom/applovin/exoplayer2/e/g/g;->wu:Lcom/applovin/exoplayer2/g/f/b;

    aput-object v5, v4, v2

    invoke-direct {v3, v4}, Lcom/applovin/exoplayer2/g/a;-><init>([Lcom/applovin/exoplayer2/g/a$a;)V

    move-object v2, v3

    :goto_2b
    new-instance v3, Lcom/applovin/exoplayer2/v$a;

    invoke-direct {v3}, Lcom/applovin/exoplayer2/v$a;-><init>()V

    invoke-virtual {v3, v2}, Lcom/applovin/exoplayer2/v$a;->b(Lcom/applovin/exoplayer2/g/a;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/applovin/exoplayer2/e/x;->j(Lcom/applovin/exoplayer2/v;)V

    invoke-interface {v0}, Lcom/applovin/exoplayer2/e/j;->ig()V

    new-instance v1, Lcom/applovin/exoplayer2/e/v$b;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Lcom/applovin/exoplayer2/e/v$b;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/applovin/exoplayer2/e/j;->a(Lcom/applovin/exoplayer2/e/v;)V

    :cond_4b
    return-void
.end method

.method private static synthetic ih()[Lcom/applovin/exoplayer2/e/h;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/applovin/exoplayer2/e/h;

    new-instance v1, Lcom/applovin/exoplayer2/e/g/g;

    invoke-direct {v1}, Lcom/applovin/exoplayer2/e/g/g;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/e/j;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/g;->vG:Lcom/applovin/exoplayer2/e/j;

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/e/i;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/applovin/exoplayer2/e/g/g;->jF:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/e/g/j;->e(Lcom/applovin/exoplayer2/e/i;Z)Z

    move-result p1

    return p1
.end method

.method public ai(J)Lcom/applovin/exoplayer2/e/v$a;
    .registers 15

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/g;->AC:[Lcom/applovin/exoplayer2/e/g/g$a;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/exoplayer2/e/g/g$a;

    array-length v0, v0

    if-nez v0, :cond_13

    new-instance p1, Lcom/applovin/exoplayer2/e/v$a;

    sget-object p2, Lcom/applovin/exoplayer2/e/w;->uT:Lcom/applovin/exoplayer2/e/w;

    invoke-direct {p1, p2}, Lcom/applovin/exoplayer2/e/v$a;-><init>(Lcom/applovin/exoplayer2/e/w;)V

    return-object p1

    :cond_13
    const-wide/16 v0, -0x1

    iget v2, p0, Lcom/applovin/exoplayer2/e/g/g;->AE:I

    const/4 v3, -0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v2, v3, :cond_5b

    iget-object v6, p0, Lcom/applovin/exoplayer2/e/g/g;->AC:[Lcom/applovin/exoplayer2/e/g/g$a;

    aget-object v2, v6, v2

    iget-object v2, v2, Lcom/applovin/exoplayer2/e/g/g$a;->AH:Lcom/applovin/exoplayer2/e/g/n;

    invoke-static {v2, p1, p2}, Lcom/applovin/exoplayer2/e/g/g;->a(Lcom/applovin/exoplayer2/e/g/n;J)I

    move-result v6

    if-ne v6, v3, :cond_33

    new-instance p1, Lcom/applovin/exoplayer2/e/v$a;

    sget-object p2, Lcom/applovin/exoplayer2/e/w;->uT:Lcom/applovin/exoplayer2/e/w;

    invoke-direct {p1, p2}, Lcom/applovin/exoplayer2/e/v$a;-><init>(Lcom/applovin/exoplayer2/e/w;)V

    return-object p1

    :cond_33
    iget-object v7, v2, Lcom/applovin/exoplayer2/e/g/n;->Bq:[J

    aget-wide v8, v7, v6

    iget-object v7, v2, Lcom/applovin/exoplayer2/e/g/n;->tS:[J

    aget-wide v10, v7, v6

    cmp-long v7, v8, p1

    if-gez v7, :cond_56

    iget v7, v2, Lcom/applovin/exoplayer2/e/g/n;->jA:I

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_56

    invoke-virtual {v2, p1, p2}, Lcom/applovin/exoplayer2/e/g/n;->aB(J)I

    move-result p1

    if-eq p1, v3, :cond_56

    if-eq p1, v6, :cond_56

    iget-object p2, v2, Lcom/applovin/exoplayer2/e/g/n;->Bq:[J

    aget-wide v0, p2, p1

    iget-object p2, v2, Lcom/applovin/exoplayer2/e/g/n;->tS:[J

    aget-wide p1, p2, p1

    goto :goto_58

    :cond_56
    move-wide p1, v0

    move-wide v0, v4

    :goto_58
    move-wide v2, p1

    move-wide p1, v8

    goto :goto_62

    :cond_5b
    const-wide v10, 0x7fffffffffffffffL

    move-wide v2, v0

    move-wide v0, v4

    :goto_62
    const/4 v6, 0x0

    :goto_63
    iget-object v7, p0, Lcom/applovin/exoplayer2/e/g/g;->AC:[Lcom/applovin/exoplayer2/e/g/g$a;

    array-length v8, v7

    if-ge v6, v8, :cond_80

    iget v8, p0, Lcom/applovin/exoplayer2/e/g/g;->AE:I

    if-eq v6, v8, :cond_7d

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/applovin/exoplayer2/e/g/g$a;->AH:Lcom/applovin/exoplayer2/e/g/n;

    invoke-static {v7, p1, p2, v10, v11}, Lcom/applovin/exoplayer2/e/g/g;->a(Lcom/applovin/exoplayer2/e/g/n;JJ)J

    move-result-wide v8

    cmp-long v10, v0, v4

    if-eqz v10, :cond_7c

    invoke-static {v7, v0, v1, v2, v3}, Lcom/applovin/exoplayer2/e/g/g;->a(Lcom/applovin/exoplayer2/e/g/n;JJ)J

    move-result-wide v2

    :cond_7c
    move-wide v10, v8

    :cond_7d
    add-int/lit8 v6, v6, 0x1

    goto :goto_63

    :cond_80
    new-instance v6, Lcom/applovin/exoplayer2/e/w;

    invoke-direct {v6, p1, p2, v10, v11}, Lcom/applovin/exoplayer2/e/w;-><init>(JJ)V

    cmp-long p1, v0, v4

    if-nez p1, :cond_8f

    new-instance p1, Lcom/applovin/exoplayer2/e/v$a;

    invoke-direct {p1, v6}, Lcom/applovin/exoplayer2/e/v$a;-><init>(Lcom/applovin/exoplayer2/e/w;)V

    return-object p1

    :cond_8f
    new-instance p1, Lcom/applovin/exoplayer2/e/w;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/applovin/exoplayer2/e/w;-><init>(JJ)V

    new-instance p2, Lcom/applovin/exoplayer2/e/v$a;

    invoke-direct {p2, v6, p1}, Lcom/applovin/exoplayer2/e/v$a;-><init>(Lcom/applovin/exoplayer2/e/w;Lcom/applovin/exoplayer2/e/w;)V

    return-object p2
.end method

.method public b(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget v0, p0, Lcom/applovin/exoplayer2/e/g/g;->zY:I

    if-eqz v0, :cond_24

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/e/g/g;->e(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;)I

    move-result p1

    return p1

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_18
    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/e/g/g;->f(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;)I

    move-result p1

    return p1

    :cond_1d
    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/e/g/g;->d(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_24
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/g/g;->G(Lcom/applovin/exoplayer2/e/i;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1
.end method

.method public dd()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/g/g;->fH:J

    return-wide v0
.end method

.method public hU()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public o(JJ)V
    .registers 8

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/g;->zV:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/e/g/g;->Ab:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/applovin/exoplayer2/e/g/g;->AB:I

    iput v0, p0, Lcom/applovin/exoplayer2/e/g/g;->xI:I

    iput v0, p0, Lcom/applovin/exoplayer2/e/g/g;->xJ:I

    iput v0, p0, Lcom/applovin/exoplayer2/e/g/g;->xK:I

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_2b

    iget p1, p0, Lcom/applovin/exoplayer2/e/g/g;->zY:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_20

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/g/g;->iL()V

    goto :goto_32

    :cond_20
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/g/g;->Az:Lcom/applovin/exoplayer2/e/g/i;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/e/g/i;->Y()V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/g/g;->AA:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_32

    :cond_2b
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/g/g;->AC:[Lcom/applovin/exoplayer2/e/g/g$a;

    if-eqz p1, :cond_32

    invoke-direct {p0, p3, p4}, Lcom/applovin/exoplayer2/e/g/g;->ay(J)V

    :cond_32
    :goto_32
    return-void
.end method

.method public release()V
    .registers 1

    return-void
.end method
