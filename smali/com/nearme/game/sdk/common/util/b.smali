###### Class com.nearme.game.sdk.common.util.b (com.nearme.game.sdk.common.util.b)
.class public Lcom/nearme/game/sdk/common/util/b;
.super Landroid/os/Handler;
.source "MainThreadHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method
