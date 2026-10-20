###### Class com.facebook.ads.redexgen.X.C1524Zk (com.facebook.ads.redexgen.X.Zk)
.class public final Lcom/facebook/ads/redexgen/X/Zk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/25;


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Zw;

.field public final A01:Lcom/facebook/ads/redexgen/X/1y;

.field public final A02:Lcom/facebook/ads/redexgen/X/23;

.field public final A03:Lcom/facebook/ads/redexgen/X/YA;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "PyT2XUnl"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "3EmvKqRjFYzRkizxlD8eotggUBC8U5J9"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Ib6uyfMRsh5ysHZ3i8ryXk3sO16qq9Ys"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "q2kkzr74cnXMazMYxmC9c"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "9U931lGThJH7Qz6wctlm6EKEWHFtvDAV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "f15MquYM06llw3BWZWASFwAp5egI2HKX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yMUgiPhi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "t3xZZPMR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Zk;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zk;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/23;Lcom/facebook/ads/redexgen/X/1y;Lcom/facebook/ads/redexgen/X/Zw;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zk;->A03:Lcom/facebook/ads/redexgen/X/YA;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Zk;->A02:Lcom/facebook/ads/redexgen/X/23;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Zk;->A01:Lcom/facebook/ads/redexgen/X/1y;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Zk;->A00:Lcom/facebook/ads/redexgen/X/Zw;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zk;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x39

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

    const/16 v0, 0x9b

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Zk;->A04:[B

    return-void

    :array_a
    .array-data 1
        -0x4dt
        -0x2at
        -0x6et
        -0x1ft
        -0x2ct
        -0x24t
        -0x29t
        -0x2bt
        -0x1at
        -0x6et
        -0x25t
        -0x1bt
        -0x6et
        -0x20t
        -0x19t
        -0x22t
        -0x22t
        -0x73t
        -0x60t
        -0x67t
        -0x71t
        -0x69t
        -0x70t
        -0x56t
        -0x70t
        -0x5dt
        -0x61t
        -0x63t
        -0x74t
        -0x62t
        -0x56t
        -0x6at
        -0x70t
        -0x5ct
        -0x4at
        -0x4et
        -0x4ft
        -0x1bt
        -0x2ct
        -0x27t
        -0x2bt
        -0x22t
        -0x2dt
        -0x2bt
        -0x42t
        -0x2bt
        -0x1ct
        -0x19t
        -0x21t
        -0x1et
        -0x25t
        -0x57t
        -0x52t
        -0x4ct
        -0x41t
        -0x5bt
        -0x4et
        -0x4et
        -0x51t
        -0x4et
        -0x41t
        -0x5dt
        -0x51t
        -0x5ct
        -0x5bt
        -0x41t
        -0x55t
        -0x5bt
        -0x47t
        0x4t
        0x7t
        0x6t
        -0x1t
        0x17t
        0x1t
        0x6t
        0xet
        -0x7t
        0x4t
        0x1t
        -0x4t
        -0x7t
        0xct
        0x1t
        0x7t
        0x6t
        0x17t
        0xct
        0x1t
        0x5t
        -0x3t
        0x17t
        0x3t
        -0x3t
        0x11t
        -0x3dt
        -0x25t
        -0x17t
        -0x17t
        -0x29t
        -0x23t
        -0x25t
        -0x50t
        -0x6at
        -0x42t
        -0x26t
        -0x1ct
        -0x1ct
        -0x26t
        -0x21t
        -0x28t
        -0x6ft
        -0x2dt
        -0x1at
        -0x21t
        -0x2bt
        -0x23t
        -0x2at
        -0x6ft
        -0x29t
        -0x20t
        -0x1dt
        -0x6ft
        -0x22t
        -0x2at
        -0x1ct
        -0x1ct
        -0x2et
        -0x28t
        -0x2at
        -0x61t
        -0x5ft
        -0x5et
        -0x60t
        -0x53t
        -0x6dt
        -0x60t
        -0x60t
        -0x63t
        -0x60t
        -0x53t
        -0x65t
        -0x6dt
        -0x5ft
        -0x5ft
        -0x71t
        -0x6bt
        -0x6dt
        -0x53t
        -0x67t
        -0x6dt
        -0x59t
        0x4t
        0x13t
        0xct
    .end array-data
.end method


# virtual methods
.method public final A8M(Landroid/os/Message;)V
    .registers 12

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zk;->A02:Lcom/facebook/ads/redexgen/X/23;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/23;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v6

    const/16 v2, 0x98

    const/4 v1, 0x3

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zk;->A00(III)Ljava/lang/String;

    move-result-object v7

    if-nez v6, :cond_2b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zk;->A03:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/7x;->A0K:I

    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zk;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v7, v3, v0}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    return-void

    :cond_2b
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    const/16 v2, 0x5f

    const/16 v1, 0x9

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zk;->A00(III)Ljava/lang/String;

    move-result-object v8

    const/16 v2, 0x68

    const/16 v1, 0x1b

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zk;->A00(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x11

    const/16 v1, 0x11

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zk;->A00(III)Ljava/lang/String;

    move-result-object v1

    sparse-switch v3, :sswitch_data_210

    :goto_4f
    :sswitch_4f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zk;->A02:Lcom/facebook/ads/redexgen/X/23;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/23;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    if-nez v0, :cond_a8

    return-void

    :sswitch_58
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zk;->A01:Lcom/facebook/ads/redexgen/X/1y;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1y;->AFK()V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_80

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Zk;->A02:Lcom/facebook/ads/redexgen/X/23;

    const/16 v2, 0x45

    const/16 v1, 0x1a

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zk;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/23;->A0B(J)V

    :goto_7a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zk;->A02:Lcom/facebook/ads/redexgen/X/23;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/23;->A0C(Lcom/facebook/ads/InterstitialAd;)V

    goto :goto_4f

    :cond_80
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zk;->A03:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v3

    sget v2, Lcom/facebook/ads/redexgen/X/7x;->A0V:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v0, v5, v1}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7, v2, v0}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    goto :goto_7a

    :sswitch_a2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zk;->A01:Lcom/facebook/ads/redexgen/X/1y;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1y;->AFU()V

    goto :goto_4f

    :cond_a8
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22e

    :cond_ad
    :goto_ad
    :pswitch_ad
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zk;->A02:Lcom/facebook/ads/redexgen/X/23;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/23;->A04()Lcom/facebook/ads/RewardedAdListener;

    move-result-object v0

    if-nez v0, :cond_e2

    return-void

    :pswitch_b6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zk;->A02:Lcom/facebook/ads/redexgen/X/23;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/23;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/InterstitialAdExtendedListener;

    if-eqz v0, :cond_ad

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Zk;->A02:Lcom/facebook/ads/redexgen/X/23;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zk;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_18b

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zk;->A05:[Ljava/lang/String;

    const-string v1, "QiAUsDkapNh1fTZA9J8Gsz0JLC17Ghy8"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/23;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/InterstitialAdExtendedListener;

    invoke-interface {v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onInterstitialActivityDestroyed()V

    goto :goto_ad

    :cond_e2
    iget v3, p1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zk;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_18b

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zk;->A05:[Ljava/lang/String;

    const-string v1, "YO9dGq40ZDljeOjTjHA4uB3VVKU9R56I"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    packed-switch v3, :pswitch_data_240

    :goto_100
    return-void

    :pswitch_101
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zk;->A02:Lcom/facebook/ads/redexgen/X/23;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/23;->A04()Lcom/facebook/ads/RewardedAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/RewardedAdListener;->onRewardedAdServerFailed()V

    goto :goto_100

    :pswitch_10b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zk;->A02:Lcom/facebook/ads/redexgen/X/23;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/23;->A04()Lcom/facebook/ads/RewardedAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/RewardedAdListener;->onRewardedAdCompleted()V

    return-void

    :pswitch_115
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zk;->A02:Lcom/facebook/ads/redexgen/X/23;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/23;->A04()Lcom/facebook/ads/RewardedAdListener;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zk;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_13a

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zk;->A05:[Ljava/lang/String;

    const-string v1, "4ubpoteMIucGsWyTMsTtOH4ZOdBl9bHr"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "Xxx4qDjyhZoijrhiIp4u1mFMOEMCLZoL"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/RewardedAdListener;->onRewardedAdServerSucceeded()V

    return-void

    :cond_13a
    invoke-interface {v3}, Lcom/facebook/ads/RewardedAdListener;->onRewardedAdServerSucceeded()V

    return-void

    :pswitch_13e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zk;->A02:Lcom/facebook/ads/redexgen/X/23;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/23;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/facebook/ads/InterstitialAdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    return-void

    :pswitch_148
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zk;->A02:Lcom/facebook/ads/redexgen/X/23;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/23;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/facebook/ads/InterstitialAdListener;->onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zk;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_18b

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zk;->A05:[Ljava/lang/String;

    const-string v1, "IMuRostxJ5htnzhiOcsxYcu1iidsGUgj"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "ubJ4M5GxN6FfPval4rtOnbhl8vPUgGKC"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-void

    :pswitch_16d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zk;->A02:Lcom/facebook/ads/redexgen/X/23;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/23;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/facebook/ads/InterstitialAdListener;->onInterstitialDismissed(Lcom/facebook/ads/Ad;)V

    return-void

    :pswitch_177
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zk;->A02:Lcom/facebook/ads/redexgen/X/23;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/23;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/facebook/ads/InterstitialAdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    return-void

    :pswitch_181
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zk;->A02:Lcom/facebook/ads/redexgen/X/23;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/23;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/facebook/ads/InterstitialAdListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    return-void

    :cond_18b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :sswitch_191
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1e6

    const/16 v2, 0x33

    const/16 v1, 0x12

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zk;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/16 v2, 0x83

    const/16 v1, 0x15

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zk;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Lcom/facebook/ads/AdError;

    invoke-direct {v1, v5, v3}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zk;->A01:Lcom/facebook/ads/redexgen/X/1y;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/1y;->AFG(Lcom/facebook/ads/AdError;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zk;->A02:Lcom/facebook/ads/redexgen/X/23;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/23;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_1d8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zk;->A02:Lcom/facebook/ads/redexgen/X/23;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/23;->A02()Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    invoke-interface {v0, v6, v1}, Lcom/facebook/ads/InterstitialAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    :goto_1d2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zk;->A02:Lcom/facebook/ads/redexgen/X/23;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/23;->A0C(Lcom/facebook/ads/InterstitialAd;)V

    return-void

    :cond_1d8
    const/16 v2, 0x22

    const/16 v1, 0x11

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zk;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d2

    :cond_1e6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zk;->A01:Lcom/facebook/ads/redexgen/X/1y;

    sget-object v0, Lcom/facebook/ads/redexgen/X/1x;->A05:Lcom/facebook/ads/redexgen/X/1x;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/1y;->AFC(Lcom/facebook/ads/redexgen/X/1x;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zk;->A03:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v3

    sget v2, Lcom/facebook/ads/redexgen/X/7x;->A0V:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v0, v5, v1}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7, v2, v0}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    goto :goto_1d2

    nop

    :sswitch_data_210
    .sparse-switch
        0xa -> :sswitch_191
        0x3f7 -> :sswitch_4f
        0x3f8 -> :sswitch_4f
        0x3f9 -> :sswitch_4f
        0x3fc -> :sswitch_58
        0x3fe -> :sswitch_a2
        0x3ff -> :sswitch_191
    .end sparse-switch

    :pswitch_data_22e
    .packed-switch 0x3fc
        :pswitch_13e
        :pswitch_148
        :pswitch_16d
        :pswitch_ad
        :pswitch_177
        :pswitch_181
        :pswitch_b6
    .end packed-switch

    :pswitch_data_240
    .packed-switch 0xbb8
        :pswitch_10b
        :pswitch_115
        :pswitch_101
    .end packed-switch
.end method
