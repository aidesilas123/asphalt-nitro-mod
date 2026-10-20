###### Class com.applovin.impl.adview.activity.b.u (com.applovin.impl.adview.activity.b.u)
.class public final synthetic Lcom/applovin/impl/adview/activity/b/u;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/adview/activity/b/b;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/adview/activity/b/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/u;->a:Lcom/applovin/impl/adview/activity/b/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/u;->a:Lcom/applovin/impl/adview/activity/b/b;

    invoke-static {v0}, Lcom/applovin/impl/adview/activity/b/b;->p(Lcom/applovin/impl/adview/activity/b/b;)V

    return-void
.end method
