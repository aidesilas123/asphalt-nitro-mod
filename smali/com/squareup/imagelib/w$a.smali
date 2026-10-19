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
