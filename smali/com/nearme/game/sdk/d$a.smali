###### Class com.nearme.game.sdk.d.a (com.nearme.game.sdk.d$a)
.class final Lcom/nearme/game/sdk/d$a;
.super Ljava/lang/Object;
.source "GCInternal.java"

# interfaces
.implements Lcom/nearme/game/sdk/c/a/a;


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

    iput-object p1, p0, Lcom/nearme/game/sdk/d$a;->a:Lcom/nearme/game/sdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final c(Landroid/app/Activity;)V
    .registers 4

    instance-of v0, p1, Lcom/nearme/game/sdk/component/proxy/ProxyActivity;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/nearme/game/sdk/d$a;->a:Lcom/nearme/game/sdk/d;

    invoke-virtual {v0, p1}, Lcom/nearme/game/sdk/d;->A(Landroid/app/Activity;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResume::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GCInternal"

    invoke-static {v0, p1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public final d(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final e(Landroid/app/Activity;)V
    .registers 4

    instance-of v0, p1, Lcom/nearme/game/sdk/component/proxy/ProxyActivity;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/nearme/game/sdk/d$a;->a:Lcom/nearme/game/sdk/d;

    invoke-virtual {v0}, Lcom/nearme/game/sdk/d;->z()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityPause::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GCInternal"

    invoke-static {v0, p1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public final f(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
