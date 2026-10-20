###### Class com.squareup.imagelib.Picasso.a (com.squareup.imagelib.Picasso$a)
.class Lcom/squareup/imagelib/Picasso$a;
.super Landroid/os/Handler;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/imagelib/Picasso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_57

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3f

    const/16 v1, 0xd

    if-ne v0, v1, :cond_26

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_16
    if-ge v2, v0, :cond_7b

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/imagelib/a;

    iget-object v3, v1, Lcom/squareup/imagelib/a;->a:Lcom/squareup/imagelib/Picasso;

    invoke-virtual {v3, v1}, Lcom/squareup/imagelib/Picasso;->m(Lcom/squareup/imagelib/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_26
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown handler message received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_47
    if-ge v2, v0, :cond_7b

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/imagelib/c;

    iget-object v3, v1, Lcom/squareup/imagelib/c;->f:Lcom/squareup/imagelib/Picasso;

    invoke-virtual {v3, v1}, Lcom/squareup/imagelib/Picasso;->d(Lcom/squareup/imagelib/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_57
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/squareup/imagelib/a;

    invoke-virtual {p1}, Lcom/squareup/imagelib/a;->g()Lcom/squareup/imagelib/Picasso;

    move-result-object v0

    iget-boolean v0, v0, Lcom/squareup/imagelib/Picasso;->p:Z

    if-eqz v0, :cond_72

    iget-object v0, p1, Lcom/squareup/imagelib/a;->b:Lcom/squareup/imagelib/s;

    invoke-virtual {v0}, Lcom/squareup/imagelib/s;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Main"

    const-string v2, "canceled"

    const-string v3, "target got garbage collected"

    invoke-static {v1, v2, v0, v3}, Lcom/squareup/imagelib/a0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    iget-object v0, p1, Lcom/squareup/imagelib/a;->a:Lcom/squareup/imagelib/Picasso;

    invoke-virtual {p1}, Lcom/squareup/imagelib/a;->k()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/squareup/imagelib/Picasso;->a(Lcom/squareup/imagelib/Picasso;Ljava/lang/Object;)V

    :cond_7b
    return-void
.end method
