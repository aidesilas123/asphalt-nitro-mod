###### Class com.gameloft.glads.b (com.gameloft.glads.b)
.class public Lcom/gameloft/glads/b;
.super Landroid/database/ContentObserver;
.source "VolumeObserver.java"


# instance fields
.field a:I

.field b:Lcom/gameloft/glads/AndroidAds;


# direct methods
.method public constructor <init>(Lcom/gameloft/glads/AndroidAds;)V
    .registers 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/gameloft/glads/b;->a:I

    iput-object p1, p0, Lcom/gameloft/glads/b;->b:Lcom/gameloft/glads/AndroidAds;

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method a()I
    .registers 3

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public b()V
    .registers 2

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public deliverSelfNotifications()Z
    .registers 2

    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-virtual {p0}, Lcom/gameloft/glads/b;->a()I

    move-result p1

    iget v0, p0, Lcom/gameloft/glads/b;->a:I

    if-eq p1, v0, :cond_12

    iget-object v0, p0, Lcom/gameloft/glads/b;->b:Lcom/gameloft/glads/AndroidAds;

    invoke-virtual {v0}, Lcom/gameloft/glads/AndroidAds;->OnVolumeChanged()V

    iput p1, p0, Lcom/gameloft/glads/b;->a:I

    :cond_12
    return-void
.end method
