###### Class com.facebook.ads.redexgen.X.C5K (com.facebook.ads.redexgen.X.5K)
.class public final Lcom/facebook/ads/redexgen/X/5K;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

.field public final A02:Lcom/facebook/ads/redexgen/X/5J;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kVVxbIvKBpFLpNMn249evg7U1t5DMrkR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HNBIISUKPJt5lzvo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tha"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "s0U2IqORDUirQkjYFZUhzDbmHPDS66DK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "4XQ6Ra6x1CsG5mP0jlsGo4Oc8x5GsOh7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mYQ1yQiLRLlGaSwEYEmmcgt3b9ncmm6M"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "URRMMekVjcz4ECsO2XmiMnA4WEVCe5QQ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "lW2qNIOuJVr9bvm7hZsN45J1F7Bnv3JY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5K;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5K;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;Lcom/facebook/ads/redexgen/X/5J;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/5K;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/5K;->A02:Lcom/facebook/ads/redexgen/X/5J;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/5K;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x47

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
    .registers 1

    const/16 v0, 0x31

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/5K;->A03:[B

    return-void

    :array_a
    .array-data 1
        0xct
        0x8t
        0x7t
        0x3bt
        0x2at
        0x2ft
        0x2bt
        0x34t
        0x29t
        0x2bt
        0x14t
        0x2bt
        0x3at
        0x3dt
        0x35t
        0x38t
        0x31t
        0x13t
        0x2ct
        0x23t
        0x36t
        0x2et
        0x23t
        0x21t
        0x32t
        0x23t
        0x22t
        -0x22t
        0x23t
        0x36t
        0x21t
        0x23t
        0x2et
        0x32t
        0x27t
        0x2dt
        0x2ct
        -0x14t
        -0x46t
        -0x39t
        -0x48t
        -0x46t
        -0x44t
        -0x33t
        -0x3et
        -0x31t
        -0x3et
        -0x33t
        -0x2et
    .end array-data
.end method

.method private A02(Ljava/lang/Throwable;)V
    .registers 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A02:Lcom/facebook/ads/redexgen/X/5J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5J;->A0L()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5K;->finish(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A02:Lcom/facebook/ads/redexgen/X/5J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5J;->A0K()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/7x;->A0C:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v3, p1}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/Throwable;)V

    const/16 v2, 0x26

    const/16 v1, 0xb

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5K;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    :goto_2d
    return-void

    :cond_2e
    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5K;->A00(III)Ljava/lang/String;

    move-result-object v5

    const/16 v4, 0x11

    const/16 v3, 0x15

    sget-object v1, Lcom/facebook/ads/redexgen/X/5K;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x30

    if-eq v1, v0, :cond_4f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4f
    sget-object v2, Lcom/facebook/ads/redexgen/X/5K;->A04:[Ljava/lang/String;

    const-string v1, "roakWe6n8CepWvGQKms2st32sM0MtJhe"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/16 v0, 0x77

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/5K;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A02:Lcom/facebook/ads/redexgen/X/5J;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/5J;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_14
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5K;->A02(Ljava/lang/Throwable;)V

    :goto_14
    return-void
.end method

.method public final finish(I)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A02:Lcom/facebook/ads/redexgen/X/5J;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5J;->finish(I)V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A02:Lcom/facebook/ads/redexgen/X/5J;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/5J;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_14
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5K;->A02(Ljava/lang/Throwable;)V

    :goto_14
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onBackPressed()V
    .registers 5

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A02:Lcom/facebook/ads/redexgen/X/5J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5J;->onBackPressed()V

    goto :goto_2f
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_b

    :catchall_b
    move-exception v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/5K;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_30

    sget-object v2, Lcom/facebook/ads/redexgen/X/5K;->A04:[Ljava/lang/String;

    const-string v1, "o2QAVIvbVP3X0FiUaWNt1f6t7dHcTRBl"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "vmYtMIbIQwew4451MpW2UPrO9wIbxS87"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/5K;->A02(Ljava/lang/Throwable;)V

    :goto_2f
    return-void

    :cond_30
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A02:Lcom/facebook/ads/redexgen/X/5J;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5J;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_14
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5K;->A02(Ljava/lang/Throwable;)V

    :goto_14
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onCreate(Landroid/os/Bundle;)V

    :try_start_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A02:Lcom/facebook/ads/redexgen/X/5J;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5J;->onCreate(Landroid/os/Bundle;)V

    goto :goto_f
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_b

    :catchall_b
    move-exception v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5K;->A02(Ljava/lang/Throwable;)V

    :goto_f
    return-void
.end method

.method public final onDestroy()V
    .registers 2

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onDestroy()V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A02:Lcom/facebook/ads/redexgen/X/5J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5J;->onDestroy()V

    goto :goto_14
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5K;->A02(Ljava/lang/Throwable;)V

    :goto_14
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .registers 2

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onPause()V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A02:Lcom/facebook/ads/redexgen/X/5J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5J;->onPause()V

    goto :goto_14
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5K;->A02(Ljava/lang/Throwable;)V

    :goto_14
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onPause()V

    return-void
.end method

.method public final onResume()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onResume()V

    :try_start_5
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Z

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A02:Lcom/facebook/ads/redexgen/X/5J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5J;->onResume()V

    goto :goto_14
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5K;->A02(Ljava/lang/Throwable;)V

    :goto_14
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onSaveInstanceState(Landroid/os/Bundle;)V

    :try_start_5
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Z

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A02:Lcom/facebook/ads/redexgen/X/5J;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5J;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_2f
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/5K;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_30

    sget-object v2, Lcom/facebook/ads/redexgen/X/5K;->A04:[Ljava/lang/String;

    const-string v1, "46sQaeWUXFUhhsRkoBzMlxezgaVtku4l"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/5K;->A02(Ljava/lang/Throwable;)V

    :goto_2f
    return-void

    :cond_30
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onStart()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onStart()V

    :try_start_5
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Z

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A02:Lcom/facebook/ads/redexgen/X/5J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5J;->onStart()V

    goto :goto_14
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5K;->A02(Ljava/lang/Throwable;)V

    :goto_14
    return-void
.end method

.method public final onStop()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onStop()V

    :try_start_5
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Z

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A02:Lcom/facebook/ads/redexgen/X/5J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5J;->onStop()V

    goto :goto_14
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5K;->A02(Ljava/lang/Throwable;)V

    :goto_14
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A00:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A02:Lcom/facebook/ads/redexgen/X/5J;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5J;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_15
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5K;->A02(Ljava/lang/Throwable;)V

    :goto_15
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5K;->A01:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
