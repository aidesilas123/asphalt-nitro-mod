###### Class com.tapjoy.internal.o7 (com.tapjoy.internal.o7)
.class public final Lcom/tapjoy/internal/o7;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Lcom/tapjoy/internal/s3;

.field public b:Landroid/graphics/Bitmap;

.field public final c:Landroid/os/Handler;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/Thread;

.field public h:J

.field public final i:Lcom/tapjoy/internal/v5;

.field public final j:Lcom/tapjoy/internal/h6;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tapjoy/internal/o7;->c:Landroid/os/Handler;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tapjoy/internal/o7;->h:J

    new-instance p1, Lcom/tapjoy/internal/v5;

    invoke-direct {p1, p0}, Lcom/tapjoy/internal/v5;-><init>(Lcom/tapjoy/internal/o7;)V

    iput-object p1, p0, Lcom/tapjoy/internal/o7;->i:Lcom/tapjoy/internal/v5;

    new-instance p1, Lcom/tapjoy/internal/h6;

    invoke-direct {p1, p0}, Lcom/tapjoy/internal/h6;-><init>(Lcom/tapjoy/internal/o7;)V

    iput-object p1, p0, Lcom/tapjoy/internal/o7;->j:Lcom/tapjoy/internal/h6;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-boolean v0, p0, Lcom/tapjoy/internal/o7;->d:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/tapjoy/internal/o7;->e:Z

    if-eqz v0, :cond_12

    :cond_8
    iget-object v0, p0, Lcom/tapjoy/internal/o7;->a:Lcom/tapjoy/internal/s3;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/tapjoy/internal/o7;->g:Ljava/lang/Thread;

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tapjoy/internal/o7;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1f
    return-void
.end method

.method public final b()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/o7;->d:Z

    iget-object v0, p0, Lcom/tapjoy/internal/o7;->g:Ljava/lang/Thread;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/o7;->g:Ljava/lang/Thread;

    :cond_d
    return-void
.end method

.method public getFramesDisplayDuration()J
    .registers 3

    iget-wide v0, p0, Lcom/tapjoy/internal/o7;->h:J

    return-wide v0
.end method

.method public getGifHeight()I
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/internal/o7;->a:Lcom/tapjoy/internal/s3;

    iget-object v0, v0, Lcom/tapjoy/internal/s3;->p:Lcom/tapjoy/internal/s4;

    iget v0, v0, Lcom/tapjoy/internal/s4;->g:I

    return v0
.end method

.method public getGifWidth()I
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/internal/o7;->a:Lcom/tapjoy/internal/s3;

    iget-object v0, v0, Lcom/tapjoy/internal/s3;->p:Lcom/tapjoy/internal/s4;

    iget v0, v0, Lcom/tapjoy/internal/s4;->f:I

    return v0
.end method

.method public getOnAnimationStop()Lcom/tapjoy/internal/s2;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnFrameAvailable()Lcom/tapjoy/internal/t2;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/o7;->d:Z

    iput-boolean v0, p0, Lcom/tapjoy/internal/o7;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/o7;->f:Z

    invoke-virtual {p0}, Lcom/tapjoy/internal/o7;->b()V

    iget-object v0, p0, Lcom/tapjoy/internal/o7;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/internal/o7;->j:Lcom/tapjoy/internal/h6;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final run()V
    .registers 11

    :cond_0
    iget-boolean v0, p0, Lcom/tapjoy/internal/o7;->d:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/tapjoy/internal/o7;->e:Z

    if-nez v0, :cond_a

    goto/16 :goto_91

    :cond_a
    iget-object v0, p0, Lcom/tapjoy/internal/o7;->a:Lcom/tapjoy/internal/s3;

    iget-object v1, v0, Lcom/tapjoy/internal/s3;->p:Lcom/tapjoy/internal/s4;

    iget v2, v1, Lcom/tapjoy/internal/s4;->c:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gtz v2, :cond_16

    goto :goto_29

    :cond_16
    iget v6, v0, Lcom/tapjoy/internal/s3;->n:I

    add-int/lit8 v7, v2, -0x1

    if-ne v6, v7, :cond_21

    iget v7, v0, Lcom/tapjoy/internal/s3;->o:I

    add-int/2addr v7, v5

    iput v7, v0, Lcom/tapjoy/internal/s3;->o:I

    :cond_21
    iget v1, v1, Lcom/tapjoy/internal/s4;->l:I

    if-eq v1, v3, :cond_2b

    iget v7, v0, Lcom/tapjoy/internal/s3;->o:I

    if-le v7, v1, :cond_2b

    :goto_29
    const/4 v5, 0x0

    goto :goto_30

    :cond_2b
    add-int/lit8 v6, v6, 0x1

    rem-int/2addr v6, v2

    iput v6, v0, Lcom/tapjoy/internal/s3;->n:I

    :goto_30
    const-wide/16 v0, 0x0

    :try_start_32
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-object v2, p0, Lcom/tapjoy/internal/o7;->a:Lcom/tapjoy/internal/s3;

    invoke-virtual {v2}, Lcom/tapjoy/internal/s3;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/internal/o7;->b:Landroid/graphics/Bitmap;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v8, v6
    :try_end_47
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_32 .. :try_end_47} :catch_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_47} :catch_51

    :try_start_47
    iget-object v2, p0, Lcom/tapjoy/internal/o7;->c:Landroid/os/Handler;

    iget-object v6, p0, Lcom/tapjoy/internal/o7;->i:Lcom/tapjoy/internal/v5;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_47 .. :try_end_4e} :catch_4f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_47 .. :try_end_4e} :catch_4f

    goto :goto_52

    :catch_4f
    nop

    goto :goto_52

    :catch_51
    move-wide v8, v0

    :goto_52
    iput-boolean v4, p0, Lcom/tapjoy/internal/o7;->e:Z

    iget-boolean v2, p0, Lcom/tapjoy/internal/o7;->d:Z

    if-eqz v2, :cond_8f

    if-nez v5, :cond_5b

    goto :goto_8f

    :cond_5b
    :try_start_5b
    iget-object v2, p0, Lcom/tapjoy/internal/o7;->a:Lcom/tapjoy/internal/s3;

    iget-object v5, v2, Lcom/tapjoy/internal/s3;->p:Lcom/tapjoy/internal/s4;

    iget v6, v5, Lcom/tapjoy/internal/s4;->c:I

    if-lez v6, :cond_77

    iget v2, v2, Lcom/tapjoy/internal/s3;->n:I

    if-gez v2, :cond_68

    goto :goto_77

    :cond_68
    if-ltz v2, :cond_78

    if-ge v2, v6, :cond_78

    iget-object v3, v5, Lcom/tapjoy/internal/s4;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/g4;

    iget v3, v2, Lcom/tapjoy/internal/g4;->i:I

    goto :goto_78

    :cond_77
    :goto_77
    const/4 v3, 0x0

    :cond_78
    :goto_78
    int-to-long v2, v3

    sub-long/2addr v2, v8

    long-to-int v3, v2

    if-lez v3, :cond_8a

    iget-wide v4, p0, Lcom/tapjoy/internal/o7;->h:J

    cmp-long v2, v4, v0

    if-lez v2, :cond_84

    goto :goto_85

    :cond_84
    int-to-long v4, v3

    :goto_85
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_88
    .catch Ljava/lang/InterruptedException; {:try_start_5b .. :try_end_88} :catch_89

    goto :goto_8a

    :catch_89
    nop

    :cond_8a
    :goto_8a
    iget-boolean v0, p0, Lcom/tapjoy/internal/o7;->d:Z

    if-nez v0, :cond_0

    goto :goto_91

    :cond_8f
    :goto_8f
    iput-boolean v4, p0, Lcom/tapjoy/internal/o7;->d:Z

    :goto_91
    iget-boolean v0, p0, Lcom/tapjoy/internal/o7;->f:Z

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/tapjoy/internal/o7;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/internal/o7;->j:Lcom/tapjoy/internal/h6;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/o7;->g:Ljava/lang/Thread;

    return-void
.end method

.method public setBytes([B)V
    .registers 8

    new-instance v0, Lcom/tapjoy/internal/s3;

    new-instance v1, Lcom/tapjoy/internal/v;

    invoke-direct {v1}, Lcom/tapjoy/internal/v;-><init>()V

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/s3;-><init>(Lcom/tapjoy/internal/v;)V

    iput-object v0, p0, Lcom/tapjoy/internal/o7;->a:Lcom/tapjoy/internal/s3;

    const/4 v1, 0x0

    :try_start_d
    monitor-enter v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_e} :catch_81

    :try_start_e
    iget-object v2, v0, Lcom/tapjoy/internal/s3;->h:Lcom/tapjoy/internal/j5;

    if-nez v2, :cond_19

    new-instance v2, Lcom/tapjoy/internal/j5;

    invoke-direct {v2}, Lcom/tapjoy/internal/j5;-><init>()V

    iput-object v2, v0, Lcom/tapjoy/internal/s3;->h:Lcom/tapjoy/internal/j5;

    :cond_19
    iget-object v2, v0, Lcom/tapjoy/internal/s3;->h:Lcom/tapjoy/internal/j5;

    const/4 v3, 0x0

    if-eqz p1, :cond_46

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v1, v2, Lcom/tapjoy/internal/j5;->b:Ljava/nio/ByteBuffer;

    iget-object v5, v2, Lcom/tapjoy/internal/j5;->a:[B

    invoke-static {v5, v3}, Ljava/util/Arrays;->fill([BB)V

    new-instance v5, Lcom/tapjoy/internal/s4;

    invoke-direct {v5}, Lcom/tapjoy/internal/s4;-><init>()V

    iput-object v5, v2, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    iput v3, v2, Lcom/tapjoy/internal/j5;->d:I

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, v2, Lcom/tapjoy/internal/j5;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v4, v2, Lcom/tapjoy/internal/j5;->b:Ljava/nio/ByteBuffer;

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto :goto_4d

    :cond_46
    iput-object v1, v2, Lcom/tapjoy/internal/j5;->b:Ljava/nio/ByteBuffer;

    iget-object v4, v2, Lcom/tapjoy/internal/j5;->c:Lcom/tapjoy/internal/s4;

    const/4 v5, 0x2

    iput v5, v4, Lcom/tapjoy/internal/s4;->b:I

    :goto_4d
    invoke-virtual {v2}, Lcom/tapjoy/internal/j5;->c()Lcom/tapjoy/internal/s4;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/s3;->p:Lcom/tapjoy/internal/s4;

    if-eqz p1, :cond_58

    invoke-virtual {v0, v2, p1}, Lcom/tapjoy/internal/s3;->c(Lcom/tapjoy/internal/s4;[B)V
    :try_end_58
    .catchall {:try_start_e .. :try_end_58} :catchall_7e

    :cond_58
    :try_start_58
    monitor-exit v0
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_59} :catch_81

    iget-boolean p1, p0, Lcom/tapjoy/internal/o7;->d:Z

    if-eqz p1, :cond_61

    invoke-virtual {p0}, Lcom/tapjoy/internal/o7;->a()V

    goto :goto_7d

    :cond_61
    iget-object v0, p0, Lcom/tapjoy/internal/o7;->a:Lcom/tapjoy/internal/s3;

    iget v1, v0, Lcom/tapjoy/internal/s3;->n:I

    if-nez v1, :cond_68

    goto :goto_7d

    :cond_68
    const/4 v1, -0x1

    iget-object v2, v0, Lcom/tapjoy/internal/s3;->p:Lcom/tapjoy/internal/s4;

    iget v2, v2, Lcom/tapjoy/internal/s4;->c:I

    const/4 v4, 0x1

    if-lt v1, v2, :cond_71

    goto :goto_74

    :cond_71
    iput v1, v0, Lcom/tapjoy/internal/s3;->n:I

    const/4 v3, 0x1

    :goto_74
    if-eqz v3, :cond_7d

    if-nez p1, :cond_7d

    iput-boolean v4, p0, Lcom/tapjoy/internal/o7;->e:Z

    invoke-virtual {p0}, Lcom/tapjoy/internal/o7;->a()V

    :cond_7d
    :goto_7d
    return-void

    :catchall_7e
    move-exception p1

    :try_start_7f
    monitor-exit v0

    throw p1
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_81} :catch_81

    :catch_81
    iput-object v1, p0, Lcom/tapjoy/internal/o7;->a:Lcom/tapjoy/internal/s3;

    return-void
.end method

.method public setFramesDisplayDuration(J)V
    .registers 3

    iput-wide p1, p0, Lcom/tapjoy/internal/o7;->h:J

    return-void
.end method

.method public setOnAnimationStop(Lcom/tapjoy/internal/s2;)V
    .registers 2

    return-void
.end method

.method public setOnFrameAvailable(Lcom/tapjoy/internal/t2;)V
    .registers 2

    return-void
.end method
