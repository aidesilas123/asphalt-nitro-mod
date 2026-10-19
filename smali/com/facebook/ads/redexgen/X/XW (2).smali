###### Class com.facebook.ads.redexgen.X.XW (com.facebook.ads.redexgen.X.XW)
.class public final Lcom/facebook/ads/redexgen/X/XW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/9Z;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/DefaultLoadControl$Builder;
    }
.end annotation


# static fields
.field public static A0A:[B

.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Z

.field public final A02:I

.field public final A03:J

.field public final A04:J

.field public final A05:J

.field public final A06:J

.field public final A07:Lcom/facebook/ads/redexgen/X/VJ;

.field public final A08:Lcom/facebook/ads/redexgen/X/Hl;

.field public final A09:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QBw2naITCC87BBmeZEHB"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "QG9qcoN67OZ9HCiBeCwQ37yZ8k9VzRIx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "huClURZcVSvs210svchTpygB"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "SPjUxwmyMxCkovVHB3ukUPObWP0MyL9L"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Qo3gDbJmZiOUOvD4YrLGADsp8gVNY68y"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "aCbITSFANaeoynFt6tlPTZT3Ud0BkJzi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "LC42BZreN0Trrj0tndAjNl8pur2kDdxK"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "yIqlj0SUGgDzqSotNJk32MbE6gj6YGfF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/XW;->A0B:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/XW;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const/high16 v1, 0x10000

    new-instance v0, Lcom/facebook/ads/redexgen/X/VJ;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/VJ;-><init>(ZI)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/XW;-><init>(Lcom/facebook/ads/redexgen/X/VJ;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/VJ;)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v2, 0x3a98

    const v3, 0xc350

    const/16 v4, 0x9c4

    const/16 v5, 0x1388

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/XW;-><init>(Lcom/facebook/ads/redexgen/X/VJ;IIIIIZ)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/VJ;IIIIIZ)V
    .registers 17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/XW;-><init>(Lcom/facebook/ads/redexgen/X/VJ;IIIIIZLcom/facebook/ads/redexgen/X/Hl;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/VJ;IIIIIZLcom/facebook/ads/redexgen/X/Hl;)V
    .registers 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    const/16 v2, 0x36

    const/16 v1, 0x13

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XW;->A01(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x15

    const/4 v1, 0x1

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XW;->A01(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {p4, v6, v5, v3}, Lcom/facebook/ads/redexgen/X/XW;->A03(IILjava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x16

    const/16 v1, 0x20

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XW;->A01(III)Ljava/lang/String;

    move-result-object v4

    invoke-static {p5, v6, v4, v3}, Lcom/facebook/ads/redexgen/X/XW;->A03(IILjava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x54

    const/16 v1, 0xb

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XW;->A01(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, p4, v3, v5}, Lcom/facebook/ads/redexgen/X/XW;->A03(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p5, v3, v4}, Lcom/facebook/ads/redexgen/X/XW;->A03(IILjava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x49

    const/16 v1, 0xb

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XW;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p2, v0, v3}, Lcom/facebook/ads/redexgen/X/XW;->A03(IILjava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XW;->A07:Lcom/facebook/ads/redexgen/X/VJ;

    int-to-long v0, p2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/XW;->A06:J

    int-to-long v0, p3

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/XW;->A05:J

    int-to-long v0, p4

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/XW;->A04:J

    int-to-long v0, p5

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/XW;->A03:J

    iput p6, p0, Lcom/facebook/ads/redexgen/X/XW;->A02:I

    iput-boolean p7, p0, Lcom/facebook/ads/redexgen/X/XW;->A09:Z

    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/XW;->A08:Lcom/facebook/ads/redexgen/X/Hl;

    return-void
.end method

.method private final A00([Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/redexgen/X/GP;)I
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_2
    array-length v0, p1

    if-ge v1, v0, :cond_19

    invoke-virtual {p2, v1}, Lcom/facebook/ads/redexgen/X/GP;->A00(I)Lcom/facebook/ads/redexgen/X/GO;

    move-result-object v0

    if-eqz v0, :cond_16

    aget-object v0, p1, v1

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/XS;->A83()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A01(I)I

    move-result v0

    add-int/2addr v2, v0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_19
    return v2
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/XW;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x53

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .registers 1

    const/16 v0, 0x5f

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/XW;->A0A:[B

    return-void

    :array_a
    .array-data 1
        -0x61t
        -0x1et
        -0x20t
        -0x13t
        -0x13t
        -0x12t
        -0xdt
        -0x61t
        -0x1ft
        -0x1ct
        -0x61t
        -0x15t
        -0x1ct
        -0xet
        -0xet
        -0x61t
        -0xdt
        -0x19t
        -0x20t
        -0x13t
        -0x61t
        -0x37t
        -0x1bt
        -0x8t
        -0x17t
        -0x17t
        -0x18t
        -0xbt
        -0x37t
        -0xet
        -0xbt
        -0x2dt
        -0x11t
        -0x1ct
        -0x4t
        -0x1bt
        -0x1ct
        -0x1at
        -0x12t
        -0x3ct
        -0x17t
        -0x9t
        -0x18t
        -0xbt
        -0x2bt
        -0x18t
        -0x1bt
        -0x8t
        -0x17t
        -0x17t
        -0x18t
        -0xbt
        -0x30t
        -0xat
        0x3t
        0x16t
        0x7t
        0x7t
        0x6t
        0x13t
        -0x19t
        0x10t
        0x13t
        -0xft
        0xdt
        0x2t
        0x1at
        0x3t
        0x2t
        0x4t
        0xct
        -0x12t
        0x14t
        0x19t
        0xdt
        0x24t
        -0x12t
        0x21t
        0x12t
        0x12t
        0x11t
        0x1et
        -0x7t
        0x1ft
        -0x40t
        -0x44t
        -0x3ft
        -0x6bt
        -0x38t
        -0x47t
        -0x47t
        -0x48t
        -0x3bt
        -0x60t
        -0x3at
    .end array-data
.end method

.method public static A03(IILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    if-lt p0, p1, :cond_25

    const/4 p1, 0x1

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XW;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/HI;->A05(ZLjava/lang/Object;)V

    return-void

    :cond_25
    const/4 p1, 0x0

    goto :goto_3
.end method

.method private A04(Z)V
    .registers 5

    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/XW;->A00:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XW;->A08:Lcom/facebook/ads/redexgen/X/Hl;

    if-eqz v1, :cond_e

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XW;->A01:Z

    if-eqz v0, :cond_e

    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/Hl;->A03(I)V

    :cond_e
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/XW;->A01:Z

    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XW;->A07:Lcom/facebook/ads/redexgen/X/VJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/VJ;->A03()V

    :cond_17
    return-void
.end method


# virtual methods
.method public final A5v()Lcom/facebook/ads/redexgen/X/VJ;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XW;->A07:Lcom/facebook/ads/redexgen/X/VJ;

    return-object v0
.end method

.method public final A60()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final ACg()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/XW;->A04(Z)V

    return-void
.end method

.method public final AD4()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/XW;->A04(Z)V

    return-void
.end method

.method public final ADD([Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GP;)V
    .registers 6

    iget v1, p0, Lcom/facebook/ads/redexgen/X/XW;->A02:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_9

    invoke-direct {p0, p1, p3}, Lcom/facebook/ads/redexgen/X/XW;->A00([Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/redexgen/X/GP;)I

    move-result v1

    :cond_9
    iput v1, p0, Lcom/facebook/ads/redexgen/X/XW;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XW;->A07:Lcom/facebook/ads/redexgen/X/VJ;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/VJ;->A04(I)V

    return-void
.end method

.method public final AEo()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final AFX(JF)Z
    .registers 12

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XW;->A07:Lcom/facebook/ads/redexgen/X/VJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/VJ;->A02()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XW;->A00:I

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-lt v1, v0, :cond_4f

    const/4 v7, 0x1

    :goto_d
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/XW;->A01:Z

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/XW;->A06:J

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p3, v2

    if-lez v2, :cond_21

    invoke-static {v0, v1, p3}, Lcom/facebook/ads/redexgen/X/Hx;->A0C(JF)J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/XW;->A05:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_21
    cmp-long v2, p1, v0

    if-gez v2, :cond_44

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XW;->A09:Z

    if-nez v0, :cond_2b

    if-nez v7, :cond_42

    :cond_2b
    :goto_2b
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/XW;->A01:Z

    :cond_2d
    :goto_2d
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/XW;->A08:Lcom/facebook/ads/redexgen/X/Hl;

    sget-object v1, Lcom/facebook/ads/redexgen/X/XW;->A0B:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_51

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_42
    const/4 v6, 0x0

    goto :goto_2b

    :cond_44
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/XW;->A05:J

    cmp-long v0, p1, v1

    if-gtz v0, :cond_4c

    if-eqz v7, :cond_2d

    :cond_4c
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/XW;->A01:Z

    goto :goto_2d

    :cond_4f
    const/4 v7, 0x0

    goto :goto_d

    :cond_51
    sget-object v2, Lcom/facebook/ads/redexgen/X/XW;->A0B:[Ljava/lang/String;

    const-string v1, "QKQzs8A5eNnCMvZO6Czn4VC5jQwn3nPR"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "QpEe5JzrMZm1KKJ9dYBmwnmG628Fesko"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_68

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XW;->A01:Z

    if-eq v0, v4, :cond_68

    if-eqz v0, :cond_6b

    invoke-virtual {v3, v5}, Lcom/facebook/ads/redexgen/X/Hl;->A00(I)V

    :cond_68
    :goto_68
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XW;->A01:Z

    return v0

    :cond_6b
    invoke-virtual {v3, v5}, Lcom/facebook/ads/redexgen/X/Hl;->A03(I)V

    goto :goto_68
.end method

.method public final AFa(JFZ)Z
    .registers 12

    invoke-static {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Hx;->A0D(JF)J

    move-result-wide v5

    if-eqz p4, :cond_24

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/XW;->A03:J

    :goto_8
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_20

    cmp-long v0, v5, v3

    if-gez v0, :cond_20

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XW;->A09:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XW;->A07:Lcom/facebook/ads/redexgen/X/VJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/VJ;->A02()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XW;->A00:I

    if-lt v1, v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21

    :cond_24
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/XW;->A04:J

    goto :goto_8
.end method

.method public final onPrepared()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/XW;->A04(Z)V

    return-void
.end method
