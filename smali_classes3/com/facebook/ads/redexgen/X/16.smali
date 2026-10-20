###### Class com.facebook.ads.redexgen.X.AnonymousClass16 (com.facebook.ads.redexgen.X.16)
.class public final Lcom/facebook/ads/redexgen/X/16;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/aW;

.field public A01:Lcom/facebook/ads/redexgen/X/15;

.field public A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "JgmY627JJ4fVvMUsUI7dBJzvca"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2Fivc7ze9Y6M7vLBAhVCw66dd2zEUTp"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "oqNyJxLxp23hnAfKGRpFUMlaCTnSy4au"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "HRO7fC4J0U3bXqsrOiWljP6J940cuLTJ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "rhEs9JkkityiMJcgD18RNPKtdGmllPs6"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "c8I5EiJJKjWgwuyghylYWruaZ4nXJiut"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "YeKDqRnNq5JcEGU0HYsnt6sxK1D4K6hE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "zIQMBMVVQmczFglCifMrZtV9RNUhKeCf"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/16;->A03:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/aW;Lcom/facebook/ads/redexgen/X/15;)V
    .registers 4

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/16;->A00:Lcom/facebook/ads/redexgen/X/aW;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/16;->A01:Lcom/facebook/ads/redexgen/X/15;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/16;->A02:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A00()Landroid/content/IntentFilter;
    .registers 4

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A06:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A09:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A04:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A0A:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A05:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A0C:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A0B:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A03:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v2
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A06:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/16;->A01:Lcom/facebook/ads/redexgen/X/15;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/16;->A00:Lcom/facebook/ads/redexgen/X/aW;

    sget-object v1, Lcom/facebook/ads/redexgen/X/16;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_127

    sget-object v2, Lcom/facebook/ads/redexgen/X/16;->A03:[Ljava/lang/String;

    const-string v1, "z37hhVYNur1y5njE4t22VYTMbB"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-interface {v4, v3}, Lcom/facebook/ads/redexgen/X/15;->ACp(Lcom/facebook/ads/redexgen/X/aW;)V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A09:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IP;->A1W(Landroid/content/Context;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/16;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_127

    sget-object v2, Lcom/facebook/ads/redexgen/X/16;->A03:[Ljava/lang/String;

    const-string v1, "a2nbOp8yH430aeg70B0MHQFnwN"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_97

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/16;->A01:Lcom/facebook/ads/redexgen/X/15;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/16;->A00:Lcom/facebook/ads/redexgen/X/aW;

    sget-object v3, Lcom/facebook/ads/AdError;->AD_PRESENTATION_ERROR:Lcom/facebook/ads/AdError;

    sget-object v2, Lcom/facebook/ads/redexgen/X/16;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_87

    sget-object v2, Lcom/facebook/ads/redexgen/X/16;->A03:[Ljava/lang/String;

    const-string v1, "Smm3aT6IchFgLH9ob00fwQqxHFnPPG6O"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "wzZfDEncWZ9M4YUYJFr8Gzf2lfnMb6hd"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-interface {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/15;->ACq(Lcom/facebook/ads/redexgen/X/aW;Lcom/facebook/ads/AdError;)V

    goto :goto_2d

    :cond_87
    sget-object v2, Lcom/facebook/ads/redexgen/X/16;->A03:[Ljava/lang/String;

    const-string v1, "douVyTcHxmEKv1YyJqQbVTsvWWCOpXBn"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "x6yn97aV8hj96Z0WREVv4HAdEeLr9VIY"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-interface {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/15;->ACq(Lcom/facebook/ads/redexgen/X/aW;Lcom/facebook/ads/AdError;)V

    goto :goto_2d

    :cond_97
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/16;->A01:Lcom/facebook/ads/redexgen/X/15;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/16;->A00:Lcom/facebook/ads/redexgen/X/aW;

    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/15;->ACq(Lcom/facebook/ads/redexgen/X/aW;Lcom/facebook/ads/AdError;)V

    goto :goto_2d

    :cond_a1
    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A04:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/16;->A01:Lcom/facebook/ads/redexgen/X/15;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A00:Lcom/facebook/ads/redexgen/X/aW;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/15;->ACm(Lcom/facebook/ads/redexgen/X/aW;)V

    goto/16 :goto_2d

    :cond_b8
    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A0A:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/16;->A01:Lcom/facebook/ads/redexgen/X/15;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A00:Lcom/facebook/ads/redexgen/X/aW;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/15;->ACo(Lcom/facebook/ads/redexgen/X/aW;)V

    goto/16 :goto_2d

    :cond_cf
    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A05:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A01:Lcom/facebook/ads/redexgen/X/15;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/15;->onRewardedVideoClosed()V

    goto/16 :goto_2d

    :cond_e4
    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A0B:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/16;->A01:Lcom/facebook/ads/redexgen/X/15;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A00:Lcom/facebook/ads/redexgen/X/aW;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/15;->ACk(Lcom/facebook/ads/redexgen/X/aW;)V

    goto/16 :goto_2d

    :cond_fb
    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A0C:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/16;->A01:Lcom/facebook/ads/redexgen/X/15;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A00:Lcom/facebook/ads/redexgen/X/aW;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/15;->ACl(Lcom/facebook/ads/redexgen/X/aW;)V

    goto/16 :goto_2d

    :cond_112
    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A03:Lcom/facebook/ads/redexgen/X/Pm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pm;->A03(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/16;->A01:Lcom/facebook/ads/redexgen/X/15;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/15;->onRewardedVideoActivityDestroyed()V

    goto/16 :goto_2d

    :cond_127
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
