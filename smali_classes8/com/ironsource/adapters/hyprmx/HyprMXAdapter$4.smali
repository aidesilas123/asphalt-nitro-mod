###### Class com.json.adapters.hyprmx.HyprMXAdapter.AnonymousClass4 (com.ironsource.adapters.hyprmx.HyprMXAdapter$4)
.class Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$4;
.super Ljava/lang/Object;
.source "HyprMXAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;->releaseMemory(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$4;->this$0:Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$4;->this$0:Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;

    iget-object v0, v0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;->mPropertyIdToBannerAdView:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;

    invoke-virtual {v1}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->destroy()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->setListener(Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;)V

    goto :goto_c

    :cond_20
    iget-object v0, p0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$4;->this$0:Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;

    iget-object v0, v0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;->mPropertyIdToBannerSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$4;->this$0:Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;

    iget-object v0, v0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;->mPropertyIdToBannerAdView:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$4;->this$0:Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;

    iget-object v0, v0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;->mPropertyIdToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method
