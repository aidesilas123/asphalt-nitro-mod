###### Class com.facebook.ads.redexgen.X.AbstractC1609b9 (com.facebook.ads.redexgen.X.b9)
.class public abstract Lcom/facebook/ads/redexgen/X/b9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0B;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/0F;
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:Ljava/lang/String;


# instance fields
.field public final A00:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "0PvfoUFANCVNmnYZfPoejD6ohCtuxysE"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "CTVBuEwwodohpQOP7b4j4"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "9BgxiAbaVpMmFPJgyPUrG0VpyjL4diCu"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0p8mXLPxFyBv4phdqx8YrWMD1W9nJbZf"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "G0yvPsPNC2vYmeMn8hYLEKyQ1tXXfhoe"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "IW3zcZDApc8b2NyXBv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Oqr2oLquorC4BSN9LXFNL8a9XNzmbM1Z"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "n"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/b9;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/b9;->A04()V

    const-class v0, Lcom/facebook/ads/redexgen/X/b9;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/b9;->A03:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b9;->A00:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private A02(Ljava/util/List;)J
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    add-long/2addr v3, v0

    goto :goto_6

    :cond_18
    return-wide v3
.end method

.method public static A03(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/b9;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x36

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .registers 1

    const/16 v0, 0x5c

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/b9;->A01:[B

    return-void

    :array_a
    .array-data 1
        -0x68t
        -0x22t
        -0x19t
        -0x16t
        -0x68t
        -0x14t
        -0x16t
        -0x1ft
        -0x1bt
        -0x1bt
        -0x1ft
        -0x1at
        -0x21t
        -0x68t
        -0x25t
        -0x27t
        -0x25t
        -0x20t
        -0x23t
        -0x32t
        0x17t
        0x21t
        -0x32t
        0x12t
        0x13t
        0x1at
        0x13t
        0x22t
        0x13t
        0x12t
        -0x32t
        0x10t
        0x13t
        0x11t
        0xft
        0x23t
        0x21t
        0x13t
        -0x32t
        0x17t
        0x22t
        -0x32t
        0x13t
        0x26t
        0x11t
        0x13t
        0x13t
        0x12t
        0x21t
        -0x32t
        0x11t
        0xft
        0x11t
        0x16t
        0x13t
        -0x32t
        0x1at
        0x17t
        0x1bt
        0x17t
        0x22t
        -0x7dt
        -0x5ft
        -0x5dt
        -0x58t
        -0x5bt
        0x60t
        -0x5at
        -0x57t
        -0x54t
        -0x5bt
        0x60t
        -0xat
        0x23t
        0x23t
        0x20t
        0x23t
        -0x2ft
        0x15t
        0x16t
        0x1dt
        0x16t
        0x25t
        0x1at
        0x1ft
        0x18t
        -0x2ft
        0x17t
        0x1at
        0x1dt
        0x16t
        -0x2ft
    .end array-data
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/b9;Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/b9;->A06(Ljava/io/File;)V

    return-void
.end method

.method private A06(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/0E;->A03(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0E;->A01(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/b9;->A07(Ljava/util/List;)V

    return-void
.end method

.method private A07(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/b9;->A02(Ljava/util/List;)J

    move-result-wide v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_c
    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    sget-object v4, Lcom/facebook/ads/redexgen/X/b9;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v3, v4, v0

    const/4 v0, 0x1

    aget-object v0, v4, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v3, v0, :cond_a7

    sget-object v4, Lcom/facebook/ads/redexgen/X/b9;->A02:[Ljava/lang/String;

    const-string v3, "0WEexOrIiLXDlCjHBxNry1dxuPi8TFF2"

    const/4 v0, 0x0

    aput-object v3, v4, v0

    const-string v3, "0ARlW4XVdH4TDXa7R7a2wpH1vFPRrHRN"

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-virtual {p0, v8, v1, v2, v6}, Lcom/facebook/ads/redexgen/X/b9;->A08(Ljava/io/File;JI)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_78

    add-int/lit8 v6, v6, -0x1

    sub-long/2addr v1, v3

    sget-object v7, Lcom/facebook/ads/redexgen/X/b9;->A03:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x3d

    const/16 v3, 0xb

    const/16 v0, 0xa

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/b9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v4, 0x13

    const/16 v3, 0x2a

    const/16 v0, 0x78

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/b9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_78
    sget-object v7, Lcom/facebook/ads/redexgen/X/b9;->A03:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x48

    const/16 v3, 0x14

    const/16 v0, 0x7b

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/b9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v4, 0x0

    const/16 v3, 0x13

    const/16 v0, 0x42

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/b9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_a7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_ad
    return-void
.end method


# virtual methods
.method public abstract A08(Ljava/io/File;JI)Z
.end method

.method public AFw(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b9;->A00:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/facebook/ads/redexgen/X/0F;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/0F;-><init>(Lcom/facebook/ads/redexgen/X/b9;Ljava/io/File;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C0F (com.facebook.ads.redexgen.X.0F)
.class public final Lcom/facebook/ads/redexgen/X/0F;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/b9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final A00:Ljava/io/File;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/b9;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/b9;Ljava/io/File;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/0F;->A01:Lcom/facebook/ads/redexgen/X/b9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/0F;->A00:Ljava/io/File;

    return-void
.end method

.method private final A00()Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0F;->A01:Lcom/facebook/ads/redexgen/X/b9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0F;->A00:Ljava/io/File;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A05(Lcom/facebook/ads/redexgen/X/b9;Ljava/io/File;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0F;->A00()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
