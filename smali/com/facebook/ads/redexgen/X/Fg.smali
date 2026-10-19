###### Class com.facebook.ads.redexgen.X.C1011Fg (com.facebook.ads.redexgen.X.Fg)
.class public final Lcom/facebook/ads/redexgen/X/Fg;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:I

.field public static final A03:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "UAa0Z"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "y84zlLC7EVblAi9s6IjzDwtWlv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "hWSmc3nAoC6lO20JdXQ8UQAJh4"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "HAxIJdFwG2BHjJ6kBVBijNmfixc4v4eM"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sMFPtSIIwmEBUNkX5nfAspCddytOxG7k"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "XuEZcwrwjFPAmN9wFCdffjeuCf3K5K0k"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0bJFkLVdjL4ExnLkyIfxNw93FYOhEgu9"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GtmYUKm65Uny9K5bn1TkELKUpeSnjSJ3"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Fg;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fg;->A02()V

    const/16 v2, 0xb

    const/4 v1, 0x4

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Fg;->A03:I

    const/4 v2, 0x7

    const/4 v1, 0x4

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Fg;->A02:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Hh;)I
    .registers 4

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v0

    if-nez v0, :cond_1a

    const/4 p0, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fg;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_24

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1a
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v1

    add-int/2addr v2, v1

    const/16 v0, 0xff

    if-eq v1, v0, :cond_1

    return v2

    :cond_24
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fg;->A01:[Ljava/lang/String;

    const-string v1, "XY7JbweA6fzPXsut6MPl2wkiFN"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "9Cope1RtGoIRUkWui2tRq11YR8"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return p0
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fg;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x37

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .registers 1

    const/16 v0, 0x3c

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fg;->A00:[B

    return-void

    :array_a
    .array-data 1
        0x38t
        0x1et
        0x1at
        0x2et
        0xft
        0x12t
        0x17t
        0x25t
        0x35t
        0x26t
        0x50t
        0x28t
        0x2et
        0x56t
        0x5bt
        0x6ct
        0x54t
        0x56t
        0x4ft
        0x4ft
        0x56t
        0x51t
        0x58t
        0x1ft
        0x4dt
        0x5at
        0x52t
        0x5et
        0x56t
        0x51t
        0x5bt
        0x5at
        0x4dt
        0x1ft
        0x50t
        0x59t
        0x1ft
        0x52t
        0x5et
        0x53t
        0x59t
        0x50t
        0x4dt
        0x52t
        0x5at
        0x5bt
        0x1ft
        0x6ct
        0x7at
        0x76t
        0x1ft
        0x71t
        0x7et
        0x73t
        0x1ft
        0x4at
        0x51t
        0x56t
        0x4bt
        0x11t
    .end array-data
.end method

.method public static A03(JLcom/facebook/ads/redexgen/X/Hh;[Lcom/facebook/ads/redexgen/X/Bm;)V
    .registers 17

    :goto_0
    move-object v4, p2

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v0

    const/4 v8, 0x1

    if-le v0, v8, :cond_c4

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Fg;->A00(Lcom/facebook/ads/redexgen/X/Hh;)I

    move-result v6

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Fg;->A00(Lcom/facebook/ads/redexgen/X/Hh;)I

    move-result v5

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fg;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_29

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_29
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fg;->A01:[Ljava/lang/String;

    const-string v1, "sJRWMhzWyXWsYNwcYdMxu9waYeZJW4nD"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "JDck5DNLGL8VXNpOftdo1S17ghv9bSuy"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    add-int/2addr v3, v5

    const/4 v0, -0x1

    if-eq v5, v0, :cond_3f

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v0

    if-le v5, v0, :cond_5c

    :cond_3f
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fg;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xf

    const/16 v1, 0x2d

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fg;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Hh;->A07()I

    move-result v3

    :cond_58
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    goto :goto_0

    :cond_5c
    const/4 v0, 0x4

    if-ne v6, v0, :cond_58

    const/16 v0, 0x8

    if-lt v5, v0, :cond_58

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v10

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v9

    const/4 v7, 0x0

    const/16 v6, 0x31

    if-ne v9, v6, :cond_74

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Hh;->A08()I

    move-result v7

    :cond_74
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v5

    const/16 v1, 0x2f

    if-ne v9, v1, :cond_7f

    invoke-virtual {v4, v8}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    :cond_7f
    const/16 v0, 0xb5

    const/4 v2, 0x0

    if-ne v10, v0, :cond_c2

    if-eq v9, v6, :cond_88

    if-ne v9, v1, :cond_c2

    :cond_88
    const/4 v0, 0x3

    if-ne v5, v0, :cond_c2

    const/4 v1, 0x1

    :goto_8c
    if-ne v9, v6, :cond_98

    sget v0, Lcom/facebook/ads/redexgen/X/Fg;->A03:I

    if-eq v7, v0, :cond_96

    sget v0, Lcom/facebook/ads/redexgen/X/Fg;->A02:I

    if-ne v7, v0, :cond_c0

    :cond_96
    const/4 v0, 0x1

    :goto_97
    and-int/2addr v1, v0

    :cond_98
    if-eqz v1, :cond_58

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    invoke-virtual {v4, v8}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    mul-int/lit8 v10, v0, 0x3

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v1

    move-object/from16 v5, p3

    array-length v0, v5

    :goto_ac
    if-ge v2, v0, :cond_58

    aget-object v6, v5, v2

    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    invoke-interface {v6, v4, v10}, Lcom/facebook/ads/redexgen/X/Bm;->AEr(Lcom/facebook/ads/redexgen/X/Hh;I)V

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide v7, p0

    invoke-interface/range {v6 .. v12}, Lcom/facebook/ads/redexgen/X/Bm;->AEs(JIIILcom/facebook/ads/redexgen/X/Bl;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_ac

    :cond_c0
    const/4 v0, 0x0

    goto :goto_97

    :cond_c2
    const/4 v1, 0x0

    goto :goto_8c

    :cond_c4
    return-void
.end method
