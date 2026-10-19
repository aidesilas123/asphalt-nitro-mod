###### Class com.facebook.ads.redexgen.X.C1228Nw (com.facebook.ads.redexgen.X.Nw)
.class public final Lcom/facebook/ads/redexgen/X/Nw;
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

    const-string v0, "zHQaRI8Z04iZfuq60cOZ3MtOUQtnyLXk"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Py81lTfXTPvOohagzwztlFMwKgIeaa04"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZBx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ff4Sljy7OS0rEQC0yVPpTgSrr8dBXGgO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "WJ7E7dTZMlxiqC9ofw7stZL7dYzOgEyn"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "lEp0yqe8iFuZgqtiF5MEL7dQIxoaDf7o"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "1LQBU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "K3MGC9Pem9CSlPJADsZARPOkTW1wXgVW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Nw;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Nw;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Nz;Landroid/os/Bundle;Z)Lcom/facebook/ads/redexgen/X/Nv;
    .registers 23

    move-object/from16 v5, p0

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Nz;->A04()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/facebook/ads/redexgen/X/Nt;->A00(Lcom/facebook/ads/redexgen/X/1D;)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Nz;->A04()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/1D;->A0N()Z

    move-result v10

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Nz;->A00()I

    move-result v3

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Nz;->A01()I

    move-result v2

    invoke-static {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Nt;->A06(IID)Z

    move-result v4

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v11

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Nz;->A06()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v12

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x43

    invoke-static {v6, v3, v2}, Lcom/facebook/ads/redexgen/X/Nw;->A01(III)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Nz;->A04()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/1D;->A0F()Lcom/facebook/ads/redexgen/X/1N;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/1N;->A05()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Kc;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Nz;->A04()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/aS;->A0x()Lcom/facebook/ads/redexgen/X/1R;

    move-result-object v16

    invoke-static/range {v11 .. v16}, Lcom/facebook/ads/redexgen/X/0h;->A00(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/1R;)Lcom/facebook/ads/redexgen/X/0g;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Lcom/facebook/ads/redexgen/X/1D;->A0D()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/1G;->A08()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v7, 0x1

    xor-int/2addr v8, v7

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/IP;->A1X(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8b

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/7S;->A0A()Lcom/facebook/ads/redexgen/X/Ir;

    move-result-object v6

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Nz;->A02()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Nz;->A04()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v3, v2, v8}, Lcom/facebook/ads/redexgen/X/Ir;->AGA(Landroid/view/View;Ljava/lang/String;Z)V

    :cond_8b
    invoke-static {v5, v8}, Lcom/facebook/ads/redexgen/X/Nw;->A03(Lcom/facebook/ads/redexgen/X/Nz;Z)Z

    move-result v6

    if-eqz v10, :cond_95

    instance-of v2, v9, Lcom/facebook/ads/redexgen/X/FG;

    if-nez v2, :cond_97

    :cond_95
    if-eqz v6, :cond_ae

    :cond_97
    new-instance v3, Lcom/facebook/ads/redexgen/X/Sl;

    invoke-direct {v3, v5, v6}, Lcom/facebook/ads/redexgen/X/Sl;-><init>(Lcom/facebook/ads/redexgen/X/Nz;Z)V

    :goto_9c
    if-eqz p2, :cond_ad

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Nz;->A04()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v18

    move-wide/from16 v19, v0

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v21}, Lcom/facebook/ads/redexgen/X/Nv;->A0z(Lcom/facebook/ads/redexgen/X/1D;Ljava/lang/String;DLandroid/os/Bundle;)V

    :cond_ad
    return-object v3

    :cond_ae
    if-eqz v8, :cond_b6

    new-instance v3, Lcom/facebook/ads/redexgen/X/9D;

    invoke-direct {v3, v5}, Lcom/facebook/ads/redexgen/X/9D;-><init>(Lcom/facebook/ads/redexgen/X/Nz;)V

    goto :goto_9c

    :cond_b6
    if-nez v8, :cond_c8

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/IP;->A26(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c8

    new-instance v3, Lcom/facebook/ads/redexgen/X/9F;

    invoke-direct {v3, v5, v4}, Lcom/facebook/ads/redexgen/X/9F;-><init>(Lcom/facebook/ads/redexgen/X/Nz;Z)V

    goto :goto_9c

    :cond_c8
    if-eqz v4, :cond_f2

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Nz;->A00()I

    move-result v8

    const/4 v6, 0x2

    sget-object v3, Lcom/facebook/ads/redexgen/X/Nw;->A01:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x3

    if-eq v3, v2, :cond_e1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_e1
    sget-object v4, Lcom/facebook/ads/redexgen/X/Nw;->A01:[Ljava/lang/String;

    const-string v3, "JelR9"

    const/4 v2, 0x6

    aput-object v3, v4, v2

    if-ne v8, v6, :cond_f0

    :goto_ea
    new-instance v3, Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {v3, v5, v7}, Lcom/facebook/ads/redexgen/X/Sx;-><init>(Lcom/facebook/ads/redexgen/X/Nz;Z)V

    goto :goto_9c

    :cond_f0
    const/4 v7, 0x0

    goto :goto_ea

    :cond_f2
    nop

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Nt;->A04(D)Z

    move-result v2

    new-instance v3, Lcom/facebook/ads/redexgen/X/Su;

    invoke-direct {v3, v5, v2}, Lcom/facebook/ads/redexgen/X/Su;-><init>(Lcom/facebook/ads/redexgen/X/Nz;Z)V

    goto :goto_9c
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Nw;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x47

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

    const/16 v0, 0xa4

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Nw;->A00:[B

    return-void

    :array_a
    .array-data 1
        0x8t
        0x61t
        0x5bt
        0x8t
        0x61t
        0x46t
        0x5bt
        0x5ct
        0x49t
        0x46t
        0x5ct
        0x8t
        0x4ft
        0x49t
        0x45t
        0x4dt
        0x5bt
        0x8t
        0x49t
        0x44t
        0x44t
        0x47t
        0x5ft
        0x4dt
        0x4ct
        0x12t
        0x8t
        0x40t
        0x29t
        0x13t
        0x40t
        0x29t
        0xet
        0x13t
        0x14t
        0x1t
        0xet
        0x14t
        0x40t
        0x7t
        0x1t
        0xdt
        0x5t
        0x13t
        0x5at
        0x40t
        0x4dt
        0xat
        0x2t
        0x2t
        0xat
        0x1t
        0x8t
        0x4dt
        0xbt
        0xct
        0x1t
        0x1t
        0xft
        0xct
        0xet
        0x6t
        0x4dt
        0x18t
        0x1ft
        0x1t
        0x4dt
        0xct
        0x1bt
        0xct
        0x4t
        0x1t
        0xct
        0xft
        0x1t
        0x8t
        0x57t
        0x4dt
        0x77t
        0x3et
        0x24t
        0x4t
        0x23t
        0x38t
        0x25t
        0x32t
        0x6dt
        0x77t
        0x7ct
        0x6ct
        0x3at
        0x25t
        0x28t
        0x29t
        0x23t
        0x6ct
        0x39t
        0x3et
        0x20t
        0x6ct
        0x25t
        0x3ft
        0x6ct
        0x22t
        0x39t
        0x20t
        0x20t
        0x76t
        0x6ct
        0x5et
        0x52t
        0x50t
        0x13t
        0x5bt
        0x5ct
        0x5et
        0x58t
        0x5ft
        0x52t
        0x52t
        0x56t
        0x13t
        0x56t
        0x5ct
        0x49t
        0x5ct
        0x53t
        0x5ct
        0x4at
        0x4dt
        0x56t
        0x4bt
        0x5ct
        0x78t
        0x7ft
        0x64t
        0x79t
        0x6et
        0x54t
        0x7et
        0x79t
        0x67t
        0x54t
        0x7ct
        0x6et
        0x69t
        0x54t
        0x6dt
        0x6at
        0x67t
        0x67t
        0x69t
        0x6at
        0x68t
        0x60t
        0x45t
        0x5at
        0x57t
        0x56t
        0x5ct
        0x6ct
        0x46t
        0x41t
        0x5ft
    .end array-data
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/Nz;Z)Z
    .registers 13

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nz;->A04()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0n()Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_d

    if-nez p1, :cond_e

    :cond_d
    return v10

    :cond_e
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nz;->A04()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0F()Lcom/facebook/ads/redexgen/X/1N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1N;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kc;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0S;->A9v()V

    return v10

    :cond_38
    const/16 v2, 0x80

    const/4 v1, 0x5

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nw;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/16 v2, 0x9b

    const/16 v1, 0x9

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nw;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_ba

    const/4 v8, 0x1

    :goto_56
    const/16 v2, 0x85

    const/16 v1, 0x16

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nw;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b8

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nz;->A04()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b8

    const/4 v7, 0x1

    :goto_79
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x6d

    const/16 v1, 0x13

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nw;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nz;->A04()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0o()Z

    move-result v5

    if-eqz v9, :cond_a2

    if-eqz v8, :cond_a2

    if-eqz v7, :cond_a2

    if-eqz v6, :cond_a1

    if-eqz v5, :cond_a2

    :cond_a1
    const/4 v10, 0x1

    :cond_a2
    if-nez v10, :cond_139

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Nw;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_bc

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_b8
    const/4 v7, 0x0

    goto :goto_79

    :cond_ba
    const/4 v8, 0x0

    goto :goto_56

    :cond_bc
    sget-object v2, Lcom/facebook/ads/redexgen/X/Nw;->A01:[Ljava/lang/String;

    const-string v1, "ixVJz4LKAvkUhWpfUwnrm68OXA5reQsq"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "n4hyezKFC81nHjNiPwRfUtRp762j8aVq"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v0, 0x18

    if-lt v3, v0, :cond_139

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4e

    const/16 v1, 0xb

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nw;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x59

    const/16 v1, 0x14

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nw;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x2e

    const/16 v1, 0x20

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nw;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x1b

    const/16 v1, 0x13

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nw;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nw;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/0S;->A9u(Ljava/lang/String;)V

    :cond_139
    return v10
.end method
