###### Class com.fyber.inneractive.sdk.dv.rewarded.a.b (com.fyber.inneractive.sdk.dv.rewarded.a$b)
.class public Lcom/fyber/inneractive/sdk/dv/rewarded/a$b;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/dv/rewarded/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/dv/rewarded/a;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/dv/rewarded/a;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/dv/rewarded/a$b;->a:Lcom/fyber/inneractive/sdk/dv/rewarded/a;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissedFullScreenContent()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/dv/rewarded/a$b;->a:Lcom/fyber/inneractive/sdk/dv/rewarded/a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/a;->j:Lcom/fyber/inneractive/sdk/dv/interstitial/a;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/dv/interstitial/a;->i()V

    :cond_9
    return-void
.end method

.method public onAdImpression()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/dv/rewarded/a$b;->a:Lcom/fyber/inneractive/sdk/dv/rewarded/a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/a;->j:Lcom/fyber/inneractive/sdk/dv/interstitial/a;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/dv/interstitial/a;->w()V

    :cond_9
    return-void
.end method
