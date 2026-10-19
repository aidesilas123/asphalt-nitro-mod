###### Class com.facebook.ads.redexgen.X.C1239Oh (com.facebook.ads.redexgen.X.Oh)
.class public final Lcom/facebook/ads/redexgen/X/Oh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Oc;,
        Lcom/facebook/ads/redexgen/X/Od;,
        Lcom/facebook/ads/redexgen/X/SW;,
        Lcom/facebook/ads/internal/view/dynamiclayout/DynamicWebViewController$AdFormatType;,
        Lcom/facebook/ads/redexgen/X/Oe;,
        Lcom/facebook/ads/redexgen/X/Of;,
        Lcom/facebook/ads/redexgen/X/Og;
    }
.end annotation


# static fields
.field public static A0K:[B

.field public static final A0L:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final A0M:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/LN;

.field public A02:Lcom/facebook/ads/redexgen/X/OW;

.field public A03:Lcom/facebook/ads/redexgen/X/Of;

.field public A04:Lcom/facebook/ads/redexgen/X/Og;

.field public A05:Lcom/facebook/ads/redexgen/X/Qb;

.field public A06:Z

.field public A07:Z

.field public final A08:I

.field public final A09:Lcom/facebook/ads/redexgen/X/aS;

.field public final A0A:Lcom/facebook/ads/redexgen/X/6Q;

.field public final A0B:Lcom/facebook/ads/redexgen/X/YA;

.field public final A0C:Lcom/facebook/ads/redexgen/X/If;

.field public final A0D:Lcom/facebook/ads/redexgen/X/In;

.field public final A0E:Lcom/facebook/ads/redexgen/X/OU;

.field public final A0F:Lcom/facebook/ads/redexgen/X/SW;

.field public final A0G:Lcom/facebook/ads/redexgen/X/Os;

.field public final A0H:Lcom/facebook/ads/redexgen/X/Ot;

.field public final A0I:Ljava/lang/String;

.field public final A0J:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/facebook/ads/redexgen/X/Oe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Oh;->A0D()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Oh;->A0M:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Oh;->A0L:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/aS;Lcom/facebook/ads/redexgen/X/If;I)V
    .registers 21

    move-object/from16 v1, p0

    move-object v1, v1

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Oh;->A0J:Ljava/util/LinkedList;

    new-instance v0, Lcom/facebook/ads/redexgen/X/LN;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/LN;-><init>()V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Oh;->A01:Lcom/facebook/ads/redexgen/X/LN;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Oh;->A07:Z

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Oh;->A06:Z

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/facebook/ads/redexgen/X/Oh;->A00:J

    move-object/from16 v5, p1

    iput-object v5, v1, Lcom/facebook/ads/redexgen/X/Oh;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    move-object/from16 v7, p3

    iput-object v7, v1, Lcom/facebook/ads/redexgen/X/Oh;->A0C:Lcom/facebook/ads/redexgen/X/If;

    move-object/from16 v2, p2

    iput-object v2, v1, Lcom/facebook/ads/redexgen/X/Oh;->A09:Lcom/facebook/ads/redexgen/X/aS;

    move/from16 v4, p4

    iput v4, v1, Lcom/facebook/ads/redexgen/X/Oh;->A08:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/SW;

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/redexgen/X/SW;-><init>(Lcom/facebook/ads/redexgen/X/Oh;Lcom/facebook/ads/redexgen/X/YA;)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Oh;->A0F:Lcom/facebook/ads/redexgen/X/SW;

    new-instance v12, Lcom/facebook/ads/redexgen/X/6Q;

    invoke-direct {v12, v5}, Lcom/facebook/ads/redexgen/X/6Q;-><init>(Lcom/facebook/ads/redexgen/X/7S;)V

    iput-object v12, v1, Lcom/facebook/ads/redexgen/X/Oh;->A0A:Lcom/facebook/ads/redexgen/X/6Q;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v0

    new-instance v13, Lcom/facebook/ads/redexgen/X/In;

    invoke-direct {v13, v0, v7}, Lcom/facebook/ads/redexgen/X/In;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/If;)V

    iput-object v13, v1, Lcom/facebook/ads/redexgen/X/Oh;->A0D:Lcom/facebook/ads/redexgen/X/In;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/1C;->A0R()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0D()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A08()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Lcom/facebook/ads/redexgen/X/OU;

    invoke-direct {v8, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/OU;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v8, v1, Lcom/facebook/ads/redexgen/X/Oh;->A0E:Lcom/facebook/ads/redexgen/X/OU;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/facebook/ads/redexgen/X/Oh;->A0I:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/1C;->A0U()Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Oh;->A0H()Z

    move-result v15

    move-object v10, v5

    move-object v14, v8

    invoke-static/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/Ou;->A00(Lcom/facebook/ads/redexgen/X/YA;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/6Q;Lcom/facebook/ads/redexgen/X/In;Lcom/facebook/ads/redexgen/X/OU;Z)Lcom/facebook/ads/redexgen/X/Ot;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Oh;->A0H:Lcom/facebook/ads/redexgen/X/Ot;

    new-instance v4, Lcom/facebook/ads/redexgen/X/Os;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v10

    move-object v6, v1

    invoke-direct/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/Os;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/Oh;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/OU;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v1, Lcom/facebook/ads/redexgen/X/Oh;->A0G:Lcom/facebook/ads/redexgen/X/Os;

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Oh;)J
    .registers 2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A00:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Oh;)Lcom/facebook/ads/redexgen/X/aS;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A09:Lcom/facebook/ads/redexgen/X/aS;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Oh;)Lcom/facebook/ads/redexgen/X/6Q;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0A:Lcom/facebook/ads/redexgen/X/6Q;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Oh;)Lcom/facebook/ads/redexgen/X/YA;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Oh;)Lcom/facebook/ads/redexgen/X/In;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0D:Lcom/facebook/ads/redexgen/X/In;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Oh;)Lcom/facebook/ads/redexgen/X/OU;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0E:Lcom/facebook/ads/redexgen/X/OU;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Oh;)Lcom/facebook/ads/redexgen/X/OW;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A02:Lcom/facebook/ads/redexgen/X/OW;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Oh;)Lcom/facebook/ads/redexgen/X/Of;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A03:Lcom/facebook/ads/redexgen/X/Of;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Oh;)Lcom/facebook/ads/redexgen/X/Og;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A04:Lcom/facebook/ads/redexgen/X/Og;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Oh;)Lcom/facebook/ads/redexgen/X/Ot;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0H:Lcom/facebook/ads/redexgen/X/Ot;

    return-object p0
.end method

.method public static A0A(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Oh;->A0K:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0B()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Oh;->A0L:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private A0C()V
    .registers 9

    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0I:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    const/4 v2, 0x1

    const/4 v1, 0x6

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0A(III)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x1

    aput-object v0, v3, v7

    const/16 v2, 0x120

    const/16 v1, 0x16

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oe;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Oe;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0F(Lcom/facebook/ads/redexgen/X/Oe;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0H:Lcom/facebook/ads/redexgen/X/Ot;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ot;->A05:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0A(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/String;

    aput-object v0, v3, v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0I:Ljava/lang/String;

    aput-object v0, v3, v7

    const/16 v2, 0x136

    const/16 v1, 0x1a

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oe;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Oe;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0F(Lcom/facebook/ads/redexgen/X/Oe;)V

    return-void
.end method

.method public static A0D()V
    .registers 1

    const/16 v0, 0x1aa

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Oh;->A0K:[B

    return-void

    :array_a
    .array-data 1
        0x25t
        0x3ft
        0x27t
        0x38t
        0x3ft
        0x27t
        0x39t
        0xdt
        0x22t
        0x28t
        0x3et
        0x23t
        0x25t
        0x28t
        0x5t
        0x22t
        0x38t
        0x29t
        0x3et
        0x2at
        0x2dt
        0x2ft
        0x29t
        0x5t
        0x0t
        0x36t
        0x1t
        0x14t
        0xbt
        0x16t
        0x10t
        0xdt
        0xat
        0x3t
        0x22t
        0xdt
        0xat
        0xdt
        0x17t
        0xct
        0x1t
        0x0t
        0x4ct
        0x43t
        0x41t
        0x17t
        0x43t
        0x4dt
        0x5ft
        0x60t
        0x65t
        0x53t
        0x64t
        0x71t
        0x6et
        0x73t
        0x75t
        0x68t
        0x6ft
        0x66t
        0x52t
        0x75t
        0x60t
        0x73t
        0x75t
        0x64t
        0x65t
        0x29t
        0x26t
        0x24t
        0x72t
        0x26t
        0x28t
        0x3at
        0x22t
        0x37t
        0x37t
        0x22t
        0x20t
        0x2bt
        0x26t
        0x27t
        0x14t
        0x15t
        0xdt
        0x36t
        0x2et
        0xat
        0x9t
        0x1ct
        0xbt
        0x0t
        0xdt
        0xct
        0x2et
        0x1at
        0x9t
        0x5t
        0xdt
        0x2ct
        0x9t
        0x1ct
        0x9t
        0x54t
        0x42t
        0x45t
        0x45t
        0x52t
        0x59t
        0x43t
        0x60t
        0x61t
        0x79t
        0x42t
        0x5at
        0x30t
        0x24t
        0x37t
        0x3bt
        0x33t
        0x25t
        0x78t
        0x79t
        0x56t
        0x74t
        0x63t
        0x7et
        0x61t
        0x7et
        0x63t
        0x6et
        0x47t
        0x76t
        0x62t
        0x64t
        0x72t
        0x73t
        0x3ft
        0x30t
        0x32t
        0x64t
        0x30t
        0x3et
        0x2ct
        0x24t
        0x25t
        0xat
        0x28t
        0x3ft
        0x22t
        0x3dt
        0x22t
        0x3ft
        0x32t
        0x19t
        0x2et
        0x38t
        0x3et
        0x26t
        0x2et
        0x2ft
        0x63t
        0x6ct
        0x6et
        0x38t
        0x6ct
        0x62t
        0x70t
        0x53t
        0x52t
        0x7ft
        0x50t
        0x53t
        0x4ft
        0x59t
        0x7at
        0x49t
        0x50t
        0x50t
        0x4ft
        0x5ft
        0x4et
        0x59t
        0x59t
        0x52t
        0x6at
        0x55t
        0x59t
        0x4bt
        0x14t
        0x1bt
        0x19t
        0x4ft
        0x1bt
        0x15t
        0x43t
        0x42t
        0x6at
        0x59t
        0x40t
        0x40t
        0x5ft
        0x4ft
        0x5et
        0x49t
        0x49t
        0x42t
        0x7at
        0x45t
        0x49t
        0x5bt
        0x4t
        0xbt
        0x9t
        0x5ft
        0xbt
        0x5t
        0x48t
        0x49t
        0x71t
        0x46t
        0x4bt
        0x52t
        0x42t
        0x75t
        0x42t
        0x46t
        0x43t
        0xft
        0x0t
        0x2t
        0x54t
        0x0t
        0xbt
        0x7t
        0x0t
        0x2t
        0x54t
        0x0t
        0xbt
        0x7t
        0x0t
        0x2t
        0x54t
        0x0t
        0xet
        0x1ct
        0x78t
        0x79t
        0x41t
        0x76t
        0x7bt
        0x62t
        0x72t
        0x40t
        0x65t
        0x7et
        0x63t
        0x63t
        0x72t
        0x79t
        0x3ft
        0x30t
        0x32t
        0x64t
        0x30t
        0x3bt
        0x37t
        0x30t
        0x32t
        0x64t
        0x30t
        0x3et
        0x2ct
        0x6at
        0x7ct
        0x7at
        0x76t
        0x77t
        0x7dt
        0x46t
        0x7at
        0x71t
        0x78t
        0x77t
        0x77t
        0x7ct
        0x75t
        0x14t
        0x2t
        0x13t
        0x26t
        0x12t
        0x13t
        0xft
        0x2ct
        0x2t
        0x1et
        0x4ft
        0x40t
        0x42t
        0x14t
        0x40t
        0x4bt
        0x40t
        0x42t
        0x14t
        0x40t
        0x4et
        0x5ct
        0x4dt
        0x5bt
        0x4at
        0x7ct
        0x5ft
        0x4dt
        0x5bt
        0x8t
        0xat
        0x7ft
        0x4dt
        0x4dt
        0x5bt
        0x4at
        0x4dt
        0x16t
        0x19t
        0x1bt
        0x4dt
        0x19t
        0x12t
        0x19t
        0x1bt
        0x4dt
        0x19t
        0x17t
        0x2t
        0x14t
        0x5t
        0x33t
        0x10t
        0x2t
        0x14t
        0x47t
        0x45t
        0x32t
        0x1et
        0x1ft
        0x17t
        0x18t
        0x16t
        0x59t
        0x56t
        0x54t
        0x2t
        0x56t
        0x5dt
        0x56t
        0x54t
        0x2t
        0x56t
        0x58t
        0x39t
        0x22t
        0x39t
        0x2ct
        0x21t
        0x1at
        0x1bt
        0x3t
        0x38t
        0x20t
        0x26t
        0x21t
        0x3ft
        0x1dt
        0x2t
        0xft
        0xet
        0x4t
        0x2et
        0x1dt
        0xet
        0x5t
        0x1ft
        0x43t
        0x4ct
        0x4et
        0x18t
        0x4ct
        0x47t
        0x4bt
        0x4ct
        0x4et
        0x18t
        0x4ct
        0x47t
        0x4bt
        0x4ct
        0x4et
        0x18t
        0x4ct
        0x42t
        0x50t
        0xet
        0x11t
        0x1dt
        0xft
        0x2at
        0x1dt
        0x19t
        0x1ct
        0x1t
        0x2ct
        0x17t
        0x2bt
        0x10t
        0x17t
        0xft
        0x50t
        0x5ft
        0x5dt
        0xbt
        0x5ft
        0x51t
        0x43t
    .end array-data
.end method

.method private declared-synchronized A0E()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A06:Z

    if-eqz v0, :cond_40

    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0J:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0J:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Oe;

    if-eqz v4, :cond_5

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0F:Lcom/facebook/ads/redexgen/X/SW;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Oe;->A00:Ljava/lang/String;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Oe;->A02:[Ljava/lang/String;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/NB;->A05(Ljava/lang/String;)V

    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Oe;->A01:Z

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0D:Lcom/facebook/ads/redexgen/X/In;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Im;->A0L:Lcom/facebook/ads/redexgen/X/Im;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/In;->A04(Lcom/facebook/ads/redexgen/X/Im;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Oe;->A00:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0S;->A5B(Ljava/lang/String;)V

    goto :goto_5
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_42

    :cond_40
    monitor-exit p0

    return-void

    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized A0F(Lcom/facebook/ads/redexgen/X/Oe;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0J:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Oh;->A0E()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/Oh;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Oh;->A0E()V

    return-void
.end method

.method private A0H()Z
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Oh;->A0I()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private A0I()Z
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/QJ;->A03()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/IP;->A2N(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/Oh;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Oh;->A06:Z

    return p1
.end method


# virtual methods
.method public final A0K()Lcom/facebook/ads/redexgen/X/In;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0D:Lcom/facebook/ads/redexgen/X/In;

    return-object v0
.end method

.method public final A0L()Lcom/facebook/ads/redexgen/X/LN;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A01:Lcom/facebook/ads/redexgen/X/LN;

    return-object v0
.end method

.method public final A0M()Lcom/facebook/ads/redexgen/X/OU;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0E:Lcom/facebook/ads/redexgen/X/OU;

    return-object v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/OW;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A02:Lcom/facebook/ads/redexgen/X/OW;

    return-object v0
.end method

.method public final A0O()Lcom/facebook/ads/redexgen/X/SW;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0F:Lcom/facebook/ads/redexgen/X/SW;

    return-object v0
.end method

.method public final A0P()V
    .registers 5

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0I:Ljava/lang/String;

    aput-object v0, v3, v1

    const/16 v2, 0x17

    const/16 v1, 0x1a

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oe;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Oe;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0F(Lcom/facebook/ads/redexgen/X/Oe;)V

    return-void
.end method

.method public final A0Q()V
    .registers 5

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0I:Ljava/lang/String;

    aput-object v0, v3, v1

    const/16 v2, 0x31

    const/16 v1, 0x19

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oe;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Oe;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0F(Lcom/facebook/ads/redexgen/X/Oe;)V

    return-void
.end method

.method public final A0R()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A07:Z

    return-void
.end method

.method public final A0S()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A07:Z

    return-void
.end method

.method public final A0T()V
    .registers 5

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0I:Ljava/lang/String;

    aput-object v0, v3, v1

    const/16 v2, 0x79

    const/16 v1, 0x17

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oe;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Oe;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0F(Lcom/facebook/ads/redexgen/X/Oe;)V

    return-void
.end method

.method public final A0U()V
    .registers 5

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0I:Ljava/lang/String;

    aput-object v0, v3, v1

    const/16 v2, 0xa8

    const/16 v1, 0x1b

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oe;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Oe;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0F(Lcom/facebook/ads/redexgen/X/Oe;)V

    return-void
.end method

.method public final A0V()V
    .registers 5

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0I:Ljava/lang/String;

    aput-object v0, v3, v1

    const/16 v2, 0xc3

    const/16 v1, 0x16

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oe;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Oe;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0F(Lcom/facebook/ads/redexgen/X/Oe;)V

    return-void
.end method

.method public final A0W()V
    .registers 5

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0I:Ljava/lang/String;

    aput-object v0, v3, v1

    const/16 v2, 0x194

    const/16 v1, 0x16

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oe;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Oe;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0F(Lcom/facebook/ads/redexgen/X/Oe;)V

    return-void
.end method

.method public final A0X()V
    .registers 6

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-le v1, v0, :cond_16

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0F:Lcom/facebook/ads/redexgen/X/SW;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0G:Lcom/facebook/ads/redexgen/X/Os;

    const/4 v2, 0x7

    const/16 v1, 0x10

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/SW;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_16
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0D:Lcom/facebook/ads/redexgen/X/In;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Im;->A0O:Lcom/facebook/ads/redexgen/X/Im;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/In;->A04(Lcom/facebook/ads/redexgen/X/Im;Ljava/util/Map;)V

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Oh;->A08:I

    const/4 v0, 0x3

    if-ne v1, v0, :cond_38

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0H:Lcom/facebook/ads/redexgen/X/Ot;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Ot;->A00:Ljava/lang/String;

    :goto_27
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0F:Lcom/facebook/ads/redexgen/X/SW;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/SW;->loadUrl(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A00:J

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    goto :goto_3d

    :cond_38
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0H:Lcom/facebook/ads/redexgen/X/Ot;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Ot;->A01:Ljava/lang/String;

    goto :goto_27

    :goto_3d
    :try_start_3d
    const/16 v2, 0x174

    const/4 v1, 0x3

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v2, 0x67

    const/16 v1, 0xc

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0A(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Oi;->A00()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/16 v2, 0x16a

    const/16 v1, 0xa

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0A(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Oh;->A0M:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/16 v2, 0x4a

    const/16 v1, 0xd

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0A(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Oh;->A0L:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7c
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_7c} :catch_7c

    :catch_7c
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0S;->A5H(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Oh;->A0C()V

    return-void
.end method

.method public final A0Y()V
    .registers 5

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0I:Ljava/lang/String;

    aput-object v0, v3, v1

    const/16 v2, 0x90

    const/16 v1, 0x18

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oe;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Oe;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0F(Lcom/facebook/ads/redexgen/X/Oe;)V

    return-void
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/LN;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Oh;->A01:Lcom/facebook/ads/redexgen/X/LN;

    return-void
.end method

.method public final A0a(Lcom/facebook/ads/redexgen/X/OW;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Oh;->A02:Lcom/facebook/ads/redexgen/X/OW;

    return-void
.end method

.method public final A0b(Lcom/facebook/ads/redexgen/X/Of;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Oh;->A03:Lcom/facebook/ads/redexgen/X/Of;

    return-void
.end method

.method public final A0c(Lcom/facebook/ads/redexgen/X/Og;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Oh;->A04:Lcom/facebook/ads/redexgen/X/Og;

    return-void
.end method

.method public final A0d(Lcom/facebook/ads/redexgen/X/SV;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0G:Lcom/facebook/ads/redexgen/X/Os;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Os;->A0N(Lcom/facebook/ads/redexgen/X/SV;)V

    return-void
.end method

.method public final A0e(Lcom/facebook/ads/redexgen/X/Qb;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Oh;->A05:Lcom/facebook/ads/redexgen/X/Qb;

    return-void
.end method

.method public final A0f(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0I:Ljava/lang/String;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    aput-object p1, v3, v0

    const/16 v2, 0xf7

    const/16 v1, 0x1b

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oe;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Oe;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0F(Lcom/facebook/ads/redexgen/X/Oe;)V

    return-void
.end method

.method public final A0g(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0I:Ljava/lang/String;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    aput-object p1, v3, v0

    const/4 v0, 0x2

    aput-object p2, v3, v0

    const/16 v2, 0xd9

    const/16 v1, 0x1e

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oe;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Oe;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0F(Lcom/facebook/ads/redexgen/X/Oe;)V

    return-void
.end method

.method public final A0h(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 8

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0I:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v4, v3

    const/4 v0, 0x1

    aput-object p1, v4, v0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/16 v2, 0x177

    const/16 v1, 0x1d

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oe;

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/Oe;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0F(Lcom/facebook/ads/redexgen/X/Oe;)V

    return-void
.end method

.method public final A0i(Ljava/util/Map;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v4, p0

    const/16 v2, 0x57

    const/16 v1, 0x10

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0A(III)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v5, p1

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Oh;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A1Y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b8

    :try_start_1c
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_2d
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_7a

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v10, :cond_77

    if-eqz v9, :cond_77

    if-eqz v8, :cond_77

    new-instance v11, Lcom/facebook/ads/redexgen/X/Rv;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Oh;->A09:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    invoke-direct/range {v11 .. v18}, Lcom/facebook/ads/redexgen/X/Rv;-><init>(Ljava/lang/String;JJJ)V

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Lcom/facebook/ads/redexgen/X/Rv;->A06(J)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_77
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_7a
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Ru;->A04(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/16 v3, 0x73

    const/4 v1, 0x6

    const/16 v0, 0x54

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v7, :cond_b8

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Oh;->A0C:Lcom/facebook/ads/redexgen/X/If;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Oh;->A09:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Lcom/facebook/ads/redexgen/X/If;->A9f(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_b8
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_9d} :catch_9d

    :catch_9d
    move-exception v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Oh;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v7

    new-instance v6, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v6, v1}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/Throwable;)V

    const/16 v3, 0x112

    const/16 v1, 0xe

    const/16 v0, 0x1b

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0A(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xe10

    invoke-interface {v7, v1, v0, v6}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    :cond_b8
    :goto_b8
    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c1
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/Oh;->A0C:Lcom/facebook/ads/redexgen/X/If;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Oh;->A09:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/NL;

    invoke-direct {v1, v5}, Lcom/facebook/ads/redexgen/X/NL;-><init>(Ljava/util/Map;)V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Oh;->A05:Lcom/facebook/ads/redexgen/X/Qb;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NL;->A03(Lcom/facebook/ads/redexgen/X/Qb;)Lcom/facebook/ads/redexgen/X/NL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NL;->A05()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/If;->A9L(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final A0j(Lorg/json/JSONObject;)V
    .registers 8

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0A(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    aput-object v1, v3, v5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0I:Ljava/lang/String;

    aput-object v0, v3, v1

    const/16 v2, 0x150

    const/16 v1, 0x1a

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oe;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Oe;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0F(Lcom/facebook/ads/redexgen/X/Oe;)V

    return-void
.end method

.method public final A0k()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A0G:Lcom/facebook/ads/redexgen/X/Os;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Os;->A0O()Z

    move-result v0

    return v0
.end method

.method public final A0l()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Oh;->A07:Z

    return v0
.end method
