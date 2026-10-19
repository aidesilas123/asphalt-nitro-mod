###### Class com.applovin.exoplayer2.f.a (com.applovin.exoplayer2.f.a)
.class final Lcom/applovin/exoplayer2/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/f/g;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/f/a$a;
    }
.end annotation


# instance fields
.field private GA:Z

.field private GB:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final Gw:Landroid/media/MediaCodec;

.field private final Gx:Lcom/applovin/exoplayer2/f/c;

.field private final Gy:Lcom/applovin/exoplayer2/f/b;

.field private final Gz:Z

.field private Z:I


# direct methods
.method private constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;ZZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/a;->Gw:Landroid/media/MediaCodec;

    new-instance v0, Lcom/applovin/exoplayer2/f/c;

    invoke-direct {v0, p2}, Lcom/applovin/exoplayer2/f/c;-><init>(Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/f/a;->Gx:Lcom/applovin/exoplayer2/f/c;

    new-instance p2, Lcom/applovin/exoplayer2/f/b;

    invoke-direct {p2, p1, p3, p4}, Lcom/applovin/exoplayer2/f/b;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Z)V

    iput-object p2, p0, Lcom/applovin/exoplayer2/f/a;->Gy:Lcom/applovin/exoplayer2/f/b;

    iput-boolean p5, p0, Lcom/applovin/exoplayer2/f/a;->Gz:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/applovin/exoplayer2/f/a;->Z:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;ZZLcom/applovin/exoplayer2/f/a$1;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/applovin/exoplayer2/f/a;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;ZZ)V

    return-void
.end method

.method private a(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;IZ)V
    .registers 8
    .param p1    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/a;->Gx:Lcom/applovin/exoplayer2/f/c;

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/a;->Gw:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/f/c;->a(Landroid/media/MediaCodec;)V

    const-string v0, "configureCodec"

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ah;->bg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/a;->Gw:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-static {}, Lcom/applovin/exoplayer2/l/ah;->pV()V

    if-eqz p5, :cond_1e

    iget-object p1, p0, Lcom/applovin/exoplayer2/f/a;->Gw:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/a;->GB:Landroid/view/Surface;

    :cond_1e
    iget-object p1, p0, Lcom/applovin/exoplayer2/f/a;->Gy:Lcom/applovin/exoplayer2/f/b;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/f/b;->start()V

    const-string p1, "startCodec"

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/ah;->bg(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/f/a;->Gw:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Lcom/applovin/exoplayer2/l/ah;->pV()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/applovin/exoplayer2/f/a;->Z:I

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/f/a;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;IZ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/applovin/exoplayer2/f/a;->a(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;IZ)V

    return-void
.end method

.method private synthetic a(Lcom/applovin/exoplayer2/f/g$c;Landroid/media/MediaCodec;JJ)V
    .registers 13

    move-object v0, p1

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p5

    invoke-interface/range {v0 .. v5}, Lcom/applovin/exoplayer2/f/g$c;->a(Lcom/applovin/exoplayer2/f/g;JJ)V

    return-void
.end method

.method private static c(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p0, p1, :cond_e

    const-string p0, "Audio"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_e
    const/4 p1, 0x2

    if-ne p0, p1, :cond_17

    const-string p0, "Video"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_17
    const-string p1, "Unknown("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static cK(I)Ljava/lang/String;
    .registers 2

    const-string v0, "ExoPlayer:MediaCodecAsyncAdapter:"

    invoke-static {p0, v0}, Lcom/applovin/exoplayer2/f/a;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static cL(I)Ljava/lang/String;
    .registers 2

    const-string v0, "ExoPlayer:MediaCodecQueueingThread:"

    invoke-static {p0, v0}, Lcom/applovin/exoplayer2/f/a;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic cM(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/f/a;->cL(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic cN(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/f/a;->cK(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/applovin/exoplayer2/f/a;Lcom/applovin/exoplayer2/f/g$c;Landroid/media/MediaCodec;JJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/applovin/exoplayer2/f/a;->a(Lcom/applovin/exoplayer2/f/g$c;Landroid/media/MediaCodec;JJ)V

    return-void
.end method

.method private jF()V
    .registers 3

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/f/a;->Gz:Z

    if-eqz v0, :cond_18

    :try_start_4
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/a;->Gy:Lcom/applovin/exoplayer2/f/b;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/f/b;->jH()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_18

    :catch_a
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_18
    :goto_18
    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaCodec$BufferInfo;)I
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/a;->Gx:Lcom/applovin/exoplayer2/f/c;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/f/c;->a(Landroid/media/MediaCodec$BufferInfo;)I

    move-result p1

    return p1
.end method

.method public a(IIIJI)V
    .registers 14

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/a;->Gy:Lcom/applovin/exoplayer2/f/b;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/applovin/exoplayer2/f/b;->a(IIIJI)V

    return-void
.end method

.method public a(IILcom/applovin/exoplayer2/c/c;JI)V
    .registers 14

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/a;->Gy:Lcom/applovin/exoplayer2/f/b;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/applovin/exoplayer2/f/b;->a(IILcom/applovin/exoplayer2/c/c;JI)V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/f/g$c;Landroid/os/Handler;)V
    .registers 5

    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/a;->jF()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/a;->Gw:Landroid/media/MediaCodec;

    new-instance v1, Lcom/applovin/exoplayer2/f/p;

    invoke-direct {v1, p0, p1}, Lcom/applovin/exoplayer2/f/p;-><init>(Lcom/applovin/exoplayer2/f/a;Lcom/applovin/exoplayer2/f/g$c;)V

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public b(Landroid/view/Surface;)V
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/a;->jF()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/a;->Gw:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public cH(I)Ljava/nio/ByteBuffer;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/a;->Gw:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public cI(I)Ljava/nio/ByteBuffer;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/a;->Gw:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public cJ(I)V
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/a;->jF()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/a;->Gw:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method public dI()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/a;->Gy:Lcom/applovin/exoplayer2/f/b;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/f/b;->dI()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/a;->Gw:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/a;->Gx:Lcom/applovin/exoplayer2/f/c;

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/a;->Gw:Landroid/media/MediaCodec;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/applovin/exoplayer2/f/r;

    invoke-direct {v2, v1}, Lcom/applovin/exoplayer2/f/r;-><init>(Landroid/media/MediaCodec;)V

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/f/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i(IJ)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/a;->Gw:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    return-void
.end method

.method public jC()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public jD()I
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/a;->Gx:Lcom/applovin/exoplayer2/f/c;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/f/c;->jD()I

    move-result v0

    return v0
.end method

.method public jE()Landroid/media/MediaFormat;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/a;->Gx:Lcom/applovin/exoplayer2/f/c;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/f/c;->jE()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public l(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/a;->Gw:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public release()V
    .registers 4

    const/4 v0, 0x1

    :try_start_1
    iget v1, p0, Lcom/applovin/exoplayer2/f/a;->Z:I

    if-ne v1, v0, :cond_f

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/a;->Gy:Lcom/applovin/exoplayer2/f/b;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/f/b;->jG()V

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/a;->Gx:Lcom/applovin/exoplayer2/f/c;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/f/c;->jG()V

    :cond_f
    const/4 v1, 0x2

    iput v1, p0, Lcom/applovin/exoplayer2/f/a;->Z:I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_25

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/a;->GB:Landroid/view/Surface;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    :cond_19
    iget-boolean v1, p0, Lcom/applovin/exoplayer2/f/a;->GA:Z

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/a;->Gw:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/a;->GA:Z

    :cond_24
    return-void

    :catchall_25
    move-exception v1

    iget-object v2, p0, Lcom/applovin/exoplayer2/f/a;->GB:Landroid/view/Surface;

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    :cond_2d
    iget-boolean v2, p0, Lcom/applovin/exoplayer2/f/a;->GA:Z

    if-nez v2, :cond_38

    iget-object v2, p0, Lcom/applovin/exoplayer2/f/a;->Gw:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/f/a;->GA:Z

    :cond_38
    throw v1
.end method

.method public u(Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/f/a;->jF()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/a;->Gw:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

###### Class com.applovin.exoplayer2.f.a.AnonymousClass1 (com.applovin.exoplayer2.f.a$1)
.class synthetic Lcom/applovin/exoplayer2/f/a$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.applovin.exoplayer2.f.a.C0037a (com.applovin.exoplayer2.f.a$a)
.class public final Lcom/applovin/exoplayer2/f/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/f/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final GC:Lcom/applovin/exoplayer2/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/base/Supplier<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field private final GD:Lcom/applovin/exoplayer2/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/base/Supplier<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field private final GE:Z

.field private final Gz:Z


# direct methods
.method public constructor <init>(IZZ)V
    .registers 6

    new-instance v0, Lcom/applovin/exoplayer2/f/n;

    invoke-direct {v0, p1}, Lcom/applovin/exoplayer2/f/n;-><init>(I)V

    new-instance v1, Lcom/applovin/exoplayer2/f/o;

    invoke-direct {v1, p1}, Lcom/applovin/exoplayer2/f/o;-><init>(I)V

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/applovin/exoplayer2/f/a$a;-><init>(Lcom/applovin/exoplayer2/common/base/Supplier;Lcom/applovin/exoplayer2/common/base/Supplier;ZZ)V

    return-void
.end method

.method constructor <init>(Lcom/applovin/exoplayer2/common/base/Supplier;Lcom/applovin/exoplayer2/common/base/Supplier;ZZ)V
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/common/base/Supplier<",
            "Landroid/os/HandlerThread;",
            ">;",
            "Lcom/applovin/exoplayer2/common/base/Supplier<",
            "Landroid/os/HandlerThread;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/a$a;->GC:Lcom/applovin/exoplayer2/common/base/Supplier;

    iput-object p2, p0, Lcom/applovin/exoplayer2/f/a$a;->GD:Lcom/applovin/exoplayer2/common/base/Supplier;

    iput-boolean p3, p0, Lcom/applovin/exoplayer2/f/a$a;->GE:Z

    iput-boolean p4, p0, Lcom/applovin/exoplayer2/f/a$a;->Gz:Z

    return-void
.end method

.method public static synthetic c(I)Landroid/os/HandlerThread;
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/f/a$a;->cP(I)Landroid/os/HandlerThread;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic cO(I)Landroid/os/HandlerThread;
    .registers 2

    new-instance v0, Landroid/os/HandlerThread;

    invoke-static {p0}, Lcom/applovin/exoplayer2/f/a;->cM(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic cP(I)Landroid/os/HandlerThread;
    .registers 2

    new-instance v0, Landroid/os/HandlerThread;

    invoke-static {p0}, Lcom/applovin/exoplayer2/f/a;->cN(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic d(I)Landroid/os/HandlerThread;
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/f/a$a;->cO(I)Landroid/os/HandlerThread;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/f/g$a;)Lcom/applovin/exoplayer2/f/a;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/applovin/exoplayer2/f/g$a;->Hk:Lcom/applovin/exoplayer2/f/i;

    iget-object v0, v0, Lcom/applovin/exoplayer2/f/i;->name:Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCodec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/exoplayer2/l/ah;->bg(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1d} :catch_52

    :try_start_1d
    new-instance v10, Lcom/applovin/exoplayer2/f/a;

    iget-object v2, p0, Lcom/applovin/exoplayer2/f/a$a;->GC:Lcom/applovin/exoplayer2/common/base/Supplier;

    invoke-interface {v2}, Lcom/applovin/exoplayer2/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/applovin/exoplayer2/f/a$a;->GD:Lcom/applovin/exoplayer2/common/base/Supplier;

    invoke-interface {v2}, Lcom/applovin/exoplayer2/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/os/HandlerThread;

    iget-boolean v7, p0, Lcom/applovin/exoplayer2/f/a$a;->GE:Z

    iget-boolean v8, p0, Lcom/applovin/exoplayer2/f/a$a;->Gz:Z

    const/4 v9, 0x0

    move-object v3, v10

    move-object v4, v0

    invoke-direct/range {v3 .. v9}, Lcom/applovin/exoplayer2/f/a;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;ZZLcom/applovin/exoplayer2/f/a$1;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3b} :catch_50

    :try_start_3b
    invoke-static {}, Lcom/applovin/exoplayer2/l/ah;->pV()V

    iget-object v3, p1, Lcom/applovin/exoplayer2/f/g$a;->Hl:Landroid/media/MediaFormat;

    iget-object v4, p1, Lcom/applovin/exoplayer2/f/g$a;->Hm:Landroid/view/Surface;

    iget-object v5, p1, Lcom/applovin/exoplayer2/f/g$a;->Hn:Landroid/media/MediaCrypto;

    iget v6, p1, Lcom/applovin/exoplayer2/f/g$a;->jF:I

    iget-boolean v7, p1, Lcom/applovin/exoplayer2/f/g$a;->Ho:Z

    move-object v2, v10

    invoke-static/range {v2 .. v7}, Lcom/applovin/exoplayer2/f/a;->a(Lcom/applovin/exoplayer2/f/a;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;IZ)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4c} :catch_4d

    return-object v10

    :catch_4d
    move-exception p1

    move-object v1, v10

    goto :goto_54

    :catch_50
    move-exception p1

    goto :goto_54

    :catch_52
    move-exception p1

    move-object v0, v1

    :goto_54
    if-nez v1, :cond_5c

    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    goto :goto_5f

    :cond_5c
    invoke-virtual {v1}, Lcom/applovin/exoplayer2/f/a;->release()V

    :cond_5f
    :goto_5f
    throw p1
.end method

.method public synthetic b(Lcom/applovin/exoplayer2/f/g$a;)Lcom/applovin/exoplayer2/f/g;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/f/a$a;->a(Lcom/applovin/exoplayer2/f/g$a;)Lcom/applovin/exoplayer2/f/a;

    move-result-object p1

    return-object p1
.end method

###### Class com.applovin.exoplayer2.f.n (com.applovin.exoplayer2.f.n)
.class public final synthetic Lcom/applovin/exoplayer2/f/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/common/base/Supplier;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/f/n;->a:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/f/n;->a:I

    invoke-static {v0}, Lcom/applovin/exoplayer2/f/a$a;->c(I)Landroid/os/HandlerThread;

    move-result-object v0

    return-object v0
.end method

###### Class com.applovin.exoplayer2.f.o (com.applovin.exoplayer2.f.o)
.class public final synthetic Lcom/applovin/exoplayer2/f/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/common/base/Supplier;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/f/o;->a:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/f/o;->a:I

    invoke-static {v0}, Lcom/applovin/exoplayer2/f/a$a;->d(I)Landroid/os/HandlerThread;

    move-result-object v0

    return-object v0
.end method

###### Class com.applovin.exoplayer2.f.p (com.applovin.exoplayer2.f.p)
.class public final synthetic Lcom/applovin/exoplayer2/f/p;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/f/a;

.field public final synthetic b:Lcom/applovin/exoplayer2/f/g$c;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/f/a;Lcom/applovin/exoplayer2/f/g$c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/p;->a:Lcom/applovin/exoplayer2/f/a;

    iput-object p2, p0, Lcom/applovin/exoplayer2/f/p;->b:Lcom/applovin/exoplayer2/f/g$c;

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .registers 13

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/p;->a:Lcom/applovin/exoplayer2/f/a;

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/p;->b:Lcom/applovin/exoplayer2/f/g$c;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/applovin/exoplayer2/f/a;->d(Lcom/applovin/exoplayer2/f/a;Lcom/applovin/exoplayer2/f/g$c;Landroid/media/MediaCodec;JJ)V

    return-void
.end method

###### Class com.applovin.exoplayer2.f.r (com.applovin.exoplayer2.f.r)
.class public final synthetic Lcom/applovin/exoplayer2/f/r;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/media/MediaCodec;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaCodec;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/r;->a:Landroid/media/MediaCodec;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/r;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void
.end method
