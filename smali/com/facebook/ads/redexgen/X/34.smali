###### Class com.facebook.ads.redexgen.X.AnonymousClass34 (com.facebook.ads.redexgen.X.34)
.class public final Lcom/facebook/ads/redexgen/X/34;
.super Lcom/facebook/ads/redexgen/X/BP;
.source ""


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;

.field public static final A07:Ljava/util/regex/Pattern;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public final A04:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qvo0GMLMlCI9r2KvubgW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xANfLU"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vfLxBByg2WxKhxozFOdEyd4oNWbI2yKZ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "M6AXkYe8VdVGq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "jqpt9kLQVEpjtzmdo0kCC28NolZOOofM"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wQfQ1ikODVE5"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8nxGlLt3aQnzE5X"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "LzSrLgRmD2ZM4QoK2ANM"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/34;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/34;->A03()V

    const/4 v2, 0x1

    const/16 v1, 0x23

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/34;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/34;->A07:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/34;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const/16 v2, 0xb6

    const/16 v1, 0xa

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/34;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/BP;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_46

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/34;->A04:Z

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A0Q([B)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2f

    const/16 v1, 0x8

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/34;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A03(Z)V

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/34;->A06(Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/34;->A04(Lcom/facebook/ads/redexgen/X/Hh;)V

    :goto_45
    return-void

    :cond_46
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/34;->A04:Z

    goto :goto_45
.end method

.method public static A00(Ljava/lang/String;)J
    .registers 9

    sget-object v0, Lcom/facebook/ads/redexgen/X/34;->A07:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_12

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_12
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v4, 0x3c

    mul-long/2addr v6, v4

    mul-long/2addr v6, v4

    const-wide/32 v2, 0xf4240

    mul-long/2addr v6, v2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v4

    mul-long/2addr v0, v2

    add-long/2addr v6, v0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v2

    add-long/2addr v6, v0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v0, 0x2710

    mul-long/2addr v2, v0

    add-long/2addr v6, v2

    return-wide v6
.end method

.method private final A01([BIZ)Lcom/facebook/ads/redexgen/X/VW;
    .registers 9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/facebook/ads/redexgen/X/HX;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/HX;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v1, p1, p2}, Lcom/facebook/ads/redexgen/X/Hh;-><init>([BI)V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/34;->A04:Z

    if-nez v0, :cond_16

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/34;->A04(Lcom/facebook/ads/redexgen/X/Hh;)V

    :cond_16
    invoke-direct {p0, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/34;->A05(Lcom/facebook/ads/redexgen/X/Hh;Ljava/util/List;Lcom/facebook/ads/redexgen/X/HX;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/FV;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/HX;->A05()[J

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/VW;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/VW;-><init>([Lcom/facebook/ads/redexgen/X/FV;[J)V

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/34;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x34

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
    .registers 1

    const/16 v0, 0xe1

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/34;->A05:[B

    return-void

    :array_a
    .array-data 1
        0x7t
        0x51t
        0x46t
        0x43t
        0x51t
        0x25t
        0x1dt
        0x52t
        0x50t
        0x43t
        0x50t
        0x46t
        0x51t
        0x25t
        0x1dt
        0x52t
        0x50t
        0x43t
        0x51t
        0x25t
        0x1dt
        0x52t
        0x50t
        0x51t
        0x46t
        0x43t
        0x43t
        0x5t
        0x25t
        0x57t
        0x50t
        0x51t
        0x25t
        0x1dt
        0x52t
        0x50t
        0x31t
        0x6ct
        0x41t
        0x49t
        0x44t
        0x47t
        0x4ft
        0x5dt
        0x4dt
        0x12t
        0x8t
        0x43t
        0x6at
        0x77t
        0x68t
        0x64t
        0x71t
        0x3ft
        0x25t
        0x4ct
        0x74t
        0x76t
        0x6ft
        0x6ft
        0x76t
        0x71t
        0x78t
        0x3ft
        0x7bt
        0x76t
        0x7et
        0x73t
        0x70t
        0x78t
        0x6at
        0x7at
        0x3ft
        0x73t
        0x76t
        0x71t
        0x7at
        0x3ft
        0x7dt
        0x7at
        0x79t
        0x70t
        0x6dt
        0x7at
        0x3ft
        0x7ct
        0x70t
        0x72t
        0x6ft
        0x73t
        0x7at
        0x6bt
        0x7at
        0x3ft
        0x79t
        0x70t
        0x6dt
        0x72t
        0x7et
        0x6bt
        0x25t
        0x3ft
        0x20t
        0x18t
        0x1at
        0x3t
        0x3t
        0x1at
        0x1dt
        0x14t
        0x53t
        0x17t
        0x1at
        0x12t
        0x1ft
        0x1ct
        0x14t
        0x6t
        0x16t
        0x53t
        0x1ft
        0x1at
        0x1dt
        0x16t
        0x53t
        0x4t
        0x1at
        0x7t
        0x1bt
        0x53t
        0x15t
        0x16t
        0x4t
        0x16t
        0x1t
        0x53t
        0x10t
        0x1ct
        0x1ft
        0x6t
        0x1et
        0x1dt
        0x0t
        0x53t
        0x7t
        0x1bt
        0x12t
        0x1dt
        0x53t
        0x15t
        0x1ct
        0x1t
        0x1et
        0x12t
        0x7t
        0x49t
        0x53t
        0x8t
        0x30t
        0x32t
        0x2bt
        0x2bt
        0x32t
        0x35t
        0x3ct
        0x7bt
        0x32t
        0x35t
        0x2dt
        0x3at
        0x37t
        0x32t
        0x3ft
        0x7bt
        0x2ft
        0x32t
        0x36t
        0x32t
        0x35t
        0x3ct
        0x61t
        0x7bt
        0x41t
        0x61t
        0x73t
        0x56t
        0x77t
        0x71t
        0x7dt
        0x76t
        0x77t
        0x60t
        0x1at
        0x4t
        0x37t
        0x24t
        0x2ft
        0x35t
        0x32t
        0x1ct
        0x46t
        0x46t
        0x54t
        0x5at
        0x5at
        0x68t
        0x55t
        0x72t
        0x27t
        0x23t
        0x36t
        0x55t
        0x74t
        0x6et
        0x65t
        0x6ft
        0x66t
        0x61t
        0x74t
        0x67t
        0x61t
        0x12t
        0x3t
        0x1et
        0x12t
    .end array-data
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/Hh;)V
    .registers 6

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0P()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    const/16 v2, 0xc0

    const/16 v1, 0x8

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/34;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_17
    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/Hh;Ljava/util/List;Lcom/facebook/ads/redexgen/X/HX;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Hh;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/FV;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/HX;",
            ")V"
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0P()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_32

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/34;->A04:Z

    if-nez v0, :cond_1e

    const/16 v2, 0x2f

    const/16 v1, 0x8

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/34;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/34;->A06(Ljava/lang/String;)V

    goto :goto_0

    :cond_1e
    const/16 v2, 0x25

    const/16 v1, 0xa

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/34;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v3, p2, p3}, Lcom/facebook/ads/redexgen/X/34;->A07(Ljava/lang/String;Ljava/util/List;Lcom/facebook/ads/redexgen/X/HX;)V

    goto :goto_0

    :cond_32
    return-void
.end method

.method private A06(Ljava/lang/String;)V
    .registers 10

    const/16 v2, 0x2f

    const/16 v1, 0x8

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/34;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x24

    const/4 v1, 0x1

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/34;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/34;->A01:I

    const/4 v3, -0x1

    iput v3, p0, Lcom/facebook/ads/redexgen/X/34;->A02:I

    iput v3, p0, Lcom/facebook/ads/redexgen/X/34;->A00:I

    iput v3, p0, Lcom/facebook/ads/redexgen/X/34;->A03:I

    const/4 v4, 0x0

    :goto_2a
    iget v0, p0, Lcom/facebook/ads/redexgen/X/34;->A01:I

    const/4 v7, 0x0

    if-ge v4, v0, :cond_82

    aget-object v0, v5, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A0M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_92

    :cond_40
    const/4 v7, -0x1

    :goto_41
    packed-switch v7, :pswitch_data_a0

    :goto_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    :pswitch_47
    iput v4, p0, Lcom/facebook/ads/redexgen/X/34;->A02:I

    goto :goto_44

    :pswitch_4a
    iput v4, p0, Lcom/facebook/ads/redexgen/X/34;->A00:I

    goto :goto_44

    :pswitch_4d
    iput v4, p0, Lcom/facebook/ads/redexgen/X/34;->A03:I

    goto :goto_44

    :sswitch_50
    const/16 v2, 0xd5

    const/4 v1, 0x3

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/34;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v7, 0x1

    goto :goto_41

    :sswitch_61
    const/16 v2, 0xdd

    const/4 v1, 0x4

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/34;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v7, 0x2

    goto :goto_41

    :sswitch_72
    const/16 v2, 0xd8

    const/4 v1, 0x5

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/34;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_41

    :cond_82
    iget v0, p0, Lcom/facebook/ads/redexgen/X/34;->A02:I

    if-eq v0, v3, :cond_8e

    iget v0, p0, Lcom/facebook/ads/redexgen/X/34;->A00:I

    if-eq v0, v3, :cond_8e

    iget v0, p0, Lcom/facebook/ads/redexgen/X/34;->A03:I

    if-ne v0, v3, :cond_90

    :cond_8e
    iput v7, p0, Lcom/facebook/ads/redexgen/X/34;->A01:I

    :cond_90
    return-void

    nop

    :sswitch_data_92
    .sparse-switch
        0x188db -> :sswitch_50
        0x36452d -> :sswitch_61
        0x68ac462 -> :sswitch_72
    .end sparse-switch

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_47
        :pswitch_4a
        :pswitch_4d
    .end packed-switch
.end method

.method private A07(Ljava/lang/String;Ljava/util/List;Lcom/facebook/ads/redexgen/X/HX;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/FV;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/HX;",
            ")V"
        }
    .end annotation

    iget v3, p0, Lcom/facebook/ads/redexgen/X/34;->A01:I

    const/16 v2, 0xb6

    const/16 v1, 0xa

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/34;->A02(III)Ljava/lang/String;

    move-result-object v5

    if-nez v3, :cond_2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x37

    const/16 v1, 0x2f

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/34;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2d
    const/16 v2, 0x25

    const/16 v1, 0xa

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/34;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x24

    const/4 v1, 0x1

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/34;->A02(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/34;->A01:I

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    array-length v1, v8

    iget v0, p0, Lcom/facebook/ads/redexgen/X/34;->A01:I

    if-eq v1, v0, :cond_72

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x66

    const/16 v1, 0x37

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/34;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_72
    iget v0, p0, Lcom/facebook/ads/redexgen/X/34;->A02:I

    aget-object v0, v8, v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/34;->A00(Ljava/lang/String;)J

    move-result-wide v2

    const/16 v4, 0x9d

    const/16 v1, 0x19

    const/16 v0, 0x6f

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/34;->A02(III)Ljava/lang/String;

    move-result-object v7

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v10

    if-nez v0, :cond_a2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iget v4, p0, Lcom/facebook/ads/redexgen/X/34;->A00:I

    aget-object v6, v8, v4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d2

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/34;->A00(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v4, v0, v10

    if-nez v4, :cond_d2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d2
    iget v4, p0, Lcom/facebook/ads/redexgen/X/34;->A03:I

    aget-object v8, v8, v4

    const/16 v6, 0xce

    const/4 v5, 0x7

    const/16 v4, 0x3d

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/34;->A02(III)Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v4, 0x61

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/34;->A02(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v7, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v6, 0xc8

    const/4 v5, 0x3

    const/16 v4, 0x2e

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/34;->A02(III)Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/16 v4, 0x39

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/34;->A02(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v6, 0xcb

    const/4 v5, 0x3

    const/16 v4, 0x32

    invoke-static {v6, v5, v4}, Lcom/facebook/ads/redexgen/X/34;->A02(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Lcom/facebook/ads/redexgen/X/FV;

    invoke-direct {v4, v5}, Lcom/facebook/ads/redexgen/X/FV;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v2, v3}, Lcom/facebook/ads/redexgen/X/HX;->A04(J)V

    cmp-long v2, v0, v10

    if-eqz v2, :cond_141

    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/facebook/ads/redexgen/X/34;->A06:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v3, v4, v2

    const/4 v2, 0x6

    aget-object v2, v4, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v3, v2, :cond_142

    sget-object v4, Lcom/facebook/ads/redexgen/X/34;->A06:[Ljava/lang/String;

    const-string v3, "QluocDWeuHRDa"

    const/4 v2, 0x3

    aput-object v3, v4, v2

    const-string v3, "JZgOBObbaiMn4tK"

    const/4 v2, 0x6

    aput-object v3, v4, v2

    invoke-virtual {p3, v0, v1}, Lcom/facebook/ads/redexgen/X/HX;->A04(J)V

    :cond_141
    return-void

    :cond_142
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final bridge synthetic A0b([BIZ)Lcom/facebook/ads/redexgen/X/FW;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/FX;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/34;->A01([BIZ)Lcom/facebook/ads/redexgen/X/VW;

    move-result-object v0

    return-object v0
.end method
