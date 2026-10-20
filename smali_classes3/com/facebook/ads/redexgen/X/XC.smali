.class public abstract Lcom/facebook/ads/redexgen/X/XC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/At;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lcom/facebook/ads/redexgen/X/XE;",
        "O:",
        "Lcom/facebook/ads/redexgen/X/XD;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/At<",
        "TI;TO;TE;>;"
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/XE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field public A04:Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public A05:Z

.field public A06:Z

.field public final A07:Ljava/lang/Object;

.field public final A08:Ljava/lang/Thread;

.field public final A09:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TI;>;"
        }
    .end annotation
.end field

.field public final A0A:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final A0B:[Lcom/facebook/ads/redexgen/X/XE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TI;"
        }
    .end annotation
.end field

.field public final A0C:[Lcom/facebook/ads/redexgen/X/XD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TO;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/facebook/ads/redexgen/X/XE;[Lcom/facebook/ads/redexgen/X/XD;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TI;[TO;)V"
        }
    .end annotation

    .line 65205
    .local p0, "this":Lcom/facebook/ads/redexgen/X/XC;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "inputBuffers":[Lcom/facebook/ads/redexgen/X/XE;, "[TI;"
    .local p2, "outputBuffers":[Lcom/facebook/ads/redexgen/X/XD;, "[TO;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65206
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A07:Ljava/lang/Object;

    .line 65207
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A09:Ljava/util/ArrayDeque;

    .line 65208
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A0A:Ljava/util/ArrayDeque;

    .line 65209
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XC;->A0B:[Lcom/facebook/ads/redexgen/X/XE;

    .line 65210
    array-length v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A00:I

    .line 65211
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_1e
    iget v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A00:I

    if-ge v2, v0, :cond_2d

    .line 65212
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XC;->A0B:[Lcom/facebook/ads/redexgen/X/XE;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XC;->A0T()Lcom/facebook/ads/redexgen/X/XE;

    move-result-object v0

    aput-object v0, v1, v2

    .line 65213
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 65214
    .end local v0    # "i":I
    :cond_2d
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/XC;->A0C:[Lcom/facebook/ads/redexgen/X/XD;

    .line 65215
    array-length v0, p2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A01:I

    .line 65216
    const/4 v2, 0x0

    .restart local v0    # "i":I
    :goto_33
    iget v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A01:I

    if-ge v2, v0, :cond_42

    .line 65217
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XC;->A0C:[Lcom/facebook/ads/redexgen/X/XD;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XC;->A0V()Lcom/facebook/ads/redexgen/X/XD;

    move-result-object v0

    aput-object v0, v1, v2

    .line 65218
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 65219
    .end local v0    # "i":I
    :cond_42
    new-instance v0, Lcom/facebook/ads/redexgen/X/Aw;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Aw;-><init>(Lcom/facebook/ads/redexgen/X/XC;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A08:Ljava/lang/Thread;

    .line 65220
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 65221
    return-void
.end method

.method private A0K()V
    .registers 2

    .line 65222
    .local p0, "this":Lcom/facebook/ads/redexgen/X/XC;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XC;->A0Q()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 65223
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A07:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 65224
    :cond_b
    return-void
.end method

.method private A0L()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65225
    .local p0, "this":Lcom/facebook/ads/redexgen/X/XC;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A04:Ljava/lang/Exception;

    if-nez v0, :cond_5

    .line 65226
    return-void

    .line 65227
    :cond_5
    throw v0
.end method

.method private A0M()V
    .registers 3

    .line 65228
    .local p0, "this":Lcom/facebook/ads/redexgen/X/XC;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XC;->A0R()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    .line 65229
    :cond_7
    return-void
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_8} :catch_8

    .line 65230
    :catch_8
    move-exception v1

    .line 65231
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private A0N(Lcom/facebook/ads/redexgen/X/XE;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 65232
    .local p0, "this":Lcom/facebook/ads/redexgen/X/XC;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "inputBuffer":Lcom/facebook/ads/redexgen/X/XE;, "TI;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/XE;->A07()V

    .line 65233
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/XC;->A0B:[Lcom/facebook/ads/redexgen/X/XE;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/XC;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A00:I

    aput-object p1, v2, v1

    .line 65234
    return-void
.end method

.method private A0O(Lcom/facebook/ads/redexgen/X/XD;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 65235
    .local p0, "this":Lcom/facebook/ads/redexgen/X/XC;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "outputBuffer":Lcom/facebook/ads/redexgen/X/XD;, "TO;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ap;->A07()V

    .line 65236
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/XC;->A0C:[Lcom/facebook/ads/redexgen/X/XD;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/XC;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A01:I

    aput-object p1, v2, v1

    .line 65237
    return-void
.end method

.method public static synthetic A0P(Lcom/facebook/ads/redexgen/X/XC;)V
    .registers 1

    .line 65238
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XC;->A0M()V

    return-void
.end method

.method private A0Q()Z
    .registers 2

    .line 65239
    .local p0, "this":Lcom/facebook/ads/redexgen/X/XC;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A01:I

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private A0R()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 65240
    .local p0, "this":Lcom/facebook/ads/redexgen/X/XC;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/XC;->A07:Ljava/lang/Object;

    monitor-enter v6

    .line 65241
    :goto_3
    :try_start_3
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A06:Z

    if-nez v0, :cond_13

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XC;->A0Q()Z

    move-result v0

    if-nez v0, :cond_13

    .line 65242
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A07:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_3

    .line 65243
    :cond_13
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A06:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_1a

    .line 65244
    monitor-exit v6

    return v3

    .line 65245
    :cond_1a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/XE;

    .line 65246
    .local v1, "inputBuffer":Lcom/facebook/ads/redexgen/X/XE;, "TI;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XC;->A0C:[Lcom/facebook/ads/redexgen/X/XD;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A01:I

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A01:I

    aget-object v1, v1, v0

    .line 65247
    .local v3, "outputBuffer":Lcom/facebook/ads/redexgen/X/XD;, "TO;"
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/XC;->A05:Z

    .line 65248
    .local v4, "resetDecoder":Z
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/XC;->A05:Z

    .line 65249
    monitor-exit v6
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_99

    .line 65250
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Ap;->A04()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 65251
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ap;->A00(I)V

    .line 65252
    :cond_3b
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/XC;->A07:Ljava/lang/Object;

    monitor-enter v4

    goto :goto_68

    .line 65253
    :cond_3f
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Ap;->A03()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 65254
    const/high16 v0, -0x80000000

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ap;->A00(I)V

    .line 65255
    :cond_4a
    :try_start_4a
    invoke-virtual {p0, v2, v1, v4}, Lcom/facebook/ads/redexgen/X/XC;->A0W(Lcom/facebook/ads/redexgen/X/XE;Lcom/facebook/ads/redexgen/X/XD;Z)Lcom/facebook/ads/redexgen/X/FX;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A04:Ljava/lang/Exception;

    goto :goto_60
    :try_end_51
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_51} :catch_51
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4a .. :try_end_51} :catch_59

    .line 65256
    .end local v0
    :catch_51
    move-exception v0

    .line 65257
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/XC;->A0X(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A04:Ljava/lang/Exception;

    goto :goto_60

    .line 65258
    :catch_59
    move-exception v0

    .line 65259
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/XC;->A0X(Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A04:Ljava/lang/Exception;

    .line 65260
    :goto_60
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A04:Ljava/lang/Exception;

    if-eqz v0, :cond_3b

    .line 65261
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XC;->A07:Ljava/lang/Object;

    monitor-enter v1

    goto :goto_93

    .line 65262
    :goto_68
    :try_start_68
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A05:Z

    if-eqz v0, :cond_74

    .line 65263
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/XC;->A0O(Lcom/facebook/ads/redexgen/X/XD;)V

    .line 65264
    :goto_6f
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/XC;->A0N(Lcom/facebook/ads/redexgen/X/XE;)V

    .line 65265
    monitor-exit v4

    goto :goto_8f

    .line 65266
    :cond_74
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ap;->A03()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 65267
    iget v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A02:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A02:I

    .line 65268
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/XC;->A0O(Lcom/facebook/ads/redexgen/X/XD;)V

    goto :goto_6f

    .line 65269
    :cond_83
    iget v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A02:I

    iput v0, v1, Lcom/facebook/ads/redexgen/X/XD;->A00:I

    .line 65270
    iput v3, p0, Lcom/facebook/ads/redexgen/X/XC;->A02:I

    .line 65271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_6f

    .line 65272
    :goto_8f
    return v5

    .line 65273
    :catchall_90
    move-exception v0

    monitor-exit v4
    :try_end_92
    .catchall {:try_start_68 .. :try_end_92} :catchall_90

    throw v0

    .line 65274
    :goto_93
    :try_start_93
    monitor-exit v1

    goto :goto_98

    :catchall_95
    move-exception v0

    monitor-exit v1
    :try_end_97
    .catchall {:try_start_93 .. :try_end_97} :catchall_95

    throw v0

    .line 65275
    :goto_98
    return v3

    .line 65276
    .end local v1    # "inputBuffer":Lcom/facebook/ads/redexgen/X/XE;, "TI;"
    .end local v3    # "outputBuffer":Lcom/facebook/ads/redexgen/X/XD;, "TO;"
    .end local v4    # "resetDecoder":Z
    :catchall_99
    move-exception v0

    :try_start_9a
    monitor-exit v6
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw v0
.end method


# virtual methods
.method public final A0S()Lcom/facebook/ads/redexgen/X/XE;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65277
    .local p0, "this":Lcom/facebook/ads/redexgen/X/XC;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/XC;->A07:Ljava/lang/Object;

    monitor-enter v3

    .line 65278
    :try_start_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XC;->A0L()V

    .line 65279
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A03:Lcom/facebook/ads/redexgen/X/XE;

    const/4 v2, 0x1

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    .line 65280
    iget v1, p0, Lcom/facebook/ads/redexgen/X/XC;->A00:I

    if-nez v1, :cond_17

    .line 65281
    const/4 v0, 0x0

    goto :goto_1e

    .line 65282
    :cond_17
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A0B:[Lcom/facebook/ads/redexgen/X/XE;

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/facebook/ads/redexgen/X/XC;->A00:I

    aget-object v0, v0, v1

    :goto_1e
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A03:Lcom/facebook/ads/redexgen/X/XE;

    .line 65283
    monitor-exit v3

    return-object v0

    .line 65284
    :catchall_22
    move-exception v0

    monitor-exit v3
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public abstract A0T()Lcom/facebook/ads/redexgen/X/XE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation
.end method

.method public final A0U()Lcom/facebook/ads/redexgen/X/XD;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65285
    .local p0, "this":Lcom/facebook/ads/redexgen/X/XC;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XC;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 65286
    :try_start_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XC;->A0L()V

    .line 65287
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 65288
    monitor-exit v1

    const/4 v0, 0x0

    return-object v0

    .line 65289
    :cond_11
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/XD;

    monitor-exit v1

    return-object v0

    .line 65290
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public abstract A0V()Lcom/facebook/ads/redexgen/X/XD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation
.end method

.method public abstract A0W(Lcom/facebook/ads/redexgen/X/XE;Lcom/facebook/ads/redexgen/X/XD;Z)Lcom/facebook/ads/redexgen/X/FX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;Z)TE;"
        }
    .end annotation
.end method

.method public abstract A0X(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")TE;"
        }
    .end annotation
.end method

.method public final A0Y(I)V
    .registers 6

    .line 65291
    .local p0, "this":Lcom/facebook/ads/redexgen/X/XC;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/XC;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A0B:[Lcom/facebook/ads/redexgen/X/XE;

    array-length v0, v0

    const/4 v3, 0x0

    if-ne v1, v0, :cond_19

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    .line 65292
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/XC;->A0B:[Lcom/facebook/ads/redexgen/X/XE;

    array-length v1, v2

    :goto_f
    if-ge v3, v1, :cond_1b

    aget-object v0, v2, v3

    .line 65293
    .local v3, "inputBuffer":Lcom/facebook/ads/redexgen/X/XE;, "TI;"
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/XE;->A09(I)V

    .line 65294
    .end local v3    # "inputBuffer":Lcom/facebook/ads/redexgen/X/XE;, "TI;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 65295
    :cond_19
    const/4 v0, 0x0

    goto :goto_9

    .line 65296
    :cond_1b
    return-void
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/XE;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65297
    .local p0, "this":Lcom/facebook/ads/redexgen/X/XC;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "inputBuffer":Lcom/facebook/ads/redexgen/X/XE;, "TI;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XC;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 65298
    :try_start_3
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XC;->A0L()V

    .line 65299
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A03:Lcom/facebook/ads/redexgen/X/XE;

    if-ne p1, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A03(Z)V

    .line 65300
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 65301
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XC;->A0K()V

    .line 65302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A03:Lcom/facebook/ads/redexgen/X/XE;

    .line 65303
    monitor-exit v1

    .line 65304
    return-void

    .line 65305
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public A0a(Lcom/facebook/ads/redexgen/X/XD;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 65306
    .local p0, "this":Lcom/facebook/ads/redexgen/X/XC;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    .local p1, "outputBuffer":Lcom/facebook/ads/redexgen/X/XD;, "TO;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XC;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 65307
    :try_start_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/XC;->A0O(Lcom/facebook/ads/redexgen/X/XD;)V

    .line 65308
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XC;->A0K()V

    .line 65309
    monitor-exit v1

    .line 65310
    return-void

    .line 65311
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public final bridge synthetic A50()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65312
    .local p0, "this":Lcom/facebook/ads/redexgen/X/XC;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XC;->A0S()Lcom/facebook/ads/redexgen/X/XE;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A51()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65313
    .local p0, "this":Lcom/facebook/ads/redexgen/X/XC;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XC;->A0U()Lcom/facebook/ads/redexgen/X/XD;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic AE8(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65314
    .local p0, "this":Lcom/facebook/ads/redexgen/X/XC;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    check-cast p1, Lcom/facebook/ads/redexgen/X/XE;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/XC;->A0Z(Lcom/facebook/ads/redexgen/X/XE;)V

    return-void
.end method

.method public final AEO()V
    .registers 3

    .line 65315
    .local p0, "this":Lcom/facebook/ads/redexgen/X/XC;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XC;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 65316
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A06:Z

    .line 65317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A07:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 65318
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_1a

    .line 65319
    :try_start_c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A08:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    goto :goto_19
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_12} :catch_12

    .line 65320
    .local v0, "e":Ljava/lang/InterruptedException;
    :catch_12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 65321
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_19
    return-void

    .line 65322
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public final flush()V
    .registers 3

    .line 65323
    .local p0, "this":Lcom/facebook/ads/redexgen/X/XC;, "Lcom/facebook/ads/internal/exoplayer2/thirdparty/decoder/SimpleDecoder<TI;TO;TE;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XC;->A07:Ljava/lang/Object;

    monitor-enter v1

    .line 65324
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A05:Z

    .line 65325
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A02:I

    .line 65326
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A03:Lcom/facebook/ads/redexgen/X/XE;

    if-eqz v0, :cond_13

    .line 65327
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/XC;->A0N(Lcom/facebook/ads/redexgen/X/XE;)V

    .line 65328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A03:Lcom/facebook/ads/redexgen/X/XE;

    .line 65329
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 65330
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A09:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/XE;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/XC;->A0N(Lcom/facebook/ads/redexgen/X/XE;)V

    goto :goto_13

    .line 65331
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 65332
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XC;->A0A:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/XD;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/XC;->A0O(Lcom/facebook/ads/redexgen/X/XD;)V

    goto :goto_27

    .line 65333
    :cond_3b
    monitor-exit v1

    .line 65334
    return-void

    .line 65335
    :catchall_3d
    move-exception v0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_4 .. :try_end_3f} :catchall_3d

    throw v0
.end method
