###### Class com.facebook.ads.redexgen.X.C0897Ad (com.facebook.ads.redexgen.X.Ad)
.class public final Lcom/facebook/ads/redexgen/X/Ad;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/XL;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/media/AudioTrack;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/XL;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XL;Landroid/media/AudioTrack;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ad;->A01:Lcom/facebook/ads/redexgen/X/XL;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ad;->A00:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

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
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Ad;->A00:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Ad;->A00:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_1c

    :try_start_12
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Ad;->A01:Lcom/facebook/ads/redexgen/X/XL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XL;->A0G(Lcom/facebook/ads/redexgen/X/XL;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void

    :catchall_1c
    move-exception v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Ad;->A01:Lcom/facebook/ads/redexgen/X/XL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XL;->A0G(Lcom/facebook/ads/redexgen/X/XL;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    throw v1
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/K0;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
