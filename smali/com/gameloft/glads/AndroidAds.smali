###### Class com.gameloft.glads.AndroidAds (com.gameloft.glads.AndroidAds)
.class public Lcom/gameloft/glads/AndroidAds;
.super Ljava/lang/Object;
.source "AndroidAds.java"


# instance fields
.field parent:J

.field volumeObserver:Lcom/gameloft/glads/b;


# direct methods
.method public constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameloft/glads/AndroidAds;->volumeObserver:Lcom/gameloft/glads/b;

    iput-wide p1, p0, Lcom/gameloft/glads/AndroidAds;->parent:J

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_15

    new-instance p1, Lcom/gameloft/glads/b;

    invoke-direct {p1, p0}, Lcom/gameloft/glads/b;-><init>(Lcom/gameloft/glads/AndroidAds;)V

    iput-object p1, p0, Lcom/gameloft/glads/AndroidAds;->volumeObserver:Lcom/gameloft/glads/b;

    :cond_15
    invoke-static {}, Lcom/gameloft/glads/MoatSDK;->StartAnalytics()V

    invoke-static {}, Lcom/gameloft/glads/OmSDK;->StartAnalytics()V

    return-void
.end method

.method public static native NativeOnVolumeChanged(J)V
.end method


# virtual methods
.method public OnVolumeChanged()V
    .registers 3

    iget-wide v0, p0, Lcom/gameloft/glads/AndroidAds;->parent:J

    invoke-static {v0, v1}, Lcom/gameloft/glads/AndroidAds;->NativeOnVolumeChanged(J)V

    return-void
.end method

.method public Release()V
    .registers 2

    iget-object v0, p0, Lcom/gameloft/glads/AndroidAds;->volumeObserver:Lcom/gameloft/glads/b;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/gameloft/glads/b;->b()V

    :cond_7
    return-void
.end method
