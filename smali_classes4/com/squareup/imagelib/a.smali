###### Class com.squareup.imagelib.a (com.squareup.imagelib.a)
.class abstract Lcom/squareup/imagelib/a;
.super Ljava/lang/Object;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/imagelib/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/squareup/imagelib/Picasso;

.field final b:Lcom/squareup/imagelib/s;

.field final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field final d:Z

.field final e:I

.field final f:I

.field final g:I

.field final h:Landroid/graphics/drawable/Drawable;

.field final i:Ljava/lang/String;

.field final j:Ljava/lang/Object;

.field k:Z

.field l:Z


# direct methods
.method constructor <init>(Lcom/squareup/imagelib/Picasso;Ljava/lang/Object;Lcom/squareup/imagelib/s;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/imagelib/Picasso;",
            "TT;",
            "Lcom/squareup/imagelib/s;",
            "III",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/imagelib/a;->a:Lcom/squareup/imagelib/Picasso;

    iput-object p3, p0, Lcom/squareup/imagelib/a;->b:Lcom/squareup/imagelib/s;

    if-nez p2, :cond_b

    const/4 p1, 0x0

    goto :goto_13

    :cond_b
    new-instance p3, Lcom/squareup/imagelib/a$a;

    iget-object p1, p1, Lcom/squareup/imagelib/Picasso;->m:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p3, p0, p2, p1}, Lcom/squareup/imagelib/a$a;-><init>(Lcom/squareup/imagelib/a;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    move-object p1, p3

    :goto_13
    iput-object p1, p0, Lcom/squareup/imagelib/a;->c:Ljava/lang/ref/WeakReference;

    iput p4, p0, Lcom/squareup/imagelib/a;->e:I

    iput p5, p0, Lcom/squareup/imagelib/a;->f:I

    iput-boolean p10, p0, Lcom/squareup/imagelib/a;->d:Z

    iput p6, p0, Lcom/squareup/imagelib/a;->g:I

    iput-object p7, p0, Lcom/squareup/imagelib/a;->h:Landroid/graphics/drawable/Drawable;

    iput-object p8, p0, Lcom/squareup/imagelib/a;->i:Ljava/lang/String;

    if-eqz p9, :cond_24

    goto :goto_25

    :cond_24
    move-object p9, p0

    :goto_25
    iput-object p9, p0, Lcom/squareup/imagelib/a;->j:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/imagelib/a;->l:Z

    return-void
.end method

.method abstract b(Landroid/graphics/Bitmap;Lcom/squareup/imagelib/Picasso$LoadedFrom;)V
.end method

.method abstract c()V
.end method

.method d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/squareup/imagelib/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method e()I
    .registers 2

    iget v0, p0, Lcom/squareup/imagelib/a;->e:I

    return v0
.end method

.method f()I
    .registers 2

    iget v0, p0, Lcom/squareup/imagelib/a;->f:I

    return v0
.end method

.method g()Lcom/squareup/imagelib/Picasso;
    .registers 2

    iget-object v0, p0, Lcom/squareup/imagelib/a;->a:Lcom/squareup/imagelib/Picasso;

    return-object v0
.end method

.method h()Lcom/squareup/imagelib/Picasso$Priority;
    .registers 2

    iget-object v0, p0, Lcom/squareup/imagelib/a;->b:Lcom/squareup/imagelib/s;

    iget-object v0, v0, Lcom/squareup/imagelib/s;->t:Lcom/squareup/imagelib/Picasso$Priority;

    return-object v0
.end method

.method i()Lcom/squareup/imagelib/s;
    .registers 2

    iget-object v0, p0, Lcom/squareup/imagelib/a;->b:Lcom/squareup/imagelib/s;

    return-object v0
.end method

.method j()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/squareup/imagelib/a;->j:Ljava/lang/Object;

    return-object v0
.end method

.method k()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/imagelib/a;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method l()Z
    .registers 2

    iget-boolean v0, p0, Lcom/squareup/imagelib/a;->l:Z

    return v0
.end method

.method m()Z
    .registers 2

    iget-boolean v0, p0, Lcom/squareup/imagelib/a;->k:Z

    return v0
.end method
