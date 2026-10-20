###### Class com.json.adapters.hyprmx.HyprMXAdapter.AnonymousClass2 (com.ironsource.adapters.hyprmx.HyprMXAdapter$2)
.class Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$2;
.super Ljava/lang/Object;
.source "HyprMXAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;->destroyBanner(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;

.field final synthetic val$propertyId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$2;->this$0:Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$2;->val$propertyId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$2;->this$0:Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;

    iget-object v0, v0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;->mPropertyIdToBannerAdView:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$2;->val$propertyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->destroy()V

    iget-object v0, p0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$2;->this$0:Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;

    iget-object v0, v0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;->mPropertyIdToBannerAdView:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$2;->val$propertyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$2;->this$0:Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;

    iget-object v0, v0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;->mPropertyIdToBannerSmashListener:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$2;->val$propertyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$2;->this$0:Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;

    iget-object v0, v0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter;->mPropertyIdToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/ironsource/adapters/hyprmx/HyprMXAdapter$2;->val$propertyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    return-void
.end method
