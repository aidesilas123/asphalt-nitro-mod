###### Class com.facebook.ads.redexgen.X.HandlerC0919Az (com.facebook.ads.redexgen.X.Az)
.class public final Lcom/facebook/ads/redexgen/X/Az;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/XB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PostRequestHandler"
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/XB;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "19chgsqBzMImuF0gwnX2kWBGh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "0va0RllBKLagHwkqX9d70BpModZgILa7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "XpojMROpw9tVkn"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wcizW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "UvDBMI562EynJYmanZ8wO6TzDmvB3zda"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jZLpPncA8U18qC4rrohpR2MIc"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "dSPbX"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wnd1v8XwPzGQd7q91R22pRoLt2u"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Az;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XB;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Az;->A00:Lcom/facebook/ads/redexgen/X/XB;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private A00(I)J
    .registers 4

    add-int/lit8 v0, p1, -0x1

    mul-int/lit16 v1, v0, 0x3e8

    const/16 v0, 0x1388

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private A01(Landroid/os/Message;)Z
    .registers 6

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_a

    const/4 v0, 0x1

    :goto_7
    if-nez v0, :cond_c

    return v2

    :cond_a
    const/4 v0, 0x0

    goto :goto_7

    :cond_c
    iget v1, p1, Landroid/os/Message;->arg2:I

    add-int/2addr v1, v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Az;->A00:Lcom/facebook/ads/redexgen/X/XB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XB;->A00(Lcom/facebook/ads/redexgen/X/XB;)I

    move-result v0

    if-le v1, v0, :cond_18

    return v2

    :cond_18
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    iput v1, v2, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Az;->A00(I)J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Az;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v3
.end method


# virtual methods
.method public final A02(ILjava/lang/Object;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/facebook/ads/redexgen/X/Az;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/K0;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v3, p0

    :try_start_8
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_7c

    :try_start_a
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_82

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_15
    move-object v0, v5

    check-cast v0, Landroid/util/Pair;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/facebook/ads/redexgen/X/BM;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Az;->A00:Lcom/facebook/ads/redexgen/X/XB;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/XB;->A0B:Lcom/facebook/ads/redexgen/X/BV;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Az;->A00:Lcom/facebook/ads/redexgen/X/XB;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/XB;->A0C:Ljava/util/UUID;

    invoke-interface {v1, v0, v4, v2}, Lcom/facebook/ads/redexgen/X/BV;->executeKeyRequest(Ljava/util/UUID;Lcom/facebook/ads/redexgen/X/BM;Ljava/lang/String;)[B

    move-result-object v4

    goto :goto_6a

    :pswitch_2d
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Az;->A00:Lcom/facebook/ads/redexgen/X/XB;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/XB;->A0B:Lcom/facebook/ads/redexgen/X/BV;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Az;->A00:Lcom/facebook/ads/redexgen/X/XB;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/XB;->A0C:Ljava/util/UUID;

    move-object v0, v5

    check-cast v0, Lcom/facebook/ads/redexgen/X/BQ;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BV;->executeProvisionRequest(Ljava/util/UUID;Lcom/facebook/ads/redexgen/X/BQ;)[B

    move-result-object v4

    goto :goto_6a
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3d} :catch_3d
    .catchall {:try_start_a .. :try_end_3d} :catchall_7c

    :catch_3d
    move-exception v4

    :try_start_3e
    invoke-direct {v3, p1}, Lcom/facebook/ads/redexgen/X/Az;->A01(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_45

    return-void
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_7c

    :cond_45
    sget-object v2, Lcom/facebook/ads/redexgen/X/Az;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5e

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5e
    sget-object v2, Lcom/facebook/ads/redexgen/X/Az;->A01:[Ljava/lang/String;

    const-string v1, "iOxYX"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "16FbQS5YLOa2TifOFD04FKBpDBi"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    :goto_6a
    :try_start_6a
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Az;->A00:Lcom/facebook/ads/redexgen/X/XB;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/XB;->A0A:Lcom/facebook/ads/redexgen/X/B0;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/B0;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
    :try_end_7c
    .catchall {:try_start_6a .. :try_end_7c} :catchall_7c

    :catchall_7c
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/K0;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_15
    .end packed-switch
.end method
