###### Class com.facebook.ads.redexgen.X.I3 (com.facebook.ads.redexgen.X.I3)
.class public final Lcom/facebook/ads/redexgen/X/I3;
.super Landroid/os/HandlerThread;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/exoplayer2/thirdparty/video/DummySurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DummySurfaceThread"
.end annotation


# static fields
.field public static A05:[B


# instance fields
.field public A00:Landroid/os/Handler;

.field public A01:Lcom/facebook/ads/redexgen/X/HS;

.field public A02:Lcom/facebook/ads/internal/exoplayer2/thirdparty/video/DummySurface;

.field public A03:Ljava/lang/Error;

.field public A04:Ljava/lang/RuntimeException;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/I3;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/16 v2, 0x4d

    const/16 v1, 0xc

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I3;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/I3;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x39

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I3;->A01:Lcom/facebook/ads/redexgen/X/HS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I3;->A01:Lcom/facebook/ads/redexgen/X/HS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HS;->A08()V

    return-void
.end method

.method public static A02()V
    .registers 1

    const/16 v0, 0x59

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/I3;->A05:[B

    return-void

    :array_a
    .array-data 1
        -0x22t
        0xft
        0x7t
        0x7t
        0x13t
        -0x13t
        0xft
        0xct
        0x0t
        -0x5t
        -0x3t
        -0x1t
        -0x46t
        -0x2bt
        -0x23t
        -0x20t
        -0x27t
        -0x28t
        -0x6ct
        -0x18t
        -0x1dt
        -0x6ct
        -0x23t
        -0x1et
        -0x23t
        -0x18t
        -0x23t
        -0x2bt
        -0x20t
        -0x23t
        -0x12t
        -0x27t
        -0x6ct
        -0x28t
        -0x17t
        -0x1ft
        -0x1ft
        -0x13t
        -0x6ct
        -0x19t
        -0x17t
        -0x1at
        -0x26t
        -0x2bt
        -0x29t
        -0x27t
        -0x79t
        -0x5et
        -0x56t
        -0x53t
        -0x5at
        -0x5bt
        0x61t
        -0x4bt
        -0x50t
        0x61t
        -0x4dt
        -0x5at
        -0x53t
        -0x5at
        -0x5et
        -0x4ct
        -0x5at
        0x61t
        -0x5bt
        -0x4at
        -0x52t
        -0x52t
        -0x46t
        0x61t
        -0x4ct
        -0x4at
        -0x4dt
        -0x59t
        -0x5et
        -0x5ct
        -0x5at
        -0x23t
        -0x12t
        -0x1at
        -0x1at
        -0xet
        -0x34t
        -0x12t
        -0x15t
        -0x21t
        -0x26t
        -0x24t
        -0x22t
    .end array-data
.end method

.method private A03(I)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I3;->A01:Lcom/facebook/ads/redexgen/X/HS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I3;->A01:Lcom/facebook/ads/redexgen/X/HS;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/HS;->A09(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I3;->A01:Lcom/facebook/ads/redexgen/X/HS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HS;->A07()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    if-eqz p1, :cond_1c

    const/4 v2, 0x1

    :goto_13
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/video/DummySurface;

    invoke-direct {v0, p0, v3, v2, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/video/DummySurface;-><init>(Lcom/facebook/ads/redexgen/X/I3;Landroid/graphics/SurfaceTexture;ZLcom/facebook/ads/redexgen/X/I2;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/I3;->A02:Lcom/facebook/ads/internal/exoplayer2/thirdparty/video/DummySurface;

    return-void

    :cond_1c
    const/4 v2, 0x0

    goto :goto_13
.end method


# virtual methods
.method public final A04(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/video/DummySurface;
    .registers 6

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/I3;->start()V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/I3;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/I3;->A00:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I3;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/HS;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/HS;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/I3;->A01:Lcom/facebook/ads/redexgen/X/HS;

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_19
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/I3;->A00:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_24
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I3;->A02:Lcom/facebook/ads/internal/exoplayer2/thirdparty/video/DummySurface;

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I3;->A04:Ljava/lang/RuntimeException;

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I3;->A03:Ljava/lang/Error;

    if-nez v0, :cond_36
    :try_end_30
    .catchall {:try_start_19 .. :try_end_30} :catchall_53

    :try_start_30
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_24
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_34} :catch_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_53

    :catch_34
    const/4 v3, 0x1

    goto :goto_24

    :cond_36
    :try_start_36
    monitor-exit p0

    if-eqz v3, :cond_40
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_53

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_40
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I3;->A04:Ljava/lang/RuntimeException;

    if-nez v0, :cond_52

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I3;->A03:Ljava/lang/Error;

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I3;->A02:Lcom/facebook/ads/internal/exoplayer2/thirdparty/video/DummySurface;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/video/DummySurface;

    return-object v0

    :cond_51
    throw v0

    :cond_52
    throw v0

    :catchall_53
    move-exception v0

    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v0
.end method

.method public final A05()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I3;->A00:Landroid/os/Handler;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I3;->A00:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 8

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_88

    return v5

    :pswitch_7
    :try_start_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/I3;->A01()V

    goto :goto_22
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_b

    :catchall_b
    move-exception v4

    :try_start_c
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I3;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2e

    const/16 v1, 0x1f

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I3;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_26

    :goto_22
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/I3;->quit()Z

    return v5

    :catchall_26
    move-exception v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/I3;->quit()Z

    throw v0

    :pswitch_2b
    :try_start_2b
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/I3;->A03(I)V
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_30} :catch_5b
    .catch Ljava/lang/Error; {:try_start_2b .. :try_end_30} :catch_39
    .catchall {:try_start_2b .. :try_end_30} :catchall_7d

    monitor-enter p0

    :try_start_31
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto :goto_79

    :catchall_36
    move-exception v0

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_36

    throw v0

    :catch_39
    move-exception v4

    :try_start_3a
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I3;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xc

    const/16 v1, 0x22

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I3;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/I3;->A03:Ljava/lang/Error;
    :try_end_52
    .catchall {:try_start_3a .. :try_end_52} :catchall_7d

    monitor-enter p0

    :try_start_53
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto :goto_79

    :catchall_58
    move-exception v0

    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_58

    throw v0

    :catch_5b
    move-exception v4

    :try_start_5c
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I3;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xc

    const/16 v1, 0x22

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I3;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/I3;->A04:Ljava/lang/RuntimeException;
    :try_end_74
    .catchall {:try_start_5c .. :try_end_74} :catchall_7d

    monitor-enter p0

    :try_start_75
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    :goto_79
    return v5

    :catchall_7a
    move-exception v0

    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_7a

    throw v0

    :catchall_7d
    move-exception v0

    monitor-enter p0

    :try_start_7f
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_84

    throw v0

    :catchall_84
    move-exception v0

    :try_start_85
    monitor-exit p0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw v0

    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_7
    .end packed-switch
.end method
