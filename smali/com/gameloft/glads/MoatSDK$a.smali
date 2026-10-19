###### Class com.gameloft.glads.MoatSDK.a (com.gameloft.glads.MoatSDK$a)
.class Lcom/gameloft/glads/MoatSDK$a;
.super Ljava/lang/Object;
.source "MoatSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/glads/MoatSDK;->OnStartTracking(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/gameloft/glads/MoatSDK;


# direct methods
.method constructor <init>(Lcom/gameloft/glads/MoatSDK;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/glads/MoatSDK$a;->b:Lcom/gameloft/glads/MoatSDK;

    iput-object p2, p0, Lcom/gameloft/glads/MoatSDK$a;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/glads/MoatSDK$a;->b:Lcom/gameloft/glads/MoatSDK;

    invoke-static {v0}, Lcom/gameloft/glads/MoatSDK;->access$000(Lcom/gameloft/glads/MoatSDK;)V

    iget-object v0, p0, Lcom/gameloft/glads/MoatSDK$a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/gameloft/glads/AndroidWebView;

    invoke-virtual {v0}, Lcom/gameloft/glads/AndroidWebView;->GetWebView()Landroid/webkit/WebView;

    move-result-object v0

    :try_start_d
    iget-object v1, p0, Lcom/gameloft/glads/MoatSDK$a;->b:Lcom/gameloft/glads/MoatSDK;

    invoke-static {}, Lcom/moat/analytics/mobile/glft/MoatFactory;->create()Lcom/moat/analytics/mobile/glft/MoatFactory;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/moat/analytics/mobile/glft/MoatFactory;->createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/glft/WebAdTracker;

    move-result-object v0

    iput-object v0, v1, Lcom/gameloft/glads/MoatSDK;->tracker:Lcom/moat/analytics/mobile/glft/WebAdTracker;

    iget-object v0, p0, Lcom/gameloft/glads/MoatSDK$a;->b:Lcom/gameloft/glads/MoatSDK;

    iget-object v0, v0, Lcom/gameloft/glads/MoatSDK;->tracker:Lcom/moat/analytics/mobile/glft/WebAdTracker;

    invoke-static {}, Lcom/gameloft/glads/Utils;->GetActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/glft/WebAdTracker;->setActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/gameloft/glads/MoatSDK$a;->b:Lcom/gameloft/glads/MoatSDK;

    iget-object v0, v0, Lcom/gameloft/glads/MoatSDK;->tracker:Lcom/moat/analytics/mobile/glft/WebAdTracker;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/glft/WebAdTracker;->startTracking()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2b} :catch_2b

    :catch_2b
    return-void
.end method
