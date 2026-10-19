###### Class com.applovin.exoplayer2.e.g.d (com.applovin.exoplayer2.e.g.d)
.class final Lcom/applovin/exoplayer2/e/g/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/e/g/d$a;
    }
.end annotation


# direct methods
.method public static a(I[J[IJ)Lcom/applovin/exoplayer2/e/g/d$a;
    .registers 21

    move-object/from16 v0, p2

    const/16 v1, 0x2000

    div-int v1, v1, p0

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_a
    if-ge v4, v2, :cond_16

    aget v6, v0, v4

    invoke-static {v6, v1}, Lcom/applovin/exoplayer2/l/ai;->N(II)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_16
    new-array v7, v5, [J

    new-array v8, v5, [I

    new-array v10, v5, [J

    new-array v11, v5, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_21
    array-length v5, v0

    if-ge v3, v5, :cond_4e

    aget v5, v0, v3

    aget-wide v12, p1, v3

    :goto_28
    if-lez v5, :cond_4b

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    aput-wide v12, v7, v4

    mul-int v14, p0, v6

    aput v14, v8, v4

    aget v14, v8, v4

    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-long v14, v2

    mul-long v14, v14, p3

    aput-wide v14, v10, v4

    const/4 v14, 0x1

    aput v14, v11, v4

    aget v14, v8, v4

    int-to-long v14, v14

    add-long/2addr v12, v14

    add-int/2addr v2, v6

    sub-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_4e
    int-to-long v0, v2

    mul-long v12, p3, v0

    new-instance v0, Lcom/applovin/exoplayer2/e/g/d$a;

    const/4 v14, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v14}, Lcom/applovin/exoplayer2/e/g/d$a;-><init>([J[II[J[IJLcom/applovin/exoplayer2/e/g/d$1;)V

    return-object v0
.end method

###### Class com.applovin.exoplayer2.e.g.d.AnonymousClass1 (com.applovin.exoplayer2.e.g.d$1)
.class synthetic Lcom/applovin/exoplayer2/e/g/d$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/g/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.applovin.exoplayer2.e.g.d.a (com.applovin.exoplayer2.e.g.d$a)
.class public final Lcom/applovin/exoplayer2/e/g/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/g/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final tR:[I

.field public final tS:[J

.field public final zE:J

.field public final zH:I

.field public final zI:[J

.field public final zJ:[I


# direct methods
.method private constructor <init>([J[II[J[IJ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/d$a;->tS:[J

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/g/d$a;->tR:[I

    iput p3, p0, Lcom/applovin/exoplayer2/e/g/d$a;->zH:I

    iput-object p4, p0, Lcom/applovin/exoplayer2/e/g/d$a;->zI:[J

    iput-object p5, p0, Lcom/applovin/exoplayer2/e/g/d$a;->zJ:[I

    iput-wide p6, p0, Lcom/applovin/exoplayer2/e/g/d$a;->zE:J

    return-void
.end method

.method synthetic constructor <init>([J[II[J[IJLcom/applovin/exoplayer2/e/g/d$1;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Lcom/applovin/exoplayer2/e/g/d$a;-><init>([J[II[J[IJ)V

    return-void
.end method
