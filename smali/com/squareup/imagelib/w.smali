###### Class com.squareup.imagelib.w (com.squareup.imagelib.w)
.class Lcom/squareup/imagelib/w;
.super Ljava/lang/Object;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/imagelib/w$a;
    }
.end annotation


# instance fields
.field final a:Landroid/os/HandlerThread;

.field final b:Lcom/squareup/imagelib/d;

.field final c:Landroid/os/Handler;

.field d:J

.field e:J

.field f:J

.field g:J

.field h:J

.field i:J

.field j:J

.field k:J

.field l:I

.field m:I

.field n:I


# direct methods
.method constructor <init>(Lcom/squareup/imagelib/d;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/imagelib/w;->b:Lcom/squareup/imagelib/d;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "Picasso-Stats"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/squareup/imagelib/w;->a:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/imagelib/a0;->j(Landroid/os/Looper;)V

    new-instance v0, Lcom/squareup/imagelib/w$a;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/squareup/imagelib/w$a;-><init>(Landroid/os/Looper;Lcom/squareup/imagelib/w;)V

    iput-object v0, p0, Lcom/squareup/imagelib/w;->c:Landroid/os/Handler;

    return-void
.end method

.method private static g(IJ)J
    .registers 5

    int-to-long v0, p0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private m(Landroid/graphics/Bitmap;I)V
    .registers 5

    invoke-static {p1}, Lcom/squareup/imagelib/a0;->k(Landroid/graphics/Bitmap;)I

    move-result p1

    iget-object v0, p0, Lcom/squareup/imagelib/w;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method a()Lcom/squareup/imagelib/x;
    .registers 29

    move-object/from16 v0, p0

    new-instance v25, Lcom/squareup/imagelib/x;

    move-object/from16 v1, v25

    iget-object v2, v0, Lcom/squareup/imagelib/w;->b:Lcom/squareup/imagelib/d;

    invoke-interface {v2}, Lcom/squareup/imagelib/d;->a()I

    move-result v2

    iget-object v3, v0, Lcom/squareup/imagelib/w;->b:Lcom/squareup/imagelib/d;

    invoke-interface {v3}, Lcom/squareup/imagelib/d;->size()I

    move-result v3

    iget-wide v4, v0, Lcom/squareup/imagelib/w;->d:J

    iget-wide v6, v0, Lcom/squareup/imagelib/w;->e:J

    iget-wide v8, v0, Lcom/squareup/imagelib/w;->f:J

    iget-wide v10, v0, Lcom/squareup/imagelib/w;->g:J

    iget-wide v12, v0, Lcom/squareup/imagelib/w;->h:J

    iget-wide v14, v0, Lcom/squareup/imagelib/w;->i:J

    move-object/from16 v26, v1

    move/from16 v27, v2

    iget-wide v1, v0, Lcom/squareup/imagelib/w;->j:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/squareup/imagelib/w;->k:J

    move-wide/from16 v18, v1

    iget v1, v0, Lcom/squareup/imagelib/w;->l:I

    move/from16 v20, v1

    iget v1, v0, Lcom/squareup/imagelib/w;->m:I

    move/from16 v21, v1

    iget v1, v0, Lcom/squareup/imagelib/w;->n:I

    move/from16 v22, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct/range {v1 .. v24}, Lcom/squareup/imagelib/x;-><init>(IIJJJJJJJJIIIJ)V

    return-object v25
.end method

.method b(Landroid/graphics/Bitmap;)V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/squareup/imagelib/w;->m(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method c(Landroid/graphics/Bitmap;)V
    .registers 3

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/squareup/imagelib/w;->m(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method d()V
    .registers 3

    iget-object v0, p0, Lcom/squareup/imagelib/w;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method e()V
    .registers 3

    iget-object v0, p0, Lcom/squareup/imagelib/w;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method f(J)V
    .registers 4

    iget-object v0, p0, Lcom/squareup/imagelib/w;->c:Landroid/os/Handler;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method h(J)V
    .registers 6

    iget v0, p0, Lcom/squareup/imagelib/w;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/imagelib/w;->m:I

    iget-wide v1, p0, Lcom/squareup/imagelib/w;->g:J

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/squareup/imagelib/w;->g:J

    invoke-static {v0, v1, v2}, Lcom/squareup/imagelib/w;->g(IJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/squareup/imagelib/w;->j:J

    return-void
.end method

.method i(J)V
    .registers 5

    iget v0, p0, Lcom/squareup/imagelib/w;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/imagelib/w;->n:I

    iget-wide v0, p0, Lcom/squareup/imagelib/w;->h:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/squareup/imagelib/w;->h:J

    iget p1, p0, Lcom/squareup/imagelib/w;->m:I

    invoke-static {p1, v0, v1}, Lcom/squareup/imagelib/w;->g(IJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/squareup/imagelib/w;->k:J

    return-void
.end method

.method j()V
    .registers 5

    iget-wide v0, p0, Lcom/squareup/imagelib/w;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/squareup/imagelib/w;->d:J

    return-void
.end method

.method k()V
    .registers 5

    iget-wide v0, p0, Lcom/squareup/imagelib/w;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/squareup/imagelib/w;->e:J

    return-void
.end method

.method l(Ljava/lang/Long;)V
    .registers 6

    iget v0, p0, Lcom/squareup/imagelib/w;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/imagelib/w;->l:I

    iget-wide v0, p0, Lcom/squareup/imagelib/w;->f:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/squareup/imagelib/w;->f:J

    iget p1, p0, Lcom/squareup/imagelib/w;->l:I

    invoke-static {p1, v0, v1}, Lcom/squareup/imagelib/w;->g(IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/imagelib/w;->i:J

    return-void
.end method

###### Class com.squareup.imagelib.w.a (com.squareup.imagelib.w$a)
.class Lcom/squareup/imagelib/w$a;
.super Landroid/os/Handler;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/imagelib/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/squareup/imagelib/w;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/squareup/imagelib/w;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/squareup/imagelib/w$a;->a:Lcom/squareup/imagelib/w;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_37

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_25

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1b

    sget-object v0, Lcom/squareup/imagelib/Picasso;->a:Landroid/os/Handler;

    new-instance v1, Lcom/squareup/imagelib/w$a$a;

    invoke-direct {v1, p0, p1}, Lcom/squareup/imagelib/w$a$a;-><init>(Lcom/squareup/imagelib/w$a;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_42

    :cond_1b
    iget-object v0, p0, Lcom/squareup/imagelib/w$a;->a:Lcom/squareup/imagelib/w;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Lcom/squareup/imagelib/w;->l(Ljava/lang/Long;)V

    goto :goto_42

    :cond_25
    iget-object v0, p0, Lcom/squareup/imagelib/w$a;->a:Lcom/squareup/imagelib/w;

    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/squareup/imagelib/w;->i(J)V

    goto :goto_42

    :cond_2e
    iget-object v0, p0, Lcom/squareup/imagelib/w$a;->a:Lcom/squareup/imagelib/w;

    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/squareup/imagelib/w;->h(J)V

    goto :goto_42

    :cond_37
    iget-object p1, p0, Lcom/squareup/imagelib/w$a;->a:Lcom/squareup/imagelib/w;

    invoke-virtual {p1}, Lcom/squareup/imagelib/w;->k()V

    goto :goto_42

    :cond_3d
    iget-object p1, p0, Lcom/squareup/imagelib/w$a;->a:Lcom/squareup/imagelib/w;

    invoke-virtual {p1}, Lcom/squareup/imagelib/w;->j()V

    :goto_42
    return-void
.end method

###### Class com.squareup.imagelib.w.a.RunnableC0445a (com.squareup.imagelib.w$a$a)
.class Lcom/squareup/imagelib/w$a$a;
.super Ljava/lang/Object;
.source "Stats.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/imagelib/w$a;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Message;

.field final synthetic b:Lcom/squareup/imagelib/w$a;


# direct methods
.method constructor <init>(Lcom/squareup/imagelib/w$a;Landroid/os/Message;)V
    .registers 3

    iput-object p1, p0, Lcom/squareup/imagelib/w$a$a;->b:Lcom/squareup/imagelib/w$a;

    iput-object p2, p0, Lcom/squareup/imagelib/w$a$a;->a:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled stats message."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/imagelib/w$a$a;->a:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
