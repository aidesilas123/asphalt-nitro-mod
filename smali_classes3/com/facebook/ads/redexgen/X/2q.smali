###### Class com.facebook.ads.redexgen.X.C2Q (com.facebook.ads.redexgen.X.2Q)
.class public final Lcom/facebook/ads/redexgen/X/2Q;
.super Lcom/facebook/ads/redexgen/X/BP;
.source ""


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/G0;

.field public final A01:Lcom/facebook/ads/redexgen/X/G6;

.field public final A02:Lcom/facebook/ads/redexgen/X/G9;

.field public final A03:Lcom/facebook/ads/redexgen/X/Hh;

.field public final A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/G4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "nabbxVlkTS02KbOXtvrYjxXOkvgrE4Rx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "pCs3X8pbdqhf3udQeQHOHg2TESRVIExP"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "X7dWDqGkZ4oo9ojzasriQNNbGDOP4U2k"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "bRsmFeMe4IswSZg7MRLOH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "8AzhoLHWgRP6QDlYco1FQ5KlMFYiSCT4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "JmcruW7M7IQPekUGyzzhcFR79qXiQpMI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0ZXGLWfsk5GmSFBdSETpQZD9x"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2Q;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2Q;->A03()V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/16 v2, 0x35

    const/16 v1, 0xd

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2Q;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/BP;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/G9;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/G9;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A02:Lcom/facebook/ads/redexgen/X/G9;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hh;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A03:Lcom/facebook/ads/redexgen/X/Hh;

    new-instance v0, Lcom/facebook/ads/redexgen/X/G6;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/G6;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A01:Lcom/facebook/ads/redexgen/X/G6;

    new-instance v0, Lcom/facebook/ads/redexgen/X/G0;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/G0;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A00:Lcom/facebook/ads/redexgen/X/G0;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A04:Ljava/util/List;

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Hh;)I
    .registers 9

    const/4 v1, -0x1

    const/4 v5, 0x0

    :goto_2
    const/4 v0, -0x1

    if-ne v1, v0, :cond_56

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0P()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_11

    const/4 v1, 0x0

    goto :goto_2

    :cond_11
    const/16 v2, 0x30

    const/4 v1, 0x5

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2Q;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v1, 0x2

    goto :goto_2

    :cond_22
    const/16 v7, 0x2c

    const/4 v4, 0x4

    const/16 v3, 0x23

    sget-object v2, Lcom/facebook/ads/redexgen/X/2Q;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_41

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_41
    sget-object v2, Lcom/facebook/ads/redexgen/X/2Q;->A06:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v7, v4, v3}, Lcom/facebook/ads/redexgen/X/2Q;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    const/4 v1, 0x1

    goto :goto_2

    :cond_54
    const/4 v1, 0x3

    goto :goto_2

    :cond_56
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    return v1
.end method

.method private final A01([BIZ)Lcom/facebook/ads/redexgen/X/VQ;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/FX;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A03:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Hh;->A0b([BI)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A01:Lcom/facebook/ads/redexgen/X/G6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/G6;->A0E()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A04:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A03:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/GA;->A04(Lcom/facebook/ads/redexgen/X/Hh;)V

    :goto_14
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2Q;->A03:Lcom/facebook/ads/redexgen/X/Hh;

    sget-object v2, Lcom/facebook/ads/redexgen/X/2Q;->A06:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_c2

    sget-object v2, Lcom/facebook/ads/redexgen/X/2Q;->A06:[Ljava/lang/String;

    const-string v1, "tbdDXORcAGWDWJQvQKVPnq93lpg2mrPP"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Hh;->A0P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_14

    :cond_3a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A03:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2Q;->A00(Lcom/facebook/ads/redexgen/X/Hh;)I

    move-result v1

    if-eqz v1, :cond_bc

    const/4 v0, 0x1

    if-ne v1, v0, :cond_6f

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2Q;->A03:Lcom/facebook/ads/redexgen/X/Hh;

    sget-object v1, Lcom/facebook/ads/redexgen/X/2Q;->A06:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x64

    if-eq v1, v0, :cond_5f

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/2Q;->A04(Lcom/facebook/ads/redexgen/X/Hh;)V

    goto :goto_3f

    :cond_5f
    sget-object v2, Lcom/facebook/ads/redexgen/X/2Q;->A06:[Ljava/lang/String;

    const-string v1, "XeLthZEhonOY1WTLxlO74ZC3vwAi7Gzu"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "58vrG83lY5mmO2PMdgn4YupBjgbiqU0F"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/2Q;->A04(Lcom/facebook/ads/redexgen/X/Hh;)V

    goto :goto_3f

    :cond_6f
    const/4 v0, 0x2

    if-ne v1, v0, :cond_8d

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A03:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0P()Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2Q;->A00:Lcom/facebook/ads/redexgen/X/G0;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A03:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A0E(Lcom/facebook/ads/redexgen/X/Hh;)Lcom/facebook/ads/redexgen/X/G4;

    move-result-object v1

    if-eqz v1, :cond_3f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A04:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :cond_8d
    const/4 v0, 0x3

    if-ne v1, v0, :cond_3f

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2Q;->A02:Lcom/facebook/ads/redexgen/X/G9;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2Q;->A03:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2Q;->A01:Lcom/facebook/ads/redexgen/X/G6;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A04:Ljava/util/List;

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A0G(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/G6;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A01:Lcom/facebook/ads/redexgen/X/G6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/G6;->A0D()Lcom/facebook/ads/redexgen/X/VR;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2Q;->A01:Lcom/facebook/ads/redexgen/X/G6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/G6;->A0E()V

    goto :goto_3f

    :cond_ad
    const/4 v2, 0x0

    const/16 v1, 0x2c

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2Q;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/FX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/FX;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bc
    new-instance v0, Lcom/facebook/ads/redexgen/X/VQ;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/VQ;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_c2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/2Q;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .registers 4

    const/16 v0, 0x42

    new-array v3, v0, [B

    fill-array-data v3, :array_24

    sget-object v1, Lcom/facebook/ads/redexgen/X/2Q;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1d

    sget-object v2, Lcom/facebook/ads/redexgen/X/2Q;->A06:[Ljava/lang/String;

    const-string v1, "qjCLSi9tiUSTzkFi0DFuhWZdaggVbYhZ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/2Q;->A05:[B

    return-void

    :cond_1d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_24
    .array-data 1
        -0x58t
        -0x79t
        -0x26t
        -0x25t
        -0x20t
        -0x2dt
        -0x34t
        -0x79t
        -0x37t
        -0x2dt
        -0x2at
        -0x36t
        -0x2et
        -0x79t
        -0x22t
        -0x38t
        -0x26t
        -0x79t
        -0x33t
        -0x2at
        -0x24t
        -0x2bt
        -0x35t
        -0x79t
        -0x38t
        -0x33t
        -0x25t
        -0x34t
        -0x27t
        -0x79t
        -0x25t
        -0x31t
        -0x34t
        -0x79t
        -0x33t
        -0x30t
        -0x27t
        -0x26t
        -0x25t
        -0x79t
        -0x36t
        -0x24t
        -0x34t
        -0x6bt
        -0x6et
        -0x6dt
        -0x68t
        -0x77t
        -0x49t
        -0x48t
        -0x43t
        -0x50t
        -0x57t
        -0x5ct
        -0x4et
        -0x51t
        -0x3dt
        -0x3ft
        -0x3ft
        -0x6ft
        -0x4et
        -0x50t
        -0x44t
        -0x4ft
        -0x4et
        -0x41t
    .end array-data
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/Hh;)V
    .registers 2

    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    return-void
.end method


# virtual methods
.method public final bridge synthetic A0b([BIZ)Lcom/facebook/ads/redexgen/X/FW;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/FX;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2Q;->A01([BIZ)Lcom/facebook/ads/redexgen/X/VQ;

    move-result-object v0

    return-object v0
.end method
