###### Class com.facebook.ads.redexgen.X.L5 (com.facebook.ads.redexgen.X.L5)
.class public final Lcom/facebook/ads/redexgen/X/L5;
.super Ljava/lang/Thread;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/L6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExecutionThread"
.end annotation


# instance fields
.field public A00:Z

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/L6;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/L6;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/L5;->A01:Lcom/facebook/ads/redexgen/X/L6;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L5;->A00:Z

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/L5;->start()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized A00()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L5;->A01:Lcom/facebook/ads/redexgen/X/L6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L6;->A00(Lcom/facebook/ads/redexgen/X/L6;)Lcom/facebook/ads/redexgen/X/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L4;->A02()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L5;->A00:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L5;->A01:Lcom/facebook/ads/redexgen/X/L6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L6;->A00(Lcom/facebook/ads/redexgen/X/L6;)Lcom/facebook/ads/redexgen/X/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L4;->A02()V

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_18

    :try_start_e
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/L5;->join()V

    return-void
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_12} :catch_12

    :catch_12
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public final run()V
    .registers 6

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/K0;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v3, p0

    :cond_8
    const/4 v4, 0x0

    :try_start_9
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/L5;->A01:Lcom/facebook/ads/redexgen/X/L6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L6;->A00(Lcom/facebook/ads/redexgen/X/L6;)Lcom/facebook/ads/redexgen/X/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L4;->A04()V

    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/L5;->A01:Lcom/facebook/ads/redexgen/X/L6;

    monitor-enter v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_6f
    .catchall {:try_start_9 .. :try_end_15} :catchall_58

    :try_start_15
    monitor-enter v3
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_55

    :try_start_16
    iget-boolean v1, v3, Lcom/facebook/ads/redexgen/X/L5;->A00:Z

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/L5;->A01:Lcom/facebook/ads/redexgen/X/L6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L6;->A00(Lcom/facebook/ads/redexgen/X/L6;)Lcom/facebook/ads/redexgen/X/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L4;->A05()Z

    move-result v0

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_4f

    :try_start_23
    monitor-exit v2

    if-eqz v1, :cond_27

    goto :goto_35

    :cond_27
    if-eqz v0, :cond_8

    goto :goto_2c
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v0

    goto :goto_56

    :goto_2c
    :try_start_2c
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/L5;->A01:Lcom/facebook/ads/redexgen/X/L6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L6;->A02(Lcom/facebook/ads/redexgen/X/L6;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_35} :catch_6f
    .catchall {:try_start_2c .. :try_end_35} :catchall_4d

    :goto_35
    :try_start_35
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/L5;->A01:Lcom/facebook/ads/redexgen/X/L6;

    monitor-enter v1
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_88

    :try_start_38
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/L5;->A01:Lcom/facebook/ads/redexgen/X/L6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L6;->A00(Lcom/facebook/ads/redexgen/X/L6;)Lcom/facebook/ads/redexgen/X/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L4;->A03()V

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/L5;->A01:Lcom/facebook/ads/redexgen/X/L6;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/L6;->A01(Lcom/facebook/ads/redexgen/X/L6;Lcom/facebook/ads/redexgen/X/L5;)Lcom/facebook/ads/redexgen/X/L5;

    monitor-exit v1

    goto :goto_81
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception v0

    :goto_49
    :try_start_49
    monitor-exit v1

    goto :goto_87
    :try_end_4b
    .catchall {:try_start_49 .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception v0

    goto :goto_49

    :catchall_4d
    move-exception v2

    goto :goto_59

    :catchall_4f
    move-exception v0

    :goto_50
    :try_start_50
    monitor-exit v3

    goto :goto_54
    :try_end_52
    .catchall {:try_start_50 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception v0

    goto :goto_50

    :goto_54
    :try_start_54
    throw v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception v0

    :goto_56
    :try_start_56
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    :try_start_57
    throw v0
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_58} :catch_6f
    .catchall {:try_start_57 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception v2

    :goto_59
    :try_start_59
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/L5;->A01:Lcom/facebook/ads/redexgen/X/L6;

    monitor-enter v1
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_88

    :try_start_5c
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/L5;->A01:Lcom/facebook/ads/redexgen/X/L6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L6;->A00(Lcom/facebook/ads/redexgen/X/L6;)Lcom/facebook/ads/redexgen/X/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L4;->A03()V

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/L5;->A01:Lcom/facebook/ads/redexgen/X/L6;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/L6;->A01(Lcom/facebook/ads/redexgen/X/L6;Lcom/facebook/ads/redexgen/X/L5;)Lcom/facebook/ads/redexgen/X/L5;

    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_5c .. :try_end_6b} :catchall_6c

    :try_start_6b
    throw v2
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_88

    :catchall_6c
    move-exception v0

    :try_start_6d
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    :try_start_6e
    throw v0

    :catch_6f
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/L5;->A01:Lcom/facebook/ads/redexgen/X/L6;

    monitor-enter v1
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_88

    :try_start_72
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/L5;->A01:Lcom/facebook/ads/redexgen/X/L6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L6;->A00(Lcom/facebook/ads/redexgen/X/L6;)Lcom/facebook/ads/redexgen/X/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L4;->A03()V

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/L5;->A01:Lcom/facebook/ads/redexgen/X/L6;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/L6;->A01(Lcom/facebook/ads/redexgen/X/L6;Lcom/facebook/ads/redexgen/X/L5;)Lcom/facebook/ads/redexgen/X/L5;

    monitor-exit v1

    :goto_81
    return-void
    :try_end_82
    .catchall {:try_start_72 .. :try_end_82} :catchall_82

    :catchall_82
    move-exception v0

    :goto_83
    :try_start_83
    monitor-exit v1

    goto :goto_87
    :try_end_85
    .catchall {:try_start_83 .. :try_end_85} :catchall_85

    :catchall_85
    move-exception v0

    goto :goto_83

    :goto_87
    :try_start_87
    throw v0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_88

    :catchall_88
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/K0;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
