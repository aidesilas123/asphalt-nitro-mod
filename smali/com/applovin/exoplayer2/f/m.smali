###### Class com.applovin.exoplayer2.f.m (com.applovin.exoplayer2.f.m)
.class public Lcom/applovin/exoplayer2/f/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/f/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/f/m$a;,
        Lcom/applovin/exoplayer2/f/m$b;
    }
.end annotation


# instance fields
.field private final GB:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final Gw:Landroid/media/MediaCodec;

.field private IX:[Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private IY:[Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/media/MediaCodec;Landroid/view/Surface;)V
    .registers 4
    .param p2    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/m;->Gw:Landroid/media/MediaCodec;

    iput-object p2, p0, Lcom/applovin/exoplayer2/f/m;->GB:Landroid/view/Surface;

    sget p2, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v0, 0x15

    if-ge p2, v0, :cond_19

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/exoplayer2/f/m;->IX:[Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/m;->IY:[Ljava/nio/ByteBuffer;

    :cond_19
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaCodec;Landroid/view/Surface;Lcom/applovin/exoplayer2/f/m$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/applovin/exoplayer2/f/m;-><init>(Landroid/media/MediaCodec;Landroid/view/Surface;)V

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

.method public static synthetic c(Lcom/applovin/exoplayer2/f/m;Lcom/applovin/exoplayer2/f/g$c;Landroid/media/MediaCodec;JJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/applovin/exoplayer2/f/m;->a(Lcom/applovin/exoplayer2/f/g$c;Landroid/media/MediaCodec;JJ)V

    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaCodec$BufferInfo;)I
    .registers 6

    :cond_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/m;->Gw:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_19

    sget v2, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_19

    iget-object v2, p0, Lcom/applovin/exoplayer2/f/m;->Gw:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/applovin/exoplayer2/f/m;->IY:[Ljava/nio/ByteBuffer;

    :cond_19
    if-eq v0, v1, :cond_0

    return v0
.end method

.method public a(IIIJI)V
    .registers 14

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/m;->Gw:Landroid/media/MediaCodec;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public a(IILcom/applovin/exoplayer2/c/c;JI)V
    .registers 14

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/m;->Gw:Landroid/media/MediaCodec;

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/c/c;->hb()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v3

    move v1, p1

    move v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/f/g$c;Landroid/os/Handler;)V
    .registers 5
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/m;->Gw:Landroid/media/MediaCodec;

    new-instance v1, Lcom/applovin/exoplayer2/f/w;

    invoke-direct {v1, p0, p1}, Lcom/applovin/exoplayer2/f/w;-><init>(Lcom/applovin/exoplayer2/f/m;Lcom/applovin/exoplayer2/f/g$c;)V

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public b(Landroid/view/Surface;)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/m;->Gw:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public cH(I)Ljava/nio/ByteBuffer;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/m;->Gw:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_d
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/m;->IX:[Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public cI(I)Ljava/nio/ByteBuffer;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/m;->Gw:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_d
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/m;->IY:[Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public cJ(I)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/m;->Gw:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method public dI()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/m;->Gw:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    return-void
.end method

.method public i(IJ)V
    .registers 5
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/m;->Gw:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    return-void
.end method

.method public jC()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public jD()I
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/m;->Gw:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    return v0
.end method

.method public jE()Landroid/media/MediaFormat;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/m;->Gw:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public l(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/m;->Gw:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/f/m;->IX:[Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/applovin/exoplayer2/f/m;->IY:[Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/m;->GB:Landroid/view/Surface;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_c
    iget-object v0, p0, Lcom/applovin/exoplayer2/f/m;->Gw:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    return-void
.end method

.method public u(Landroid/os/Bundle;)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/m;->Gw:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

###### Class com.applovin.exoplayer2.f.m.AnonymousClass1 (com.applovin.exoplayer2.f.m$1)
.class synthetic Lcom/applovin/exoplayer2/f/m$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/f/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.applovin.exoplayer2.f.m.a (com.applovin.exoplayer2.f.m$a)
.class final Lcom/applovin/exoplayer2/f/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/f/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method public static b(Landroid/media/MediaCodec;)Landroid/view/Surface;
    .registers 1

    invoke-virtual {p0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

###### Class com.applovin.exoplayer2.f.m.b (com.applovin.exoplayer2.f.m$b)
.class public Lcom/applovin/exoplayer2/f/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/f/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/f/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/applovin/exoplayer2/f/g$a;)Lcom/applovin/exoplayer2/f/g;
    .registers 9
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/f/m$b;->c(Lcom/applovin/exoplayer2/f/g$a;)Landroid/media/MediaCodec;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_4e
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_5} :catch_4c

    :try_start_5
    const-string v2, "configureCodec"

    invoke-static {v2}, Lcom/applovin/exoplayer2/l/ah;->bg(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/applovin/exoplayer2/f/g$a;->Hl:Landroid/media/MediaFormat;

    iget-object v3, p1, Lcom/applovin/exoplayer2/f/g$a;->Hm:Landroid/view/Surface;

    iget-object v4, p1, Lcom/applovin/exoplayer2/f/g$a;->Hn:Landroid/media/MediaCrypto;

    iget v5, p1, Lcom/applovin/exoplayer2/f/g$a;->jF:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-static {}, Lcom/applovin/exoplayer2/l/ah;->pV()V

    iget-boolean p1, p1, Lcom/applovin/exoplayer2/f/g$a;->Ho:Z

    if-eqz p1, :cond_2f

    sget p1, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v2, 0x12

    if-lt p1, v2, :cond_27

    invoke-static {v1}, Lcom/applovin/exoplayer2/f/m$a;->b(Landroid/media/MediaCodec;)Landroid/view/Surface;

    move-result-object p1

    goto :goto_30

    :cond_27
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v2, "Encoding from a surface is only supported on API 18 and up."

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2f} :catch_4a
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_2f} :catch_48

    :cond_2f
    move-object p1, v0

    :goto_30
    :try_start_30
    const-string v2, "startCodec"

    invoke-static {v2}, Lcom/applovin/exoplayer2/l/ah;->bg(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Lcom/applovin/exoplayer2/l/ah;->pV()V

    new-instance v2, Lcom/applovin/exoplayer2/f/m;

    invoke-direct {v2, v1, p1, v0}, Lcom/applovin/exoplayer2/f/m;-><init>(Landroid/media/MediaCodec;Landroid/view/Surface;Lcom/applovin/exoplayer2/f/m$1;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_40} :catch_43
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_40} :catch_41

    return-object v2

    :catch_41
    move-exception v0

    goto :goto_44

    :catch_43
    move-exception v0

    :goto_44
    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    goto :goto_50

    :catch_48
    move-exception p1

    goto :goto_50

    :catch_4a
    move-exception p1

    goto :goto_50

    :catch_4c
    move-exception p1

    goto :goto_4f

    :catch_4e
    move-exception p1

    :goto_4f
    move-object v1, v0

    :goto_50
    if-eqz v0, :cond_55

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_55
    if-eqz v1, :cond_5a

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    :cond_5a
    throw p1
.end method

.method protected c(Lcom/applovin/exoplayer2/f/g$a;)Landroid/media/MediaCodec;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/applovin/exoplayer2/f/g$a;->Hk:Lcom/applovin/exoplayer2/f/i;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/applovin/exoplayer2/f/g$a;->Hk:Lcom/applovin/exoplayer2/f/i;

    iget-object p1, p1, Lcom/applovin/exoplayer2/f/i;->name:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCodec:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ah;->bg(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-static {}, Lcom/applovin/exoplayer2/l/ah;->pV()V

    return-object p1
.end method

###### Class com.applovin.exoplayer2.f.w (com.applovin.exoplayer2.f.w)
.class public final synthetic Lcom/applovin/exoplayer2/f/w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/f/m;

.field public final synthetic b:Lcom/applovin/exoplayer2/f/g$c;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/f/m;Lcom/applovin/exoplayer2/f/g$c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/f/w;->a:Lcom/applovin/exoplayer2/f/m;

    iput-object p2, p0, Lcom/applovin/exoplayer2/f/w;->b:Lcom/applovin/exoplayer2/f/g$c;

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .registers 13

    iget-object v0, p0, Lcom/applovin/exoplayer2/f/w;->a:Lcom/applovin/exoplayer2/f/m;

    iget-object v1, p0, Lcom/applovin/exoplayer2/f/w;->b:Lcom/applovin/exoplayer2/f/g$c;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/applovin/exoplayer2/f/m;->c(Lcom/applovin/exoplayer2/f/m;Lcom/applovin/exoplayer2/f/g$c;Landroid/media/MediaCodec;JJ)V

    return-void
.end method
