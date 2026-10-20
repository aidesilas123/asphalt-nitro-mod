###### Class com.applovin.adview.AppLovinFullscreenAdViewObserver (com.applovin.adview.AppLovinFullscreenAdViewObserver)
.class public Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field private p:Lcom/applovin/impl/adview/activity/b/a;

.field private parentInterstitialWrapper:Lcom/applovin/impl/adview/q;

.field private final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final sdk:Lcom/applovin/impl/sdk/n;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/Lifecycle;Lcom/applovin/impl/adview/q;Lcom/applovin/impl/sdk/n;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;->parentInterstitialWrapper:Lcom/applovin/impl/adview/q;

    iput-object p3, p0, Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;->parentInterstitialWrapper:Lcom/applovin/impl/adview/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/applovin/impl/adview/q;->rO()V

    iput-object v1, p0, Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;->parentInterstitialWrapper:Lcom/applovin/impl/adview/q;

    :cond_a
    iget-object v0, p0, Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;->p:Lcom/applovin/impl/adview/activity/b/a;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/applovin/impl/adview/activity/b/a;->dismiss()V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;->p:Lcom/applovin/impl/adview/activity/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/activity/b/a;->onDestroy()V

    iput-object v1, p0, Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;->p:Lcom/applovin/impl/adview/activity/b/a;

    :cond_18
    return-void
.end method

.method public onPause()V
    .registers 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;->p:Lcom/applovin/impl/adview/activity/b/a;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/applovin/impl/adview/activity/b/a;->onPause()V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;->p:Lcom/applovin/impl/adview/activity/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/activity/b/a;->pauseVideo()V

    :cond_c
    return-void
.end method

.method public onResume()V
    .registers 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;->p:Lcom/applovin/impl/adview/activity/b/a;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/applovin/impl/adview/activity/b/a;->onResume()V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;->p:Lcom/applovin/impl/adview/activity/b/a;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/adview/activity/b/a;->bE(J)V

    :cond_18
    return-void
.end method

.method public onStop()V
    .registers 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;->p:Lcom/applovin/impl/adview/activity/b/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/applovin/impl/adview/activity/b/a;->onStop()V

    :cond_7
    return-void
.end method

.method public setPresenter(Lcom/applovin/impl/adview/activity/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;->p:Lcom/applovin/impl/adview/activity/b/a;

    return-void
.end method
