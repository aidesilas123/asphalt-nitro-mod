###### Class com.applovin.impl.adview.activity.b.p (com.applovin.impl.adview.activity.b.p)
.class public final synthetic Lcom/applovin/impl/adview/activity/b/p;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/adview/n;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/adview/n;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/p;->a:Lcom/applovin/impl/adview/n;

    iput-object p2, p0, Lcom/applovin/impl/adview/activity/b/p;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/p;->a:Lcom/applovin/impl/adview/n;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/p;->b:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/applovin/impl/adview/activity/b/a;->k(Lcom/applovin/impl/adview/n;Ljava/lang/Runnable;)V

    return-void
.end method
