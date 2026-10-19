###### Class com.facebook.ads.redexgen.X.BT (com.facebook.ads.redexgen.X.BT)
.class public final Lcom/facebook/ads/redexgen/X/BT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Vg;
.implements Lcom/facebook/ads/redexgen/X/Bc;
.implements Lcom/facebook/ads/redexgen/X/Go;
.implements Lcom/facebook/ads/redexgen/X/Gr;
.implements Lcom/facebook/ads/redexgen/X/Es;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/ES;,
        Lcom/facebook/ads/redexgen/X/Vk;,
        Lcom/facebook/ads/redexgen/X/Vj;,
        Lcom/facebook/ads/redexgen/X/ET;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/Vg;",
        "Lcom/facebook/ads/redexgen/X/Bc;",
        "Lcom/facebook/ads/redexgen/X/Go<",
        "Lcom/facebook/ads/redexgen/X/Vk;",
        ">;",
        "Lcom/facebook/ads/redexgen/X/Gr;",
        "Lcom/facebook/ads/redexgen/X/Es;"
    }
.end annotation


# static fields
.field public static A0c:[B

.field public static A0d:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:Lcom/facebook/ads/redexgen/X/Bj;

.field public A08:Lcom/facebook/ads/redexgen/X/Vh;

.field public A09:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public A0D:Z

.field public A0E:Z

.field public A0F:Z

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:[I

.field public A0K:[Lcom/facebook/ads/redexgen/X/Vf;

.field public A0L:[Z

.field public A0M:[Z

.field public A0N:[Z

.field public final A0O:I

.field public final A0P:J

.field public final A0Q:Landroid/net/Uri;

.field public final A0R:Landroid/os/Handler;

.field public final A0S:Lcom/facebook/ads/redexgen/X/ES;

.field public final A0T:Lcom/facebook/ads/redexgen/X/ET;

.field public final A0U:Lcom/facebook/ads/redexgen/X/Ej;

.field public final A0V:Lcom/facebook/ads/redexgen/X/GU;

.field public final A0W:Lcom/facebook/ads/redexgen/X/Gc;

.field public final A0X:Lcom/facebook/ads/redexgen/X/V6;

.field public final A0Y:Lcom/facebook/ads/redexgen/X/HO;

.field public final A0Z:Ljava/lang/Runnable;

.field public final A0a:Ljava/lang/Runnable;

.field public final A0b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uM3"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HhtEoeszujhq2hqW803X6wAUFNr2yIvk"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "llgRlYE2HHrDKVr9Tlv1gg4sawaKL"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "gd26Zevc0BeMQVnsPvgEWj4kMHitbDqE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "B56DgxYfwXnRdFUWoxgY8ZwWxUmrPQlR"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "o6X9hbG4Io42IRbcZylLcsRNIhbJFPRA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "SBfu1SOz9uKNnyoy8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "5PtJb97AhuhjIJJCziWFyl83Esr9CMYA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/BT;->A0d:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/BT;->A0B()V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/Gc;[Lcom/facebook/ads/redexgen/X/Ba;ILcom/facebook/ads/redexgen/X/Ej;Lcom/facebook/ads/redexgen/X/ET;Lcom/facebook/ads/redexgen/X/GU;Ljava/lang/String;I)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/BT;->A0Q:Landroid/net/Uri;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/BT;->A0W:Lcom/facebook/ads/redexgen/X/Gc;

    iput p4, p0, Lcom/facebook/ads/redexgen/X/BT;->A0O:I

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/BT;->A0U:Lcom/facebook/ads/redexgen/X/Ej;

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/BT;->A0T:Lcom/facebook/ads/redexgen/X/ET;

    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/BT;->A0V:Lcom/facebook/ads/redexgen/X/GU;

    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/BT;->A0b:Ljava/lang/String;

    int-to-long v0, p9

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0P:J

    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BT;->A07(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/V6;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/V6;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0X:Lcom/facebook/ads/redexgen/X/V6;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ES;

    invoke-direct {v0, p3, p0}, Lcom/facebook/ads/redexgen/X/ES;-><init>([Lcom/facebook/ads/redexgen/X/Ba;Lcom/facebook/ads/redexgen/X/Bc;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0S:Lcom/facebook/ads/redexgen/X/ES;

    new-instance v0, Lcom/facebook/ads/redexgen/X/HO;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/HO;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0Y:Lcom/facebook/ads/redexgen/X/HO;

    new-instance v0, Lcom/facebook/ads/redexgen/X/EQ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/EQ;-><init>(Lcom/facebook/ads/redexgen/X/BT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0Z:Ljava/lang/Runnable;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ER;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ER;-><init>(Lcom/facebook/ads/redexgen/X/BT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0a:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0R:Landroid/os/Handler;

    const/4 v1, 0x0

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0J:[I

    new-array v0, v1, [Lcom/facebook/ads/redexgen/X/Vf;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0K:[Lcom/facebook/ads/redexgen/X/Vf;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/BT;->A06:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A05:J

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/BT;->A03:J

    const/4 v0, -0x1

    if-ne p4, v0, :cond_61

    const/4 p4, 0x3

    :cond_61
    iput p4, p0, Lcom/facebook/ads/redexgen/X/BT;->A00:I

    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/Ej;->A03()V

    return-void
.end method

.method private A00()I
    .registers 6

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/BT;->A0K:[Lcom/facebook/ads/redexgen/X/Vf;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_11

    aget-object v0, v3, v1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vf;->A0C()I

    move-result v0

    add-int/2addr v4, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return v4
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/Vk;JJLjava/io/IOException;)I
    .registers 28

    move-object/from16 v0, p0

    move-object v0, v0

    move-object/from16 v19, p6

    invoke-static/range {v19 .. v19}, Lcom/facebook/ads/redexgen/X/BT;->A0N(Ljava/io/IOException;)Z

    move-result v20

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/BT;->A0U:Lcom/facebook/ads/redexgen/X/Ej;

    move-object/from16 v1, p1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Vk;->A03(Lcom/facebook/ads/redexgen/X/Vk;)Lcom/facebook/ads/redexgen/X/Gg;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Vk;->A00(Lcom/facebook/ads/redexgen/X/Vk;)J

    move-result-wide v9

    iget-wide v11, v0, Lcom/facebook/ads/redexgen/X/BT;->A03:J

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Vk;->A01(Lcom/facebook/ads/redexgen/X/Vk;)J

    move-result-wide v17

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    invoke-virtual/range {v2 .. v20}, Lcom/facebook/ads/redexgen/X/Ej;->A0H(Lcom/facebook/ads/redexgen/X/Gg;IILcom/facebook/ads/internal/exoplayer2/thirdparty/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/BT;->A0E(Lcom/facebook/ads/redexgen/X/Vk;)V

    if-eqz v20, :cond_2e

    const/4 v0, 0x3

    return v0

    :cond_2e
    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/BT;->A00()I

    move-result v4

    iget v2, v0, Lcom/facebook/ads/redexgen/X/BT;->A02:I

    const/4 v3, 0x1

    if-le v4, v2, :cond_45

    const/4 v2, 0x1

    :goto_38
    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/BT;->A0L(Lcom/facebook/ads/redexgen/X/Vk;I)Z

    move-result v0

    if-eqz v0, :cond_43

    if-eqz v2, :cond_41

    :goto_40
    return v3

    :cond_41
    const/4 v3, 0x0

    goto :goto_40

    :cond_43
    const/4 v3, 0x2

    goto :goto_40

    :cond_45
    const/4 v2, 0x0

    goto :goto_38
.end method

.method private A02()J
    .registers 8

    const-wide/high16 v3, -0x8000000000000000L

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/BT;->A0K:[Lcom/facebook/ads/redexgen/X/Vf;

    array-length v5, v6

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v5, :cond_15

    aget-object v0, v6, v2

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vf;->A0F()J

    move-result-wide v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_15
    return-wide v3
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/BT;)J
    .registers 2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0P:J

    return-wide v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/BT;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0R:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/BT;)Lcom/facebook/ads/redexgen/X/Vh;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/BT;->A08:Lcom/facebook/ads/redexgen/X/Vh;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/BT;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0a:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static A07(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/BT;->A0c:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x19

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/BT;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0b:Ljava/lang/String;

    return-object p0
.end method

.method private A09()V
    .registers 9

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0G:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0F:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A07:Lcom/facebook/ads/redexgen/X/Bj;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0H:Z

    if-nez v0, :cond_11

    :cond_10
    return-void

    :cond_11
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/BT;->A0K:[Lcom/facebook/ads/redexgen/X/Vf;

    array-length v2, v3

    const/4 v7, 0x0

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v2, :cond_24

    aget-object v0, v3, v1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vf;->A0G()Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    if-nez v0, :cond_21

    return-void

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_24
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0Y:Lcom/facebook/ads/redexgen/X/HO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HO;->A01()Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0K:[Lcom/facebook/ads/redexgen/X/Vf;

    array-length v6, v0

    new-array v5, v6, [Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    new-array v0, v6, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0N:[Z

    new-array v0, v6, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0L:[Z

    new-array v0, v6, [Z

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0M:[Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A07:Lcom/facebook/ads/redexgen/X/Bj;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Bj;->A6k()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A03:J

    const/4 v3, 0x0

    :goto_43
    const/4 v4, 0x1

    if-ge v3, v6, :cond_75

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0K:[Lcom/facebook/ads/redexgen/X/Vf;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vf;->A0G()Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v2

    new-array v1, v4, [Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    aput-object v2, v1, v7

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;-><init>([Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    aput-object v0, v5, v3

    iget-object v1, v2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Ha;->A0B(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_67

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Ha;->A09(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    :cond_67
    :goto_67
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0N:[Z

    aput-boolean v4, v0, v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0A:Z

    or-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0A:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    :cond_73
    const/4 v4, 0x0

    goto :goto_67

    :cond_75
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    invoke-direct {v0, v5}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;-><init>([Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A09:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/BT;->A0O:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_b6

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/BT;->A05:J

    const-wide/16 v1, -0x1

    cmp-long v0, v5, v1

    if-nez v0, :cond_b6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A07:Lcom/facebook/ads/redexgen/X/Bj;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Bj;->A6k()J

    move-result-wide v5

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v1

    if-nez v0, :cond_b6

    const/4 v3, 0x6

    sget-object v2, Lcom/facebook/ads/redexgen/X/BT;->A0d:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_cb

    sget-object v2, Lcom/facebook/ads/redexgen/X/BT;->A0d:[Ljava/lang/String;

    const-string v1, "7a3gC0RfnKvRSexgB6r2d4KLSEZ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/BT;->A00:I

    :cond_b6
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/BT;->A0F:Z

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/BT;->A0T:Lcom/facebook/ads/redexgen/X/ET;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BT;->A03:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A07:Lcom/facebook/ads/redexgen/X/Bj;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Bj;->A95()Z

    move-result v0

    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/ET;->ACy(JZ)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A08:Lcom/facebook/ads/redexgen/X/Vh;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Vh;->ACW(Lcom/facebook/ads/redexgen/X/Vg;)V

    return-void

    :cond_cb
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0A()V
    .registers 16

    move-object v0, p0

    new-instance v9, Lcom/facebook/ads/redexgen/X/Vk;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/BT;->A0Q:Landroid/net/Uri;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/BT;->A0W:Lcom/facebook/ads/redexgen/X/Gc;

    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/BT;->A0S:Lcom/facebook/ads/redexgen/X/ES;

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/BT;->A0Y:Lcom/facebook/ads/redexgen/X/HO;

    move-object v10, p0

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/Vk;-><init>(Lcom/facebook/ads/redexgen/X/BT;Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/Gc;Lcom/facebook/ads/redexgen/X/ES;Lcom/facebook/ads/redexgen/X/HO;)V

    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/BT;->A0F:Z

    if-eqz v1, :cond_44

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BT;->A0I()Z

    move-result v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget-wide v7, v0, Lcom/facebook/ads/redexgen/X/BT;->A03:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v7, v5

    if-eqz v1, :cond_31

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/BT;->A06:J

    cmp-long v1, v2, v7

    if-ltz v1, :cond_31

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/BT;->A0B:Z

    iput-wide v5, v0, Lcom/facebook/ads/redexgen/X/BT;->A06:J

    return-void

    :cond_31
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/BT;->A07:Lcom/facebook/ads/redexgen/X/Bj;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/BT;->A06:J

    invoke-interface {v3, v1, v2}, Lcom/facebook/ads/redexgen/X/Bj;->A7l(J)Lcom/facebook/ads/redexgen/X/Bi;

    move-result-object v1

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/Bi;->A00:Lcom/facebook/ads/redexgen/X/Bk;

    iget-wide v3, v1, Lcom/facebook/ads/redexgen/X/Bk;->A00:J

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/BT;->A06:J

    invoke-virtual {v9, v3, v4, v1, v2}, Lcom/facebook/ads/redexgen/X/Vk;->A04(JJ)V

    iput-wide v5, v0, Lcom/facebook/ads/redexgen/X/BT;->A06:J

    :cond_44
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BT;->A00()I

    move-result v1

    iput v1, v0, Lcom/facebook/ads/redexgen/X/BT;->A02:I

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/BT;->A0X:Lcom/facebook/ads/redexgen/X/V6;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/BT;->A00:I

    invoke-virtual {v2, v9, v0, v1}, Lcom/facebook/ads/redexgen/X/V6;->A04(Lcom/facebook/ads/redexgen/X/Gq;Lcom/facebook/ads/redexgen/X/Go;I)J

    move-result-wide v12

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/BT;->A0U:Lcom/facebook/ads/redexgen/X/Ej;

    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/Vk;->A03(Lcom/facebook/ads/redexgen/X/Vk;)Lcom/facebook/ads/redexgen/X/Gg;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/Vk;->A00(Lcom/facebook/ads/redexgen/X/Vk;)J

    move-result-wide v8

    iget-wide v10, v0, Lcom/facebook/ads/redexgen/X/BT;->A03:J

    invoke-virtual/range {v1 .. v13}, Lcom/facebook/ads/redexgen/X/Ej;->A0E(Lcom/facebook/ads/redexgen/X/Gg;IILcom/facebook/ads/internal/exoplayer2/thirdparty/Format;ILjava/lang/Object;JJJ)V

    return-void
.end method

.method public static A0B()V
    .registers 1

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/BT;->A0c:[B

    return-void

    :array_a
    .array-data 1
        0x4et
        0x6dt
        0x63t
        0x66t
        0x67t
        0x70t
        0x38t
        0x47t
        0x7at
        0x76t
        0x70t
        0x63t
        0x61t
        0x76t
        0x6dt
        0x70t
        0x4ft
        0x67t
        0x66t
        0x6bt
        0x63t
        0x52t
        0x67t
        0x70t
        0x6bt
        0x6dt
        0x66t
    .end array-data
.end method

.method private A0C(I)V
    .registers 10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0M:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A09:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BT;->A0U:Lcom/facebook/ads/redexgen/X/Ej;

    iget-object v0, v3, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ha;->A01(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/BT;->A04:J

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Ej;->A06(ILcom/facebook/ads/internal/exoplayer2/thirdparty/Format;ILjava/lang/Object;J)V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/BT;->A0M:[Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/BT;->A0d:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_3a

    sget-object v2, Lcom/facebook/ads/redexgen/X/BT;->A0d:[Ljava/lang/String;

    const-string v1, "eh27oOHcwVOmHzYfi8kDTS"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v0, 0x1

    aput-boolean v0, v3, p1

    :cond_39
    return-void

    :cond_3a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0D(I)V
    .registers 8

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0E:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0N:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0K:[Lcom/facebook/ads/redexgen/X/Vf;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vf;->A0M()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    return-void

    :cond_15
    const-wide/16 v4, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/BT;->A0d:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_31

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_31
    sget-object v2, Lcom/facebook/ads/redexgen/X/BT;->A0d:[Ljava/lang/String;

    const-string v1, "sgNFiq5UDquEcD4Be"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "0a9"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/BT;->A06:J

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/BT;->A0E:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0D:Z

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/BT;->A04:J

    iput v3, p0, Lcom/facebook/ads/redexgen/X/BT;->A02:I

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/BT;->A0K:[Lcom/facebook/ads/redexgen/X/Vf;

    array-length v1, v2

    :goto_4c
    if-ge v3, v1, :cond_56

    aget-object v0, v2, v3

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vf;->A0I()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    :cond_56
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A08:Lcom/facebook/ads/redexgen/X/Vh;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Eu;->AAx(Lcom/facebook/ads/redexgen/X/Ev;)V

    return-void
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/Vk;)V
    .registers 7

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/BT;->A05:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_e

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Vk;->A02(Lcom/facebook/ads/redexgen/X/Vk;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A05:J

    :cond_e
    return-void
.end method

.method private final A0F(Lcom/facebook/ads/redexgen/X/Vk;JJ)V
    .registers 26

    move-object/from16 v2, p0

    move-object v2, v2

    iget-wide v5, v2, Lcom/facebook/ads/redexgen/X/BT;->A03:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v5, v3

    if-nez v0, :cond_27

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/BT;->A02()J

    move-result-wide v5

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, v5, v3

    if-nez v0, :cond_51

    const-wide/16 v0, 0x0

    :goto_1a
    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/BT;->A03:J

    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/BT;->A0T:Lcom/facebook/ads/redexgen/X/ET;

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/BT;->A07:Lcom/facebook/ads/redexgen/X/Bj;

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Bj;->A95()Z

    move-result v3

    invoke-interface {v4, v0, v1, v3}, Lcom/facebook/ads/redexgen/X/ET;->ACy(JZ)V

    :cond_27
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/BT;->A0U:Lcom/facebook/ads/redexgen/X/Ej;

    move-object/from16 v0, p1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vk;->A03(Lcom/facebook/ads/redexgen/X/Vk;)Lcom/facebook/ads/redexgen/X/Gg;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vk;->A00(Lcom/facebook/ads/redexgen/X/Vk;)J

    move-result-wide v10

    iget-wide v12, v2, Lcom/facebook/ads/redexgen/X/BT;->A03:J

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vk;->A01(Lcom/facebook/ads/redexgen/X/Vk;)J

    move-result-wide v18

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    invoke-virtual/range {v3 .. v19}, Lcom/facebook/ads/redexgen/X/Ej;->A0G(Lcom/facebook/ads/redexgen/X/Gg;IILcom/facebook/ads/internal/exoplayer2/thirdparty/Format;ILjava/lang/Object;JJJJJ)V

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/BT;->A0E(Lcom/facebook/ads/redexgen/X/Vk;)V

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/BT;->A0B:Z

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/BT;->A08:Lcom/facebook/ads/redexgen/X/Vh;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Eu;->AAx(Lcom/facebook/ads/redexgen/X/Ev;)V

    return-void

    :cond_51
    const-wide/16 v0, 0x2710

    add-long/2addr v0, v5

    goto :goto_1a
.end method

.method private final A0G(Lcom/facebook/ads/redexgen/X/Vk;JJZ)V
    .registers 26

    move-object/from16 v1, p0

    move-object v1, v1

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/BT;->A0U:Lcom/facebook/ads/redexgen/X/Ej;

    move-object/from16 v0, p1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vk;->A03(Lcom/facebook/ads/redexgen/X/Vk;)Lcom/facebook/ads/redexgen/X/Gg;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vk;->A00(Lcom/facebook/ads/redexgen/X/Vk;)J

    move-result-wide v9

    iget-wide v11, v1, Lcom/facebook/ads/redexgen/X/BT;->A03:J

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vk;->A01(Lcom/facebook/ads/redexgen/X/Vk;)J

    move-result-wide v17

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    invoke-virtual/range {v2 .. v18}, Lcom/facebook/ads/redexgen/X/Ej;->A0F(Lcom/facebook/ads/redexgen/X/Gg;IILcom/facebook/ads/internal/exoplayer2/thirdparty/Format;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_3d

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/BT;->A0E(Lcom/facebook/ads/redexgen/X/Vk;)V

    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/BT;->A0K:[Lcom/facebook/ads/redexgen/X/Vf;

    array-length v3, v4

    const/4 v2, 0x0

    :goto_2a
    if-ge v2, v3, :cond_34

    aget-object v0, v4, v2

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vf;->A0I()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_34
    iget v0, v1, Lcom/facebook/ads/redexgen/X/BT;->A01:I

    if-lez v0, :cond_3d

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/BT;->A08:Lcom/facebook/ads/redexgen/X/Vh;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Eu;->AAx(Lcom/facebook/ads/redexgen/X/Ev;)V

    :cond_3d
    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/BT;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BT;->A09()V

    return-void
.end method

.method private A0I()Z
    .registers 6

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/BT;->A06:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private A0J()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0D:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BT;->A0I()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private A0K(J)Z
    .registers 10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0K:[Lcom/facebook/ads/redexgen/X/Vf;

    array-length v6, v0

    const/4 v5, 0x0

    :goto_4
    const/4 v2, 0x1

    if-ge v5, v6, :cond_4e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0K:[Lcom/facebook/ads/redexgen/X/Vf;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vf;->A0J()V

    const/4 v4, 0x0

    invoke-virtual {v0, p1, p2, v2, v4}, Lcom/facebook/ads/redexgen/X/Vf;->A0D(JZZ)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_46

    :goto_16
    if-nez v2, :cond_43

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0N:[Z

    aget-boolean v0, v0, v5

    if-nez v0, :cond_42

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/BT;->A0A:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/BT;->A0d:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_48

    sget-object v2, Lcom/facebook/ads/redexgen/X/BT;->A0d:[Ljava/lang/String;

    const-string v1, "iCn5X7g6PoYVWCe4GwpQYWYt9drfTGBT"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "IDd3eJ2NBG0wgz78gdspZyWtrcrofueQ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_43

    :cond_42
    return v4

    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_46
    const/4 v2, 0x0

    goto :goto_16

    :cond_48
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4e
    return v2
.end method

.method private A0L(Lcom/facebook/ads/redexgen/X/Vk;I)Z
    .registers 10

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BT;->A05:J

    const-wide/16 v3, -0x1

    const/4 v6, 0x1

    cmp-long v0, v1, v3

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A07:Lcom/facebook/ads/redexgen/X/Bj;

    if-eqz v0, :cond_3c

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Bj;->A6k()J

    move-result-wide v3

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3c

    :cond_1a
    iput p2, p0, Lcom/facebook/ads/redexgen/X/BT;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/BT;->A0d:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_36

    sget-object v2, Lcom/facebook/ads/redexgen/X/BT;->A0d:[Ljava/lang/String;

    const-string v1, "F1SGTXFlfQdsRtCv2"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "c29"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v6

    :cond_36
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3c
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0F:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_4a

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BT;->A0J()Z

    move-result v0

    if-nez v0, :cond_4a

    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/BT;->A0E:Z

    return v5

    :cond_4a
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0F:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0D:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/BT;->A04:J

    iput v5, p0, Lcom/facebook/ads/redexgen/X/BT;->A02:I

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/BT;->A0K:[Lcom/facebook/ads/redexgen/X/Vf;

    array-length v1, v4

    :goto_57
    if-ge v5, v1, :cond_61

    aget-object v0, v4, v5

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vf;->A0I()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    :cond_61
    invoke-virtual {p1, v2, v3, v2, v3}, Lcom/facebook/ads/redexgen/X/Vk;->A04(JJ)V

    return v6
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/BT;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0G:Z

    return p0
.end method

.method public static A0N(Ljava/io/IOException;)Z
    .registers 1

    instance-of p0, p0, Lcom/facebook/ads/redexgen/X/Vd;

    return p0
.end method


# virtual methods
.method public final A0O(IJ)I
    .registers 9

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BT;->A0J()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0K:[Lcom/facebook/ads/redexgen/X/Vf;

    aget-object v3, v0, p1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0B:Z

    if-eqz v0, :cond_26

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Vf;->A0F()J

    move-result-wide v1

    cmp-long v0, p2, v1

    if-lez v0, :cond_26

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Vf;->A0A()I

    move-result v4

    :cond_1c
    :goto_1c
    if-lez v4, :cond_22

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/BT;->A0C(I)V

    :goto_21
    return v4

    :cond_22
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/BT;->A0D(I)V

    goto :goto_21

    :cond_26
    const/4 v0, 0x1

    invoke-virtual {v3, p2, p3, v0, v0}, Lcom/facebook/ads/redexgen/X/Vf;->A0D(JZZ)I

    move-result v4

    const/4 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/BT;->A0d:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_50

    sget-object v2, Lcom/facebook/ads/redexgen/X/BT;->A0d:[Ljava/lang/String;

    const-string v1, "NIYG9FQCzFZSe10IE"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "6cN"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_1c

    const/4 v4, 0x0

    goto :goto_1c

    :cond_50
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0P(ILcom/facebook/ads/redexgen/X/9X;Lcom/facebook/ads/redexgen/X/XE;Z)I
    .registers 15

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BT;->A0J()Z

    move-result v0

    const/4 v2, -0x3

    if-eqz v0, :cond_8

    return v2

    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0K:[Lcom/facebook/ads/redexgen/X/Vf;

    aget-object v3, v0, p1

    iget-boolean v7, p0, Lcom/facebook/ads/redexgen/X/BT;->A0B:Z

    iget-wide v8, p0, Lcom/facebook/ads/redexgen/X/BT;->A04:J

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/Vf;->A0E(Lcom/facebook/ads/redexgen/X/9X;Lcom/facebook/ads/redexgen/X/XE;ZZJ)I

    move-result v1

    const/4 v0, -0x4

    if-ne v1, v0, :cond_1e

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/BT;->A0C(I)V

    :cond_1d
    :goto_1d
    return v1

    :cond_1e
    if-ne v1, v2, :cond_1d

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/BT;->A0D(I)V

    goto :goto_1d
.end method

.method public final A0Q()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BT;->A0X:Lcom/facebook/ads/redexgen/X/V6;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/V6;->A06(I)V

    return-void
.end method

.method public final A0R()V
    .registers 5

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0F:Z

    if-eqz v0, :cond_12

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/BT;->A0K:[Lcom/facebook/ads/redexgen/X/Vf;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v2, :cond_12

    aget-object v0, v3, v1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vf;->A0H()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0X:Lcom/facebook/ads/redexgen/X/V6;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/V6;->A07(Lcom/facebook/ads/redexgen/X/Gr;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BT;->A0R:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A08:Lcom/facebook/ads/redexgen/X/Vh;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0G:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0U:Lcom/facebook/ads/redexgen/X/Ej;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ej;->A04()V

    return-void
.end method

.method public final A0S(I)Z
    .registers 3

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BT;->A0J()Z

    move-result v0

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0B:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0K:[Lcom/facebook/ads/redexgen/X/Vf;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vf;->A0M()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final A4Q(J)Z
    .registers 5

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0B:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0E:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0F:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A01:I

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x0

    return v0

    :cond_12
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0Y:Lcom/facebook/ads/redexgen/X/HO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HO;->A02()Z

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0X:Lcom/facebook/ads/redexgen/X/V6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V6;->A08()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BT;->A0A()V

    const/4 v1, 0x1

    :cond_24
    return v1
.end method

.method public final A55(JZ)V
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0K:[Lcom/facebook/ads/redexgen/X/Vf;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_14

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0K:[Lcom/facebook/ads/redexgen/X/Vf;

    aget-object v1, v0, v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0L:[Z

    aget-boolean v0, v0, v2

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/Vf;->A0K(JZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_14
    return-void
.end method

.method public final A5T()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0H:Z

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BT;->A0R:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0Z:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final A5s(JLcom/facebook/ads/redexgen/X/9v;)J
    .registers 13

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A07:Lcom/facebook/ads/redexgen/X/Bj;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Bj;->A95()Z

    move-result v0

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A07:Lcom/facebook/ads/redexgen/X/Bj;

    move-wide v2, p1

    invoke-interface {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/Bj;->A7l(J)Lcom/facebook/ads/redexgen/X/Bi;

    move-result-object v1

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Bi;->A00:Lcom/facebook/ads/redexgen/X/Bk;

    iget-wide v5, v0, Lcom/facebook/ads/redexgen/X/Bk;->A01:J

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Bi;->A01:Lcom/facebook/ads/redexgen/X/Bk;

    iget-wide v7, v0, Lcom/facebook/ads/redexgen/X/Bk;->A01:J

    move-object v4, p3

    invoke-static/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Hx;->A0I(JLcom/facebook/ads/redexgen/X/9v;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A68()J
    .registers 9

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0B:Z

    const-wide/high16 v6, -0x8000000000000000L

    if-eqz v0, :cond_7

    return-wide v6

    :cond_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BT;->A0I()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/BT;->A06:J

    sget-object v2, Lcom/facebook/ads/redexgen/X/BT;->A0d:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_29

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_29
    sget-object v2, Lcom/facebook/ads/redexgen/X/BT;->A0d:[Ljava/lang/String;

    const-string v1, "ld4wWqv9tK9nTvU7QEEl8vpde5wWqGSi"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-wide v3

    :cond_31
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0A:Z

    if-eqz v0, :cond_55

    const-wide v2, 0x7fffffffffffffffL

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0K:[Lcom/facebook/ads/redexgen/X/Vf;

    array-length v5, v0

    const/4 v4, 0x0

    :goto_3e
    if-ge v4, v5, :cond_59

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0N:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0K:[Lcom/facebook/ads/redexgen/X/Vf;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vf;->A0F()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    :cond_55
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BT;->A02()J

    move-result-wide v2

    :cond_59
    cmp-long v0, v2, v6

    if-nez v0, :cond_5f

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/BT;->A04:J

    :cond_5f
    return-wide v2
.end method

.method public final A7M()J
    .registers 3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A01:I

    if-nez v0, :cond_7

    const-wide/high16 v0, -0x8000000000000000L

    :goto_6
    return-wide v0

    :cond_7
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BT;->A68()J

    move-result-wide v0

    goto :goto_6
.end method

.method public final A82()Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A09:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    return-object v0
.end method

.method public final AA3()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BT;->A0Q()V

    return-void
.end method

.method public final bridge synthetic ABp(Lcom/facebook/ads/redexgen/X/Gq;JJZ)V
    .registers 14

    move-object v1, p1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Vk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/BT;->A0G(Lcom/facebook/ads/redexgen/X/Vk;JJZ)V

    return-void
.end method

.method public final bridge synthetic ABr(Lcom/facebook/ads/redexgen/X/Gq;JJ)V
    .registers 12

    move-object v1, p1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Vk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/BT;->A0F(Lcom/facebook/ads/redexgen/X/Vk;JJ)V

    return-void
.end method

.method public final bridge synthetic ABs(Lcom/facebook/ads/redexgen/X/Gq;JJLjava/io/IOException;)I
    .registers 14

    move-object v1, p1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Vk;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/BT;->A01(Lcom/facebook/ads/redexgen/X/Vk;JJLjava/io/IOException;)I

    move-result v0

    return v0
.end method

.method public final ABw()V
    .registers 5

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/BT;->A0K:[Lcom/facebook/ads/redexgen/X/Vf;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v2, :cond_e

    aget-object v0, v3, v1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vf;->A0I()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0S:Lcom/facebook/ads/redexgen/X/ES;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ES;->A03()V

    return-void
.end method

.method public final ADI(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BT;->A0R:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0Z:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final ADu(Lcom/facebook/ads/redexgen/X/Vh;J)V
    .registers 5

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/BT;->A08:Lcom/facebook/ads/redexgen/X/Vh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0Y:Lcom/facebook/ads/redexgen/X/HO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HO;->A02()Z

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BT;->A0A()V

    return-void
.end method

.method public final AED()J
    .registers 6

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0C:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0U:Lcom/facebook/ads/redexgen/X/Ej;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ej;->A05()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0C:Z

    :cond_c
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/BT;->A0D:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/BT;->A0d:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_54

    sget-object v2, Lcom/facebook/ads/redexgen/X/BT;->A0d:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_3b

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0B:Z

    if-nez v0, :cond_35

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BT;->A00()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A02:I

    if-le v1, v0, :cond_3b

    :cond_35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0D:Z

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A04:J

    return-wide v0

    :cond_3b
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    sget-object v2, Lcom/facebook/ads/redexgen/X/BT;->A0d:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5a

    :cond_54
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5a
    sget-object v2, Lcom/facebook/ads/redexgen/X/BT;->A0d:[Ljava/lang/String;

    const-string v1, "a8TiTKBNhx8jXxPRrcAgh1BUcIw96G2f"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "NHpS1UqcJuZi4hHtySMRiLK65X8yfSYb"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-wide v3
.end method

.method public final AEK(J)V
    .registers 3

    return-void
.end method

.method public final AEx(Lcom/facebook/ads/redexgen/X/Bj;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/BT;->A07:Lcom/facebook/ads/redexgen/X/Bj;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BT;->A0R:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0Z:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final AF0(J)J
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A07:Lcom/facebook/ads/redexgen/X/Bj;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Bj;->A95()Z

    move-result v0

    if-eqz v0, :cond_3a

    :goto_8
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/BT;->A04:J

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/BT;->A0D:Z

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BT;->A0I()Z

    move-result v0

    if-nez v0, :cond_43

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/BT;->A0K(J)Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/BT;->A0d:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3d

    sget-object v2, Lcom/facebook/ads/redexgen/X/BT;->A0d:[Ljava/lang/String;

    const-string v1, "4t4h1X84Q9aXzP6i3O1IFqP61fZwJyic"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "YchhDxV7HDCpyjRy2lVbypcIuIxdt4SR"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v4, :cond_43

    return-wide p1

    :cond_3a
    const-wide/16 p1, 0x0

    goto :goto_8

    :cond_3d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_43
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/BT;->A0E:Z

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/BT;->A06:J

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/BT;->A0B:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0X:Lcom/facebook/ads/redexgen/X/V6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V6;->A08()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0X:Lcom/facebook/ads/redexgen/X/V6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V6;->A05()V

    :cond_56
    return-wide p1

    :cond_57
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/BT;->A0K:[Lcom/facebook/ads/redexgen/X/Vf;

    array-length v1, v2

    :goto_5a
    if-ge v3, v1, :cond_56

    aget-object v0, v2, v3

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vf;->A0I()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5a
.end method

.method public final AF1([Lcom/facebook/ads/redexgen/X/GO;[Z[Lcom/facebook/ads/redexgen/X/Et;[ZJ)J
    .registers 16

    move-object v5, p0

    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/BT;->A0F:Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget v1, v5, Lcom/facebook/ads/redexgen/X/BT;->A01:I

    const/4 v2, 0x0

    :goto_9
    array-length v0, p1

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-ge v2, v0, :cond_59

    aget-object v8, p3, v2

    sget-object v7, Lcom/facebook/ads/redexgen/X/BT;->A0d:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v6, v7, v0

    const/4 v0, 0x5

    aget-object v7, v7, v0

    const/16 v0, 0x13

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v6, v0, :cond_53

    sget-object v7, Lcom/facebook/ads/redexgen/X/BT;->A0d:[Ljava/lang/String;

    const-string v6, "mg4ta7ka0nUwB4FGZ9fOP"

    const/4 v0, 0x2

    aput-object v6, v7, v0

    if-eqz v8, :cond_50

    aget-object v0, p1, v2

    if-eqz v0, :cond_35

    aget-boolean v0, p2, v2

    if-nez v0, :cond_50

    :cond_35
    aget-object v0, p3, v2

    check-cast v0, Lcom/facebook/ads/redexgen/X/Vj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vj;->A00(Lcom/facebook/ads/redexgen/X/Vj;)I

    move-result v6

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/BT;->A0L:[Z

    aget-boolean v0, v0, v6

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget v0, v5, Lcom/facebook/ads/redexgen/X/BT;->A01:I

    sub-int/2addr v0, v3

    iput v0, v5, Lcom/facebook/ads/redexgen/X/BT;->A01:I

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/BT;->A0L:[Z

    aput-boolean v4, v0, v6

    const/4 v0, 0x0

    aput-object v0, p3, v2

    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_53
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_59
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/BT;->A0I:Z

    if-eqz v0, :cond_c6

    if-nez v1, :cond_cd

    :goto_5f
    const/4 v1, 0x1

    :goto_60
    const/4 v6, 0x0

    :goto_61
    array-length v0, p1

    if-ge v6, v0, :cond_cf

    aget-object v0, p3, v6

    if-nez v0, :cond_bd

    aget-object v0, p1, v6

    if-eqz v0, :cond_bd

    aget-object v7, p1, v6

    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/GO;->length()I

    move-result v0

    if-ne v0, v3, :cond_c4

    const/4 v0, 0x1

    :goto_75
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    invoke-interface {v7, v4}, Lcom/facebook/ads/redexgen/X/GO;->A75(I)I

    move-result v0

    if-nez v0, :cond_c2

    const/4 v0, 0x1

    :goto_7f
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/BT;->A09:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/GO;->A81()Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A00(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;)I

    move-result v2

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/BT;->A0L:[Z

    aget-boolean v0, v0, v2

    xor-int/2addr v0, v3

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget v0, v5, Lcom/facebook/ads/redexgen/X/BT;->A01:I

    add-int/2addr v0, v3

    iput v0, v5, Lcom/facebook/ads/redexgen/X/BT;->A01:I

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/BT;->A0L:[Z

    aput-boolean v3, v0, v2

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vj;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/Vj;-><init>(Lcom/facebook/ads/redexgen/X/BT;I)V

    aput-object v0, p3, v6

    aput-boolean v3, p4, v6

    if-nez v1, :cond_bd

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/BT;->A0K:[Lcom/facebook/ads/redexgen/X/Vf;

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Vf;->A0J()V

    invoke-virtual {v2, p5, p6, v3, v3}, Lcom/facebook/ads/redexgen/X/Vf;->A0D(JZZ)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_c0

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Vf;->A0B()I

    move-result v0

    if-eqz v0, :cond_c0

    const/4 v1, 0x1

    :cond_bd
    :goto_bd
    add-int/lit8 v6, v6, 0x1

    goto :goto_61

    :cond_c0
    const/4 v1, 0x0

    goto :goto_bd

    :cond_c2
    const/4 v0, 0x0

    goto :goto_7f

    :cond_c4
    const/4 v0, 0x0

    goto :goto_75

    :cond_c6
    const-wide/16 v1, 0x0

    cmp-long v0, p5, v1

    if-eqz v0, :cond_cd

    goto :goto_5f

    :cond_cd
    const/4 v1, 0x0

    goto :goto_60

    :cond_cf
    iget v0, v5, Lcom/facebook/ads/redexgen/X/BT;->A01:I

    if-nez v0, :cond_f9

    iput-boolean v4, v5, Lcom/facebook/ads/redexgen/X/BT;->A0E:Z

    iput-boolean v4, v5, Lcom/facebook/ads/redexgen/X/BT;->A0D:Z

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/BT;->A0X:Lcom/facebook/ads/redexgen/X/V6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V6;->A08()Z

    move-result v0

    if-eqz v0, :cond_ec

    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/BT;->A0K:[Lcom/facebook/ads/redexgen/X/Vf;

    array-length v1, v2

    :goto_e2
    if-ge v4, v1, :cond_10c

    aget-object v0, v2, v4

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vf;->A0H()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_e2

    :cond_ec
    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/BT;->A0K:[Lcom/facebook/ads/redexgen/X/Vf;

    array-length v1, v2

    :goto_ef
    if-ge v4, v1, :cond_111

    aget-object v0, v2, v4

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vf;->A0I()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_ef

    :cond_f9
    if-eqz v1, :cond_111

    invoke-virtual {p0, p5, p6}, Lcom/facebook/ads/redexgen/X/BT;->AF0(J)J

    move-result-wide p5

    const/4 v1, 0x0

    :goto_100
    array-length v0, p3

    if-ge v1, v0, :cond_111

    aget-object v0, p3, v1

    if-eqz v0, :cond_109

    aput-boolean v3, p4, v1

    :cond_109
    add-int/lit8 v1, v1, 0x1

    goto :goto_100

    :cond_10c
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/BT;->A0X:Lcom/facebook/ads/redexgen/X/V6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/V6;->A05()V

    :cond_111
    iput-boolean v3, v5, Lcom/facebook/ads/redexgen/X/BT;->A0I:Z

    return-wide p5
.end method

.method public final AFx(II)Lcom/facebook/ads/redexgen/X/Bm;
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0K:[Lcom/facebook/ads/redexgen/X/Vf;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_14

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0J:[I

    aget v0, v0, v1

    if-ne v0, p1, :cond_11

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0K:[Lcom/facebook/ads/redexgen/X/Vf;

    aget-object v0, v0, v1

    return-object v0

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_14
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0V:Lcom/facebook/ads/redexgen/X/GU;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Vf;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Vf;-><init>(Lcom/facebook/ads/redexgen/X/GU;)V

    invoke-virtual {v2, p0}, Lcom/facebook/ads/redexgen/X/Vf;->A0L(Lcom/facebook/ads/redexgen/X/Es;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BT;->A0J:[I

    add-int/lit8 v0, v3, 0x1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0J:[I

    aput p1, v0, v3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BT;->A0K:[Lcom/facebook/ads/redexgen/X/Vf;

    add-int/lit8 v0, v3, 0x1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/Vf;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BT;->A0K:[Lcom/facebook/ads/redexgen/X/Vf;

    aput-object v2, v0, v3

    return-object v2
.end method
