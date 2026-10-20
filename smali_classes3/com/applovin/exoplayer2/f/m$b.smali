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
