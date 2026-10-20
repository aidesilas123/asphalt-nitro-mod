###### Class com.facebook.ads.redexgen.X.Cl (com.facebook.ads.redexgen.X.Cl)
.class public final Lcom/facebook/ads/redexgen/X/Cl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/WH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SampleReader"
.end annotation


# static fields
.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:Z

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Lcom/facebook/ads/redexgen/X/Bm;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "l0mEWa9ddmOWtLNaP3Ecwy6mLHD8UZzg"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VNe96EWaki8yaza3W8GwHPPKa5bxe5tO"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "kmpa3GxYxfo0cf1rhuvwNk5Qrb09HabI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3sCg2iJ29nRFYuhJ2lcUotI7GRJn6pCh"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "XWLZFeRzwTnh2BC9TcYHYW69tvufAeZE"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "SYdDROIE4gUmdNh4g7xzRZbmvYLgdVRD"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "81JQxwgiV49o5YJunDWqlnSFkCvUozpt"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "BnyGWHqAIvsDVpphtdYgIF4MDirarxKL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Cl;->A0D:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Bm;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cl;->A0C:Lcom/facebook/ads/redexgen/X/Bm;

    return-void
.end method

.method private A00(I)V
    .registers 10

    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Cl;->A0A:Z

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Cl;->A01:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Cl;->A03:J

    sub-long/2addr v2, v0

    long-to-int v5, v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cl;->A0C:Lcom/facebook/ads/redexgen/X/Bm;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Cl;->A04:J

    const/4 v7, 0x0

    move v6, p1

    invoke-interface/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Bm;->AEs(JIIILcom/facebook/ads/redexgen/X/Bl;)V

    return-void
.end method


# virtual methods
.method public final A01()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cl;->A07:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cl;->A06:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cl;->A05:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cl;->A09:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cl;->A0B:Z

    return-void
.end method

.method public final A02(JI)V
    .registers 6

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cl;->A0B:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cl;->A06:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cl;->A08:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cl;->A0A:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cl;->A0B:Z

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cl;->A05:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cl;->A06:Z

    if-eqz v0, :cond_f

    :cond_18
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cl;->A09:Z

    if-eqz v0, :cond_24

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Cl;->A01:J

    sub-long/2addr p1, v0

    long-to-int v0, p1

    add-int/2addr p3, v0

    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/Cl;->A00(I)V

    :cond_24
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Cl;->A01:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Cl;->A03:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Cl;->A02:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Cl;->A04:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cl;->A09:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cl;->A08:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cl;->A0A:Z

    goto :goto_f
.end method

.method public final A03(JIIJ)V
    .registers 13

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Cl;->A06:Z

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Cl;->A05:Z

    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/Cl;->A02:J

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Cl;->A00:I

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Cl;->A01:J

    const/16 v0, 0x20

    const/4 v5, 0x1

    if-lt p4, v0, :cond_54

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cl;->A0B:Z

    if-nez v0, :cond_33

    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Cl;->A09:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cl;->A0D:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_71

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cl;->A0D:[Ljava/lang/String;

    const-string v1, "GPqbNVd0KmzIn8HN4fJcjlRtDRWTnntY"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_33

    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/Cl;->A00(I)V

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Cl;->A09:Z

    :cond_33
    const/16 v0, 0x22

    if-gt p4, v0, :cond_54

    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Cl;->A0B:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cl;->A0D:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_6b

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cl;->A0D:[Ljava/lang/String;

    const-string v1, "R2DrglDmm00IZ4lcqpbVOyN2qQAQtCsT"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    xor-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Cl;->A05:Z

    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/Cl;->A0B:Z

    :cond_54
    const/16 v0, 0x10

    if-lt p4, v0, :cond_69

    const/16 v0, 0x15

    if-gt p4, v0, :cond_69

    const/4 v0, 0x1

    :goto_5d
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cl;->A08:Z

    if-nez v0, :cond_65

    const/16 v0, 0x9

    if-gt p4, v0, :cond_66

    :cond_65
    const/4 v3, 0x1

    :cond_66
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Cl;->A07:Z

    return-void

    :cond_69
    const/4 v0, 0x0

    goto :goto_5d

    :cond_6b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_71
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A04([BII)V
    .registers 9

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cl;->A07:Z

    if-eqz v0, :cond_52

    add-int/lit8 v4, p2, 0x2

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Cl;->A00:I

    sub-int/2addr v4, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cl;->A0D:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_69

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cl;->A0D:[Ljava/lang/String;

    const-string v1, "cpcrPWEOO8MA3KXYn8qEkHLDMe8DBK4E"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "pATXmdvV1oW6zIeHBCJgs6zY3L0W3Kgl"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge v4, p3, :cond_64

    aget-byte v0, p1, v4

    and-int/lit16 v0, v0, 0x80

    const/4 v3, 0x0

    if-eqz v0, :cond_62

    const/4 v0, 0x1

    :goto_33
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cl;->A06:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cl;->A0D:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_53

    sget-object v2, Lcom/facebook/ads/redexgen/X/Cl;->A0D:[Ljava/lang/String;

    const-string v1, "v11A3OgFTS0Ad6G9jNFN3q5DAJDiI5ZW"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Cl;->A07:Z

    :cond_52
    :goto_52
    return-void

    :cond_53
    sget-object v2, Lcom/facebook/ads/redexgen/X/Cl;->A0D:[Ljava/lang/String;

    const-string v1, "OBH0KjA8v9aSSxK5wO8V3n95O2rRmiSd"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "STELshWQ5K1o99AkGFf5hhAcCQunI3bN"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Cl;->A07:Z

    goto :goto_52

    :cond_62
    const/4 v0, 0x0

    goto :goto_33

    :cond_64
    sub-int/2addr p3, p2

    add-int/2addr v3, p3

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Cl;->A00:I

    goto :goto_52

    :cond_69
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
