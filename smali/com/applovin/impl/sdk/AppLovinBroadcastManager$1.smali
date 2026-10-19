###### Class com.applovin.impl.sdk.AppLovinBroadcastManager.AnonymousClass1 (com.applovin.impl.sdk.AppLovinBroadcastManager$1)
.class Lcom/applovin/impl/sdk/AppLovinBroadcastManager$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/AppLovinBroadcastManager;
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
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    invoke-static {}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->AU()V

    goto :goto_c

    :cond_9
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_c
    return-void
.end method
