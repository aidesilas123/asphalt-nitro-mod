###### Class com.facebook.ads.redexgen.X.FA (com.facebook.ads.redexgen.X.FA)
.class public final Lcom/facebook/ads/redexgen/X/FA;
.super Lcom/facebook/ads/redexgen/X/aW;
.source ""


# static fields
.field public static A0D:Lcom/facebook/ads/redexgen/X/6Q;

.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/15;

.field public A02:Lcom/facebook/ads/redexgen/X/16;

.field public A03:Lcom/facebook/ads/redexgen/X/1C;

.field public A04:Lcom/facebook/ads/redexgen/X/YA;

.field public A05:Lcom/facebook/ads/redexgen/X/Jq;

.field public A06:Lcom/facebook/ads/redexgen/X/Oh;

.field public A07:Ljava/lang/String;

.field public A08:Ljava/lang/String;

.field public A09:Ljava/lang/String;

.field public A0A:Ljava/lang/String;

.field public final A0B:Ljava/lang/String;

.field public final A0C:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YJVWhBFSVFKs7NrWmWULGh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "0GvTyPfIpVaCupDTXIuhVv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vKmpQ0k2zgunQxdAFsx7Wlk6dmYtSCUc"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dqRYVPDeGy45RCRFCWIUPRHRtp9NBigI"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NSweCua6lZ8ChPFZ3cKnaOBscLcsrWLc"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HenZyTRrHhMHTWT00jKprDJGPW9d4C4V"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lvvcgtkpn6JHhS0LrJ19j3FN0lJsZZOv"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GmBDkEWrzwPugE8SLtTHysECIxUFQGpg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/FA;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/FA;->A08()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aW;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A0B:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/FA;)Lcom/facebook/ads/redexgen/X/15;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FA;->A01:Lcom/facebook/ads/redexgen/X/15;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/FA;)Lcom/facebook/ads/redexgen/X/1C;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/FA;)Lcom/facebook/ads/redexgen/X/YA;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/FA;Lcom/facebook/ads/redexgen/X/Oh;)Lcom/facebook/ads/redexgen/X/Oh;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FA;->A06:Lcom/facebook/ads/redexgen/X/Oh;

    return-object p1
.end method

.method public static A04(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/FA;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/FA;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/FA;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private A06()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2c;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/2c;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FA;->A02:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/16;->A00()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2c;->A06(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private A07()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A02:Lcom/facebook/ads/redexgen/X/16;

    if-eqz v0, :cond_f

    :try_start_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2c;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/2c;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A02:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2c;->A05(Landroid/content/BroadcastReceiver;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_f

    :catch_f
    :cond_f
    return-void
.end method

.method public static A08()V
    .registers 1

    const/16 v0, 0xb6

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/FA;->A0E:[B

    return-void

    :array_a
    .array-data 1
        0x38t
        0x34t
        0x36t
        0x36t
        0x30t
        0x39t
        0x30t
        0x27t
        0x3at
        0x38t
        0x30t
        0x21t
        0x30t
        0x27t
        0xat
        0x27t
        0x3at
        0x21t
        0x34t
        0x21t
        0x3ct
        0x3at
        0x3bt
        0x6ct
        0x63t
        0x52t
        0x6ct
        0x6et
        0x79t
        0x64t
        0x7bt
        0x64t
        0x79t
        0x74t
        0x9t
        0x2t
        0xbt
        0x3t
        0x4t
        0xft
        0xet
        0x2bt
        0xet
        0x2et
        0xbt
        0x1et
        0xbt
        0x28t
        0x1ft
        0x4t
        0xet
        0x6t
        0xft
        0x44t
        0x4ct
        0x4dt
        0x40t
        0x48t
        0x5dt
        0x40t
        0x46t
        0x47t
        0x6dt
        0x48t
        0x5dt
        0x48t
        0xct
        0x10t
        0x1dt
        0x1ft
        0x19t
        0x11t
        0x19t
        0x12t
        0x8t
        0x35t
        0x18t
        0x57t
        0x55t
        0x42t
        0x43t
        0x42t
        0x41t
        0x4et
        0x49t
        0x42t
        0x43t
        0x68t
        0x55t
        0x4et
        0x42t
        0x49t
        0x53t
        0x46t
        0x53t
        0x4et
        0x48t
        0x49t
        0x6ct
        0x42t
        0x5et
        0x4t
        0x13t
        0x7t
        0x3t
        0x13t
        0x5t
        0x2t
        0x22t
        0x1ft
        0x1bt
        0x13t
        0x68t
        0x7ft
        0x6dt
        0x7bt
        0x68t
        0x7et
        0x49t
        0x7ft
        0x68t
        0x6ct
        0x7ft
        0x68t
        0x4ft
        0x48t
        0x56t
        0x19t
        0xet
        0x1ct
        0xat
        0x19t
        0xft
        0xet
        0xft
        0x3dt
        0x2t
        0xft
        0xet
        0x4t
        0x2at
        0xft
        0x2ft
        0xat
        0x1ft
        0xat
        0x29t
        0x1et
        0x5t
        0xft
        0x7t
        0xet
        0x57t
        0x40t
        0x52t
        0x44t
        0x57t
        0x41t
        0x40t
        0x41t
        0x7at
        0x53t
        0x4ct
        0x41t
        0x40t
        0x4at
        0x7ct
        0x67t
        0x60t
        0x78t
        0x7ct
        0x6ct
        0x40t
        0x6dt
        0x53t
        0x4ct
        0x40t
        0x52t
        0x71t
        0x5ct
        0x55t
        0x40t
    .end array-data
.end method

.method private A09(Landroid/content/Intent;)V
    .registers 10

    iget v5, p0, Lcom/facebook/ads/redexgen/X/aW;->A00:I

    const/4 v4, -0x1

    const/16 v2, 0x4d

    const/16 v1, 0x18

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FA;->A04(III)Ljava/lang/String;

    move-result-object v3

    if-eq v5, v4, :cond_6d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x1

    const/16 v6, 0x16

    const/16 v4, 0x2b

    sget-object v1, Lcom/facebook/ads/redexgen/X/FA;->A0F:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_2f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2f
    sget-object v2, Lcom/facebook/ads/redexgen/X/FA;->A0F:[Ljava/lang/String;

    const-string v1, "ryaiaZaF8EzuUPZd67FeoIG9jUALGHZG"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "XITZtpYy2wf6QHmOozCOnY6Xlkm3ca51"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v7, v6, v4}, Lcom/facebook/ads/redexgen/X/FA;->A04(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v5, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_6d

    iget v4, p0, Lcom/facebook/ads/redexgen/X/aW;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/FA;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_5d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5d
    sget-object v2, Lcom/facebook/ads/redexgen/X/FA;->A0F:[Ljava/lang/String;

    const-string v1, "mo2n49jFbf8CHvb7nubztA"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "3h0LYrxRFByrgEG7Z48zJG"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_79

    :cond_6d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A0g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_79

    const/4 v0, 0x6

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_79
    :goto_79
    return-void
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/FA;Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/aQ;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/FA;->A0B(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/aQ;I)V

    return-void
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/aQ;I)V
    .registers 16

    move-object v10, p2

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/aQ;->A0q()I

    move-result v0

    move v11, p3

    if-lt v11, v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {v10, v11}, Lcom/facebook/ads/redexgen/X/aQ;->A0t(I)Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/Ey;

    new-instance v3, Lcom/facebook/ads/redexgen/X/6Q;

    move-object v8, p1

    invoke-direct {v3, v8}, Lcom/facebook/ads/redexgen/X/6Q;-><init>(Lcom/facebook/ads/redexgen/X/7S;)V

    sput-object v3, Lcom/facebook/ads/redexgen/X/FA;->A0D:Lcom/facebook/ads/redexgen/X/6Q;

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/7S;->A09()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/In;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/In;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/If;)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A0d(Lcom/facebook/ads/redexgen/X/In;)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/FA;->A0D:Lcom/facebook/ads/redexgen/X/6Q;

    invoke-static {v8, v0, v9}, Lcom/facebook/ads/redexgen/X/1q;->A02(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/6Q;Lcom/facebook/ads/redexgen/X/Ey;)V

    if-nez v11, :cond_4e

    const/4 v7, 0x1

    :goto_2f
    sget-object v4, Lcom/facebook/ads/redexgen/X/FA;->A0D:Lcom/facebook/ads/redexgen/X/6Q;

    new-instance v5, Lcom/facebook/ads/redexgen/X/FB;

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/FB;-><init>(Lcom/facebook/ads/redexgen/X/FA;ZLcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/Ey;Lcom/facebook/ads/redexgen/X/aQ;I)V

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/1C;->A0R()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x98

    const/16 v1, 0xe

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FA;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/6J;

    invoke-direct {v0, v3, v1, v11}, Lcom/facebook/ads/redexgen/X/6J;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v4, v5, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A0W(Lcom/facebook/ads/redexgen/X/6I;Lcom/facebook/ads/redexgen/X/6J;)V

    return-void

    :cond_4e
    const/4 v7, 0x0

    goto :goto_2f
.end method

.method private A0C(Z)V
    .registers 6

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FA;->A05:Lcom/facebook/ads/redexgen/X/Jq;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jq;->A0D:Lcom/facebook/ads/redexgen/X/Jq;

    if-ne v1, v0, :cond_a

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/FA;->A0E(Z)V

    :goto_9
    return-void

    :cond_a
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FA;->A05:Lcom/facebook/ads/redexgen/X/Jq;

    sget-object v2, Lcom/facebook/ads/redexgen/X/FA;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_24

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_24
    sget-object v2, Lcom/facebook/ads/redexgen/X/FA;->A0F:[Ljava/lang/String;

    const-string v1, "1yOiFacRiwJanRzqDJ6A5hJ77lYfziAe"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "McEelBumOV7dKb1zb6BdvUT5HG6VvrgI"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jq;->A0F:Lcom/facebook/ads/redexgen/X/Jq;

    if-ne v3, v0, :cond_38

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/FA;->A0F(Z)V

    goto :goto_9

    :cond_38
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FA;->A05:Lcom/facebook/ads/redexgen/X/Jq;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jq;->A0E:Lcom/facebook/ads/redexgen/X/Jq;

    if-ne v1, v0, :cond_42

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/FA;->A0D(Z)V

    goto :goto_9

    :cond_42
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/FA;->A0F(Z)V

    goto :goto_9
.end method

.method private A0D(Z)V
    .registers 12

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v4, Lcom/facebook/ads/redexgen/X/6Q;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/6Q;-><init>(Lcom/facebook/ads/redexgen/X/7S;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A1j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0U()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5q;->A0A(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_63

    const/4 v8, 0x1

    :goto_1c
    if-eqz v8, :cond_54

    new-instance v3, Lcom/facebook/ads/redexgen/X/5q;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0U()Lorg/json/JSONObject;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0O()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0R()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/facebook/ads/redexgen/X/ac;

    invoke-direct {v9, p0}, Lcom/facebook/ads/redexgen/X/ac;-><init>(Lcom/facebook/ads/redexgen/X/FA;)V

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/5q;-><init>(Lcom/facebook/ads/redexgen/X/6Q;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/5p;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    check-cast v0, Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A09()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/In;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/In;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/If;)V

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A0d(Lcom/facebook/ads/redexgen/X/In;)V

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/5q;->A0B()V

    :goto_53
    return-void

    :cond_54
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    check-cast v1, Lcom/facebook/ads/redexgen/X/aS;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ab;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ab;-><init>(Lcom/facebook/ads/redexgen/X/FA;)V

    invoke-static {v2, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/1p;->A02(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/aS;ZLcom/facebook/ads/redexgen/X/1n;)V

    goto :goto_53

    :cond_63
    const/4 v8, 0x0

    goto :goto_1c
.end method

.method private A0E(Z)V
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v5, Lcom/facebook/ads/redexgen/X/6Q;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/6Q;-><init>(Lcom/facebook/ads/redexgen/X/7S;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    check-cast v0, Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A09()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/In;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/In;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/If;)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A0d(Lcom/facebook/ads/redexgen/X/In;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ey;

    invoke-static {v1, v5, v0}, Lcom/facebook/ads/redexgen/X/1q;->A03(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/6Q;Lcom/facebook/ads/redexgen/X/Ey;)V

    new-instance v4, Lcom/facebook/ads/redexgen/X/ag;

    invoke-direct {v4, p0}, Lcom/facebook/ads/redexgen/X/ag;-><init>(Lcom/facebook/ads/redexgen/X/FA;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0R()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x98

    const/16 v1, 0xe

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FA;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/6J;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/6J;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A0W(Lcom/facebook/ads/redexgen/X/6I;Lcom/facebook/ads/redexgen/X/6J;)V

    return-void
.end method

.method private A0F(Z)V
    .registers 15

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0h()Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_36

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    check-cast v3, Lcom/facebook/ads/redexgen/X/aQ;

    move-object v2, p0

    const/4 v1, 0x0

    :goto_f
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/aQ;->A0q()I

    move-result v0

    if-ge v1, v0, :cond_d2

    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/aQ;->A0t(I)Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0D()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FA;->A01:Lcom/facebook/ads/redexgen/X/15;

    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/15;->ACq(Lcom/facebook/ads/redexgen/X/aW;Lcom/facebook/ads/AdError;)V

    return-void

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_36
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v4, Lcom/facebook/ads/redexgen/X/6Q;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/6Q;-><init>(Lcom/facebook/ads/redexgen/X/7S;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    check-cast v0, Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A09()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/In;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/In;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/If;)V

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A0d(Lcom/facebook/ads/redexgen/X/In;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A1j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0U()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5q;->A0A(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_68

    const/4 v8, 0x1

    :cond_68
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0k()Z

    move-result v10

    if-eqz v8, :cond_90

    new-instance v3, Lcom/facebook/ads/redexgen/X/5q;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0U()Lorg/json/JSONObject;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0O()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0R()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/facebook/ads/redexgen/X/ae;

    invoke-direct {v9, p0, v10}, Lcom/facebook/ads/redexgen/X/ae;-><init>(Lcom/facebook/ads/redexgen/X/FA;Z)V

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/5q;-><init>(Lcom/facebook/ads/redexgen/X/6Q;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/5p;)V

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/5q;->A0B()V

    goto :goto_d7

    :cond_90
    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    check-cast v11, Lcom/facebook/ads/redexgen/X/Ey;

    move-object v12, p0

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0D()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FA;->A01:Lcom/facebook/ads/redexgen/X/15;

    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v12, v0}, Lcom/facebook/ads/redexgen/X/15;->ACq(Lcom/facebook/ads/redexgen/X/aW;Lcom/facebook/ads/AdError;)V

    return-void

    :cond_af
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0, v4, v11}, Lcom/facebook/ads/redexgen/X/1q;->A02(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/6Q;Lcom/facebook/ads/redexgen/X/Ey;)V

    new-instance v7, Lcom/facebook/ads/redexgen/X/FC;

    move-object v8, p0

    move v9, p1

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/FC;-><init>(Lcom/facebook/ads/redexgen/X/FA;ZZLcom/facebook/ads/redexgen/X/Ey;Lcom/facebook/ads/redexgen/X/aW;)V

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/1C;->A0R()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x98

    const/16 v1, 0xe

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FA;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/6J;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/6J;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A0W(Lcom/facebook/ads/redexgen/X/6I;Lcom/facebook/ads/redexgen/X/6J;)V

    goto :goto_d7

    :cond_d2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-direct {p0, v0, v3, v8}, Lcom/facebook/ads/redexgen/X/FA;->A0B(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/aQ;I)V

    :goto_d7
    return-void
.end method


# virtual methods
.method public final A0G()I
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    if-nez v0, :cond_26

    const/4 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/FA;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_20

    sget-object v2, Lcom/facebook/ads/redexgen/X/FA;->A0F:[Ljava/lang/String;

    const-string v1, "zy8kAWNFspHhc9OUOOhBHMIK4AaCMilm"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    :cond_20
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_26
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0G()I

    move-result v0

    return v0
.end method

.method public final A0H()Lcom/facebook/ads/redexgen/X/1C;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    return-object v0
.end method

.method public final A0I()Z
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A01:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/1C;->A0W(J)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aW;->A02:Lcom/facebook/ads/RewardData;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FA;->A0B:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A07:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PU;->A03(Lcom/facebook/ads/RewardData;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aW;->A02:Lcom/facebook/ads/RewardData;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1C;->A0X(Lcom/facebook/ads/RewardData;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/1C;->A0a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KN;->A04(Lcom/facebook/ads/redexgen/X/YA;)Lcom/facebook/ads/internal/util/activity/AdActivityIntent;

    move-result-object v4

    const/16 v2, 0xae

    const/16 v1, 0x8

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FA;->A04(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A05:Lcom/facebook/ads/redexgen/X/Jq;

    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v2, 0x7f

    const/16 v1, 0x19

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FA;->A04(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v2, 0x22

    const/16 v1, 0x13

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FA;->A04(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v2, 0xa6

    const/16 v1, 0x8

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FA;->A04(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A0B:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v3, :cond_78

    const/16 v2, 0x70

    const/16 v1, 0xf

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FA;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_78
    const/16 v2, 0x42

    const/16 v1, 0xb

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FA;->A04(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A0A:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x65

    const/16 v1, 0xb

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FA;->A04(III)Ljava/lang/String;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A00:J

    invoke-virtual {v4, v2, v0, v1}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FA;->A09:Ljava/lang/String;

    if-eqz v3, :cond_a6

    const/16 v2, 0x35

    const/16 v1, 0xd

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FA;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a6
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/FA;->A09(Landroid/content/Intent;)V

    invoke-virtual {v4}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->getFlags()I

    move-result v1

    const/high16 v0, 0x10000000

    or-int/2addr v1, v0

    invoke-virtual {v4, v1}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/internal/util/activity/ActivityUtils;->A03(Lcom/facebook/ads/redexgen/X/YA;)V

    :try_start_b8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/KN;->A09(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/internal/util/activity/AdActivityIntent;)V

    goto :goto_e3
    :try_end_be
    .catch Lcom/facebook/ads/redexgen/X/KL; {:try_start_b8 .. :try_end_be} :catch_be

    :catch_be
    move-exception v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/KL;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_c9

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/KL;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    :cond_c9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/7x;->A01:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/Throwable;)V

    const/16 v2, 0x17

    const/16 v1, 0xb

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FA;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    :goto_e3
    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/FA;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_fc

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_fc
    sget-object v2, Lcom/facebook/ads/redexgen/X/FA;->A0F:[Ljava/lang/String;

    const-string v1, "L0ou65zbaEHIK9W1EiRqjH"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "MlzKsAmmQguOmiSj0COpPP"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3
.end method

.method public final A0J(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/15;Lcom/facebook/ads/redexgen/X/1s;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 12

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A0C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/FA;->A01:Lcom/facebook/ads/redexgen/X/15;

    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1s;->A02()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A0A:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1s;->A00()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A00:J

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/FA;->A09:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FA;->A0A:Ljava/lang/String;

    if-eqz v3, :cond_19d

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FA;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    :goto_2a
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A07:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1s;->A03()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/1C;->A00(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/YA;)Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    invoke-virtual {v0, p5}, Lcom/facebook/ads/redexgen/X/1C;->A0Y(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1s;->A01()Lcom/facebook/ads/redexgen/X/8G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8G;->A06()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1C;->A0V(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0h()Z

    move-result v0

    if-eqz v0, :cond_15d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    check-cast v0, Lcom/facebook/ads/redexgen/X/aQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aQ;->A0v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A08:Ljava/lang/String;

    :goto_5a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0k()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/FA;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1f2

    sget-object v2, Lcom/facebook/ads/redexgen/X/FA;->A0F:[Ljava/lang/String;

    const-string v1, "T6UzDEu82kzY1KsvV3iHB7OkWnIxnMBs"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "PWXGgNcAlDXPEXP1mMx0dPQCA8p68UI5"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_eb

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jq;->A07:Lcom/facebook/ads/redexgen/X/Jq;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A05:Lcom/facebook/ads/redexgen/X/Jq;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0e()Z

    move-result v0

    if-eqz v0, :cond_df

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0d;->A07:Lcom/facebook/ads/redexgen/X/0d;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0S;->AFV(Lcom/facebook/ads/redexgen/X/0d;)V

    :goto_99
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IP;->A0r(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0h()Z

    move-result v0

    if-eqz v0, :cond_1b5

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    check-cast v4, Lcom/facebook/ads/redexgen/X/aQ;

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/aQ;->A0q()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :goto_b1
    if-ltz v3, :cond_1a7

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/aQ;->A0t(I)Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0U()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/0k;->A01(Lcom/facebook/ads/redexgen/X/YA;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ax;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7S;->A09()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0k;->A06(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/0j;Lcom/facebook/ads/redexgen/X/If;)Z

    move-result v0

    if-eqz v0, :cond_dc

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0S;->A4H()V

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/aQ;->A0x(I)V

    return-void

    :cond_dc
    add-int/lit8 v3, v3, -0x1

    goto :goto_b1

    :cond_df
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0d;->A09:Lcom/facebook/ads/redexgen/X/0d;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0S;->AFV(Lcom/facebook/ads/redexgen/X/0d;)V

    goto :goto_99

    :cond_eb
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0F()I

    move-result v0

    packed-switch v0, :pswitch_data_1f8

    goto :goto_99

    :pswitch_f5
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jq;->A0F:Lcom/facebook/ads/redexgen/X/Jq;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A05:Lcom/facebook/ads/redexgen/X/Jq;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/FA;->A0F:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_11c

    sget-object v2, Lcom/facebook/ads/redexgen/X/FA;->A0F:[Ljava/lang/String;

    const-string v1, "i1vVIMuEE2CogviWDEosGc55NgD83ibP"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/0d;->A0C:Lcom/facebook/ads/redexgen/X/0d;

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/0S;->AFV(Lcom/facebook/ads/redexgen/X/0d;)V

    goto/16 :goto_99

    :cond_11c
    sget-object v2, Lcom/facebook/ads/redexgen/X/FA;->A0F:[Ljava/lang/String;

    const-string v1, "e7mQJdX4ST7JevLzoIctPRomcGPYY6Su"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/0d;->A0C:Lcom/facebook/ads/redexgen/X/0d;

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/0S;->AFV(Lcom/facebook/ads/redexgen/X/0d;)V

    goto/16 :goto_99

    :pswitch_12a
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jq;->A0E:Lcom/facebook/ads/redexgen/X/Jq;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A05:Lcom/facebook/ads/redexgen/X/Jq;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0d;->A0B:Lcom/facebook/ads/redexgen/X/0d;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0S;->AFV(Lcom/facebook/ads/redexgen/X/0d;)V

    goto/16 :goto_99

    :pswitch_13b
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jq;->A04:Lcom/facebook/ads/redexgen/X/Jq;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A05:Lcom/facebook/ads/redexgen/X/Jq;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0d;->A04:Lcom/facebook/ads/redexgen/X/0d;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0S;->AFV(Lcom/facebook/ads/redexgen/X/0d;)V

    goto/16 :goto_99

    :pswitch_14c
    sget-object v0, Lcom/facebook/ads/redexgen/X/Jq;->A0D:Lcom/facebook/ads/redexgen/X/Jq;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A05:Lcom/facebook/ads/redexgen/X/Jq;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0d;->A03:Lcom/facebook/ads/redexgen/X/0d;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0S;->AFV(Lcom/facebook/ads/redexgen/X/0d;)V

    goto/16 :goto_99

    :cond_15d
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    check-cast v3, Lcom/facebook/ads/redexgen/X/aS;

    sget-object v2, Lcom/facebook/ads/redexgen/X/FA;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_189

    sget-object v2, Lcom/facebook/ads/redexgen/X/FA;->A0F:[Ljava/lang/String;

    const-string v1, "FFkeuuVk1meHqgTyMiNT7tgr8739x7mc"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "JwuXN3bqyC9CcnquHiHDyzq7R0rb3kLZ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A08:Ljava/lang/String;

    goto/16 :goto_5a

    :cond_189
    sget-object v2, Lcom/facebook/ads/redexgen/X/FA;->A0F:[Ljava/lang/String;

    const-string v1, "QuYSy7nqZhyT9avsyztjWhd8F7hW1wjU"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "5b6UXiMlNaCol2aZqv4zpvCfEMtgCuxD"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A08:Ljava/lang/String;

    goto/16 :goto_5a

    :cond_19d
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FA;->A04(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2a

    :cond_1a7
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/aQ;->A0q()I

    move-result v0

    if-nez v0, :cond_1e2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FA;->A01:Lcom/facebook/ads/redexgen/X/15;

    sget-object v0, Lcom/facebook/ads/AdError;->NO_FILL:Lcom/facebook/ads/AdError;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/15;->ACq(Lcom/facebook/ads/redexgen/X/aW;Lcom/facebook/ads/AdError;)V

    return-void

    :cond_1b5
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/1s;->A03()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A03:Lcom/facebook/ads/redexgen/X/1C;

    check-cast v0, Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/0k;->A01(Lcom/facebook/ads/redexgen/X/YA;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/ax;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7S;->A09()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0k;->A06(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/0j;Lcom/facebook/ads/redexgen/X/If;)Z

    move-result v0

    if-eqz v0, :cond_1e2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0S;->A4H()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FA;->A01:Lcom/facebook/ads/redexgen/X/15;

    sget-object v0, Lcom/facebook/ads/AdError;->NO_FILL:Lcom/facebook/ads/AdError;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/15;->ACq(Lcom/facebook/ads/redexgen/X/aW;Lcom/facebook/ads/AdError;)V

    return-void

    :cond_1e2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FA;->A0B:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/16;

    invoke-direct {v0, v1, p0, p2}, Lcom/facebook/ads/redexgen/X/16;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/aW;Lcom/facebook/ads/redexgen/X/15;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A02:Lcom/facebook/ads/redexgen/X/16;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FA;->A06()V

    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/FA;->A0C(Z)V

    return-void

    :cond_1f2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_data_1f8
    .packed-switch 0x0
        :pswitch_f5
        :pswitch_12a
        :pswitch_13b
        :pswitch_14c
    .end packed-switch
.end method

.method public final A6N()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FA;->A08:Ljava/lang/String;

    return-object v0
.end method

.method public final AFs()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final onDestroy()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/FA;->A07()V

    return-void
.end method
