###### Class com.facebook.ads.redexgen.X.HF (com.facebook.ads.redexgen.X.HF)
.class public final Lcom/facebook/ads/redexgen/X/HF;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Uw;-><init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/Uy;Lcom/facebook/ads/redexgen/X/HA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/os/ConditionVariable;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Uw;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Uw;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HF;->A01:Lcom/facebook/ads/redexgen/X/Uw;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/HF;->A00:Landroid/os/ConditionVariable;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

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

    :try_start_8
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/HF;->A01:Lcom/facebook/ads/redexgen/X/Uw;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_1d

    :try_start_b
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/HF;->A00:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/HF;->A01:Lcom/facebook/ads/redexgen/X/Uw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Uw;->A09(Lcom/facebook/ads/redexgen/X/Uw;)V

    monitor-exit v1

    return-void
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v0

    :goto_18
    :try_start_18
    monitor-exit v1

    goto :goto_1c
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v0

    goto :goto_18

    :goto_1c
    :try_start_1c
    throw v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/K0;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
