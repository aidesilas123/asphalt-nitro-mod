###### Class com.facebook.ads.redexgen.X.C6B (com.facebook.ads.redexgen.X.6B)
.class public final Lcom/facebook/ads/redexgen/X/6B;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/6C;

.field public static A01:Z

.field public static A02:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6B;->A02()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/6B;->A01:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6B;->A00:Lcom/facebook/ads/redexgen/X/6C;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/6B;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x19

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .registers 5

    const-class v1, Lcom/facebook/ads/redexgen/X/6B;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/6B;->A00:Lcom/facebook/ads/redexgen/X/6C;

    if-nez v0, :cond_9

    monitor-exit v1

    return-void

    :cond_9
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_37

    sget-object v0, Lcom/facebook/ads/redexgen/X/6B;->A00:Lcom/facebook/ads/redexgen/X/6C;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/6C;->AEe()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/7y;->A03(I)V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7R;->A00()Lcom/facebook/ads/redexgen/X/Y9;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6B;->A00(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xd49

    invoke-interface {v3, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    :cond_31
    sget-object v0, Lcom/facebook/ads/redexgen/X/6B;->A00:Lcom/facebook/ads/redexgen/X/6C;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/6C;->reset()V

    return-void

    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public static A02()V
    .registers 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/6B;->A02:[B

    return-void

    :array_a
    .array-data 1
        -0x18t
        -0x15t
        -0xct
        -0x17t
        -0x12t
        -0xdt
        -0x19t
        -0x8t
        -0xft
    .end array-data
.end method

.method public static A03(J)V
    .registers 5

    const-wide/16 v1, 0x0

    cmp-long v0, p0, v1

    if-lez v0, :cond_12

    new-instance v0, Lcom/facebook/ads/redexgen/X/YJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/YJ;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/6B;->A00:Lcom/facebook/ads/redexgen/X/6C;

    new-instance v0, Lcom/facebook/ads/redexgen/X/6D;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/6D;-><init>(J)V

    :cond_12
    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C6D (com.facebook.ads.redexgen.X.6D)
.class public final Lcom/facebook/ads/redexgen/X/6D;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field public final A00:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/6D;->A00:J

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6D;->start()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/K0;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v2, p0

    :goto_8
    :try_start_8
    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/6D;->A00:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_d} :catch_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_11

    :catch_d
    :try_start_d
    invoke-static {}, Lcom/facebook/ads/redexgen/X/6B;->A01()V

    goto :goto_8
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/K0;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
