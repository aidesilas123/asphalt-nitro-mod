###### Class com.facebook.ads.redexgen.X.C1528Zp (com.facebook.ads.redexgen.X.Zp)
.class public final Lcom/facebook/ads/redexgen/X/Zp;
.super Lcom/facebook/ads/redexgen/X/0p;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Zn;->A0D(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Zn;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "7kSkrPID5YMo1WnvaMIgpKB6WIhQPZTc"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kYnVnFR0h3Yv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4OZGrpocgzJPR2XOpe36kiptmUtlR1IY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "AELVZqmE3v"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ezzX0t3o6v3ClFiCUOYeN27kq8G"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mBbxV2ZqaJcWXY"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "eL94qTtIFL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Zp;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zp;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Zn;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0p;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zp;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3d

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

    const/16 v0, 0x15

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Zp;->A01:[B

    return-void

    :array_a
    .array-data 1
        -0x1ct
        -0xdt
        -0x14t
        -0x35t
        -0x29t
        -0x2at
        -0x24t
        -0x26t
        -0x29t
        -0x2ct
        -0x2ct
        -0x33t
        -0x26t
        -0x78t
        -0x2ft
        -0x25t
        -0x78t
        -0x2at
        -0x23t
        -0x2ct
        -0x2ct
    .end array-data
.end method


# virtual methods
.method public final A06()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A04(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardServerFailed()V

    return-void
.end method

.method public final A07()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A04(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardServerSuccess()V

    return-void
.end method

.method public final A08()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A02(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A04(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoCompleted()V

    :cond_11
    return-void
.end method

.method public final A09()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A02(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A04(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoActivityDestroyed()V

    :cond_11
    return-void
.end method

.method public final A0A()V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A02(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A04(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoClosed()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A09(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/redexgen/X/LN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LN;->A05()V

    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A02(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->buildShowAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/5n;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A01(Lcom/facebook/ads/redexgen/X/Zn;)J

    move-result-wide v0

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/5n;->A02(J)Lcom/facebook/ads/redexgen/X/5n;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A02(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v1

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/5n;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/RewardedVideoAd;->show(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;)Z

    goto :goto_1a
.end method

.method public final A0C()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Zn;->A09:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0S;->A2f()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A04(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A08(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/redexgen/X/27;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/27;->A00()Lcom/facebook/ads/Ad;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    return-void
.end method

.method public final A0D()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A04(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A08(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/redexgen/X/27;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/27;->A00()Lcom/facebook/ads/Ad;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    return-void
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/0o;)V
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A07(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/redexgen/X/EV;

    move-result-object v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Zn;->A09:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/7x;->A0N:I

    const/4 v2, 0x3

    const/16 v1, 0x12

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zp;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    return-void

    :cond_2c
    check-cast p1, Lcom/facebook/ads/redexgen/X/aW;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A08(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/redexgen/X/27;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/27;->A03:Lcom/facebook/ads/RewardData;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A08(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/redexgen/X/27;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/27;->A03:Lcom/facebook/ads/RewardData;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/aW;->A02(Lcom/facebook/ads/RewardData;)V

    :cond_43
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A08(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/redexgen/X/27;

    move-result-object v4

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/aW;->A0G()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zp;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_65

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_65
    sget-object v2, Lcom/facebook/ads/redexgen/X/Zp;->A02:[Ljava/lang/String;

    const-string v1, "61YjDYRNNN"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "vT3ubuaNP5"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput v3, v4, Lcom/facebook/ads/redexgen/X/27;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/Zn;->A0F(Lcom/facebook/ads/redexgen/X/Zn;Z)Z

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Zn;->A07(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/redexgen/X/EV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/a9;->A0F()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Zn;->A06(Lcom/facebook/ads/redexgen/X/Zn;Lcom/facebook/ads/redexgen/X/1C;)Lcom/facebook/ads/redexgen/X/1C;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A05(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    if-eqz v0, :cond_e2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A05(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0h()Z

    move-result v0

    if-nez v0, :cond_a7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A05(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0t()I

    move-result v2

    :cond_a7
    if-lez v2, :cond_e2

    new-instance v3, Lcom/facebook/ads/redexgen/X/Kd;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Zn;->A09:Lcom/facebook/ads/redexgen/X/YA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A08(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/redexgen/X/27;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/27;->A06:Ljava/lang/String;

    invoke-virtual {v3, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Kd;->A09(Lcom/facebook/ads/redexgen/X/YA;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_148

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Zn;->A09:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v3, v0, v4}, Lcom/facebook/ads/redexgen/X/Kd;->A08(Lcom/facebook/ads/redexgen/X/YA;Z)V

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/Zn;->A09:Lcom/facebook/ads/redexgen/X/YA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A08(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/redexgen/X/27;

    move-result-object v0

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/27;->A0C:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A08(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/redexgen/X/27;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/27;->A06:Ljava/lang/String;

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kd;->A07(Lcom/facebook/ads/redexgen/X/YA;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/Zn;->A03(Lcom/facebook/ads/redexgen/X/Zn;Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAd;

    :cond_e2
    :goto_e2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A02(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    if-eqz v0, :cond_134

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A05(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/aS;->A16(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A02(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->buildLoadAdConfig()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withFailOnCacheFailureEnabled(Z)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A05(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0J()Lcom/facebook/ads/RewardData;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withRewardData(Lcom/facebook/ads/RewardData;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A08(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/redexgen/X/27;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/27;->A02:Lcom/facebook/ads/AdExperienceType;

    invoke-interface {v1, v0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withAdExperience(Lcom/facebook/ads/AdExperienceType;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/22;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/22;-><init>(Lcom/facebook/ads/redexgen/X/Zp;)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A02(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/RewardedVideoAd;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/RewardedVideoAd;->loadAd(Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;)V

    :goto_133
    return-void

    :cond_134
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A04(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A08(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/redexgen/X/27;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/27;->A00()Lcom/facebook/ads/Ad;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    goto :goto_133

    :cond_148
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zp;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_170

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zp;->A02:[Ljava/lang/String;

    const-string v1, "df15N9yr5s"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "rrfEFjVt4q"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/Zn;->A09:Lcom/facebook/ads/redexgen/X/YA;

    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Kd;->A08(Lcom/facebook/ads/redexgen/X/YA;Z)V

    goto/16 :goto_e2

    :cond_170
    sget-object v2, Lcom/facebook/ads/redexgen/X/Zp;->A02:[Ljava/lang/String;

    const-string v1, "7AaEv1vCH3bw"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "Y1uo0lYkjhkOAjcvNvodbhiOq3C"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/Zn;->A09:Lcom/facebook/ads/redexgen/X/YA;

    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Kd;->A08(Lcom/facebook/ads/redexgen/X/YA;Z)V

    goto/16 :goto_e2
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/JG;)V
    .registers 7

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Zn;->A0C(Lcom/facebook/ads/redexgen/X/Zn;Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A08(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/redexgen/X/27;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/27;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A00(Lcom/facebook/ads/redexgen/X/Zn;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LM;->A01(J)J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/JG;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/JG;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0S;->A2i(JILjava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A04(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A08(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/redexgen/X/27;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/27;->A00()Lcom/facebook/ads/Ad;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Kf;->A00(Lcom/facebook/ads/redexgen/X/JG;)Lcom/facebook/ads/AdError;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.AnonymousClass22 (com.facebook.ads.redexgen.X.22)
.class public final Lcom/facebook/ads/redexgen/X/22;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/RewardedVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Zp;->A0F(Lcom/facebook/ads/redexgen/X/0o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Zp;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Zp;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/22;->A00:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Lcom/facebook/ads/Ad;)V
    .registers 2

    return-void
.end method

.method public final onAdLoaded(Lcom/facebook/ads/Ad;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/22;->A00:Lcom/facebook/ads/redexgen/X/Zp;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A04(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/22;->A00:Lcom/facebook/ads/redexgen/X/Zp;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A08(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/redexgen/X/27;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/27;->A00()Lcom/facebook/ads/Ad;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    return-void
.end method

.method public final onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/22;->A00:Lcom/facebook/ads/redexgen/X/Zp;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Zn;->A03(Lcom/facebook/ads/redexgen/X/Zn;Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/22;->A00:Lcom/facebook/ads/redexgen/X/Zp;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A05(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/aS;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aS;->A16(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/22;->A00:Lcom/facebook/ads/redexgen/X/Zp;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A04(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/22;->A00:Lcom/facebook/ads/redexgen/X/Zp;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A08(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/redexgen/X/27;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/27;->A00()Lcom/facebook/ads/Ad;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    return-void
.end method

.method public final onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .registers 2

    return-void
.end method

.method public final onRewardedVideoClosed()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/22;->A00:Lcom/facebook/ads/redexgen/X/Zp;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A04(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoClosed()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/22;->A00:Lcom/facebook/ads/redexgen/X/Zp;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A09(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/redexgen/X/LN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LN;->A05()V

    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/22;->A00:Lcom/facebook/ads/redexgen/X/Zp;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Zp;->A00:Lcom/facebook/ads/redexgen/X/Zn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zn;->A04(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onRewardedVideoCompleted()V

    return-void
.end method
