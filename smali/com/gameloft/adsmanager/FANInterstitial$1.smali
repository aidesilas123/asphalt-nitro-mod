###### Class com.gameloft.adsmanager.FANInterstitial.AnonymousClass1 (com.gameloft.adsmanager.FANInterstitial$1)
.class Lcom/gameloft/adsmanager/FANInterstitial$1;
.super Ljava/lang/Object;
.source "FANInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/FANInterstitial;->InternalClose(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/FANInterstitial;

.field final synthetic val$callCallback:Z


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/FANInterstitial;Z)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/adsmanager/FANInterstitial$1;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    iput-boolean p2, p0, Lcom/gameloft/adsmanager/FANInterstitial$1;->val$callCallback:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-boolean v0, p0, Lcom/gameloft/adsmanager/FANInterstitial$1;->val$callCallback:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/gameloft/adsmanager/FANInterstitial$1;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v0}, Lcom/gameloft/adsmanager/FANInterstitial;->access$000(Lcom/gameloft/adsmanager/FANInterstitial;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;->OnClose(Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/gameloft/adsmanager/FANInterstitial$1;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v0}, Lcom/gameloft/adsmanager/FANInterstitial;->access$100(Lcom/gameloft/adsmanager/FANInterstitial;)Lcom/gameloft/adsmanager/FAN;

    move-result-object v0

    iget-object v0, v0, Lcom/gameloft/adsmanager/FAN;->interstitials:Lcom/gameloft/adsmanager/JavaUtils$PlacementState;

    iget-object v1, p0, Lcom/gameloft/adsmanager/FANInterstitial$1;->this$0:Lcom/gameloft/adsmanager/FANInterstitial;

    invoke-static {v1}, Lcom/gameloft/adsmanager/FANInterstitial;->access$000(Lcom/gameloft/adsmanager/FANInterstitial;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/JavaUtils$PlacementState;->PushPlacement(Ljava/lang/String;)V

    return-void
.end method
