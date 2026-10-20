###### Class com.applovin.impl.adview.activity.b.j (com.applovin.impl.adview.activity.b.j)
.class public final synthetic Lcom/applovin/impl/adview/activity/b/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/adview/activity/b/a;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/adview/activity/b/a;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/j;->a:Lcom/applovin/impl/adview/activity/b/a;

    iput-object p2, p0, Lcom/applovin/impl/adview/activity/b/j;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/j;->a:Lcom/applovin/impl/adview/activity/b/a;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/j;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/applovin/impl/adview/activity/b/a;->g(Lcom/applovin/impl/adview/activity/b/a;Ljava/lang/String;)V

    return-void
.end method
