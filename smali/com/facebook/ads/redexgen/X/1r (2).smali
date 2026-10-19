###### Class com.facebook.ads.redexgen.X.C06931r (com.facebook.ads.redexgen.X.1r)
.class public final Lcom/facebook/ads/redexgen/X/1r;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Lcom/facebook/ads/RewardData;

.field public A03:Lcom/facebook/ads/redexgen/X/Iy;

.field public A04:Ljava/lang/String;

.field public A05:Ljava/lang/String;

.field public A06:Z

.field public final A07:Lcom/facebook/ads/redexgen/X/JJ;

.field public final A08:Lcom/facebook/ads/redexgen/X/JL;

.field public final A09:Ljava/lang/String;

.field public final A0A:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;"
        }
    .end annotation
.end field

.field public final A0B:I

.field public final A0C:Lcom/facebook/ads/internal/protocol/AdPlacementType;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "erlsxJKV5RGKo0fyhsjft4C8myFkBTFD"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xxCOSS58nTJL4g358MAx2boWparhVsnt"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "50HA7KO7TX73z1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "kwTSvTyvqMkAeNvnsZNufhK8xoNKpC5A"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CvvJJ5wn5WoPjh"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "PJeUG8MSArG13FCqdbuWaTyquTMQa3YW"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KbVXHt7uQSAfPtAdYM2eE220TAgmiqZ3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QWgxf2msfb1fWKXeTjGnwNJbVHOPLzwf"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1r;->A0D:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JL;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/JJ;I)V
    .registers 13

    sget-object v0, Lcom/facebook/ads/CacheFlag;->NONE:Lcom/facebook/ads/CacheFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/1r;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JL;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/JJ;ILjava/util/EnumSet;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JL;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/JJ;ILjava/util/EnumSet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/JL;",
            "Lcom/facebook/ads/internal/protocol/AdPlacementType;",
            "Lcom/facebook/ads/redexgen/X/JJ;",
            "I",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1r;->A09:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/1r;->A0C:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/1r;->A07:Lcom/facebook/ads/redexgen/X/JJ;

    iput p5, p0, Lcom/facebook/ads/redexgen/X/1r;->A0B:I

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/1r;->A0A:Ljava/util/EnumSet;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/1r;->A08:Lcom/facebook/ads/redexgen/X/JL;

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1r;->A00:I

    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1r;->A0C:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1r;->A07:Lcom/facebook/ads/redexgen/X/JJ;

    if-nez v1, :cond_c

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0

    :cond_c
    sget-object v0, Lcom/facebook/ads/redexgen/X/JJ;->A07:Lcom/facebook/ads/redexgen/X/JJ;

    if-ne v1, v0, :cond_13

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0

    :cond_13
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/JQ;Lcom/facebook/ads/AdExperienceType;)Lcom/facebook/ads/redexgen/X/Jg;
    .registers 20

    move-object/from16 v2, p0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Jg;

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/1r;->A09:Ljava/lang/String;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1r;->A07:Lcom/facebook/ads/redexgen/X/JJ;

    const/4 v15, 0x0

    if-eqz v0, :cond_67

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JJ;->A03()I

    move-result v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/1r;->A07:Lcom/facebook/ads/redexgen/X/JJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JJ;->A02()I

    move-result v0

    new-instance v6, Lcom/facebook/ads/redexgen/X/L7;

    invoke-direct {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/L7;-><init>(II)V

    :goto_1a
    iget-object v7, v2, Lcom/facebook/ads/redexgen/X/1r;->A08:Lcom/facebook/ads/redexgen/X/JL;

    invoke-static {}, Lcom/facebook/ads/AdSettings;->getTestAdType()Lcom/facebook/ads/AdSettings$TestAdType;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->DEFAULT:Lcom/facebook/ads/AdSettings$TestAdType;

    if-eq v1, v0, :cond_65

    invoke-static {}, Lcom/facebook/ads/AdSettings;->getTestAdType()Lcom/facebook/ads/AdSettings$TestAdType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdSettings$TestAdType;->getAdTypeString()Ljava/lang/String;

    move-result-object v8

    :goto_2c
    iget v9, v2, Lcom/facebook/ads/redexgen/X/1r;->A0B:I

    move-object/from16 v4, p1

    invoke-static {v4}, Lcom/facebook/ads/AdSettings;->isTestMode(Landroid/content/Context;)Z

    move-result v10

    invoke-static {}, Lcom/facebook/ads/AdSettings;->isMixedAudience()Z

    move-result v11

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/IP;->A0J(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LD;->A01(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v2, Lcom/facebook/ads/redexgen/X/1r;->A04:Ljava/lang/String;

    if-eqz p3, :cond_48

    invoke-virtual/range {p3 .. p3}, Lcom/facebook/ads/AdExperienceType;->getAdExperienceType()Ljava/lang/String;

    move-result-object v15

    :cond_48
    move-object/from16 v12, p2

    invoke-direct/range {v3 .. v15}, Lcom/facebook/ads/redexgen/X/Jg;-><init>(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/L7;Lcom/facebook/ads/redexgen/X/JL;Ljava/lang/String;IZZLcom/facebook/ads/redexgen/X/JQ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/1r;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_69

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_65
    move-object v8, v15

    goto :goto_2c

    :cond_67
    move-object v6, v15

    goto :goto_1a

    :cond_69
    sget-object v2, Lcom/facebook/ads/redexgen/X/1r;->A0D:[Ljava/lang/String;

    const-string v1, "1YKhexqCB6oyofjWexJTrFb8PReFz0lW"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "PDYLpd11u8hpbIrKg4rw9QV8MRNrtAlX"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3
.end method

.method public final A02(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/1r;->A00:I

    return-void
.end method

.method public final A03(J)V
    .registers 3

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/1r;->A01:J

    return-void
.end method

.method public final A04(Lcom/facebook/ads/RewardData;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1r;->A02:Lcom/facebook/ads/RewardData;

    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/Iy;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1r;->A03:Lcom/facebook/ads/redexgen/X/Iy;

    return-void
.end method

.method public final A06(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1r;->A04:Ljava/lang/String;

    return-void
.end method

.method public final A07(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1r;->A05:Ljava/lang/String;

    return-void
.end method

.method public final A08(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/1r;->A06:Z

    return-void
.end method
