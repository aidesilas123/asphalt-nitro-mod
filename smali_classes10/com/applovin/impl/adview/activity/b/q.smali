###### Class com.applovin.impl.adview.activity.b.q (com.applovin.impl.adview.activity.b.q)
.class public final synthetic Lcom/applovin/impl/adview/activity/b/q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/adview/activity/b/a;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/adview/activity/b/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/q;->a:Lcom/applovin/impl/adview/activity/b/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/q;->a:Lcom/applovin/impl/adview/activity/b/a;

    invoke-static {v0}, Lcom/applovin/impl/adview/activity/b/a;->m(Lcom/applovin/impl/adview/activity/b/a;)V

    return-void
.end method
