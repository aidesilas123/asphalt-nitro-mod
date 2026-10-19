###### Class com.applovin.impl.adview.b1 (com.applovin.impl.adview.b1)
.class public final synthetic Lcom/applovin/impl/adview/b1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/adview/q;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/view/ViewGroup;

.field public final synthetic d:Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/adview/q;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;J)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/adview/b1;->a:Lcom/applovin/impl/adview/q;

    iput-object p2, p0, Lcom/applovin/impl/adview/b1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/applovin/impl/adview/b1;->c:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/applovin/impl/adview/b1;->d:Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;

    iput-wide p5, p0, Lcom/applovin/impl/adview/b1;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/adview/b1;->a:Lcom/applovin/impl/adview/q;

    iget-object v1, p0, Lcom/applovin/impl/adview/b1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/applovin/impl/adview/b1;->c:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/applovin/impl/adview/b1;->d:Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;

    iget-wide v4, p0, Lcom/applovin/impl/adview/b1;->e:J

    invoke-static/range {v0 .. v5}, Lcom/applovin/impl/adview/q;->k(Lcom/applovin/impl/adview/q;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/applovin/adview/AppLovinFullscreenAdViewObserver;J)V

    return-void
.end method
