###### Class com.mbridge.msdk.out.RewardVideoWithCodeListener (com.mbridge.msdk.out.RewardVideoWithCodeListener)
.class public abstract Lcom/mbridge/msdk/out/RewardVideoWithCodeListener;
.super Ljava/lang/Object;
.source "RewardVideoWithCodeListener.java"

# interfaces
.implements Lcom/mbridge/msdk/out/RewardVideoListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowFail(Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0xf3c

    invoke-virtual {p0, p1, v0, p2}, Lcom/mbridge/msdk/out/RewardVideoWithCodeListener;->onShowFailWithCode(Lcom/mbridge/msdk/out/MBridgeIds;ILjava/lang/String;)V

    return-void
.end method

.method public abstract onShowFailWithCode(Lcom/mbridge/msdk/out/MBridgeIds;ILjava/lang/String;)V
.end method

.method public onVideoLoadFail(Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0xbb8

    invoke-static {v0, p2}, Lcom/mbridge/msdk/f/a;->a(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/mbridge/msdk/out/RewardVideoWithCodeListener;->onVideoLoadFailWithCode(Lcom/mbridge/msdk/out/MBridgeIds;ILjava/lang/String;)V

    return-void
.end method

.method public abstract onVideoLoadFailWithCode(Lcom/mbridge/msdk/out/MBridgeIds;ILjava/lang/String;)V
.end method
