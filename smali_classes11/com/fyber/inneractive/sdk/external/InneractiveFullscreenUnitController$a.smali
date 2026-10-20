###### Class com.fyber.inneractive.sdk.external.InneractiveFullscreenUnitController.a (com.fyber.inneractive.sdk.external.InneractiveFullscreenUnitController$a)
.class public Lcom/fyber/inneractive/sdk/external/InneractiveFullscreenUnitController$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/interfaces/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/external/InneractiveFullscreenUnitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/external/InneractiveFullscreenUnitController;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/external/InneractiveFullscreenUnitController;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/external/InneractiveFullscreenUnitController$a;->a:Lcom/fyber/inneractive/sdk/external/InneractiveFullscreenUnitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/external/InneractiveFullscreenUnitController$a;->a:Lcom/fyber/inneractive/sdk/external/InneractiveFullscreenUnitController;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/flow/e0;->mAdSpot:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/q;->a(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/flow/w;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/external/InneractiveFullscreenUnitController$a;->a:Lcom/fyber/inneractive/sdk/external/InneractiveFullscreenUnitController;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/external/InneractiveFullscreenUnitController;->b:Lcom/fyber/inneractive/sdk/external/InneractiveFullScreenAdRewardedListener;

    if-eqz v1, :cond_15

    if-eqz v0, :cond_15

    invoke-interface {v1, v0}, Lcom/fyber/inneractive/sdk/external/InneractiveFullScreenAdRewardedListener;->onAdRewarded(Lcom/fyber/inneractive/sdk/external/InneractiveAdSpot;)V

    :cond_15
    return-void
.end method
