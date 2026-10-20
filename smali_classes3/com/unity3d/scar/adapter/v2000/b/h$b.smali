###### Class com.unity3d.scar.adapter.v2000.b.h.b (com.unity3d.scar.adapter.v2000.b.h$b)
.class Lcom/unity3d/scar/adapter/v2000/b/h$b;
.super Ljava/lang/Object;
.source "ScarRewardedAdListener.java"

# interfaces
.implements Lcom/google/android/gms/ads/OnUserEarnedRewardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/scar/adapter/v2000/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/scar/adapter/v2000/b/h;


# direct methods
.method constructor <init>(Lcom/unity3d/scar/adapter/v2000/b/h;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2000/b/h$b;->a:Lcom/unity3d/scar/adapter/v2000/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .registers 2
    .param p1    # Lcom/google/android/gms/ads/rewarded/RewardItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/unity3d/scar/adapter/v2000/b/h$b;->a:Lcom/unity3d/scar/adapter/v2000/b/h;

    invoke-static {p1}, Lcom/unity3d/scar/adapter/v2000/b/h;->b(Lcom/unity3d/scar/adapter/v2000/b/h;)Lcom/unity3d/scar/adapter/common/g;

    move-result-object p1

    invoke-interface {p1}, Lcom/unity3d/scar/adapter/common/g;->onUserEarnedReward()V

    return-void
.end method
