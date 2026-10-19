###### Class com.facebook.ads.redexgen.X.AbstractC1547a9 (com.facebook.ads.redexgen.X.a9)
.class public abstract Lcom/facebook/ads/redexgen/X/a9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ji;


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;

.field public static final A0F:Landroid/os/Handler;

.field public static final A0G:Lcom/facebook/ads/redexgen/X/0t;

.field public static final A0H:Lcom/facebook/ads/redexgen/X/Jj;

.field public static final A0I:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/0o;

.field public A01:Lcom/facebook/ads/redexgen/X/0o;

.field public A02:Ljava/lang/String;

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/8F;

.field public A05:Lcom/facebook/ads/redexgen/X/Jg;

.field public A06:Lcom/facebook/ads/redexgen/X/0p;

.field public final A07:Lcom/facebook/ads/redexgen/X/1r;

.field public final A08:Lcom/facebook/ads/redexgen/X/If;

.field public final A09:Lcom/facebook/ads/redexgen/X/0t;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Jj;

.field public final A0B:Lcom/facebook/ads/redexgen/X/YA;

.field public volatile A0C:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4yJhIog9RzpC9w4XHjq79o6hmz2pMXrt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bLneqHgNlbzxjE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "P7gevZ65hMGDm5VmgpkLcWEi46YxYduR"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Pajg2XTKXpS0pN0AoGLcPnQoa2IWF6Z7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "YyJRdl3XxpBTstTmsw"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "OvgbPt0JG7dlaj99kqPbJKVmb9CPKTVr"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "21VbiQWRKHmC0d4xB3zoTsbqXtN2ZOxw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Q3Y9mBD7X4l0uaedlY7FP5X0xCsXbtIX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/a9;->A0E:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/a9;->A07()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/LX;->A02()V

    const-class v0, Lcom/facebook/ads/redexgen/X/a9;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/a9;->A0I:Ljava/lang/String;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/a9;->A0F:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/1r;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A03:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A02:Ljava/lang/String;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/a9;->A07:Lcom/facebook/ads/redexgen/X/1r;

    sget-object v0, Lcom/facebook/ads/redexgen/X/a9;->A0H:Lcom/facebook/ads/redexgen/X/Jj;

    if-eqz v0, :cond_40

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0A:Lcom/facebook/ads/redexgen/X/Jj;

    :goto_14
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0A:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Jj;->A0P(Lcom/facebook/ads/redexgen/X/Ji;)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/a9;->A0G:Lcom/facebook/ads/redexgen/X/0t;

    if-eqz v0, :cond_38

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A09:Lcom/facebook/ads/redexgen/X/0t;

    :goto_1f
    invoke-static {p1}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/InitApi;->onAdLoadInvoked(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7S;->A09()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A08:Lcom/facebook/ads/redexgen/X/If;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0S;->A4n()V

    return-void

    :cond_38
    new-instance v0, Lcom/facebook/ads/redexgen/X/0t;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/0t;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A09:Lcom/facebook/ads/redexgen/X/0t;

    goto :goto_1f

    :cond_40
    new-instance v0, Lcom/facebook/ads/redexgen/X/Jj;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Jj;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0A:Lcom/facebook/ads/redexgen/X/Jj;

    goto :goto_14
.end method

.method public static A06(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/a9;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A07()V
    .registers 1

    const/16 v0, 0x14a

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/a9;->A0D:[B

    return-void

    :array_a
    .array-data 1
        0x4bt
        0x6et
        0x6bt
        0x7at
        0x7et
        0x6ft
        0x78t
        0x2at
        0x6et
        0x65t
        0x6ft
        0x79t
        0x2at
        0x64t
        0x65t
        0x7et
        0x2at
        0x6ft
        0x72t
        0x63t
        0x79t
        0x7et
        0x4et
        0x6bt
        0x6et
        0x7ft
        0x7bt
        0x6at
        0x7dt
        0x2ft
        0x66t
        0x7ct
        0x2ft
        0x61t
        0x7at
        0x63t
        0x63t
        0x2ft
        0x27t
        0x6ct
        0x67t
        0x6et
        0x66t
        0x61t
        0x2ft
        0x61t
        0x60t
        0x7bt
        0x2ft
        0x63t
        0x60t
        0x6et
        0x6bt
        0x6at
        0x6bt
        0x26t
        0x39t
        0x1ct
        0x19t
        0x8t
        0xct
        0x1dt
        0xat
        0x58t
        0x11t
        0xbt
        0x58t
        0x16t
        0xdt
        0x14t
        0x14t
        0x58t
        0x50t
        0x1bt
        0x10t
        0x19t
        0x11t
        0x16t
        0x1dt
        0x1ct
        0x51t
        0x2dt
        0x8t
        0xdt
        0x1ct
        0x18t
        0x9t
        0x1et
        0x4ct
        0x5t
        0x1ft
        0x4ct
        0x2t
        0x19t
        0x0t
        0x0t
        0x4ct
        0x44t
        0x2t
        0x3t
        0x4ct
        0xft
        0x4t
        0xdt
        0x5t
        0x2t
        0x45t
        0x4et
        0x6bt
        0x6et
        0x7ft
        0x7bt
        0x6at
        0x7dt
        0x2ft
        0x66t
        0x7ct
        0x2ft
        0x61t
        0x7at
        0x63t
        0x63t
        0x2ft
        0x60t
        0x61t
        0x2ft
        0x7ct
        0x7bt
        0x6et
        0x7dt
        0x7bt
        0x4et
        0x6bt
        0x5t
        0x24t
        0x6bt
        0x26t
        0x24t
        0x39t
        0x2et
        0x6bt
        0x2at
        0x2ft
        0x6bt
        0x28t
        0x2at
        0x25t
        0x2ft
        0x22t
        0x2ft
        0x2at
        0x3ft
        0x2et
        0x38t
        0x65t
        0x7at
        0x5ft
        0x42t
        0x43t
        0x4at
        0xdt
        0x4ct
        0x49t
        0x4ct
        0x5dt
        0x59t
        0x48t
        0x5ft
        0xdt
        0x59t
        0x54t
        0x5dt
        0x48t
        0x3t
        0x2et
        0x2bt
        0x6ft
        0x2et
        0x23t
        0x3dt
        0x2at
        0x2et
        0x2bt
        0x36t
        0x6ft
        0x3ct
        0x3bt
        0x2et
        0x3dt
        0x3bt
        0x2at
        0x2bt
        0x5et
        0x5bt
        0x4ct
        0x34t
        0x25t
        0x3ct
        0x1at
        0x11t
        0x18t
        0x10t
        0x17t
        0x26t
        0x9t
        0x18t
        0xbt
        0x18t
        0x14t
        0xat
        0x4ct
        0x5bt
        0x4at
        0x4ft
        0x5at
        0x4ft
        0x61t
        0x4ct
        0x44t
        0x4bt
        0x4dt
        0x5at
        0xet
        0x47t
        0x5dt
        0xet
        0x40t
        0x5bt
        0x42t
        0x42t
        0x26t
        0x2dt
        0x20t
        0x31t
        0x3at
        0x33t
        0x37t
        0x26t
        0x27t
        0x1ct
        0x2at
        0x27t
        0x7at
        0x71t
        0x69t
        0x76t
        0x6dt
        0x70t
        0x71t
        0x72t
        0x7at
        0x71t
        0x6bt
        0x3ft
        0x76t
        0x6ct
        0x3ft
        0x7at
        0x72t
        0x6ft
        0x6bt
        0x66t
        0x26t
        0x32t
        0x25t
        0x31t
        0x35t
        0x25t
        0x2et
        0x23t
        0x39t
        0x1ft
        0x23t
        0x21t
        0x30t
        0x30t
        0x29t
        0x2et
        0x27t
        0x1ct
        0x1bt
        0x3t
        0x14t
        0x19t
        0x1ct
        0x11t
        0x55t
        0x5t
        0x19t
        0x14t
        0x16t
        0x10t
        0x18t
        0x10t
        0x1bt
        0x1t
        0x55t
        0x1ct
        0x1bt
        0x55t
        0x7t
        0x10t
        0x6t
        0x5t
        0x1at
        0x1bt
        0x6t
        0x10t
        0xat
        0x9t
        0x7t
        0x2t
        0x39t
        0x12t
        0xft
        0xbt
        0x3t
        0x39t
        0xbt
        0x15t
        0x2ct
        0x3bt
        0x2ft
        0x2bt
        0x3bt
        0x2dt
        0x2at
        0x1t
        0x37t
        0x3at
    .end array-data
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/U6;)V
    .registers 17

    move-object v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/U6;->A00()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8F;->A05()Lcom/facebook/ads/redexgen/X/8G;

    move-result-object v1

    if-nez v1, :cond_37

    :cond_d
    const/16 v3, 0x117

    const/16 v2, 0x1d

    const/16 v1, 0x7d

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/a9;->A06(III)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_AD_PLACEMENT:Lcom/facebook/ads/internal/protocol/AdErrorType;

    new-instance v3, Lcom/facebook/ads/redexgen/X/JG;

    invoke-direct {v3, v1, v4}, Lcom/facebook/ads/redexgen/X/JG;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v2

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/JG;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    invoke-interface {v2, v1, v4}, Lcom/facebook/ads/redexgen/X/0S;->A4p(ILjava/lang/String;)V

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/a9;->A06:Lcom/facebook/ads/redexgen/X/0p;

    if-eqz v0, :cond_36

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/0p;->A0G(Lcom/facebook/ads/redexgen/X/JG;)V

    :cond_36
    return-void

    :cond_37
    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/a9;->A04:Lcom/facebook/ads/redexgen/X/8F;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/a9;->A00:Lcom/facebook/ads/redexgen/X/0o;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/a9;->A04:Lcom/facebook/ads/redexgen/X/8F;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8F;->A0A()Lorg/json/JSONObject;

    move-result-object v6

    const/16 v4, 0xc3

    const/4 v3, 0x3

    const/16 v2, 0x5d

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/a9;->A06(III)Ljava/lang/String;

    move-result-object v5

    if-nez v6, :cond_84

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8F;->A04()Lcom/facebook/ads/redexgen/X/8D;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/a9;->A0C(Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/8D;)Z

    move-result v2

    if-nez v2, :cond_58

    return-void

    :cond_58
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/a9;->A00:Lcom/facebook/ads/redexgen/X/0o;

    if-nez v2, :cond_1ff

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v7

    sget v6, Lcom/facebook/ads/redexgen/X/7x;->A0a:I

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8D;->A02()Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x51

    const/16 v2, 0x1a

    const/16 v1, 0x64

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/a9;->A06(III)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v1, v2, v4}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v5, v6, v1}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/JG;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/JG;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/a9;->ABH(Lcom/facebook/ads/redexgen/X/JG;)V

    return-void

    :cond_84
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8F;->A04()Lcom/facebook/ads/redexgen/X/8D;

    move-result-object v3

    :cond_8d
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d5

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/a9;->A0C(Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/8D;)Z

    move-result v2

    if-eqz v2, :cond_227

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9c
    :goto_9c
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8F;->A04()Lcom/facebook/ads/redexgen/X/8D;

    move-result-object v3

    if-nez v3, :cond_8d

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/a9;->A00:Lcom/facebook/ads/redexgen/X/0o;

    const/4 v4, 0x0

    if-nez v2, :cond_df

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v7

    sget v6, Lcom/facebook/ads/redexgen/X/7x;->A0a:I

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/8D;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8D;->A02()Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x38

    const/16 v2, 0x19

    const/16 v1, 0x70

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/a9;->A06(III)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v1, v2, v4}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v5, v6, v1}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/JG;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/JG;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/a9;->ABH(Lcom/facebook/ads/redexgen/X/JG;)V

    return-void

    :cond_d5
    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/a9;->A0B(Lcom/facebook/ads/redexgen/X/8D;)Z

    move-result v2

    if-eqz v2, :cond_9c

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    :cond_df
    const/4 v7, 0x0

    :try_start_e0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    const/4 v2, 0x1

    if-le v6, v2, :cond_14c

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/a9;->A00:Lcom/facebook/ads/redexgen/X/0o;

    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/0o;->AFs()Z

    move-result v2

    if-eqz v2, :cond_14c

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_fd
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_111

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/8D;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_fd

    :cond_111
    const/16 v7, 0xc0

    const/4 v6, 0x3

    const/16 v2, 0x37

    invoke-static {v7, v6, v2}, Lcom/facebook/ads/redexgen/X/a9;->A06(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v7, 0xc6

    const/16 v6, 0xc

    const/16 v2, 0x71

    invoke-static {v7, v6, v2}, Lcom/facebook/ads/redexgen/X/a9;->A06(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8F;->A0A()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v10, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v9, Lcom/facebook/ads/redexgen/X/1s;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8F;->A05()Lcom/facebook/ads/redexgen/X/8G;

    move-result-object v11

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/a9;->A07:Lcom/facebook/ads/redexgen/X/1r;

    iget-object v12, v2, Lcom/facebook/ads/redexgen/X/1r;->A09:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8F;->A05()Lcom/facebook/ads/redexgen/X/8G;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8G;->A0C()J

    move-result-wide v13

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/1s;-><init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/8G;Ljava/lang/String;J)V

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/a9;->A00:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, v2, v1, v3, v9}, Lcom/facebook/ads/redexgen/X/a9;->A0N(Lcom/facebook/ads/redexgen/X/0o;Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/1s;)V

    goto :goto_14b
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_149} :catch_149

    :catch_149
    const/4 v7, 0x0

    goto :goto_14c

    :goto_14b
    const/4 v7, 0x1

    :cond_14c
    :goto_14c
    if-nez v7, :cond_21d

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_185

    sget-object v4, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x49

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/a9;->A06(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/facebook/ads/redexgen/X/JG;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JG;

    move-result-object v6

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v5

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/JG;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v4

    const/16 v3, 0x85

    const/16 v2, 0x16

    const/16 v1, 0x43

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/a9;->A06(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v4, v1}, Lcom/facebook/ads/redexgen/X/0S;->A4p(ILjava/lang/String;)V

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/a9;->A06:Lcom/facebook/ads/redexgen/X/0p;

    if-eqz v0, :cond_184

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/0p;->A0G(Lcom/facebook/ads/redexgen/X/JG;)V

    :cond_184
    return-void

    :cond_185
    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/a9;->A00:Lcom/facebook/ads/redexgen/X/0o;

    sget-object v6, Lcom/facebook/ads/redexgen/X/a9;->A0E:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v3, v6, v2

    const/4 v2, 0x1

    aget-object v2, v6, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v3, v2, :cond_1f9

    sget-object v6, Lcom/facebook/ads/redexgen/X/a9;->A0E:[Ljava/lang/String;

    const-string v3, "F2ixlBYVHNYJB4bAHADqJrSynawwg1yM"

    const/4 v2, 0x0

    aput-object v3, v6, v2

    const-string v3, "djkwyiiWLTaQwWMcVWQWfq0o8Ww2Jgo9"

    const/4 v2, 0x5

    aput-object v3, v6, v2

    if-nez v7, :cond_1d4

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v7

    sget v6, Lcom/facebook/ads/redexgen/X/7x;->A0a:I

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/8D;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8D;->A02()Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x16

    const/16 v2, 0x22

    const/4 v1, 0x7

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/a9;->A06(III)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v1, v2, v4}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v5, v6, v1}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/JG;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/JG;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/a9;->ABH(Lcom/facebook/ads/redexgen/X/JG;)V

    return-void

    :cond_1d4
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/8D;

    new-instance v4, Lcom/facebook/ads/redexgen/X/1s;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8F;->A05()Lcom/facebook/ads/redexgen/X/8G;

    move-result-object v6

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/a9;->A07:Lcom/facebook/ads/redexgen/X/1r;

    iget-object v7, v2, Lcom/facebook/ads/redexgen/X/1r;->A09:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8F;->A05()Lcom/facebook/ads/redexgen/X/8G;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8G;->A0C()J

    move-result-wide v8

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/1s;-><init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/8G;Ljava/lang/String;J)V

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/a9;->A00:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/facebook/ads/redexgen/X/a9;->A0N(Lcom/facebook/ads/redexgen/X/0o;Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/1s;)V

    goto :goto_21d

    :cond_1f9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1ff
    new-instance v4, Lcom/facebook/ads/redexgen/X/1s;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8F;->A05()Lcom/facebook/ads/redexgen/X/8G;

    move-result-object v6

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/a9;->A07:Lcom/facebook/ads/redexgen/X/1r;

    iget-object v7, v2, Lcom/facebook/ads/redexgen/X/1r;->A09:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8F;->A05()Lcom/facebook/ads/redexgen/X/8G;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8G;->A0C()J

    move-result-wide v8

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/1s;-><init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/8G;Ljava/lang/String;J)V

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/a9;->A00:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/facebook/ads/redexgen/X/a9;->A0N(Lcom/facebook/ads/redexgen/X/0o;Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/1s;)V

    :cond_21d
    :goto_21d
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A01()Lcom/facebook/ads/redexgen/X/Y9;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/1t;->A08(Lcom/facebook/ads/redexgen/X/Y9;Lcom/facebook/ads/redexgen/X/8F;)V

    return-void

    :cond_227
    return-void
.end method

.method private final A09(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v1

    if-eqz p1, :cond_2b

    const/4 v0, 0x1

    :goto_9
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0S;->A4q(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A03:J

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-ge v1, v0, :cond_2d

    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->API_NOT_SUPPORTED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A06(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/JG;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/JG;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/a9;->ABH(Lcom/facebook/ads/redexgen/X/JG;)V

    return-void

    :cond_2b
    const/4 v0, 0x0

    goto :goto_9

    :cond_2d
    :try_start_2d
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A07:Lcom/facebook/ads/redexgen/X/1r;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/1r;->A09:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A07:Lcom/facebook/ads/redexgen/X/1r;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1r;->A08:Lcom/facebook/ads/redexgen/X/JL;

    new-instance v2, Lcom/facebook/ads/redexgen/X/JQ;

    invoke-direct {v2, v3, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/JQ;-><init>(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JL;)V
    :try_end_3c
    .catch Lcom/facebook/ads/redexgen/X/JH; {:try_start_2d .. :try_end_3c} :catch_6d

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/a9;->A07:Lcom/facebook/ads/redexgen/X/1r;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v1, v0, v2, p2}, Lcom/facebook/ads/redexgen/X/1r;->A01(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/JQ;Lcom/facebook/ads/AdExperienceType;)Lcom/facebook/ads/redexgen/X/Jg;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/a9;->A05:Lcom/facebook/ads/redexgen/X/Jg;

    sget-object v1, Lcom/facebook/ads/redexgen/X/a9;->A0E:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x36

    if-eq v1, v0, :cond_67

    sget-object v2, Lcom/facebook/ads/redexgen/X/a9;->A0E:[Ljava/lang/String;

    const-string v1, "3q2wB1pMY3UXfOrLgu"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "CsXqAZILgfX2KA"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0A:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Jj;->A0O(Lcom/facebook/ads/redexgen/X/Jg;)V

    return-void

    :cond_67
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :catch_6d
    move-exception v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JG;->A02(Lcom/facebook/ads/redexgen/X/JH;)Lcom/facebook/ads/redexgen/X/JG;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/a9;->ABH(Lcom/facebook/ads/redexgen/X/JG;)V

    return-void
.end method

.method private A0A(Lorg/json/JSONObject;)V
    .registers 5

    if-eqz p1, :cond_1b

    const/16 v2, 0xe6

    const/16 v1, 0xc

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A02:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0v;->A01(Lcom/facebook/ads/redexgen/X/7S;)Lcom/facebook/ads/redexgen/X/0v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/0v;->A0O(Lorg/json/JSONObject;)V

    :cond_1b
    return-void
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/8D;)Z
    .registers 3

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/8D;)Z
    .registers 11

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A06(III)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    if-nez p2, :cond_34

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/JG;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JG;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v4

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/JG;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v3

    const/16 v2, 0x85

    const/16 v1, 0x16

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/0S;->A4p(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A06:Lcom/facebook/ads/redexgen/X/0p;

    if-eqz v0, :cond_33

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/0p;->A0G(Lcom/facebook/ads/redexgen/X/JG;)V

    :cond_33
    return v7

    :cond_34
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/8D;->A02()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/a9;->A09:Lcom/facebook/ads/redexgen/X/0t;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8F;->A05()Lcom/facebook/ads/redexgen/X/8G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8G;->A0D()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0t;->A00(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/redexgen/X/0o;

    move-result-object v2

    if-nez v2, :cond_75

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/7x;->A0a:I

    const/4 v2, 0x0

    const/16 v1, 0x16

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A06(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v3, v0, v6}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc3

    const/4 v1, 0x3

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JG;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/JG;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/a9;->ABH(Lcom/facebook/ads/redexgen/X/JG;)V

    return v7

    :cond_75
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A07:Lcom/facebook/ads/redexgen/X/1r;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1r;->A00()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v1

    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/0o;->A7W()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    if-eq v1, v0, :cond_aa

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/JG;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JG;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v4

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/JG;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v3

    const/16 v2, 0x9b

    const/16 v1, 0x13

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/0S;->A4p(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A06:Lcom/facebook/ads/redexgen/X/0p;

    if-eqz v0, :cond_a9

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/0p;->A0G(Lcom/facebook/ads/redexgen/X/JG;)V

    :cond_a9
    return v7

    :cond_aa
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/a9;->A00:Lcom/facebook/ads/redexgen/X/0o;

    sget-object v2, Lcom/facebook/ads/redexgen/X/a9;->A0E:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_15e

    sget-object v2, Lcom/facebook/ads/redexgen/X/a9;->A0E:[Ljava/lang/String;

    const-string v1, "MKxF4EMWgzzLH5X7HNcHVA2i4zdAiZz9"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "4tfdEW2uI31voJBW941pIR5b1aNGKiQe"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_135

    const/16 v2, 0x140

    const/16 v1, 0xa

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0S;->AFS(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/7S;->A0C(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7R;->A00()Lcom/facebook/ads/redexgen/X/Y9;

    move-result-object v0

    if-eqz v0, :cond_f5

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/7S;->A0C(Ljava/lang/String;)V

    :cond_f5
    const/16 v2, 0x106

    const/16 v1, 0x11

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/a9;->A0A(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A05:Lcom/facebook/ads/redexgen/X/Jg;

    if-nez v0, :cond_133

    const/16 v2, 0xf2

    const/16 v1, 0x14

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A06(III)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/JG;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JG;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/JG;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/0S;->A4p(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A06:Lcom/facebook/ads/redexgen/X/0p;

    if-eqz v0, :cond_132

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/0p;->A0G(Lcom/facebook/ads/redexgen/X/JG;)V

    :cond_132
    return v7

    :cond_133
    const/4 v0, 0x1

    return v0

    :cond_135
    const/16 v2, 0xd4

    const/16 v1, 0x12

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A06(III)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/JG;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JG;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/JG;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/0S;->A4p(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A06:Lcom/facebook/ads/redexgen/X/0p;

    if-eqz v0, :cond_15d

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/0p;->A0G(Lcom/facebook/ads/redexgen/X/JG;)V

    :cond_15d
    return v7

    :cond_15e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0D()J
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A04:Lcom/facebook/ads/redexgen/X/8F;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8F;->A03()J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final A0E()Landroid/os/Handler;
    .registers 2

    sget-object v0, Lcom/facebook/ads/redexgen/X/a9;->A0F:Landroid/os/Handler;

    return-object v0
.end method

.method public A0F()Lcom/facebook/ads/redexgen/X/1C;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A01:Lcom/facebook/ads/redexgen/X/0o;

    check-cast v0, Lcom/facebook/ads/redexgen/X/aW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aW;->A0H()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    return-object v0
.end method

.method public final A0G()Lcom/facebook/ads/redexgen/X/8G;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A04:Lcom/facebook/ads/redexgen/X/8F;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8F;->A05()Lcom/facebook/ads/redexgen/X/8G;

    move-result-object v0

    return-object v0
.end method

.method public final A0H()V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A03:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LM;->A01(J)J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/0S;->A2m(J)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A01:Lcom/facebook/ads/redexgen/X/0o;

    if-nez v0, :cond_14

    return-void

    :cond_14
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0o;->A6N()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1b

    return-void

    :cond_1b
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A03:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LM;->A04(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x134

    const/16 v1, 0xc

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A08:Lcom/facebook/ads/redexgen/X/If;

    new-instance v1, Lcom/facebook/ads/redexgen/X/In;

    invoke-direct {v1, v5, v0}, Lcom/facebook/ads/redexgen/X/In;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/If;)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/Im;->A08:Lcom/facebook/ads/redexgen/X/Im;

    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/In;->A04(Lcom/facebook/ads/redexgen/X/Im;Ljava/util/Map;)V

    return-void
.end method

.method public final A0I()V
    .registers 6

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/a9;->A01:Lcom/facebook/ads/redexgen/X/0o;

    const/16 v2, 0xc3

    const/4 v1, 0x3

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A06(III)Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_4e

    const/16 v2, 0x6b

    const/16 v1, 0x1a

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A06(III)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/7x;->A0Q:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/0S;->A4p(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/a9;->A06:Lcom/facebook/ads/redexgen/X/0p;

    if-eqz v1, :cond_44

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/JG;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JG;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0p;->A0G(Lcom/facebook/ads/redexgen/X/JG;)V

    :cond_44
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0S;->A4s()V

    return-void

    :cond_4e
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0C:Z

    if-eqz v0, :cond_94

    const/16 v2, 0xae

    const/16 v1, 0x12

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A06(III)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/7x;->A0M:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->AD_ALREADY_STARTED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/0S;->A4p(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/a9;->A06:Lcom/facebook/ads/redexgen/X/0p;

    if-eqz v1, :cond_8a

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/JG;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JG;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0p;->A0G(Lcom/facebook/ads/redexgen/X/JG;)V

    :cond_8a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0S;->A4r()V

    return-void

    :cond_94
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A01:Lcom/facebook/ads/redexgen/X/0o;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0o;->A6N()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ab

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/a9;->A08:Lcom/facebook/ads/redexgen/X/If;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A01:Lcom/facebook/ads/redexgen/X/0o;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0o;->A6N()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/If;->A9h(Ljava/lang/String;)V

    :cond_ab
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0S;->A4t()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0C:Z

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/a9;->A0L()V

    return-void
.end method

.method public final A0J()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/a9;->A0T(Z)V

    return-void
.end method

.method public final A0K()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A02:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0v;->A01(Lcom/facebook/ads/redexgen/X/7S;)Lcom/facebook/ads/redexgen/X/0v;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0v;->A0N(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public abstract A0L()V
.end method

.method public final A0M(Lcom/facebook/ads/redexgen/X/0o;)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/0o;->onDestroy()V

    :cond_5
    return-void
.end method

.method public abstract A0N(Lcom/facebook/ads/redexgen/X/0o;Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/1s;)V
.end method

.method public final A0O(Lcom/facebook/ads/redexgen/X/0p;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/a9;->A06:Lcom/facebook/ads/redexgen/X/0p;

    return-void
.end method

.method public final A0P(Lcom/facebook/ads/redexgen/X/1s;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0S;->A4m()V

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1s;->A03()Lorg/json/JSONObject;

    move-result-object v3

    const/16 v2, 0xd2

    const/4 v1, 0x2

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A08:Lcom/facebook/ads/redexgen/X/If;

    new-instance v2, Lcom/facebook/ads/redexgen/X/In;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/In;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/If;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Im;->A04:Lcom/facebook/ads/redexgen/X/Im;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/In;->A04(Lcom/facebook/ads/redexgen/X/Im;Ljava/util/Map;)V

    :cond_2d
    return-void
.end method

.method public A0Q(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A09(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V

    return-void
.end method

.method public final A0R(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/a9;->A0Q(Ljava/lang/String;)V

    return-void
.end method

.method public final A0S(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/a9;->A09(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V

    return-void
.end method

.method public A0T(Z)V
    .registers 3

    if-nez p1, :cond_7

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0C:Z

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0S;->A4u()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A01:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/a9;->A0M(Lcom/facebook/ads/redexgen/X/0o;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0C:Z

    return-void
.end method

.method public final A0U()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A04:Lcom/facebook/ads/redexgen/X/8F;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8F;->A0D()Z

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

.method public final declared-synchronized ABH(Lcom/facebook/ads/redexgen/X/JG;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/a9;->A0E()Landroid/os/Handler;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/aA;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/aA;-><init>(Lcom/facebook/ads/redexgen/X/a9;Lcom/facebook/ads/redexgen/X/JG;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AD5(Lcom/facebook/ads/redexgen/X/U6;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/a9;->A08(Lcom/facebook/ads/redexgen/X/U6;)V

    goto :goto_1f
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_21

    :catch_5
    move-exception v4

    :try_start_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v3

    const/16 v2, 0xc3

    const/4 v1, 0x3

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A06(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/7x;->A0T:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_21

    :goto_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method
