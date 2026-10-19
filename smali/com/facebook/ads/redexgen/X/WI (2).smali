###### Class com.facebook.ads.redexgen.X.WI (com.facebook.ads.redexgen.X.WI)
.class public final Lcom/facebook/ads/redexgen/X/WI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ck;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/Bm;

.field public A03:Lcom/facebook/ads/redexgen/X/Ck;

.field public A04:Ljava/lang/String;

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/Cm;

.field public final A07:Lcom/facebook/ads/redexgen/X/Cm;

.field public final A08:Lcom/facebook/ads/redexgen/X/Cm;

.field public final A09:Lcom/facebook/ads/redexgen/X/Cp;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Hh;

.field public final A0B:Z

.field public final A0C:Z

.field public final A0D:[Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "FmtBUqGmzQvxm47AtoGl5GE"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5iXLyJPyDLcaPMUjk1v5bxBpoPhfo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "hif1Xiw3z0OLVixA8K1yUZiszA96"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VzETX2BwbL5Y"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "rXQDE7FzOjIY2cTlxG1EbFIaNFkq3NBz"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "hyxBaGmEw9nsGl9VO3HFyZpkQthqrgGl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "hfnp76HvDzKR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "cXQxcUyRSwddwq1B1B5vUbLw26Cn"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/WI;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WI;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Cp;ZZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WI;->A09:Lcom/facebook/ads/redexgen/X/Cp;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/WI;->A0B:Z

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/WI;->A0C:Z

    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0D:[Z

    const/4 v1, 0x7

    const/16 v2, 0x80

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cm;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Cm;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A08:Lcom/facebook/ads/redexgen/X/Cm;

    const/16 v1, 0x8

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cm;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Cm;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A06:Lcom/facebook/ads/redexgen/X/Cm;

    const/4 v1, 0x6

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cm;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Cm;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A07:Lcom/facebook/ads/redexgen/X/Cm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hh;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0A:Lcom/facebook/ads/redexgen/X/Hh;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/WI;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x49

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .registers 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/WI;->A0E:[B

    return-void

    :array_a
    .array-data 1
        -0x2ft
        -0x3ct
        -0x41t
        -0x40t
        -0x36t
        -0x76t
        -0x44t
        -0x2ft
        -0x42t
    .end array-data
.end method

.method private A02(JIIJ)V
    .registers 28

    move-object/from16 v4, p0

    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A05:Z

    move/from16 v5, p4

    if-eqz v0, :cond_10

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A03:Lcom/facebook/ads/redexgen/X/Ck;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ck;->A07()Z

    move-result v0

    if-eqz v0, :cond_a8

    :cond_10
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A08:Lcom/facebook/ads/redexgen/X/Cm;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Cm;->A04(I)Z

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A06:Lcom/facebook/ads/redexgen/X/Cm;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Cm;->A04(I)Z

    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A05:Z

    const/4 v6, 0x3

    if-nez v0, :cond_fe

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A08:Lcom/facebook/ads/redexgen/X/Cm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cm;->A03()Z

    move-result v0

    if-eqz v0, :cond_a8

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A06:Lcom/facebook/ads/redexgen/X/Cm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cm;->A03()Z

    move-result v0

    if-eqz v0, :cond_a8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A08:Lcom/facebook/ads/redexgen/X/Cm;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Cm;->A01:[B

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A08:Lcom/facebook/ads/redexgen/X/Cm;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Cm;->A00:I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A06:Lcom/facebook/ads/redexgen/X/Cm;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Cm;->A01:[B

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A06:Lcom/facebook/ads/redexgen/X/Cm;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Cm;->A00:I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A08:Lcom/facebook/ads/redexgen/X/Cm;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Cm;->A01:[B

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A08:Lcom/facebook/ads/redexgen/X/Cm;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Cm;->A00:I

    invoke-static {v1, v6, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A06([BII)Lcom/facebook/ads/redexgen/X/Hc;

    move-result-object v2

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A06:Lcom/facebook/ads/redexgen/X/Cm;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Cm;->A01:[B

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A06:Lcom/facebook/ads/redexgen/X/Cm;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Cm;->A00:I

    invoke-static {v1, v6, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A05([BII)Lcom/facebook/ads/redexgen/X/Hb;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A02:Lcom/facebook/ads/redexgen/X/Bm;

    iget-object v9, v4, Lcom/facebook/ads/redexgen/X/WI;->A04:Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v7, 0x9

    const/16 v6, 0x12

    invoke-static {v8, v7, v6}, Lcom/facebook/ads/redexgen/X/WI;->A00(III)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x1

    iget v14, v2, Lcom/facebook/ads/redexgen/X/Hc;->A06:I

    iget v15, v2, Lcom/facebook/ads/redexgen/X/Hc;->A02:I

    const/high16 v16, -0x40800000    # -1.0f

    const/16 v18, -0x1

    iget v6, v2, Lcom/facebook/ads/redexgen/X/Hc;->A00:F

    const/16 v20, 0x0

    move/from16 v19, v6

    move-object/from16 v17, v3

    invoke-static/range {v9 .. v20}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A03(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/Bm;->A5j(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A05:Z

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A03:Lcom/facebook/ads/redexgen/X/Ck;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Ck;->A05(Lcom/facebook/ads/redexgen/X/Hc;)V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A03:Lcom/facebook/ads/redexgen/X/Ck;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ck;->A04(Lcom/facebook/ads/redexgen/X/Hb;)V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A08:Lcom/facebook/ads/redexgen/X/Cm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cm;->A00()V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A06:Lcom/facebook/ads/redexgen/X/Cm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cm;->A00()V

    :cond_a8
    :goto_a8
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A07:Lcom/facebook/ads/redexgen/X/Cm;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Cm;->A04(I)Z

    move-result v0

    if-eqz v0, :cond_f4

    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/WI;->A07:Lcom/facebook/ads/redexgen/X/Cm;

    sget-object v2, Lcom/facebook/ads/redexgen/X/WI;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_13d

    sget-object v2, Lcom/facebook/ads/redexgen/X/WI;->A0F:[Ljava/lang/String;

    const-string v1, "MYiVFEqyRoVR8PpaQvBVtWO0d80axIUe"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "WESehlM6UD3i8IXgr5ZdByrcv93bSxFf"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Cm;->A01:[B

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A07:Lcom/facebook/ads/redexgen/X/Cm;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Cm;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A02([BI)I

    move-result v2

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/WI;->A0A:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A07:Lcom/facebook/ads/redexgen/X/Cm;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Cm;->A01:[B

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Hh;->A0b([BI)V

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/WI;->A0A:Lcom/facebook/ads/redexgen/X/Hh;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/WI;->A09:Lcom/facebook/ads/redexgen/X/Cp;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A0A:Lcom/facebook/ads/redexgen/X/Hh;

    move-wide/from16 v2, p5

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/Cp;->A02(JLcom/facebook/ads/redexgen/X/Hh;)V

    :cond_f4
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A03:Lcom/facebook/ads/redexgen/X/Ck;

    move-wide/from16 v2, p1

    move/from16 v1, p3

    invoke-virtual {v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/Ck;->A02(JI)V

    return-void

    :cond_fe
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A08:Lcom/facebook/ads/redexgen/X/Cm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cm;->A03()Z

    move-result v0

    if-eqz v0, :cond_11d

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A08:Lcom/facebook/ads/redexgen/X/Cm;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Cm;->A01:[B

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A08:Lcom/facebook/ads/redexgen/X/Cm;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Cm;->A00:I

    invoke-static {v1, v6, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A06([BII)Lcom/facebook/ads/redexgen/X/Hc;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A03:Lcom/facebook/ads/redexgen/X/Ck;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ck;->A05(Lcom/facebook/ads/redexgen/X/Hc;)V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A08:Lcom/facebook/ads/redexgen/X/Cm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cm;->A00()V

    goto :goto_a8

    :cond_11d
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A06:Lcom/facebook/ads/redexgen/X/Cm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cm;->A03()Z

    move-result v0

    if-eqz v0, :cond_a8

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A06:Lcom/facebook/ads/redexgen/X/Cm;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Cm;->A01:[B

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A06:Lcom/facebook/ads/redexgen/X/Cm;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Cm;->A00:I

    invoke-static {v1, v6, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A05([BII)Lcom/facebook/ads/redexgen/X/Hb;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A03:Lcom/facebook/ads/redexgen/X/Ck;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ck;->A04(Lcom/facebook/ads/redexgen/X/Hb;)V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/WI;->A06:Lcom/facebook/ads/redexgen/X/Cm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cm;->A00()V

    goto/16 :goto_a8

    :cond_13d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A03(JIJ)V
    .registers 12

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A05:Z

    move v3, p3

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A03:Lcom/facebook/ads/redexgen/X/Ck;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ck;->A07()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A08:Lcom/facebook/ads/redexgen/X/Cm;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Cm;->A01(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A06:Lcom/facebook/ads/redexgen/X/Cm;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Cm;->A01(I)V

    :cond_17
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A07:Lcom/facebook/ads/redexgen/X/Cm;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Cm;->A01(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A03:Lcom/facebook/ads/redexgen/X/Ck;

    move-wide v1, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Ck;->A03(JIJ)V

    return-void
.end method

.method private A04([BII)V
    .registers 5

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A05:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A03:Lcom/facebook/ads/redexgen/X/Ck;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ck;->A07()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A08:Lcom/facebook/ads/redexgen/X/Cm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Cm;->A02([BII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A06:Lcom/facebook/ads/redexgen/X/Cm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Cm;->A02([BII)V

    :cond_16
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A07:Lcom/facebook/ads/redexgen/X/Cm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Cm;->A02([BII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A03:Lcom/facebook/ads/redexgen/X/Ck;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ck;->A06([BII)V

    return-void
.end method


# virtual methods
.method public final A4O(Lcom/facebook/ads/redexgen/X/Hh;)V
    .registers 19

    move-object/from16 v5, p0

    move-object/from16 v2, p1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v8

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hh;->A07()I

    move-result v4

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    iget-wide v6, v5, Lcom/facebook/ads/redexgen/X/WI;->A01:J

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v6, v0

    iput-wide v6, v5, Lcom/facebook/ads/redexgen/X/WI;->A01:J

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/WI;->A02:Lcom/facebook/ads/redexgen/X/Bm;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Bm;->AEr(Lcom/facebook/ads/redexgen/X/Hh;I)V

    :goto_21
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/WI;->A0D:[Z

    invoke-static {v3, v8, v4, v0}, Lcom/facebook/ads/redexgen/X/Hd;->A04([BII[Z)I

    move-result v2

    if-ne v2, v4, :cond_2d

    invoke-direct {v5, v3, v8, v4}, Lcom/facebook/ads/redexgen/X/WI;->A04([BII)V

    return-void

    :cond_2d
    invoke-static {v3, v2}, Lcom/facebook/ads/redexgen/X/Hd;->A01([BI)I

    move-result v14

    sub-int v7, v2, v8

    sget-object v6, Lcom/facebook/ads/redexgen/X/WI;->A0F:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v6, v0

    const/4 v0, 0x6

    aget-object v0, v6, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4b

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4b
    sget-object v6, Lcom/facebook/ads/redexgen/X/WI;->A0F:[Ljava/lang/String;

    const-string v1, "lQl99M6qnQlq"

    const/4 v0, 0x3

    aput-object v1, v6, v0

    const-string v1, "jJKIbaSVKHql"

    const/4 v0, 0x6

    aput-object v1, v6, v0

    if-lez v7, :cond_5c

    invoke-direct {v5, v3, v8, v2}, Lcom/facebook/ads/redexgen/X/WI;->A04([BII)V

    :cond_5c
    sub-int v10, v4, v2

    iget-wide v8, v5, Lcom/facebook/ads/redexgen/X/WI;->A01:J

    int-to-long v0, v10

    sub-long/2addr v8, v0

    if-gez v7, :cond_a2

    neg-int v11, v7

    sget-object v6, Lcom/facebook/ads/redexgen/X/WI;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v6, v0

    const/4 v0, 0x2

    aget-object v0, v6, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_95

    sget-object v6, Lcom/facebook/ads/redexgen/X/WI;->A0F:[Ljava/lang/String;

    const-string v1, "CFaupTF247UissJwn80OFqAOj9Vx"

    const/4 v0, 0x7

    aput-object v1, v6, v0

    const-string v1, "5OzpI30ijAeJlsq8Y1OyIdlDADpj"

    const/4 v0, 0x2

    aput-object v1, v6, v0

    :goto_83
    iget-wide v12, v5, Lcom/facebook/ads/redexgen/X/WI;->A00:J

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/WI;->A02(JIIJ)V

    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/WI;->A00:J

    move-object v11, v7

    move-wide v12, v8

    move-wide v15, v0

    invoke-direct/range {v11 .. v16}, Lcom/facebook/ads/redexgen/X/WI;->A03(JIJ)V

    add-int/lit8 v8, v2, 0x3

    goto :goto_21

    :cond_95
    sget-object v6, Lcom/facebook/ads/redexgen/X/WI;->A0F:[Ljava/lang/String;

    const-string v1, "eqTKDwhJaRXE4qM7uaf5ert1lQX8N"

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const-string v1, "XXULpdZ36j09HmRAAM7fCX7"

    const/4 v0, 0x0

    aput-object v1, v6, v0

    goto :goto_83

    :cond_a2
    const/4 v11, 0x0

    goto :goto_83
.end method

.method public final A4l(Lcom/facebook/ads/redexgen/X/Bc;Lcom/facebook/ads/redexgen/X/Cu;)V
    .registers 7

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cu;->A05()V

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cu;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A04:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cu;->A03()I

    move-result v1

    const/4 v0, 0x2

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Bc;->AFx(II)Lcom/facebook/ads/redexgen/X/Bm;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/WI;->A02:Lcom/facebook/ads/redexgen/X/Bm;

    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/WI;->A0B:Z

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/WI;->A0C:Z

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ck;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Ck;-><init>(Lcom/facebook/ads/redexgen/X/Bm;ZZ)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A03:Lcom/facebook/ads/redexgen/X/Ck;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A09:Lcom/facebook/ads/redexgen/X/Cp;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Cp;->A03(Lcom/facebook/ads/redexgen/X/Bc;Lcom/facebook/ads/redexgen/X/Cu;)V

    return-void
.end method

.method public final ADi()V
    .registers 1

    return-void
.end method

.method public final ADj(JZ)V
    .registers 4

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/WI;->A00:J

    return-void
.end method

.method public final AEv()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A0D:[Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hd;->A0B([Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A08:Lcom/facebook/ads/redexgen/X/Cm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cm;->A00()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A06:Lcom/facebook/ads/redexgen/X/Cm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cm;->A00()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A07:Lcom/facebook/ads/redexgen/X/Cm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cm;->A00()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A03:Lcom/facebook/ads/redexgen/X/Ck;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ck;->A01()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WI;->A01:J

    return-void
.end method
