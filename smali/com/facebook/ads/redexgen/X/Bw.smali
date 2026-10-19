###### Class com.facebook.ads.redexgen.X.C0936Bw (com.facebook.ads.redexgen.X.Bw)
.class public final Lcom/facebook/ads/redexgen/X/Bw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Wo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Track"
.end annotation


# static fields
.field public static A0h:[B

.field public static A0i:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:F

.field public A02:F

.field public A03:F

.field public A04:F

.field public A05:F

.field public A06:F

.field public A07:F

.field public A08:F

.field public A09:F

.field public A0A:I

.field public A0B:I

.field public A0C:I

.field public A0D:I

.field public A0E:I

.field public A0F:I

.field public A0G:I

.field public A0H:I

.field public A0I:I

.field public A0J:I

.field public A0K:I

.field public A0L:I

.field public A0M:I

.field public A0N:I

.field public A0O:I

.field public A0P:I

.field public A0Q:I

.field public A0R:I

.field public A0S:J

.field public A0T:J

.field public A0U:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

.field public A0V:Lcom/facebook/ads/redexgen/X/Bl;

.field public A0W:Lcom/facebook/ads/redexgen/X/Bm;

.field public A0X:Lcom/facebook/ads/redexgen/X/Bx;

.field public A0Y:Ljava/lang/String;

.field public A0Z:Z

.field public A0a:Z

.field public A0b:Z

.field public A0c:Z

.field public A0d:[B

.field public A0e:[B

.field public A0f:[B

.field public A0g:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "IyltKROI0dONAvxCzSFxMMbap986o"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "mujPYAYhkPmTBtOccd1mpeNR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0Po3ACznS97z3RfgrsPeIGcIu3WtX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Uu0n9DuNw1LDS1xbXky22YF4xgkhplY6"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LMa7o3DPVrMB0USQzYMxMUIDtj36p7Zv"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YQocGDdhEprGCVrh1x2f0Ac7ybbPw1BN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "b3mlxzrKdW1g7zcxBPM3qbO1DSwndDSh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Ser"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Bw;->A04()V

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, -0x1

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Bw;->A0R:I

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Bw;->A0J:I

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Bw;->A0I:I

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Bw;->A0G:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Bw;->A0H:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A0e:[B

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Bw;->A0P:I

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Bw;->A0b:Z

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Bw;->A0D:I

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Bw;->A0E:I

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Bw;->A0C:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A0K:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A0L:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A06:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A07:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A04:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A05:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A02:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A03:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A08:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A09:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A00:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A01:F

    const/4 v2, 0x1

    iput v2, p0, Lcom/facebook/ads/redexgen/X/Bw;->A0B:I

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Bw;->A0A:I

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A0O:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A0S:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A0T:J

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Bw;->A0Z:Z

    const/16 v2, 0x364

    const/4 v1, 0x3

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A0g:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Wq;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bw;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Hh;)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Hh;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9d;
        }
    .end annotation

    const/16 v0, 0x10

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0K()J

    move-result-wide v5

    const-wide/32 v1, 0x58564944

    const/4 v4, 0x0

    cmp-long v0, v5, v1

    if-nez v0, :cond_21

    const/16 v2, 0x371

    const/16 v1, 0xa

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_21
    const-wide/32 v1, 0x31435657

    cmp-long v0, v5, v1

    if-nez v0, :cond_7b

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v0

    add-int/lit8 v3, v0, 0x14

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    :goto_30
    array-length v0, v2

    add-int/lit8 v0, v0, -0x4

    if-ge v3, v0, :cond_6b

    aget-byte v0, v2, v3

    if-nez v0, :cond_67

    add-int/lit8 v0, v3, 0x1

    aget-byte v0, v2, v0

    if-nez v0, :cond_67

    add-int/lit8 v0, v3, 0x2

    aget-byte v1, v2, v0

    const/4 v0, 0x1

    if-ne v1, v0, :cond_67

    add-int/lit8 v0, v3, 0x3

    aget-byte v1, v2, v0

    const/16 v0, 0xf

    if-ne v1, v0, :cond_67

    array-length v0, v2

    invoke-static {v2, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/16 v2, 0x3a6

    const/16 v1, 0xa

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6a

    :cond_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :goto_6a
    return-object v0

    :cond_6b
    const/16 v2, 0xee

    const/16 v1, 0x2d

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_7b} :catch_a1

    :cond_7b
    const/16 v2, 0x11b

    const/16 v1, 0x11

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1a3

    const/16 v1, 0x33

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x3b0

    const/16 v1, 0xf

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :catch_a1
    const/16 v2, 0x89

    const/16 v1, 0x21

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/Bw;->A0h:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_9
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_36

    sget-object v2, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const-string v1, "YLAPK4AntFjLAXIjsqe57SorlZ7T8mVd"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_30

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_30
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_36
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Bw;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Bw;->A0g:Ljava/lang/String;

    return-object p1
.end method

.method public static A03([B)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9d;
        }
    .end annotation

    const/16 v2, 0xcc

    const/16 v1, 0x22

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    :try_start_b
    aget-byte v0, p0, v6

    const/4 v5, 0x2

    if-ne v0, v5, :cond_88

    const/4 v1, 0x1

    const/4 v8, 0x0

    :goto_12
    aget-byte v0, p0, v1

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1c

    add-int/lit16 v8, v8, 0xff

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_1c
    add-int/lit8 v9, v1, 0x1

    aget-byte v0, p0, v1
    :try_end_20
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_20} :catch_8e

    add-int/2addr v8, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_35

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_35
    sget-object v2, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const-string v1, "t9W1bu55HCX38CTD9AnwpVMfQcluPXu3"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/4 v7, 0x0

    :goto_3d
    :try_start_3d
    aget-byte v0, p0, v9

    if-ne v0, v4, :cond_46

    add-int/lit16 v7, v7, 0xff

    add-int/lit8 v9, v9, 0x1

    goto :goto_3d

    :cond_46
    add-int/lit8 v4, v9, 0x1

    aget-byte v0, p0, v9

    add-int/2addr v7, v0

    aget-byte v1, p0, v4

    const/4 v0, 0x1

    if-ne v1, v0, :cond_82

    new-array v2, v8, [B

    invoke-static {p0, v4, v2, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v8

    aget-byte v1, p0, v4

    const/4 v0, 0x3

    if-ne v1, v0, :cond_7c

    add-int/2addr v4, v7

    aget-byte v1, p0, v4

    const/4 v0, 0x5

    if-ne v1, v0, :cond_76

    array-length v0, p0

    sub-int/2addr v0, v4

    new-array v1, v0, [B

    array-length v0, p0

    sub-int/2addr v0, v4

    invoke-static {p0, v4, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_76
    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7c
    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_82
    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_88
    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3d .. :try_end_8e} :catch_8e

    :catch_8e
    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A04()V
    .registers 1

    const/16 v0, 0x3e5

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Bw;->A0h:[B

    return-void

    :array_a
    .array-data 1
        0x28t
        0x26t
        0x55t
        0x63t
        0x72t
        0x72t
        0x6ft
        0x68t
        0x61t
        0x26t
        0x6bt
        0x6ft
        0x6bt
        0x63t
        0x52t
        0x7ft
        0x76t
        0x63t
        0x26t
        0x72t
        0x69t
        0x26t
        0x11t
        0xft
        0x11t
        0x11t
        0x13t
        0x40t
        0x5et
        0x40t
        0x42t
        0x32t
        0x67t
        0x79t
        0x62t
        0x72t
        0x75t
        0x52t
        0x4ct
        0x57t
        0x47t
        0x40t
        0x3ct
        0x56t
        0x4bt
        0x43t
        0x41t
        0x56t
        0x40t
        0x40t
        0x38t
        0x26t
        0x3dt
        0x2dt
        0x2at
        0x56t
        0x35t
        0x36t
        0x2at
        0x2at
        0x35t
        0x3ct
        0x2at
        0x2at
        0x12t
        0xct
        0x16t
        0x12t
        0x10t
        0x60t
        0x7dt
        0x63t
        0x7at
        0x70t
        0x7dt
        0x7ft
        0x3bt
        0x25t
        0x37t
        0x2at
        0x3ft
        0x3dt
        0x55t
        0x36t
        0x48t
        0x17t
        0x9t
        0x1bt
        0x6t
        0x13t
        0x11t
        0x79t
        0x1at
        0x65t
        0x43t
        0x5dt
        0x4ft
        0x51t
        0x2dt
        0x43t
        0x41t
        0x4ft
        0x65t
        0x7bt
        0x6bt
        0x74t
        0x71t
        0x77t
        0x53t
        0x4dt
        0x42t
        0x51t
        0x5ft
        0x3dt
        0x5bt
        0x5ct
        0x46t
        0x3dt
        0x5et
        0x5bt
        0x46t
        0x4bt
        0x55t
        0x5et
        0x58t
        0x5ft
        0x4ft
        0x42t
        0x4et
        0x11t
        0xft
        0x6t
        0x1ft
        0x2t
        0x12t
        0x19t
        0x3t
        0x43t
        0x74t
        0x74t
        0x69t
        0x74t
        0x26t
        0x76t
        0x67t
        0x74t
        0x75t
        0x6ft
        0x68t
        0x61t
        0x26t
        0x40t
        0x69t
        0x73t
        0x74t
        0x45t
        0x45t
        0x26t
        0x76t
        0x74t
        0x6ft
        0x70t
        0x67t
        0x72t
        0x63t
        0x26t
        0x62t
        0x67t
        0x72t
        0x67t
        0x5dt
        0x6at
        0x6at
        0x77t
        0x6at
        0x38t
        0x68t
        0x79t
        0x6at
        0x6bt
        0x71t
        0x76t
        0x7ft
        0x38t
        0x55t
        0x4bt
        0x37t
        0x59t
        0x5bt
        0x55t
        0x38t
        0x7bt
        0x77t
        0x7ct
        0x7dt
        0x7bt
        0x38t
        0x68t
        0x6at
        0x71t
        0x6et
        0x79t
        0x6ct
        0x7dt
        0x75t
        0x42t
        0x42t
        0x5ft
        0x42t
        0x10t
        0x40t
        0x51t
        0x42t
        0x43t
        0x59t
        0x5et
        0x57t
        0x10t
        0x46t
        0x5ft
        0x42t
        0x52t
        0x59t
        0x43t
        0x10t
        0x53t
        0x5ft
        0x54t
        0x55t
        0x53t
        0x10t
        0x40t
        0x42t
        0x59t
        0x46t
        0x51t
        0x44t
        0x55t
        0x15t
        0x32t
        0x3at
        0x3ft
        0x36t
        0x37t
        0x73t
        0x27t
        0x3ct
        0x73t
        0x35t
        0x3at
        0x3dt
        0x37t
        0x73t
        0x15t
        0x3ct
        0x26t
        0x21t
        0x10t
        0x10t
        0x73t
        0x5t
        0x10t
        0x62t
        0x73t
        0x3at
        0x3dt
        0x3at
        0x27t
        0x3at
        0x32t
        0x3ft
        0x3at
        0x29t
        0x32t
        0x27t
        0x3at
        0x3ct
        0x3dt
        0x73t
        0x37t
        0x32t
        0x27t
        0x32t
        0x45t
        0x69t
        0x7ct
        0x7at
        0x67t
        0x7bt
        0x63t
        0x69t
        0x4dt
        0x70t
        0x7ct
        0x7at
        0x69t
        0x6bt
        0x7ct
        0x67t
        0x7at
        0x0t
        0x21t
        0x20t
        0x63t
        0x1et
        0xdt
        0x3t
        0x6et
        0x3t
        0x1dt
        0x61t
        0xft
        0xdt
        0x3t
        0x6et
        0x27t
        0x3dt
        0x6et
        0x3bt
        0x20t
        0x3dt
        0x3bt
        0x3et
        0x3et
        0x21t
        0x3ct
        0x3at
        0x2bt
        0x2at
        0x60t
        0x6et
        0x1dt
        0x2bt
        0x3at
        0x3at
        0x27t
        0x20t
        0x29t
        0x6et
        0x23t
        0x27t
        0x23t
        0x2bt
        0x1at
        0x37t
        0x3et
        0x2bt
        0x6et
        0x3at
        0x21t
        0x6et
        0x7et
        0x72t
        0x69t
        0x7bt
        0x6ft
        0x7et
        0x78t
        0x6ft
        0x2et
        0x22t
        0x35t
        0x39t
        0x30t
        0x2bt
        0x52t
        0x2dt
        0x3at
        0x2et
        0x52t
        0x5et
        0x55t
        0x44t
        0x59t
        0x55t
        0x2et
        0x40t
        0x52t
        0x52t
        0x30t
        0x3ct
        0x37t
        0x26t
        0x3bt
        0x37t
        0x4ct
        0x36t
        0x37t
        0x25t
        0x5bt
        0x12t
        0x1et
        0x17t
        0xet
        0x3t
        0x12t
        0x14t
        0x3t
        0x35t
        0xet
        0x5t
        0x18t
        0x10t
        0x5t
        0x3t
        0x14t
        0x5t
        0x4t
        0x40t
        0x2dt
        0x29t
        0x2dt
        0x25t
        0x40t
        0x14t
        0x19t
        0x10t
        0x5t
        0x4et
        0x70t
        0x4bt
        0x4et
        0x4bt
        0x4at
        0x52t
        0x4bt
        0x5t
        0x63t
        0x4at
        0x50t
        0x57t
        0x66t
        0x66t
        0xbt
        0x5t
        0x76t
        0x40t
        0x51t
        0x51t
        0x4ct
        0x4bt
        0x42t
        0x5t
        0x48t
        0x4ct
        0x48t
        0x40t
        0x71t
        0x5ct
        0x55t
        0x40t
        0x5t
        0x51t
        0x4at
        0x5t
        0x53t
        0x4ct
        0x41t
        0x40t
        0x4at
        0xat
        0x5dt
        0x8t
        0x50t
        0x4bt
        0x4et
        0x4bt
        0x4at
        0x52t
        0x4bt
        0x13t
        0x28t
        0x34t
        0x23t
        0x25t
        0x29t
        0x21t
        0x28t
        0x2ft
        0x3ct
        0x23t
        0x22t
        0x66t
        0x25t
        0x29t
        0x22t
        0x23t
        0x25t
        0x66t
        0x2ft
        0x22t
        0x23t
        0x28t
        0x32t
        0x2ft
        0x20t
        0x2ft
        0x23t
        0x34t
        0x68t
        0x78t
        0x43t
        0x5et
        0x58t
        0x5dt
        0x5dt
        0x42t
        0x5ft
        0x59t
        0x48t
        0x49t
        0xdt
        0x7dt
        0x6et
        0x60t
        0xdt
        0x4ft
        0x44t
        0x59t
        0xdt
        0x49t
        0x48t
        0x5dt
        0x59t
        0x45t
        0x17t
        0xdt
        0x22t
        0x2bt
        0x39t
        0x24t
        0x31t
        0x33t
        0x46t
        0x3ct
        0x35t
        0x27t
        0x3at
        0x2ft
        0x2dt
        0x5et
        0x45t
        0x23t
        0x39t
        0x25t
        0x45t
        0x2bt
        0x3at
        0x2ft
        0x26t
        0x34t
        0x29t
        0x3ct
        0x3et
        0x4dt
        0x56t
        0x30t
        0x2at
        0x36t
        0x56t
        0x38t
        0x2at
        0x29t
        0x74t
        0x7dt
        0x6ft
        0x72t
        0x67t
        0x65t
        0x16t
        0xdt
        0x6bt
        0x71t
        0x6dt
        0xdt
        0x63t
        0x74t
        0x61t
        0x66t
        0x6ft
        0x7dt
        0x60t
        0x75t
        0x77t
        0x4t
        0x1ft
        0x79t
        0x63t
        0x7ft
        0x1ft
        0x63t
        0x60t
        0x6ct
        0x65t
        0x77t
        0x6at
        0x7ft
        0x7dt
        0x72t
        0x15t
        0x73t
        0x69t
        0x75t
        0x15t
        0x72t
        0x7ft
        0x6ct
        0x79t
        0x7bt
        0x72t
        0x60t
        0x7et
        0x2t
        0x7bt
        0x6bt
        0x7at
        0x2t
        0x6bt
        0x62t
        0x78t
        0x7ft
        0x6et
        0x6et
        0x5et
        0x57t
        0x5ct
        0x40t
        0x4dt
        0x47t
        0x5at
        0x49t
        0xet
        0x7t
        0xet
        0x8t
        0x60t
        0x6dt
        0x64t
        0x6dt
        0x6bt
        0x2t
        0x59t
        0x48t
        0x48t
        0x54t
        0x51t
        0x5bt
        0x59t
        0x4ct
        0x51t
        0x57t
        0x56t
        0x17t
        0x5ct
        0x4et
        0x5at
        0x4bt
        0x4dt
        0x5at
        0x4bt
        0x7ct
        0x6dt
        0x6dt
        0x71t
        0x74t
        0x7et
        0x7ct
        0x69t
        0x74t
        0x72t
        0x73t
        0x32t
        0x6dt
        0x7at
        0x6et
        0x1ft
        0xet
        0xet
        0x12t
        0x17t
        0x1dt
        0x1ft
        0xat
        0x17t
        0x11t
        0x10t
        0x51t
        0x8t
        0x11t
        0x1ct
        0xdt
        0xbt
        0x1ct
        0x10t
        0x1t
        0x1t
        0x1dt
        0x18t
        0x12t
        0x10t
        0x5t
        0x18t
        0x1et
        0x1ft
        0x5et
        0x9t
        0x5ct
        0x2t
        0x4t
        0x13t
        0x3t
        0x18t
        0x1t
        0x73t
        0x67t
        0x76t
        0x7bt
        0x7dt
        0x3dt
        0x73t
        0x71t
        0x21t
        0x17t
        0x3t
        0x12t
        0x1ft
        0x19t
        0x59t
        0x13t
        0x17t
        0x15t
        0x45t
        0x53t
        0x47t
        0x56t
        0x5bt
        0x5dt
        0x1dt
        0x54t
        0x5et
        0x53t
        0x51t
        0x76t
        0x62t
        0x73t
        0x7et
        0x78t
        0x38t
        0x7at
        0x67t
        0x23t
        0x76t
        0x3at
        0x7bt
        0x76t
        0x63t
        0x7at
        0x12t
        0x6t
        0x17t
        0x1at
        0x1ct
        0x5ct
        0x1et
        0x3t
        0x16t
        0x14t
        0x46t
        0x52t
        0x43t
        0x4et
        0x48t
        0x8t
        0x4at
        0x57t
        0x42t
        0x40t
        0xat
        0x6bt
        0x15t
        0x44t
        0x50t
        0x41t
        0x4ct
        0x4at
        0xat
        0x4at
        0x55t
        0x50t
        0x56t
        0x25t
        0x31t
        0x20t
        0x2dt
        0x2bt
        0x6bt
        0x36t
        0x25t
        0x33t
        0x22t
        0x36t
        0x27t
        0x2at
        0x2ct
        0x6ct
        0x37t
        0x31t
        0x36t
        0x26t
        0x6et
        0x2bt
        0x27t
        0x3t
        0x17t
        0x6t
        0xbt
        0xdt
        0x4dt
        0x14t
        0xct
        0x6t
        0x4ct
        0x6t
        0x16t
        0x11t
        0x7bt
        0x6ft
        0x7et
        0x73t
        0x75t
        0x35t
        0x6ct
        0x74t
        0x7et
        0x34t
        0x7et
        0x6et
        0x69t
        0x34t
        0x72t
        0x7et
        0x78t
        0x6ct
        0x7dt
        0x70t
        0x76t
        0x36t
        0x6ft
        0x76t
        0x6bt
        0x7bt
        0x70t
        0x6at
        0x65t
        0x71t
        0x60t
        0x6dt
        0x6bt
        0x2bt
        0x7ct
        0x29t
        0x71t
        0x6at
        0x6ft
        0x6at
        0x6bt
        0x73t
        0x6at
        0x5t
        0xet
        0x7t
        0x7dt
        0x6ct
        0x71t
        0x7dt
        0x26t
        0x71t
        0x24t
        0x7at
        0x7at
        0x68t
        0x4dt
        0x52t
        0x5ft
        0x5et
        0x54t
        0x14t
        0x8t
        0x5ct
        0x4bt
        0x4bt
        0x16t
        0x9t
        0x4t
        0x5t
        0xft
        0x4ft
        0x1t
        0x16t
        0x3t
        0x79t
        0x66t
        0x6bt
        0x6at
        0x60t
        0x20t
        0x67t
        0x6at
        0x79t
        0x6ct
        0x68t
        0x77t
        0x7at
        0x7bt
        0x71t
        0x31t
        0x73t
        0x6et
        0x2at
        0x68t
        0x33t
        0x7bt
        0x6dt
        0x67t
        0x78t
        0x75t
        0x74t
        0x7et
        0x3et
        0x7ct
        0x61t
        0x74t
        0x76t
        0x23t
        0x1t
        0x1et
        0x13t
        0x12t
        0x18t
        0x58t
        0x0t
        0x1t
        0x14t
        0x46t
        0x1bt
        0x4t
        0x9t
        0x8t
        0x2t
        0x42t
        0x15t
        0x40t
        0x18t
        0x3t
        0x6t
        0x3t
        0x2t
        0x1at
        0x3t
        0x45t
        0x5at
        0x57t
        0x56t
        0x5ct
        0x1ct
        0x4bt
        0x1et
        0x45t
        0x5dt
        0x57t
        0x1dt
        0x5ct
        0x5dt
        0x1t
        0x1dt
        0x45t
        0x43t
        0xbt
        0x6dt
        0x72t
        0x7ft
        0x7et
        0x74t
        0x34t
        0x63t
        0x36t
        0x6dt
        0x75t
        0x7ft
        0x35t
        0x74t
        0x75t
        0x29t
        0x35t
        0x6dt
        0x6bt
        0x22t
    .end array-data
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/Hh;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9d;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0C()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_8

    return v5

    :cond_8
    const v1, 0xfffe

    const/4 v0, 0x0

    if-ne v2, v1, :cond_50

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0L()J

    move-result-wide v6

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wo;->A04()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J
    :try_end_1e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_1e} :catch_51

    move-result-wide v0

    cmp-long v3, v6, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_34

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_34
    sget-object v2, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const-string v1, "mXDtn5ZrlLpOkU84k9DC3Hi3Pcorcpog"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v3, :cond_4e

    :try_start_3d
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0L()J

    move-result-wide v3

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wo;->A04()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-nez v0, :cond_4e

    goto :goto_4f

    :cond_4e
    const/4 v5, 0x0

    :goto_4f
    return v5

    :cond_50
    return v0
    :try_end_51
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3d .. :try_end_51} :catch_51

    :catch_51
    const/16 v2, 0xaa

    const/16 v1, 0x22

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A06()[B
    .registers 6

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A06:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_71

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A07:F

    cmpl-float v3, v0, v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_ec

    sget-object v2, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const-string v1, "PBvrZHKgmU2uAVRQDCT9n0bIRHOqM"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "guZt3O6voa6ads6nTVRQaZ05"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_71

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A04:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_71

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A05:F

    cmpl-float v3, v0, v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_73

    sget-object v2, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const-string v1, "PayVPjYQSmFvrGG0qfp7CT6HXa6Ad"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "9Xa9tASZMquPJJBB3AwdoWSz"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_71

    :goto_4d
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A02:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_71

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A03:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_71

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A08:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_71

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A09:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_71

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A00:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_71

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A01:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_76

    :cond_71
    const/4 v0, 0x0

    return-object v0

    :cond_73
    if-eqz v3, :cond_71

    goto :goto_4d

    :cond_76
    const/16 v0, 0x19

    new-array v2, v0, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A06:F

    const v4, 0x47435000    # 50000.0f

    mul-float/2addr v0, v4

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A07:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A04:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A05:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A02:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A03:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A08:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A09:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A00:F

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A01:F

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A0K:I

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A0L:I

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-object v2

    :cond_ec
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A07()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A0X:Lcom/facebook/ads/redexgen/X/Bx;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Bx;->A02(Lcom/facebook/ads/redexgen/X/Bw;)V

    :cond_7
    return-void
.end method

.method public final A08()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bw;->A0X:Lcom/facebook/ads/redexgen/X/Bx;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bx;->A00()V

    :cond_7
    return-void
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/Bc;I)V
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9d;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v18, -0x1

    const/16 v21, -0x1

    const/4 v1, 0x0

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0Y:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v10, 0x4

    const/4 v14, 0x1

    const/16 v13, 0x8

    const/4 v12, 0x0

    const/4 v4, 0x3

    const/4 v6, 0x2

    const/4 v7, -0x1

    sparse-switch v2, :sswitch_data_7c4

    :cond_18
    const/4 v11, -0x1

    :goto_19
    const/4 v5, 0x0

    const/16 v3, 0x16

    const/16 v2, 0xe

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v8

    const/16 v5, 0x1f4

    const/16 v3, 0x1b

    const/16 v2, 0x25

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v9

    const/16 v5, 0x11b

    const/16 v3, 0x11

    const/4 v2, 0x0

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v5

    packed-switch v11, :pswitch_data_83a

    const/16 v2, 0x1d6

    const/16 v1, 0x1e

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_48
    const/16 v5, 0x216

    const/16 v3, 0xe

    const/16 v2, 0x62

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v11, 0x5

    goto :goto_19

    :sswitch_5a
    const/16 v5, 0x242

    const/16 v3, 0xe

    const/16 v2, 0x38

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v11, 0x3

    goto :goto_19

    :sswitch_6c
    const/16 v5, 0x5e

    const/16 v3, 0x8

    const/16 v2, 0xa

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v11, 0x16

    goto :goto_19

    :sswitch_7f
    const/16 v5, 0x79

    const/16 v3, 0x8

    const/4 v2, 0x2

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v11, 0x11

    goto :goto_19

    :sswitch_91
    const/16 v5, 0x81

    const/16 v3, 0x8

    const/16 v2, 0x58

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v11, 0xa

    goto/16 :goto_19

    :sswitch_a5
    const/16 v5, 0x4c

    const/16 v3, 0x9

    const/16 v2, 0x72

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v11, 0xd

    goto/16 :goto_19

    :sswitch_b9
    const/16 v11, 0x55

    const/16 v8, 0x9

    sget-object v3, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v3, v3, v2

    const/16 v2, 0xb

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x62

    if-eq v3, v2, :cond_5ef

    sget-object v5, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const-string v3, "lj2708m8DSZ56OFNAm0jUDGm9wwmbf0x"

    const/4 v2, 0x4

    aput-object v3, v5, v2

    const/16 v2, 0x5e

    invoke-static {v11, v8, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v11, 0xe

    goto/16 :goto_19

    :sswitch_e3
    const/16 v5, 0x260

    const/16 v3, 0xf

    const/16 v2, 0x25

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v11, 0x8

    goto/16 :goto_19

    :sswitch_f7
    const/16 v5, 0x15f

    const/16 v3, 0x8

    const/16 v2, 0x25

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v11, 0x1c

    goto/16 :goto_19

    :sswitch_10b
    const/16 v5, 0x224

    const/16 v3, 0xf

    const/16 v2, 0x71

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v11, 0x4

    goto/16 :goto_19

    :sswitch_11e
    const/16 v5, 0x233

    const/16 v3, 0xf

    const/16 v2, 0x2a

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v11, 0x6

    goto/16 :goto_19

    :sswitch_131
    const/16 v8, 0x186

    sget-object v3, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v2, 0x1d

    if-eq v3, v2, :cond_158

    sget-object v5, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const-string v3, "vEE"

    const/4 v2, 0x7

    aput-object v3, v5, v2

    const/4 v3, 0x4

    const/16 v2, 0x2b

    invoke-static {v8, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    :goto_154
    const/16 v11, 0x1a

    goto/16 :goto_19

    :cond_158
    sget-object v5, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const-string v3, "SYIYHMyih1uemhdUYVzoThHC3QoTm"

    const/4 v2, 0x0

    aput-object v3, v5, v2

    const/16 v3, 0x8

    const/16 v2, 0x49

    invoke-static {v8, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_154

    :sswitch_16e
    const/16 v5, 0x32

    const/16 v3, 0xe

    const/16 v2, 0x71

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v11, 0x14

    goto/16 :goto_19

    :sswitch_182
    const/16 v5, 0x16

    const/4 v3, 0x5

    const/16 v2, 0x58

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v11, 0xc

    goto/16 :goto_19

    :sswitch_195
    const/16 v5, 0x1b

    const/4 v3, 0x5

    const/16 v2, 0x9

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v11, 0xf

    goto/16 :goto_19

    :sswitch_1a8
    const/16 v5, 0x20

    const/4 v3, 0x5

    const/16 v2, 0x2e

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v11, 0x12

    goto/16 :goto_19

    :sswitch_1bb
    const/16 v8, 0x277

    sget-object v3, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v3, v3, v2

    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x71

    if-eq v3, v2, :cond_5f5

    sget-object v5, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const-string v3, "CR6OK91rhuXJFTQTLvIAM6wWnIpoxm4Q"

    const/4 v2, 0x3

    aput-object v3, v5, v2

    const/4 v3, 0x5

    const/16 v2, 0x50

    invoke-static {v8, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v11, 0x0

    goto/16 :goto_19

    :sswitch_1e2
    const/16 v5, 0x27c

    const/4 v3, 0x5

    const/16 v2, 0x33

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v11, 0x1

    goto/16 :goto_19

    :sswitch_1f4
    const/16 v5, 0x167

    const/16 v3, 0xa

    const/16 v2, 0x75

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v11, 0x1b

    goto/16 :goto_19

    :sswitch_208
    const/16 v5, 0x26f

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v11, 0x9

    goto/16 :goto_19

    :sswitch_21b
    const/16 v5, 0x25

    const/16 v3, 0xd

    const/16 v2, 0x1b

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v11, 0x13

    goto/16 :goto_19

    :sswitch_22f
    const/16 v5, 0x6c

    const/16 v3, 0xd

    const/16 v2, 0x1a

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v11, 0x17

    goto/16 :goto_19

    :sswitch_243
    const/16 v5, 0x171

    const/16 v3, 0xa

    const/16 v2, 0x9

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v11, 0x19

    goto/16 :goto_19

    :sswitch_257
    const/16 v5, 0x250

    const/16 v3, 0x10

    const/16 v2, 0x32

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v11, 0x7

    goto/16 :goto_19

    :sswitch_26a
    const/16 v8, 0x17b

    const/16 v5, 0xb

    sget-object v3, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v3, v3, v2

    const/16 v2, 0xb

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x62

    if-eq v3, v2, :cond_294

    sget-object v11, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const-string v3, "cIcBxRlZY0ZXlCQFScV8XwSctWW1h0n"

    const/4 v2, 0x7

    aput-object v3, v11, v2

    const/16 v2, 0x6b

    invoke-static {v8, v5, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    :goto_290
    const/16 v11, 0x18

    goto/16 :goto_19

    :cond_294
    const/16 v2, 0x6b

    invoke-static {v8, v5, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_290

    :sswitch_2a1
    const/16 v5, 0x20f

    const/4 v3, 0x7

    const/16 v2, 0x7c

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    sget-object v3, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x6

    if-eq v3, v2, :cond_60b

    sget-object v5, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const-string v3, "RAsWyGWBf1DxyJ7dKVHy7J0fVhRQMjXs"

    const/4 v2, 0x6

    aput-object v3, v5, v2

    if-eqz v8, :cond_18

    const/4 v11, 0x2

    goto/16 :goto_19

    :sswitch_2c6
    const/16 v5, 0x40

    const/4 v3, 0x6

    const/16 v2, 0x5b

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v11, 0x10

    goto/16 :goto_19

    :sswitch_2d9
    const/16 v5, 0x46

    const/4 v3, 0x6

    const/16 v2, 0x34

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v11, 0x15

    goto/16 :goto_19

    :sswitch_2ec
    const/16 v11, 0x66

    const/4 v8, 0x6

    sget-object v3, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v3, v3, v2

    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x71

    if-eq v3, v2, :cond_60b

    sget-object v5, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const-string v3, "kB7v"

    const/4 v2, 0x7

    aput-object v3, v5, v2

    const/16 v2, 0x2c

    invoke-static {v11, v8, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v11, 0xb

    goto/16 :goto_19

    :pswitch_314
    const/16 v4, 0x3bf

    const/16 v3, 0x13

    const/16 v2, 0x3b

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_630

    :pswitch_320
    const/16 v5, 0x2c9

    sget-object v3, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v3, v3, v2

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x59

    if-eq v3, v2, :cond_332

    goto/16 :goto_60b

    :cond_332
    sget-object v4, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const-string v3, "iZ8QYO25r6JUPRGVOXd5T3qTeuzu4kjq"

    const/4 v2, 0x3

    aput-object v3, v4, v2

    const/16 v3, 0x9

    const/16 v2, 0x1a

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_630

    :pswitch_343
    const/16 v4, 0x3d2

    const/16 v3, 0x13

    const/16 v2, 0x13

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_630

    :pswitch_34f
    const/16 v4, 0x39b

    const/16 v3, 0xb

    const/16 v2, 0x19

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_630

    :pswitch_35b
    const/16 v3, 0x38e

    const/16 v2, 0xd

    const/16 v1, 0x16

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v15

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0d:[B

    if-nez v1, :cond_36c

    const/4 v1, 0x0

    goto/16 :goto_630

    :cond_36c
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_630

    :pswitch_372
    const/16 v3, 0x37b

    const/16 v2, 0x9

    const/16 v1, 0x68

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v15

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0d:[B

    new-instance v1, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/Hh;-><init>([B)V

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Hz;->A00(Lcom/facebook/ads/redexgen/X/Hh;)Lcom/facebook/ads/redexgen/X/Hz;

    move-result-object v2

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Hz;->A04:Ljava/util/List;

    iget v2, v2, Lcom/facebook/ads/redexgen/X/Hz;->A02:I

    iput v2, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0M:I

    goto/16 :goto_630

    :pswitch_38f
    const/16 v3, 0x384

    const/16 v2, 0xa

    const/4 v1, 0x7

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v15

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0d:[B

    new-instance v1, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/Hh;-><init>([B)V

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/I5;->A00(Lcom/facebook/ads/redexgen/X/Hh;)Lcom/facebook/ads/redexgen/X/I5;

    move-result-object v2

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/I5;->A01:Ljava/util/List;

    iget v2, v2, Lcom/facebook/ads/redexgen/X/I5;->A00:I

    iput v2, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0M:I

    goto/16 :goto_630

    :pswitch_3ab
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0d:[B

    new-instance v1, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/Hh;-><init>([B)V

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Bw;->A00(Lcom/facebook/ads/redexgen/X/Hh;)Landroid/util/Pair;

    move-result-object v1

    iget-object v15, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    goto/16 :goto_630

    :pswitch_3c0
    const/16 v4, 0x3b0

    const/16 v3, 0xf

    const/16 v2, 0x65

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_630

    :pswitch_3cc
    const/16 v3, 0x349

    const/16 v2, 0xc

    const/16 v1, 0x11

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x2000

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0d:[B

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Bw;->A03([B)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_630

    :pswitch_3e0
    const/16 v3, 0x30c

    const/16 v2, 0xa

    const/16 v1, 0x2d

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x1680

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0d:[B

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0S:J

    invoke-virtual {v4, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0T:J

    invoke-virtual {v4, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_630

    :pswitch_42a
    const/16 v3, 0x2e6

    const/16 v2, 0xf

    const/16 v1, 0x1f

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v15

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0d:[B

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_630

    :pswitch_43c
    const/16 v4, 0x2ff

    const/16 v3, 0xd

    const/16 v2, 0x2f

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x1000

    goto/16 :goto_630

    :pswitch_44a
    const/16 v4, 0x2f5

    const/16 v3, 0xa

    const/16 v2, 0x7b

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x1000

    goto/16 :goto_630

    :pswitch_458
    const/16 v4, 0x2d2

    const/16 v3, 0xa

    const/16 v2, 0x7e

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_630

    :pswitch_464
    const/16 v4, 0x31f

    const/16 v3, 0xd

    const/16 v2, 0x4b

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v15

    new-instance v2, Lcom/facebook/ads/redexgen/X/Bx;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Bx;-><init>()V

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0X:Lcom/facebook/ads/redexgen/X/Bx;

    goto/16 :goto_630

    :pswitch_477
    const/16 v4, 0x32c

    const/16 v3, 0xd

    const/16 v2, 0x6a

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_630

    :pswitch_483
    const/16 v4, 0x339

    const/16 v3, 0x10

    const/16 v2, 0x12

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_630

    :pswitch_48f
    const/16 v3, 0x2dc

    const/16 v2, 0xa

    const/16 v1, 0x3a

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v15

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0d:[B

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_630

    :pswitch_4a1
    const/16 v4, 0x316

    const/16 v3, 0x9

    const/16 v2, 0x4c

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v15

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0d:[B

    new-instance v2, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/Hh;-><init>([B)V

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Bw;->A05(Lcom/facebook/ads/redexgen/X/Hh;)Z

    move-result v2

    if-eqz v2, :cond_4ec

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0A:I

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Hx;->A02(I)I

    move-result v21

    if-nez v21, :cond_630

    const/16 v21, -0x1

    const/16 v4, 0x355

    const/16 v3, 0xf

    const/16 v2, 0xc

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0A:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_630

    :cond_4ec
    const/16 v4, 0x355

    const/16 v3, 0xf

    const/16 v2, 0xc

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v15

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x12c

    const/16 v3, 0x33

    const/16 v2, 0x46

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_630

    :pswitch_516
    const/16 v10, 0x316

    sget-object v4, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v3, v4, v2

    const/4 v2, 0x1

    aget-object v2, v4, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v3, v2, :cond_60b

    sget-object v4, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const-string v3, "PcKXgKJMrE0EF0ui34S9skmZKXpAY"

    const/4 v2, 0x2

    aput-object v3, v4, v2

    const-string v3, "4niV5JPgSsnw063OyTYwUk1r"

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const/16 v3, 0x9

    const/16 v2, 0x4c

    invoke-static {v10, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v15

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0A:I

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Hx;->A02(I)I

    move-result v21

    if-nez v21, :cond_630

    const/16 v21, -0x1

    const/16 v4, 0x355

    const/16 v3, 0xf

    const/16 v2, 0xc

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0A:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_630

    :pswitch_572
    const/16 v4, 0x367

    const/16 v3, 0xa

    const/4 v2, 0x1

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_630

    :pswitch_57d
    const/16 v5, 0x2a3

    const/16 v4, 0x12

    sget-object v2, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v1, 0x1d

    if-eq v2, v1, :cond_59c

    const/16 v1, 0x76

    invoke-static {v5, v4, v1}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v15

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0d:[B

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_630

    :cond_59c
    sget-object v3, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const-string v2, "fmAyRSVdkjoNrGYEoG3Cti1PUgoWyz8h"

    const/4 v1, 0x6

    aput-object v2, v3, v1

    const/16 v1, 0x76

    invoke-static {v5, v4, v1}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v15

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0d:[B

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_630

    :pswitch_5b1
    const/16 v3, 0x281

    const/16 v2, 0x13

    const/16 v1, 0x30

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v15

    new-array v5, v10, [B

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0d:[B

    aget-byte v9, v8, v12

    sget-object v2, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v2, v2, v1

    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v1, 0x37

    if-eq v2, v1, :cond_5d5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5d5
    sget-object v3, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const-string v2, "sOfSbesm0PbPbqVT5BsGKjKG3tk0k"

    const/4 v1, 0x0

    aput-object v2, v3, v1

    aput-byte v9, v5, v12

    aget-byte v1, v8, v14

    aput-byte v1, v5, v14

    aget-byte v1, v8, v6

    aput-byte v1, v5, v6

    aget-byte v1, v8, v4

    aput-byte v1, v5, v4

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_630

    :cond_5ef
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5f5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_5fb
    const/16 v5, 0x2b5

    sget-object v3, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v3, v3, v2

    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x37

    if-eq v3, v2, :cond_611

    :cond_60b
    :goto_60b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_611
    sget-object v4, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const-string v3, "YrV7AYYVUuIGHlrep1MFkKEac4GcK"

    const/4 v2, 0x2

    aput-object v3, v4, v2

    const-string v3, "hVYXMp0QEXRLS2KOMMiKtBhe"

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const/16 v3, 0x14

    const/16 v2, 0x79

    invoke-static {v5, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v15

    goto :goto_630

    :pswitch_626
    const/16 v4, 0x294

    const/16 v3, 0xf

    const/16 v2, 0x15

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v15

    :cond_630
    :goto_630
    const/4 v2, 0x0

    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0Z:Z

    or-int/2addr v2, v3

    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0a:Z

    if-eqz v3, :cond_639

    const/4 v12, 0x2

    :cond_639
    or-int/2addr v2, v12

    invoke-static {v15}, Lcom/facebook/ads/redexgen/X/Ha;->A09(Ljava/lang/String;)Z

    move-result v8

    sget-object v4, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v4, v4, v3

    const/4 v3, 0x3

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x37

    if-eq v4, v3, :cond_67d

    if-eqz v8, :cond_687

    :goto_64e
    const/4 v3, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, -0x1

    iget v7, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0B:I

    iget v6, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0O:I

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0U:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0g:Ljava/lang/String;

    move/from16 v19, v7

    move/from16 v20, v6

    move-object/from16 v22, v1

    move-object/from16 v23, v5

    move/from16 v24, v2

    move-object/from16 v25, v4

    invoke-static/range {v14 .. v25}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A06(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v2

    :goto_66f
    iget v1, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0N:I

    move-object/from16 v4, p1

    invoke-interface {v4, v1, v3}, Lcom/facebook/ads/redexgen/X/Bc;->AFx(II)Lcom/facebook/ads/redexgen/X/Bm;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0W:Lcom/facebook/ads/redexgen/X/Bm;

    invoke-interface {v1, v2}, Lcom/facebook/ads/redexgen/X/Bm;->A5j(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    return-void

    :cond_67d
    sget-object v5, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const-string v4, "jgOXx9yokJPZZVWSEVwKVRclJFc802JP"

    const/4 v3, 0x6

    aput-object v4, v5, v3

    if-eqz v8, :cond_687

    goto :goto_64e

    :cond_687
    invoke-static {v15}, Lcom/facebook/ads/redexgen/X/Ha;->A0B(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6f5

    const/4 v3, 0x2

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0H:I

    if-nez v2, :cond_6a2

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0I:I

    if-ne v2, v7, :cond_698

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0R:I

    :cond_698
    iput v2, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0I:I

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0G:I

    if-ne v2, v7, :cond_6a0

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0J:I

    :cond_6a0
    iput v2, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0G:I

    :cond_6a2
    const/high16 v8, -0x40800000    # -1.0f

    iget v5, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0I:I

    if-eq v5, v7, :cond_6b5

    iget v4, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0G:I

    if-eq v4, v7, :cond_6b5

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0J:I

    mul-int/2addr v2, v5

    int-to-float v8, v2

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0R:I

    mul-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v8, v2

    :cond_6b5
    const/4 v7, 0x0

    iget-boolean v2, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0b:Z

    if-eqz v2, :cond_6c9

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Bw;->A06()[B

    move-result-object v6

    iget v5, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0D:I

    iget v4, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0C:I

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0E:I

    new-instance v7, Lcom/facebook/ads/internal/exoplayer2/thirdparty/video/ColorInfo;

    invoke-direct {v7, v5, v4, v2, v6}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/video/ColorInfo;-><init>(III[B)V

    :cond_6c9
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, -0x1

    iget v9, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0R:I

    iget v6, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0J:I

    const/high16 v21, -0x40800000    # -1.0f

    const/16 v23, -0x1

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0e:[B

    iget v4, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0P:I

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0U:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    move/from16 v19, v9

    move/from16 v20, v6

    move-object/from16 v22, v1

    move/from16 v24, v8

    move-object/from16 v25, v5

    move/from16 v26, v4

    move-object/from16 v27, v7

    move-object/from16 v28, v2

    invoke-static/range {v14 .. v28}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A04(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/facebook/ads/internal/exoplayer2/thirdparty/video/ColorInfo;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v2

    goto/16 :goto_66f

    :cond_6f5
    const/16 v5, 0x2b5

    const/16 v4, 0x14

    const/16 v3, 0x79

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_714

    const/4 v3, 0x3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0g:Ljava/lang/String;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0U:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    invoke-static {v5, v15, v2, v4, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A01(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v2

    goto/16 :goto_66f

    :cond_714
    const/16 v5, 0x367

    const/16 v4, 0xa

    const/4 v3, 0x1

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v7

    sget-object v4, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v4, v4, v3

    const/4 v3, 0x3

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x37

    if-eq v4, v3, :cond_75f

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76d

    :goto_731
    const/4 v3, 0x3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wo;->A0G()[B

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0d:[B

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, -0x1

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0g:Ljava/lang/String;

    const/4 v14, -0x1

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0U:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    const-wide v16, 0x7fffffffffffffffL

    move-object v9, v15

    move v12, v2

    move-object v13, v4

    move-object v15, v1

    move-object/from16 v18, v5

    invoke-static/range {v8 .. v18}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;JLjava/util/List;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v2

    goto/16 :goto_66f

    :cond_75f
    sget-object v5, Lcom/facebook/ads/redexgen/X/Bw;->A0i:[Ljava/lang/String;

    const-string v4, "f7sm5I7gZdCZUZkEBQd8yi8YhLy9ImnH"

    const/4 v3, 0x3

    aput-object v4, v5, v3

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76d

    goto :goto_731

    :cond_76d
    const/16 v5, 0x2a3

    const/16 v4, 0x12

    const/16 v3, 0x76

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_79d

    const/16 v5, 0x294

    const/16 v4, 0xf

    const/16 v3, 0x15

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_79d

    const/16 v5, 0x281

    const/16 v4, 0x13

    const/16 v3, 0x30

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b3

    :cond_79d
    const/4 v3, 0x3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, -0x1

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0g:Ljava/lang/String;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Bw;->A0U:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    move-object v7, v15

    move v10, v2

    move-object v11, v1

    move-object v12, v5

    move-object v13, v4

    invoke-static/range {v6 .. v13}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v2

    goto/16 :goto_66f

    :cond_7b3
    const/16 v2, 0x18e

    const/16 v1, 0x15

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bw;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_7c4
    .sparse-switch
        -0x7ce7f5de -> :sswitch_48
        -0x7ce7f3b0 -> :sswitch_5a
        -0x76567dc0 -> :sswitch_6c
        -0x6a615338 -> :sswitch_7f
        -0x672350af -> :sswitch_91
        -0x585f4fce -> :sswitch_a5
        -0x585f4fcd -> :sswitch_b9
        -0x51dc40b2 -> :sswitch_e3
        -0x37a9c464 -> :sswitch_f7
        -0x2016c535 -> :sswitch_10b
        -0x2016c4e5 -> :sswitch_11e
        -0x19552dbd -> :sswitch_131
        -0x1538b2ba -> :sswitch_16e
        0x3c02325 -> :sswitch_182
        0x3c02353 -> :sswitch_195
        0x3c030c5 -> :sswitch_1a8
        0x4e86155 -> :sswitch_1bb
        0x4e86156 -> :sswitch_1e2
        0x5e8da3e -> :sswitch_1f4
        0x1a8350d6 -> :sswitch_208
        0x2056f406 -> :sswitch_21b
        0x2b453ce4 -> :sswitch_22f
        0x2c0618eb -> :sswitch_243
        0x32fdf009 -> :sswitch_257
        0x54c61e47 -> :sswitch_26a
        0x6bd6c624 -> :sswitch_2a1
        0x7446132a -> :sswitch_2c6
        0x7446b0a6 -> :sswitch_2d9
        0x744ad97d -> :sswitch_2ec
    .end sparse-switch

    :pswitch_data_83a
    .packed-switch 0x0
        :pswitch_314
        :pswitch_343
        :pswitch_34f
        :pswitch_35b
        :pswitch_35b
        :pswitch_35b
        :pswitch_372
        :pswitch_38f
        :pswitch_3ab
        :pswitch_3c0
        :pswitch_3cc
        :pswitch_3e0
        :pswitch_42a
        :pswitch_43c
        :pswitch_44a
        :pswitch_320
        :pswitch_458
        :pswitch_464
        :pswitch_477
        :pswitch_477
        :pswitch_483
        :pswitch_48f
        :pswitch_4a1
        :pswitch_516
        :pswitch_5fb
        :pswitch_572
        :pswitch_57d
        :pswitch_626
        :pswitch_5b1
    .end packed-switch
.end method
