###### Class com.facebook.ads.redexgen.X.G0 (com.facebook.ads.redexgen.X.G0)
.class public final Lcom/facebook/ads/redexgen/X/G0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Ljava/util/regex/Pattern;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Hh;

.field public final A01:Ljava/lang/StringBuilder;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "o6dtQbEX6DUU2ZPrt5fMpvPTiwhNIFVw"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "MFXGqw4wC6wJal5"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "uC7LPUo8IknDiYQWYNCx"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "R0uPVJBemfZgswV0fGveV9P1kI7oDQdd"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Ua883bT78DPlxnLPMdUDySsZEoLcqfDA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "dE9C57ZljM4PWQ1xUFFc"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "KkKO0GZU5SD8UwtXdKEVEJnvfx0O6Fgr"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/G0;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/G0;->A07()V

    const/16 v2, 0xb

    const/16 v1, 0x13

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/G0;->A04:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hh;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/G0;->A00:Lcom/facebook/ads/redexgen/X/Hh;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/G0;->A01:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Hh;I)C
    .registers 2

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    aget-byte p0, p0, p1

    int-to-char p0, p0

    return p0
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/G0;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/Hh;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A07()I

    move-result v3

    const/4 v0, 0x0

    :goto_9
    if-ge v1, v3, :cond_1d

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    add-int/lit8 v2, v1, 0x1

    aget-byte v0, v0, v1

    int-to-char v1, v0

    const/16 v0, 0x29

    if-ne v1, v0, :cond_1b

    const/4 v0, 0x1

    :goto_19
    move v1, v2

    goto :goto_9

    :cond_1b
    const/4 v0, 0x0

    goto :goto_19

    :cond_1d
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->A0S(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/Hh;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A07()I

    move-result v3

    const/4 v4, 0x0

    :goto_d
    if-ge v2, v3, :cond_46

    if-nez v4, :cond_46

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    aget-byte v0, v0, v2

    int-to-char v1, v0

    const/16 v0, 0x41

    if-lt v1, v0, :cond_1e

    const/16 v0, 0x5a

    if-le v1, v0, :cond_3e

    :cond_1e
    const/16 v0, 0x61

    if-lt v1, v0, :cond_26

    const/16 v0, 0x7a

    if-le v1, v0, :cond_3e

    :cond_26
    const/16 v0, 0x30

    if-lt v1, v0, :cond_2e

    const/16 v0, 0x39

    if-le v1, v0, :cond_3e

    :cond_2e
    const/16 v0, 0x23

    if-eq v1, v0, :cond_3e

    const/16 v0, 0x2d

    if-eq v1, v0, :cond_3e

    const/16 v0, 0x2e

    if-eq v1, v0, :cond_3e

    const/16 v0, 0x5f

    if-ne v1, v0, :cond_44

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_44
    const/4 v4, 0x1

    goto :goto_d

    :cond_46
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/Hh;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 6

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/G0;->A0A(Lcom/facebook/ads/redexgen/X/Hh;)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/G0;->A03(Lcom/facebook/ads/redexgen/X/Hh;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    return-object v3

    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/Hh;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    :goto_6
    if-nez v5, :cond_3a

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v4

    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/G0;->A04(Lcom/facebook/ads/redexgen/X/Hh;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_14

    const/4 v0, 0x0

    return-object v0

    :cond_14
    const/16 v2, 0x76

    const/4 v1, 0x1

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const/16 v2, 0x8

    const/4 v1, 0x1

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_31
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    const/4 v5, 0x1

    goto :goto_6

    :cond_36
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_3a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/Hh;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 8

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/G0;->A0A(Lcom/facebook/ads/redexgen/X/Hh;)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v1

    const/4 v5, 0x0

    const/4 v0, 0x5

    if-ge v1, v0, :cond_c

    return-object v5

    :cond_c
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0S(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x3

    const/4 v1, 0x5

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    return-object v5

    :cond_1f
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v4

    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/G0;->A04(Lcom/facebook/ads/redexgen/X/Hh;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2a

    return-object v5

    :cond_2a
    const/16 v2, 0x75

    const/4 v1, 0x1

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A01(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_45
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/G0;->A02(Lcom/facebook/ads/redexgen/X/Hh;)Ljava/lang/String;

    move-result-object v4

    :cond_58
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/G0;->A04(Lcom/facebook/ads/redexgen/X/Hh;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    if-nez v3, :cond_6d

    :cond_6c
    return-object v5

    :cond_6d
    return-object v4
.end method

.method public static A07()V
    .registers 1

    const/16 v0, 0x77

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/G0;->A02:[B

    return-void

    :array_a
    .array-data 1
        0x77t
        -0x72t
        -0x5dt
        -0x72t
        -0x72t
        -0x49t
        -0x37t
        -0x47t
        0x55t
        -0x51t
        -0x7ft
        -0x24t
        -0x25t
        -0xat
        -0x11t
        -0x17t
        -0x1dt
        -0x1bt
        -0x43t
        -0x5et
        -0x58t
        -0x25t
        -0x22t
        -0x5et
        -0x23t
        -0x56t
        -0x57t
        -0x5et
        -0x24t
        -0x23t
        -0x80t
        0x7ft
        -0x7ft
        -0x77t
        -0x7bt
        -0x70t
        -0x73t
        -0x6dt
        -0x74t
        -0x7et
        0x4bt
        -0x7ft
        -0x73t
        -0x76t
        -0x73t
        -0x70t
        -0x48t
        -0x3bt
        -0x3et
        -0x46t
        -0x61t
        -0x55t
        -0x58t
        -0x55t
        -0x52t
        0x7bt
        -0x7ct
        -0x7dt
        -0x77t
        0x42t
        0x7bt
        0x76t
        -0x7et
        0x7et
        -0x7ft
        -0x72t
        -0x5at
        -0x51t
        -0x52t
        -0x4ct
        0x6dt
        -0x4dt
        -0x4ct
        -0x47t
        -0x54t
        -0x5bt
        -0x4at
        -0x41t
        -0x42t
        -0x3ct
        0x7dt
        -0x39t
        -0x4bt
        -0x47t
        -0x49t
        -0x48t
        -0x3ct
        -0x24t
        -0x19t
        -0x2ct
        -0x21t
        -0x24t
        -0x2at
        -0x21t
        -0x30t
        -0x1dt
        -0x21t
        -0x68t
        -0x31t
        -0x30t
        -0x32t
        -0x26t
        -0x23t
        -0x34t
        -0x21t
        -0x2ct
        -0x26t
        -0x27t
        -0x50t
        -0x57t
        -0x61t
        -0x60t
        -0x53t
        -0x59t
        -0x5ct
        -0x57t
        -0x60t
        -0x67t
        -0x7ct
    .end array-data
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/G4;Ljava/lang/String;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    const/16 v0, 0x5b

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v6, -0x1

    const/4 v5, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/G0;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2f
    sget-object v2, Lcom/facebook/ads/redexgen/X/G0;->A03:[Ljava/lang/String;

    const-string v1, "CW487BEDmC1UFYo"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v4, 0x1

    if-eq v3, v6, :cond_54

    sget-object v1, Lcom/facebook/ads/redexgen/X/G0;->A04:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/G4;->A0K(Ljava/lang/String;)V

    :cond_50
    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_54
    const/16 v2, 0x9

    const/4 v1, 0x2

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A0l(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, v5

    const/16 v0, 0x23

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v6, :cond_89

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/G4;->A0J(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/G4;->A0I(Ljava/lang/String;)V

    :goto_7b
    array-length v0, v3

    if-le v0, v4, :cond_88

    array-length v0, v3

    invoke-static {v3, v4, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/G4;->A0L([Ljava/lang/String;)V

    :cond_88
    return-void

    :cond_89
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/G4;->A0J(Ljava/lang/String;)V

    goto :goto_7b
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/Hh;)V
    .registers 2

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/Hh;)V
    .registers 3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v1

    if-lez v1, :cond_19

    if-eqz v0, :cond_19

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/G0;->A0D(Lcom/facebook/ads/redexgen/X/Hh;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/G0;->A0C(Lcom/facebook/ads/redexgen/X/Hh;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    goto :goto_1

    :cond_17
    const/4 v0, 0x0

    goto :goto_1

    :cond_19
    return-void
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/G4;Ljava/lang/StringBuilder;)V
    .registers 11

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/G0;->A0A(Lcom/facebook/ads/redexgen/X/Hh;)V

    invoke-static {p0, p2}, Lcom/facebook/ads/redexgen/X/G0;->A03(Lcom/facebook/ads/redexgen/X/Hh;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A01(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    :cond_16
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A01(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p2}, Lcom/facebook/ads/redexgen/X/G0;->A04(Lcom/facebook/ads/redexgen/X/Hh;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    return-void

    :cond_29
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/G0;->A0A(Lcom/facebook/ads/redexgen/X/Hh;)V

    invoke-static {p0, p2}, Lcom/facebook/ads/redexgen/X/G0;->A05(Lcom/facebook/ads/redexgen/X/Hh;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_38

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_38
    return-void

    :cond_39
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v3

    invoke-static {p0, p2}, Lcom/facebook/ads/redexgen/X/G0;->A04(Lcom/facebook/ads/redexgen/X/Hh;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    sget-object v2, Lcom/facebook/ads/redexgen/X/G0;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_f2

    sget-object v2, Lcom/facebook/ads/redexgen/X/G0;->A03:[Ljava/lang/String;

    const-string v1, "4K4C1V7x7MHXc7r"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v1, 0x1

    const/16 v0, 0x14

    invoke-static {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    :goto_6b
    const/16 v2, 0x32

    const/4 v1, 0x5

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/HN;->A02(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/G4;->A0C(I)Lcom/facebook/ads/redexgen/X/G4;

    :cond_81
    :goto_81
    return-void

    :cond_82
    const/16 v2, 0x1e

    const/16 v1, 0x10

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/HN;->A02(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/G4;->A0B(I)Lcom/facebook/ads/redexgen/X/G4;

    goto :goto_81

    :cond_9a
    const/16 v7, 0x76

    sget-object v1, Lcom/facebook/ads/redexgen/X/G0;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_b9

    const/4 v1, 0x1

    const/4 v0, 0x1

    invoke-static {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_174

    :goto_b5
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    goto :goto_6b

    :cond_b9
    sget-object v2, Lcom/facebook/ads/redexgen/X/G0;->A03:[Ljava/lang/String;

    const-string v1, "7FFtYIqbw4CKtyv"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v1, 0x1

    const/4 v0, 0x1

    invoke-static {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_174

    goto :goto_b5

    :cond_cd
    const/16 v2, 0x5d

    const/16 v1, 0xf

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_117

    const/16 v5, 0x6c

    sget-object v2, Lcom/facebook/ads/redexgen/X/G0;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_f8

    :cond_f2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_f8
    sget-object v2, Lcom/facebook/ads/redexgen/X/G0;->A03:[Ljava/lang/String;

    const-string v1, "4EBATBo3G3iJZ8CvpiMB"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "oi6BgvCdqkOJFnhZ1QlM"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/16 v1, 0x9

    const/16 v0, 0x35

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/G4;->A0G(Z)Lcom/facebook/ads/redexgen/X/G4;

    goto/16 :goto_81

    :cond_117
    const/16 v2, 0x37

    const/16 v1, 0xb

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12c

    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/G4;->A0D(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/G4;

    goto/16 :goto_81

    :cond_12c
    const/16 v2, 0x4c

    const/16 v1, 0xb

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_150

    const/16 v2, 0x2e

    const/4 v1, 0x4

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/G4;->A0E(Z)Lcom/facebook/ads/redexgen/X/G4;

    goto/16 :goto_81

    :cond_150
    const/16 v2, 0x42

    const/16 v1, 0xa

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    const/16 v2, 0x57

    const/4 v1, 0x6

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/G4;->A0F(Z)Lcom/facebook/ads/redexgen/X/G4;

    goto/16 :goto_81

    :cond_174
    return-void
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/Hh;)Z
    .registers 8

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A07()I

    move-result v1

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    add-int/lit8 v0, v3, 0x2

    if-gt v0, v1, :cond_3e

    add-int/lit8 v2, v3, 0x1

    aget-byte v0, v6, v3

    const/16 v5, 0x2f

    if-ne v0, v5, :cond_3e

    add-int/lit8 v4, v2, 0x1

    aget-byte v0, v6, v2

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_3e

    :goto_1e
    add-int/lit8 v0, v4, 0x1

    if-ge v0, v1, :cond_34

    add-int/lit8 v2, v4, 0x1

    aget-byte v0, v6, v4

    int-to-char v0, v0

    if-ne v0, v3, :cond_32

    aget-byte v0, v6, v2

    int-to-char v0, v0

    if-ne v0, v5, :cond_32

    add-int/lit8 v1, v2, 0x1

    move v4, v1

    goto :goto_1e

    :cond_32
    move v4, v2

    goto :goto_1e

    :cond_34
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    const/4 v0, 0x1

    return v0

    :cond_3e
    const/4 v0, 0x0

    return v0
.end method

.method public static A0D(Lcom/facebook/ads/redexgen/X/Hh;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/G0;->A00(Lcom/facebook/ads/redexgen/X/Hh;I)C

    move-result v0

    sparse-switch v0, :sswitch_data_12

    const/4 v0, 0x0

    return v0

    :sswitch_d
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    return v0

    :sswitch_data_12
    .sparse-switch
        0x9 -> :sswitch_d
        0xa -> :sswitch_d
        0xc -> :sswitch_d
        0xd -> :sswitch_d
        0x20 -> :sswitch_d
    .end sparse-switch
.end method


# virtual methods
.method public final A0E(Lcom/facebook/ads/redexgen/X/Hh;)Lcom/facebook/ads/redexgen/X/G4;
    .registers 12

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G0;->A01:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v3

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/G0;->A09(Lcom/facebook/ads/redexgen/X/Hh;)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/G0;->A00:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0b([BI)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G0;->A00:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G0;->A00:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G0;->A01:Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A06(Lcom/facebook/ads/redexgen/X/Hh;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    if-eqz v4, :cond_3f

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G0;->A00:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G0;->A01:Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A04(Lcom/facebook/ads/redexgen/X/Hh;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x75

    const/4 v1, 0x1

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    :cond_3f
    return-object v9

    :cond_40
    new-instance v5, Lcom/facebook/ads/redexgen/X/G4;

    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/G4;-><init>()V

    invoke-direct {p0, v5, v4}, Lcom/facebook/ads/redexgen/X/G0;->A08(Lcom/facebook/ads/redexgen/X/G4;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v2, 0x0

    :cond_4a
    :goto_4a
    const/16 v8, 0x76

    const/4 v7, 0x1

    const/4 v4, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/G0;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_61

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_61
    sget-object v3, Lcom/facebook/ads/redexgen/X/G0;->A03:[Ljava/lang/String;

    const-string v1, "u1M5SbGaD18kT3mlqswMZWeIcd6Kf1Bl"

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const-string v1, "tCvfJbvExhfaq7uM8GkpPqKnHxthSgb1"

    const/4 v0, 0x5

    aput-object v1, v3, v0

    invoke-static {v8, v7, v4}, Lcom/facebook/ads/redexgen/X/G0;->A01(III)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_9b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G0;->A00:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G0;->A00:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G0;->A01:Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/G0;->A04(Lcom/facebook/ads/redexgen/X/Hh;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_89

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    :cond_89
    const/4 v2, 0x1

    :goto_8a
    if-nez v2, :cond_4a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G0;->A00:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G0;->A00:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G0;->A01:Ljava/lang/StringBuilder;

    invoke-static {v1, v5, v0}, Lcom/facebook/ads/redexgen/X/G0;->A0B(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/G4;Ljava/lang/StringBuilder;)V

    goto :goto_4a

    :cond_99
    const/4 v2, 0x0

    goto :goto_8a

    :cond_9b
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    move-object v9, v5

    :cond_a2
    return-object v9
.end method
