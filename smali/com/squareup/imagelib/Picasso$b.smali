###### Class com.squareup.imagelib.Picasso.b (com.squareup.imagelib.Picasso$b)
.class public Lcom/squareup/imagelib/Picasso$b;
.super Ljava/lang/Object;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/imagelib/Picasso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/squareup/imagelib/j;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Lcom/squareup/imagelib/d;

.field private e:Lcom/squareup/imagelib/Picasso$d;

.field private f:Lcom/squareup/imagelib/Picasso$e;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/imagelib/u;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/graphics/Bitmap$Config;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/imagelib/Picasso$b;->a:Landroid/content/Context;

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/squareup/imagelib/Picasso;
    .registers 15

    iget-object v7, p0, Lcom/squareup/imagelib/Picasso$b;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/squareup/imagelib/Picasso$b;->b:Lcom/squareup/imagelib/j;

    if-nez v0, :cond_c

    invoke-static {v7}, Lcom/squareup/imagelib/a0;->g(Landroid/content/Context;)Lcom/squareup/imagelib/j;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/imagelib/Picasso$b;->b:Lcom/squareup/imagelib/j;

    :cond_c
    iget-object v0, p0, Lcom/squareup/imagelib/Picasso$b;->d:Lcom/squareup/imagelib/d;

    if-nez v0, :cond_17

    new-instance v0, Lcom/squareup/imagelib/n;

    invoke-direct {v0, v7}, Lcom/squareup/imagelib/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/squareup/imagelib/Picasso$b;->d:Lcom/squareup/imagelib/d;

    :cond_17
    iget-object v0, p0, Lcom/squareup/imagelib/Picasso$b;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_22

    new-instance v0, Lcom/squareup/imagelib/r;

    invoke-direct {v0}, Lcom/squareup/imagelib/r;-><init>()V

    iput-object v0, p0, Lcom/squareup/imagelib/Picasso$b;->c:Ljava/util/concurrent/ExecutorService;

    :cond_22
    iget-object v0, p0, Lcom/squareup/imagelib/Picasso$b;->f:Lcom/squareup/imagelib/Picasso$e;

    if-nez v0, :cond_2a

    sget-object v0, Lcom/squareup/imagelib/Picasso$e;->a:Lcom/squareup/imagelib/Picasso$e;

    iput-object v0, p0, Lcom/squareup/imagelib/Picasso$b;->f:Lcom/squareup/imagelib/Picasso$e;

    :cond_2a
    new-instance v8, Lcom/squareup/imagelib/w;

    iget-object v0, p0, Lcom/squareup/imagelib/Picasso$b;->d:Lcom/squareup/imagelib/d;

    invoke-direct {v8, v0}, Lcom/squareup/imagelib/w;-><init>(Lcom/squareup/imagelib/d;)V

    new-instance v9, Lcom/squareup/imagelib/i;

    iget-object v2, p0, Lcom/squareup/imagelib/Picasso$b;->c:Ljava/util/concurrent/ExecutorService;

    sget-object v3, Lcom/squareup/imagelib/Picasso;->a:Landroid/os/Handler;

    iget-object v4, p0, Lcom/squareup/imagelib/Picasso$b;->b:Lcom/squareup/imagelib/j;

    iget-object v5, p0, Lcom/squareup/imagelib/Picasso$b;->d:Lcom/squareup/imagelib/d;

    move-object v0, v9

    move-object v1, v7

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/squareup/imagelib/i;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/squareup/imagelib/j;Lcom/squareup/imagelib/d;Lcom/squareup/imagelib/w;)V

    new-instance v11, Lcom/squareup/imagelib/Picasso;

    iget-object v3, p0, Lcom/squareup/imagelib/Picasso$b;->d:Lcom/squareup/imagelib/d;

    iget-object v4, p0, Lcom/squareup/imagelib/Picasso$b;->e:Lcom/squareup/imagelib/Picasso$d;

    iget-object v5, p0, Lcom/squareup/imagelib/Picasso$b;->f:Lcom/squareup/imagelib/Picasso$e;

    iget-object v6, p0, Lcom/squareup/imagelib/Picasso$b;->g:Ljava/util/List;

    iget-object v10, p0, Lcom/squareup/imagelib/Picasso$b;->h:Landroid/graphics/Bitmap$Config;

    iget-boolean v12, p0, Lcom/squareup/imagelib/Picasso$b;->i:Z

    iget-boolean v13, p0, Lcom/squareup/imagelib/Picasso$b;->j:Z

    move-object v0, v11

    move-object v2, v9

    move-object v7, v8

    move-object v8, v10

    move v9, v12

    move v10, v13

    invoke-direct/range {v0 .. v10}, Lcom/squareup/imagelib/Picasso;-><init>(Landroid/content/Context;Lcom/squareup/imagelib/i;Lcom/squareup/imagelib/d;Lcom/squareup/imagelib/Picasso$d;Lcom/squareup/imagelib/Picasso$e;Ljava/util/List;Lcom/squareup/imagelib/w;Landroid/graphics/Bitmap$Config;ZZ)V

    return-object v11
.end method

.method public b(Z)Lcom/squareup/imagelib/Picasso$b;
    .registers 2

    iput-boolean p1, p0, Lcom/squareup/imagelib/Picasso$b;->j:Z

    return-object p0
.end method
