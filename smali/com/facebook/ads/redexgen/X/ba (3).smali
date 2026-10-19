###### Class com.facebook.ads.redexgen.X.C1629ba (com.facebook.ads.redexgen.X.ba)
.class public final Lcom/facebook/ads/redexgen/X/ba;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/bb;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/bd;

.field public A01:Lcom/facebook/ads/redexgen/X/bb;

.field public A02:Lcom/facebook/ads/redexgen/X/bO;

.field public final A03:Lcom/facebook/ads/redexgen/X/bb;

.field public final A04:Lcom/facebook/ads/redexgen/X/bk;

.field public final A05:Lcom/facebook/ads/redexgen/X/bc;

.field public final A06:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bk;Lcom/facebook/ads/redexgen/X/bc;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ba;->A06:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fx;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Fx;-><init>(Lcom/facebook/ads/redexgen/X/ba;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ba;->A03:Lcom/facebook/ads/redexgen/X/bb;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ba;->A04:Lcom/facebook/ads/redexgen/X/bk;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ba;->A05:Lcom/facebook/ads/redexgen/X/bc;

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/ba;)Lcom/facebook/ads/redexgen/X/bb;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ba;->A01:Lcom/facebook/ads/redexgen/X/bb;

    return-object p0
.end method

.method public static A01()Lcom/facebook/ads/redexgen/X/ba;
    .registers 3

    new-instance v2, Lcom/facebook/ads/redexgen/X/G1;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/G1;-><init>()V

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/ba;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/ba;-><init>(Lcom/facebook/ads/redexgen/X/bk;Lcom/facebook/ads/redexgen/X/bc;)V

    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/ba;)Ljava/util/LinkedHashMap;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ba;->A06:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/be;Lcom/facebook/ads/redexgen/X/bi;Lcom/facebook/ads/redexgen/X/Fw;)V
    .registers 6

    invoke-static {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/bO;->A00(Lcom/facebook/ads/redexgen/X/be;Lcom/facebook/ads/redexgen/X/bi;Lcom/facebook/ads/redexgen/X/Fw;)Lcom/facebook/ads/redexgen/X/bO;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/ba;->A02:Lcom/facebook/ads/redexgen/X/bO;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ba;->A00:Lcom/facebook/ads/redexgen/X/bd;

    if-eqz v0, :cond_d

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bO;->A03(Lcom/facebook/ads/redexgen/X/bd;)V

    :cond_d
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ba;->A02:Lcom/facebook/ads/redexgen/X/bO;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ba;->A03:Lcom/facebook/ads/redexgen/X/bb;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bO;->A04(Lcom/facebook/ads/redexgen/X/bb;)V

    return-void
.end method


# virtual methods
.method public final A04(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ba;->A02:Lcom/facebook/ads/redexgen/X/bO;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bO;->A01(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public final A05(Landroid/view/View;Lcom/facebook/ads/redexgen/X/bg;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ba;->A02:Lcom/facebook/ads/redexgen/X/bO;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/bO;->A02(Landroid/view/View;Lcom/facebook/ads/redexgen/X/bg;)V

    :cond_b
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/be;Landroid/view/View;)V
    .registers 6

    if-eqz p1, :cond_15

    if-eqz p2, :cond_15

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ba;->A04:Lcom/facebook/ads/redexgen/X/bk;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Fy;

    invoke-direct {v2, p2, v0}, Lcom/facebook/ads/redexgen/X/Fy;-><init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/bk;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ba;->A05:Lcom/facebook/ads/redexgen/X/bc;

    new-instance v0, Lcom/facebook/ads/redexgen/X/3f;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/3f;-><init>(Lcom/facebook/ads/redexgen/X/bc;)V

    invoke-direct {p0, p1, v2, v0}, Lcom/facebook/ads/redexgen/X/ba;->A03(Lcom/facebook/ads/redexgen/X/be;Lcom/facebook/ads/redexgen/X/bi;Lcom/facebook/ads/redexgen/X/Fw;)V

    :cond_15
    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C07323f (com.facebook.ads.redexgen.X.3f)
.class public final Lcom/facebook/ads/redexgen/X/3f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Fw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/bT;,
        Lcom/facebook/ads/redexgen/X/bS;
    }
.end annotation


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;

.field public static final A0B:Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/bd;

.field public final A02:Lcom/facebook/ads/redexgen/X/bc;

.field public final A03:Lcom/facebook/ads/redexgen/X/bT;

.field public final A04:Lcom/facebook/ads/redexgen/X/bT;

.field public final A05:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/bS;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Z

.field public final A08:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "okBgSYhQGmV0QyU32992deBLR6XrdaZQ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "E"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZDdZ5rthnspWTI3gzSJHBR7aYCyAxUsq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "EsXM2pc2I6J3hYC1V9OQRTCtALa8wmqB"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DKA0ex9266tXplnV6PUb8C0vdYHWYjG4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "tBgdKBpc94v7LWesC8aTGIaQqZdJYwjy"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iZindrm9v6DBRttH7DMzAa7"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "d9237vu9oQoOcpvZwewcjFUDz74P7MIA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3f;->A0A:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3f;->A03()V

    const-class v0, Lcom/facebook/ads/redexgen/X/3f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/3f;->A0B:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bc;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A06:Ljava/util/Map;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/bT;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/bT;-><init>(Lcom/facebook/ads/redexgen/X/bU;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A04:Lcom/facebook/ads/redexgen/X/bT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bT;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/bT;-><init>(Lcom/facebook/ads/redexgen/X/bU;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A03:Lcom/facebook/ads/redexgen/X/bT;

    const/4 v1, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A05:Ljava/util/List;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3f;->A02:Lcom/facebook/ads/redexgen/X/bc;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A08:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A07:Z

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/bS;)Landroid/graphics/Rect;
    .registers 6

    if-eqz p0, :cond_4d

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/bS;->A00(Lcom/facebook/ads/redexgen/X/bS;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_4d

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/bS;->A00(Lcom/facebook/ads/redexgen/X/bS;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-eq v0, v3, :cond_4d

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/bS;->A00(Lcom/facebook/ads/redexgen/X/bS;)Landroid/graphics/Rect;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/3f;->A0A:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_47

    sget-object v2, Lcom/facebook/ads/redexgen/X/3f;->A0A:[Ljava/lang/String;

    const-string v1, "p"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "Kr6mbDoiLKwWSgNyXDF2oJW"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget v0, v4, Landroid/graphics/Rect;->right:I

    if-eq v0, v3, :cond_4d

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/bS;->A00(Lcom/facebook/ads/redexgen/X/bS;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v3, :cond_4d

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/bS;->A00(Lcom/facebook/ads/redexgen/X/bS;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_47
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4d
    const/4 v2, 0x0

    const/16 v1, 0x8f

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3f;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/bg;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/facebook/ads/redexgen/X/bS;
    .registers 7

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3f;->A06:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/bg;->A04:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/bS;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A04:Lcom/facebook/ads/redexgen/X/bT;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/bT;->A07(Lcom/facebook/ads/redexgen/X/bT;Lcom/facebook/ads/redexgen/X/bg;)Z

    move-result v0

    if-eqz v0, :cond_21

    if-nez v2, :cond_35

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A00:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/bS;->A04(J)Lcom/facebook/ads/redexgen/X/bS;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3f;->A06:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/bg;->A04:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    :goto_21
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/bS;->A00(Lcom/facebook/ads/redexgen/X/bS;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/bS;->A05(Lcom/facebook/ads/redexgen/X/bS;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2

    :cond_35
    sget-object v0, Lcom/facebook/ads/redexgen/X/bW;->A04:Lcom/facebook/ads/redexgen/X/bW;

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/bS;->A02(Lcom/facebook/ads/redexgen/X/bS;Lcom/facebook/ads/redexgen/X/bW;)Lcom/facebook/ads/redexgen/X/bW;

    goto :goto_21
.end method

.method public static A02(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/3f;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5b

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

    const/16 v0, 0xc4

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/3f;->A09:[B

    return-void

    :array_a
    .array-data 1
        0x29t
        0x15t
        0x14t
        0xet
        0x5dt
        0xbt
        0x14t
        0x18t
        0xat
        0xdt
        0x12t
        0x14t
        0x13t
        0x9t
        0x5dt
        0x15t
        0x1ct
        0xet
        0x5dt
        0x13t
        0x12t
        0x9t
        0x5dt
        0x1ft
        0x18t
        0x18t
        0x13t
        0x5dt
        0x10t
        0x18t
        0x1ct
        0xet
        0x8t
        0xft
        0x18t
        0x19t
        0x5dt
        0x12t
        0xft
        0x5dt
        0x14t
        0xet
        0x5dt
        0x1ct
        0x5dt
        0x1at
        0xft
        0x12t
        0x8t
        0xdt
        0x5dt
        0xat
        0x15t
        0x14t
        0x1et
        0x15t
        0x5dt
        0xat
        0x14t
        0x11t
        0x11t
        0x5dt
        0x13t
        0x18t
        0xbt
        0x18t
        0xft
        0x5dt
        0xft
        0x18t
        0x9t
        0x8t
        0xft
        0x13t
        0x5dt
        0x1ct
        0x5dt
        0x10t
        0x18t
        0x1ct
        0xet
        0x8t
        0xft
        0x18t
        0x10t
        0x18t
        0x13t
        0x9t
        0x5dt
        0xet
        0x14t
        0x13t
        0x1et
        0x18t
        0x5dt
        0x14t
        0x9t
        0x5at
        0xet
        0x5dt
        0x10t
        0x1ct
        0x19t
        0x18t
        0x5dt
        0x8t
        0xdt
        0x5dt
        0x12t
        0x1bt
        0x5dt
        0xet
        0x8t
        0x1ft
        0xbt
        0x14t
        0x18t
        0xat
        0xet
        0x5dt
        0x9t
        0x15t
        0x1ct
        0x9t
        0x5dt
        0x1et
        0x12t
        0x8t
        0x11t
        0x19t
        0x5dt
        0x1ft
        0x18t
        0x5dt
        0x12t
        0x1bt
        0x1bt
        0xet
        0x1et
        0xft
        0x18t
        0x18t
        0x13t
        0x76t
        0x7dt
        0x6ft
        0x4bt
        0x7bt
        0x79t
        0x76t
        0x3ft
        0x24t
        0x3dt
        0x3dt
        0x71t
        0x27t
        0x38t
        0x34t
        0x26t
        0x71t
        0x21t
        0x23t
        0x3et
        0x21t
        0x34t
        0x23t
        0x25t
        0x28t
        0x71t
        0x37t
        0x3et
        0x23t
        0x71t
        0x23t
        0x34t
        0x3ct
        0x3et
        0x27t
        0x34t
        0x35t
        0x71t
        0x38t
        0x25t
        0x34t
        0x3ct
        0x71t
        0x7dt
        0x61t
        0x68t
        0x7at
        0x5ct
        0x6bt
        0x7et
        0x61t
        0x7ct
        0x7at
    .end array-data
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/bT;)V
    .registers 9

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/bT;->A02(Lcom/facebook/ads/redexgen/X/bT;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/bg;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3f;->A06:Ljava/util/Map;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bg;->A04:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/bS;

    if-eqz v4, :cond_59

    sget-object v0, Lcom/facebook/ads/redexgen/X/bW;->A03:Lcom/facebook/ads/redexgen/X/bW;

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/bS;->A02(Lcom/facebook/ads/redexgen/X/bS;Lcom/facebook/ads/redexgen/X/bW;)Lcom/facebook/ads/redexgen/X/bW;

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/bS;->A05(Lcom/facebook/ads/redexgen/X/bS;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {v5, p0}, Lcom/facebook/ads/redexgen/X/bg;->A03(Lcom/facebook/ads/redexgen/X/bV;)V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A08:Z

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3f;->A06:Ljava/util/Map;

    sget-object v2, Lcom/facebook/ads/redexgen/X/3f;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_89

    sget-object v2, Lcom/facebook/ads/redexgen/X/3f;->A0A:[Ljava/lang/String;

    const-string v1, "dCpYPRypiVOHB4OlkAqBqk8EySqTLE1k"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "r3sjB169HJX8vOmMpko73ANLsggTEmi2"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_59
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A02:Lcom/facebook/ads/redexgen/X/bc;

    if-eqz v0, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x96

    const/16 v1, 0x24

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3f;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bg;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/16 v2, 0xba

    const/16 v1, 0xa

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3f;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_89
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8f
    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/bT;)V
    .registers 4

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/bT;->A03(Lcom/facebook/ads/redexgen/X/bT;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/bg;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/bg;->A03(Lcom/facebook/ads/redexgen/X/bV;)V

    goto :goto_8

    :cond_18
    return-void
.end method


# virtual methods
.method public final A3R(Lcom/facebook/ads/redexgen/X/bg;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 9

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3f;->A01(Lcom/facebook/ads/redexgen/X/bg;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/facebook/ads/redexgen/X/bS;

    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/bg;->A01:Lcom/facebook/ads/redexgen/X/bg;

    sget-object v0, Lcom/facebook/ads/redexgen/X/bg;->A08:Lcom/facebook/ads/redexgen/X/bg;

    if-eq v4, v0, :cond_3f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A03:Lcom/facebook/ads/redexgen/X/bT;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/bT;->A07(Lcom/facebook/ads/redexgen/X/bT;Lcom/facebook/ads/redexgen/X/bg;)Z

    move-result v3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3f;->A06:Ljava/util/Map;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bg;->A04:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/bS;

    if-eqz v3, :cond_33

    if-eqz v2, :cond_40

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/bS;->A05(Lcom/facebook/ads/redexgen/X/bS;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A07:Z

    if-eqz v0, :cond_2e

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/bg;->A04()Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_2e
    sget-object v0, Lcom/facebook/ads/redexgen/X/bW;->A04:Lcom/facebook/ads/redexgen/X/bW;

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/bS;->A02(Lcom/facebook/ads/redexgen/X/bS;Lcom/facebook/ads/redexgen/X/bW;)Lcom/facebook/ads/redexgen/X/bW;

    :cond_33
    :goto_33
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/bS;->A05(Lcom/facebook/ads/redexgen/X/bS;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3f
    return-void

    :cond_40
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A00:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/bS;->A04(J)Lcom/facebook/ads/redexgen/X/bS;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/bS;->A00(Lcom/facebook/ads/redexgen/X/bS;)Landroid/graphics/Rect;

    move-result-object v1

    const/high16 v0, -0x80000000

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3f;->A06:Ljava/util/Map;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/bg;->A04:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33
.end method

.method public final A3x(JLjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/3f;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3f;->A05:Ljava/util/List;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_22
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A04:Lcom/facebook/ads/redexgen/X/bT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bT;->A02(Lcom/facebook/ads/redexgen/X/bT;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/bg;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3f;->A06:Ljava/util/Map;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bg;->A04:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    :cond_40
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A03:Lcom/facebook/ads/redexgen/X/bT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bT;->A02(Lcom/facebook/ads/redexgen/X/bT;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/bg;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3f;->A06:Ljava/util/Map;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bg;->A04:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    :cond_5e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A06:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_68
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/bS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bS;->A05(Lcom/facebook/ads/redexgen/X/bS;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_68

    :cond_7c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A04:Lcom/facebook/ads/redexgen/X/bT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bT;->A05(Lcom/facebook/ads/redexgen/X/bT;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A03:Lcom/facebook/ads/redexgen/X/bT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bT;->A05(Lcom/facebook/ads/redexgen/X/bT;)V

    return-void
.end method

.method public final A5U()V
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A04:Lcom/facebook/ads/redexgen/X/bT;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3f;->A05(Lcom/facebook/ads/redexgen/X/bT;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A04:Lcom/facebook/ads/redexgen/X/bT;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3f;->A04(Lcom/facebook/ads/redexgen/X/bT;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A03:Lcom/facebook/ads/redexgen/X/bT;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3f;->A05(Lcom/facebook/ads/redexgen/X/bT;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A03:Lcom/facebook/ads/redexgen/X/bT;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/3f;->A04(Lcom/facebook/ads/redexgen/X/bT;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A01:Lcom/facebook/ads/redexgen/X/bd;

    if-eqz v0, :cond_3f

    new-instance v1, Lcom/facebook/ads/redexgen/X/bR;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/3f;->A05:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A04:Lcom/facebook/ads/redexgen/X/bT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bT;->A03(Lcom/facebook/ads/redexgen/X/bT;)Ljava/util/Collection;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A03:Lcom/facebook/ads/redexgen/X/bT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bT;->A03(Lcom/facebook/ads/redexgen/X/bT;)Ljava/util/Collection;

    move-result-object v6

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/bR;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/bV;Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;)V

    const/16 v2, 0x8f

    const/4 v1, 0x7

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3f;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    return-void
.end method

.method public final A71(Lcom/facebook/ads/redexgen/X/bg;Landroid/graphics/Rect;)V
    .registers 5

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3f;->A06:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/bg;->A04:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/bS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bS;->A05(Lcom/facebook/ads/redexgen/X/bS;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_15

    :cond_25
    return-void
.end method

.method public final A8A(Lcom/facebook/ads/redexgen/X/bg;)Lcom/facebook/ads/redexgen/X/bW;
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3f;->A06:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/bg;->A04:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/bS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/bS;->A01(Lcom/facebook/ads/redexgen/X/bS;)Lcom/facebook/ads/redexgen/X/bW;

    move-result-object v0

    return-object v0
.end method

.method public final A8C(Landroid/graphics/Rect;)V
    .registers 4

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public final A8D(Lcom/facebook/ads/redexgen/X/bg;)F
    .registers 7

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3f;->A06:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/bg;->A04:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/bS;

    if-eqz v1, :cond_3d

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3f;->A00(Lcom/facebook/ads/redexgen/X/bS;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/2addr v4, v0

    const/4 v3, 0x0

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/bS;->A05(Lcom/facebook/ads/redexgen/X/bS;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/2addr v1, v0

    add-int/2addr v3, v1

    goto :goto_22

    :cond_39
    int-to-float v1, v3

    int-to-float v0, v4

    div-float/2addr v1, v0

    return v1

    :cond_3d
    const/4 v0, 0x0

    return v0
.end method

.method public final AFW(Lcom/facebook/ads/redexgen/X/bd;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3f;->A01:Lcom/facebook/ads/redexgen/X/bd;

    return-void
.end method
