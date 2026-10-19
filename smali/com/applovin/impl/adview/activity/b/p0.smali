###### Class com.applovin.impl.adview.activity.b.p0 (com.applovin.impl.adview.activity.b.p0)
.class public final synthetic Lcom/applovin/impl/adview/activity/b/p0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/adview/activity/b/e;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/adview/activity/b/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/p0;->a:Lcom/applovin/impl/adview/activity/b/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/p0;->a:Lcom/applovin/impl/adview/activity/b/e;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/activity/b/e;->tj()V

    return-void
.end method
