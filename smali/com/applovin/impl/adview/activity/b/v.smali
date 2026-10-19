###### Class com.applovin.impl.adview.activity.b.v (com.applovin.impl.adview.activity.b.v)
.class public final synthetic Lcom/applovin/impl/adview/activity/b/v;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/adview/activity/b/d;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Lcom/applovin/impl/sdk/n;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/adview/activity/b/d;Landroid/app/Activity;Lcom/applovin/impl/sdk/n;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/v;->a:Lcom/applovin/impl/adview/activity/b/d;

    iput-object p2, p0, Lcom/applovin/impl/adview/activity/b/v;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/applovin/impl/adview/activity/b/v;->c:Lcom/applovin/impl/sdk/n;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/v;->a:Lcom/applovin/impl/adview/activity/b/d;

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/v;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/applovin/impl/adview/activity/b/v;->c:Lcom/applovin/impl/sdk/n;

    invoke-static {v0, v1, v2, p1}, Lcom/applovin/impl/adview/activity/b/d;->w(Lcom/applovin/impl/adview/activity/b/d;Landroid/app/Activity;Lcom/applovin/impl/sdk/n;Landroid/view/View;)V

    return-void
.end method
