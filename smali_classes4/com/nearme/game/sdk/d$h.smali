###### Class com.nearme.game.sdk.d.h (com.nearme.game.sdk.d$h)
.class final Lcom/nearme/game/sdk/d$h;
.super Lcom/nearme/game/sdk/common/util/b;
.source "GCInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/game/sdk/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nearme/game/sdk/d;


# direct methods
.method constructor <init>(Lcom/nearme/game/sdk/d;)V
    .registers 2

    iput-object p1, p0, Lcom/nearme/game/sdk/d$h;->a:Lcom/nearme/game/sdk/d;

    invoke-direct {p0}, Lcom/nearme/game/sdk/common/util/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_60

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-eqz p1, :cond_60

    instance-of v0, p1, Lcom/nearme/game/sdk/c/b/b;

    if-eqz v0, :cond_60

    check-cast p1, Lcom/nearme/game/sdk/c/b/b;

    iget-object v0, p0, Lcom/nearme/game/sdk/d$h;->a:Lcom/nearme/game/sdk/d;

    invoke-static {v0, p1}, Lcom/nearme/game/sdk/d;->i(Lcom/nearme/game/sdk/d;Lcom/nearme/game/sdk/c/b/b;)V

    invoke-static {}, Lcom/nearme/game/sdk/d;->f()Lcom/nearme/game/sdk/common/util/LongSparseArray;

    move-result-object v0

    if-nez v0, :cond_23

    const/4 v0, 0x0

    goto :goto_2f

    :cond_23
    invoke-static {}, Lcom/nearme/game/sdk/d;->f()Lcom/nearme/game/sdk/common/util/LongSparseArray;

    move-result-object v0

    iget-wide v1, p1, Lcom/nearme/game/sdk/c/b/b;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->f(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nearme/game/sdk/b/a;

    :goto_2f
    if-eqz v0, :cond_4b

    const/16 v1, 0x3e9

    iget v2, p1, Lcom/nearme/game/sdk/c/b/b;->b:I

    if-ne v1, v2, :cond_3d

    iget-object v1, p1, Lcom/nearme/game/sdk/c/b/b;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nearme/game/sdk/b/a;->onSuccess(Ljava/lang/String;)V

    goto :goto_42

    :cond_3d
    iget-object v1, p1, Lcom/nearme/game/sdk/c/b/b;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nearme/game/sdk/b/a;->a(Ljava/lang/String;I)V

    :goto_42
    invoke-static {}, Lcom/nearme/game/sdk/d;->f()Lcom/nearme/game/sdk/common/util/LongSparseArray;

    move-result-object v0

    iget-wide v1, p1, Lcom/nearme/game/sdk/c/b/b;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->k(J)V

    :cond_4b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "finish handle request "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/nearme/game/sdk/c/b/b;->a:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GCInternal"

    invoke-static {v0, p1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    return-void
.end method
