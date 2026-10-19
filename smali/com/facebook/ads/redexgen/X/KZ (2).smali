###### Class com.facebook.ads.redexgen.X.KZ (com.facebook.ads.redexgen.X.KZ)
.class public final Lcom/facebook/ads/redexgen/X/KZ;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HfGv3264Bq2TQ34NqRtE4P30TXR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "AZVpgJ8fi5FDz5AiC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "FCmmf0GU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "NGZF99o8OEHjBvmOxlLxN"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "MEp80XUn5zKurDhCJ73"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "hVp2plT6ulDLwck"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "CErebgOhZelO8plRL7vU3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "v0a34uu5Y8rm3tpqkSr554RtUBdvL4ru"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/KZ;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/KZ;->A06()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/YA;)I
    .registers 7

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/YA;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_36

    const/16 v2, 0x187

    const/16 v1, 0x13

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_36

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/16 v2, 0xa6

    const/4 v1, 0x2

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x2

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_36} :catch_36
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_36} :catch_36

    :catch_36
    :cond_36
    const/4 v0, -0x1

    return v0
.end method

.method public static A01(Landroid/net/Uri;)Landroid/content/Intent;
    .registers 5

    const/16 v2, 0xb3

    const/16 v1, 0x1a

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xf

    if-lt v1, v0, :cond_1c

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    :cond_1c
    return-object v3
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/YA;Landroid/net/Uri;)Landroid/content/Intent;
    .registers 7

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/KZ;->A01(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    const/16 v2, 0xcd

    const/16 v1, 0x21

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v2, 0x10b

    const/16 v1, 0x22

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/YA;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x19a

    const/16 v1, 0xe

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IP;->A1b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1a8

    const/4 v1, 0x2

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const/16 v2, 0x187

    const/16 v1, 0x13

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_5b
    return-object v4
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/YA;Landroid/net/Uri;)Landroid/content/Intent;
    .registers 6

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/KZ;->A01(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    const/16 v2, 0x12d

    const/16 v1, 0x13

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0xf8

    const/16 v1, 0x8

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/YA;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x1e6

    const/4 v1, 0x7

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v3
.end method

.method public static A04(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/KZ;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A05(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A06()V
    .registers 1

    const/16 v0, 0x20e

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/KZ;->A00:[B

    return-void

    :array_a
    .array-data 1
        -0x31t
        -0x24t
        -0x13t
        -0x2ct
        -0x30t
        -0x3et
        -0x31t
        -0x13t
        -0x1ft
        -0x2dt
        -0x2ft
        -0x1dt
        -0x20t
        -0x2dt
        -0x13t
        -0x1et
        -0x23t
        -0x27t
        -0x2dt
        -0x24t
        -0x14t
        -0x7t
        0xat
        -0xet
        -0x5t
        -0x2t
        0xat
        -0x14t
        -0x11t
        0xat
        -0x12t
        -0x6t
        -0x7t
        -0x1t
        -0x10t
        -0x7t
        -0x1t
        -0x38t
        -0x3at
        -0x2ft
        -0x2ft
        -0x36t
        -0x29t
        -0x1ct
        -0x37t
        -0x2ct
        -0x2et
        -0x3at
        -0x32t
        -0x2dt
        -0x6t
        0x18t
        0x25t
        -0x22t
        0x2bt
        -0x29t
        0x2at
        0x2bt
        0x18t
        0x29t
        0x2bt
        -0x29t
        -0x8t
        0x2ct
        0x1bt
        0x20t
        0x1ct
        0x25t
        0x1at
        0x1ct
        0x5t
        0x1ct
        0x2bt
        0x2et
        0x26t
        0x29t
        0x22t
        -0x8t
        0x1at
        0x2bt
        0x20t
        0x2dt
        0x20t
        0x2bt
        0x30t
        -0x1bt
        -0x29t
        0x4t
        0x18t
        0x22t
        0x1ct
        -0x29t
        0x2at
        0x2ct
        0x29t
        0x1ct
        -0x29t
        0x2bt
        0x1ft
        0x18t
        0x2bt
        -0x29t
        0x20t
        0x2bt
        -0x22t
        0x2at
        -0x29t
        0x20t
        0x25t
        -0x29t
        0x30t
        0x26t
        0x2ct
        0x29t
        -0x29t
        -0x8t
        0x25t
        0x1bt
        0x29t
        0x26t
        0x20t
        0x1bt
        0x4t
        0x18t
        0x25t
        0x20t
        0x1dt
        0x1ct
        0x2at
        0x2bt
        -0x1bt
        0x2ft
        0x24t
        0x23t
        -0x29t
        0x1dt
        0x20t
        0x23t
        0x1ct
        -0x1bt
        -0x58t
        -0x45t
        -0x49t
        -0x4bt
        -0x5ct
        -0x3et
        -0x48t
        -0x4bt
        -0x51t
        -0x3ct
        -0x40t
        -0x41t
        -0xdt
        -0x1et
        -0x19t
        -0x1dt
        -0x14t
        -0x1ft
        -0x1dt
        -0x34t
        -0x1dt
        -0xet
        -0xbt
        -0x13t
        -0x10t
        -0x17t
        -0x1et
        -0x4ct
        -0x54t
        -0x47t
        -0x56t
        -0x54t
        -0x52t
        -0x41t
        -0x4ct
        -0x3ft
        -0x4ct
        -0x41t
        -0x3ct
        -0x3at
        -0x2dt
        -0x37t
        -0x29t
        -0x2ct
        -0x32t
        -0x37t
        -0x6dt
        -0x32t
        -0x2dt
        -0x27t
        -0x36t
        -0x2dt
        -0x27t
        -0x6dt
        -0x3at
        -0x38t
        -0x27t
        -0x32t
        -0x2ct
        -0x2dt
        -0x6dt
        -0x45t
        -0x52t
        -0x56t
        -0x44t
        -0x31t
        -0x24t
        -0x2et
        -0x20t
        -0x23t
        -0x29t
        -0x2et
        -0x64t
        -0x29t
        -0x24t
        -0x1et
        -0x2dt
        -0x24t
        -0x1et
        -0x64t
        -0x2ft
        -0x31t
        -0x1et
        -0x2dt
        -0x2bt
        -0x23t
        -0x20t
        -0x19t
        -0x64t
        -0x50t
        -0x40t
        -0x43t
        -0x3bt
        -0x3ft
        -0x51t
        -0x50t
        -0x46t
        -0x4dt
        -0x1ft
        -0xft
        -0x12t
        -0xat
        -0xet
        -0x1ct
        -0xft
        -0x2ct
        -0x2ft
        -0x35t
        -0x59t
        -0x5bt
        -0x50t
        -0x50t
        -0x57t
        -0x4at
        -0x73t
        -0x58t
        -0x10t
        -0x7t
        -0xat
        -0xet
        -0x5t
        0x1t
        -0x1ft
        -0x4t
        -0x8t
        -0xet
        -0x5t
        -0x4bt
        -0x3ft
        -0x41t
        -0x80t
        -0x4dt
        -0x40t
        -0x4at
        -0x3ct
        -0x3ft
        -0x45t
        -0x4at
        -0x80t
        -0x4ct
        -0x3ct
        -0x3ft
        -0x37t
        -0x3bt
        -0x49t
        -0x3ct
        -0x80t
        -0x4dt
        -0x3et
        -0x3et
        -0x42t
        -0x45t
        -0x4bt
        -0x4dt
        -0x3at
        -0x45t
        -0x3ft
        -0x40t
        -0x4ft
        -0x45t
        -0x4at
        -0x4et
        -0x42t
        -0x44t
        0x7dt
        -0x50t
        -0x43t
        -0x4dt
        -0x3ft
        -0x42t
        -0x48t
        -0x4dt
        0x7dt
        -0x3bt
        -0x4ct
        -0x43t
        -0x4dt
        -0x48t
        -0x43t
        -0x4at
        -0x27t
        -0x1bt
        -0x1dt
        -0x5ct
        -0x24t
        -0x29t
        -0x27t
        -0x25t
        -0x28t
        -0x1bt
        -0x1bt
        -0x1ft
        -0x5ct
        -0x23t
        -0x1bt
        -0x1bt
        -0x23t
        -0x1et
        -0x25t
        -0x1at
        -0x1et
        -0x29t
        -0x11t
        -0x17t
        -0x16t
        -0x1bt
        -0x18t
        -0x25t
        -0x29t
        -0x1ct
        -0x5ct
        -0x43t
        -0x1bt
        -0x1bt
        -0x23t
        -0x1et
        -0x25t
        -0x3at
        -0x1et
        -0x29t
        -0x11t
        -0x37t
        -0x16t
        -0x1bt
        -0x18t
        -0x25t
        -0x49t
        -0x3ct
        -0x3bt
        -0x14t
        -0x25t
        -0x18t
        -0x1et
        -0x29t
        -0x11t
        -0x45t
        -0x12t
        -0x16t
        -0x25t
        -0x18t
        -0x1ct
        -0x29t
        -0x1et
        -0x49t
        -0x27t
        -0x16t
        -0x21t
        -0x14t
        -0x21t
        -0x16t
        -0x11t
        -0x48t
        -0x3ct
        -0x3et
        -0x7dt
        -0x45t
        -0x4at
        -0x48t
        -0x46t
        -0x49t
        -0x3ct
        -0x3ct
        -0x40t
        -0x7dt
        -0x40t
        -0x4at
        -0x37t
        -0x4at
        -0x3dt
        -0x4at
        -0x4dt
        -0x3et
        -0x4bt
        -0x4ft
        -0x3ct
        -0x4bt
        -0x51t
        -0x42t
        -0x4bt
        -0x39t
        -0x51t
        -0x3ct
        -0x4ft
        -0x4et
        -0x3ft
        -0x43t
        0x1dt
        0x16t
        0x23t
        0x19t
        0x21t
        0x1at
        0x27t
        0x9t
        0x1et
        0x22t
        0x1at
        -0x2t
        0xat
        0xat
        0x6t
        -0x53t
        -0x47t
        -0x47t
        -0x4bt
        0x7ft
        0x74t
        0x74t
        -0x4bt
        -0x4ft
        -0x5at
        -0x42t
        0x73t
        -0x54t
        -0x4ct
        -0x4ct
        -0x54t
        -0x4ft
        -0x56t
        0x73t
        -0x58t
        -0x4ct
        -0x4et
        0x74t
        -0x48t
        -0x47t
        -0x4ct
        -0x49t
        -0x56t
        0x74t
        -0x5at
        -0x4bt
        -0x4bt
        -0x48t
        0x74t
        -0x11t
        -0x5t
        -0x5t
        -0x9t
        -0x6t
        -0x42t
        -0x4et
        -0x3dt
        -0x44t
        -0x4at
        -0x3bt
        -0xdt
        -0x6t
        -0x17t
        -0xat
        -0x10t
        -0x1bt
        -0x3t
        -0x13t
        -0x17t
        -0x22t
        -0xat
        -0x55t
        -0x1ct
        -0x14t
        -0x14t
        -0x1ct
        -0x17t
        -0x1et
        -0x55t
        -0x20t
        -0x14t
        -0x16t
        0x18t
        0xbt
        0x19t
        0xft
        0x20t
        0xbt
        -0xdt
        0x15t
        0xat
        0xbt
        0x9t
        -0x4t
        -0x8t
        0xat
        -0x19t
        0xct
        0x3t
        -0x8t
    .end array-data
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/YA;Landroid/net/Uri;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/KL;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/KZ;->A02(Lcom/facebook/ads/redexgen/X/YA;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/KN;->A0B(Lcom/facebook/ads/redexgen/X/YA;Landroid/content/Intent;)Z

    return-void
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/YA;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 11

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/KN;->A04(Lcom/facebook/ads/redexgen/X/YA;)Lcom/facebook/ads/internal/util/activity/AdActivityIntent;

    move-result-object v3

    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->addFlags(I)Landroid/content/Intent;

    const/16 v2, 0x206

    const/16 v1, 0x8

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jq;->A02:Lcom/facebook/ads/redexgen/X/Jq;

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v2, 0xee

    const/16 v1, 0xa

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x100

    const/16 v1, 0xb

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p3}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x1aa

    const/16 v1, 0xb

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v3, v2, v0, v1}, Lcom/facebook/ads/internal/util/activity/AdActivityIntent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :try_start_47
    invoke-static {p1, v3}, Lcom/facebook/ads/redexgen/X/KN;->A09(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/internal/util/activity/AdActivityIntent;)V

    goto :goto_85
    :try_end_4b
    .catch Lcom/facebook/ads/redexgen/X/KL; {:try_start_47 .. :try_end_4b} :catch_4b

    :catch_4b
    move-exception v5

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/KL;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/KL;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    :cond_56
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v6

    sget v4, Lcom/facebook/ads/redexgen/X/7x;->A0D:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v3, v5}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/Throwable;)V

    const/16 v2, 0xa8

    const/16 v1, 0xb

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    const/16 v2, 0x95

    const/16 v1, 0x11

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x32

    const/16 v1, 0x5a

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_85
    return-void
.end method

.method private final A09(Lcom/facebook/ads/redexgen/X/YA;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/KX;,
            Lcom/facebook/ads/redexgen/X/KL;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KZ;->A0F(Lcom/facebook/ads/redexgen/X/YA;)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {p1, p3}, Lcom/facebook/ads/redexgen/X/KZ;->A0J(Lcom/facebook/ads/redexgen/X/YA;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IP;->A1u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/KZ;->A03(Lcom/facebook/ads/redexgen/X/YA;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/KN;->A0C(Lcom/facebook/ads/redexgen/X/YA;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return-void

    :cond_1d
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KZ;->A0H(Lcom/facebook/ads/redexgen/X/YA;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    return-void

    :cond_24
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/KZ;->A02(Lcom/facebook/ads/redexgen/X/YA;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    const/16 v2, 0x12d

    const/16 v1, 0x13

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v4, :cond_3d

    const v0, 0x10009000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_3d
    invoke-static {p1, v3}, Lcom/facebook/ads/redexgen/X/KN;->A0B(Lcom/facebook/ads/redexgen/X/YA;Landroid/content/Intent;)Z

    return-void

    :cond_41
    new-instance v0, Lcom/facebook/ads/redexgen/X/KX;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/KX;-><init>()V

    throw v0
.end method

.method private final A0A(Lcom/facebook/ads/redexgen/X/YA;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/KL;
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IQ;->A05(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/KZ;->A0D(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz v1, :cond_10

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KZ;->A08(Lcom/facebook/ads/redexgen/X/YA;Landroid/net/Uri;Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0S;->A8V(Z)V

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/KZ;->A07(Lcom/facebook/ads/redexgen/X/YA;Landroid/net/Uri;)V

    goto :goto_f
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/KZ;Lcom/facebook/ads/redexgen/X/YA;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KZ;->A0I(Lcom/facebook/ads/redexgen/X/YA;Landroid/net/Uri;Ljava/lang/String;)Z

    return-void
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/KZ;Lcom/facebook/ads/redexgen/X/YA;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/KL;
        }
    .end annotation

    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/KZ;->A0D(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v2, 0x1ed

    const/16 v1, 0xf

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v3, 0x1

    :goto_1b
    const/16 v2, 0x1e0

    const/4 v1, 0x6

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    if-eqz v3, :cond_3b

    goto :goto_33

    :cond_31
    const/4 v3, 0x0

    goto :goto_1b

    :cond_33
    :goto_33
    :try_start_33
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KZ;->A09(Lcom/facebook/ads/redexgen/X/YA;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_3e
    :try_end_37
    .catch Lcom/facebook/ads/redexgen/X/KX; {:try_start_33 .. :try_end_37} :catch_37

    :catch_37
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KZ;->A0A(Lcom/facebook/ads/redexgen/X/YA;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_3e

    :cond_3b
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KZ;->A0A(Lcom/facebook/ads/redexgen/X/YA;Landroid/net/Uri;Ljava/lang/String;)V

    :goto_3e
    return-void
.end method

.method public static A0D(Landroid/net/Uri;)Z
    .registers 6

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    const/4 v4, 0x0

    if-lt v1, v0, :cond_38

    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/KZ;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_61

    sget-object v2, Lcom/facebook/ads/redexgen/X/KZ;->A01:[Ljava/lang/String;

    const-string v1, "9DaYNTGnU6m41BFJKxw5hEDOoLHVmNBK"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-nez v3, :cond_38

    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    :cond_38
    const/4 v0, 0x1

    :goto_39
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_4e

    const/16 v2, 0x1b5

    const/4 v1, 0x4

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5d

    :cond_4e
    const/16 v2, 0x1db

    const/4 v1, 0x5

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    :cond_5d
    const/4 v4, 0x1

    :cond_5e
    return v4

    :cond_5f
    const/4 v0, 0x0

    goto :goto_39

    :cond_61
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/YA;)Z
    .registers 7

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IP;->A15(Landroid/content/Context;)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_8

    return v4

    :cond_8
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IP;->A0D(Landroid/content/Context;)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/KZ;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x61

    if-eq v1, v0, :cond_20

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_20
    sget-object v2, Lcom/facebook/ads/redexgen/X/KZ;->A01:[Ljava/lang/String;

    const-string v1, "JMUKVK1n"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KZ;->A00(Lcom/facebook/ads/redexgen/X/YA;)I

    move-result v1

    const/4 v0, -0x1

    if-eq v3, v0, :cond_32

    if-eq v1, v0, :cond_32

    if-le v3, v1, :cond_33

    :cond_32
    return v4

    :cond_33
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-ge v1, v0, :cond_3a

    return v4

    :cond_3a
    const/4 v0, 0x1

    return v0
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/YA;)Z
    .registers 8

    const/16 v2, 0x1b9

    const/16 v1, 0x22

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kc;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/16 v2, 0xb3

    const/16 v1, 0x1a

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/YA;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x12d

    const/16 v1, 0x13

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    return v0

    :cond_4e
    return v5
.end method

.method private A0G(Lcom/facebook/ads/redexgen/X/YA;Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/KL;
        }
    .end annotation

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/YA;->A0D()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_88

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_88

    :cond_12
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IP;->A16(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/aS;->A06(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    return v7

    :cond_28
    const/4 v2, 0x0

    const/16 v1, 0x14

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/KZ;->A05(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_38
    const/16 v2, 0x187

    const/16 v1, 0x13

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x140

    const/16 v1, 0x47

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v2, 0x8c

    const/16 v1, 0x9

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x25

    const/16 v1, 0xd

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x14

    const/16 v1, 0x11

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A05(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v4}, Lcom/facebook/ads/redexgen/X/KN;->A0C(Lcom/facebook/ads/redexgen/X/YA;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_86

    const/4 v0, 0x2

    invoke-virtual {v5, v4, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_86
    const/4 v0, 0x1

    return v0

    :cond_88
    :goto_88
    return v7
    :try_end_89
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_89} :catch_89
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_89} :catch_8b

    :catch_89
    move-exception v0

    goto :goto_8c

    :catch_8b
    move-exception v0

    :goto_8c
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0S;->A9Q(Ljava/lang/String;)V

    return v7
.end method

.method private A0H(Lcom/facebook/ads/redexgen/X/YA;Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/KL;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KZ;->A0E(Lcom/facebook/ads/redexgen/X/YA;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KZ;->A0G(Lcom/facebook/ads/redexgen/X/YA;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private final A0I(Lcom/facebook/ads/redexgen/X/YA;Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 5

    invoke-static {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KN;->A0E(Lcom/facebook/ads/redexgen/X/YA;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static A0J(Lcom/facebook/ads/redexgen/X/YA;Ljava/lang/String;)Z
    .registers 6

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IP;->A1G(Landroid/content/Context;)Z

    move-result v3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    const/4 v2, 0x1

    if-lt v1, v0, :cond_20

    const/4 v0, 0x1

    :goto_c
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/KZ;->A0K(Lcom/facebook/ads/redexgen/X/YA;Ljava/lang/String;)Z

    move-result v1

    if-eqz v3, :cond_1e

    if-eqz v0, :cond_1e

    if-eqz v1, :cond_1e

    :goto_16
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/0S;->A9l(ZZ)V

    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_16

    :cond_20
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static A0K(Lcom/facebook/ads/redexgen/X/YA;Ljava/lang/String;)Z
    .registers 8

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/YA;->A0D()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/YA;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v2, :cond_d

    if-nez v3, :cond_e

    :cond_d
    return v5

    :cond_e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x20

    if-le v1, v0, :cond_45

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    :goto_22
    const-class v3, Landroid/content/pm/ActivityInfo;

    const/16 v2, 0x1fc

    const/16 v1, 0xa

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Ljava/lang/Integer;

    if-eqz v0, :cond_64

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_50

    :cond_45
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v0, 0x80

    invoke-virtual {v3, v1, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    goto :goto_22

    :goto_50
    if-eqz v0, :cond_53

    const/4 v5, 0x1

    :cond_53
    return v5
    :try_end_54
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_54} :catch_56
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_54} :catch_54
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_54} :catch_58

    :catch_54
    move-exception v0

    goto :goto_59

    :catch_56
    move-exception v0

    goto :goto_59

    :catch_58
    move-exception v0

    :goto_59
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0S;->A9j(Ljava/lang/String;)V

    :cond_64
    return v5
.end method

.method public static A0L(Lcom/facebook/ads/redexgen/X/KZ;Lcom/facebook/ads/redexgen/X/YA;Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 6

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/KZ;->A0C(Lcom/facebook/ads/redexgen/X/KZ;Lcom/facebook/ads/redexgen/X/YA;Landroid/net/Uri;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
    :try_end_5
    .catch Lcom/facebook/ads/redexgen/X/KL; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/KL;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/KL;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    :cond_10
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object p3

    sget p2, Lcom/facebook/ads/redexgen/X/7x;->A05:I

    new-instance p1, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {p1, v1}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/Throwable;)V

    const/16 p0, 0xa8

    const/16 v1, 0xb

    const/16 v0, 0xf

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/KZ;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, p2, p1}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    const/4 v0, 0x0

    return v0
.end method
