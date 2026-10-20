###### Class com.nearme.game.sdk.d.b (com.nearme.game.sdk.d$b)
.class final Lcom/nearme/game/sdk/d$b;
.super Lcom/nearme/game/sdk/common/util/b;
.source "GCInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/game/sdk/d;-><init>(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/a;)V
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

    iput-object p1, p0, Lcom/nearme/game/sdk/d$b;->a:Lcom/nearme/game/sdk/d;

    invoke-direct {p0}, Lcom/nearme/game/sdk/common/util/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_2d

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_2d

    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_2d

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/nearme/game/sdk/b/a;

    aget-object p1, p1, v1

    check-cast p1, Lcom/nearme/game/sdk/c/b/b;

    if-eqz v0, :cond_2d

    if-eqz p1, :cond_2d

    const/16 v1, 0x3e9

    iget v2, p1, Lcom/nearme/game/sdk/c/b/b;->b:I

    if-eq v1, v2, :cond_28

    iget-object p1, p1, Lcom/nearme/game/sdk/c/b/b;->c:Ljava/lang/String;

    invoke-interface {v0, p1, v2}, Lcom/nearme/game/sdk/b/a;->a(Ljava/lang/String;I)V

    return-void

    :cond_28
    iget-object p1, p1, Lcom/nearme/game/sdk/c/b/b;->c:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/nearme/game/sdk/b/a;->onSuccess(Ljava/lang/String;)V

    :cond_2d
    return-void
.end method
