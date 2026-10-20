###### Class com.applovin.impl.adview.activity.b.o (com.applovin.impl.adview.activity.b.o)
.class public final synthetic Lcom/applovin/impl/adview/activity/b/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/impl/sdk/j$a;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/adview/activity/b/a;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/adview/activity/b/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/o;->a:Lcom/applovin/impl/adview/activity/b/a;

    return-void
.end method


# virtual methods
.method public final onBlackViewDetected(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/o;->a:Lcom/applovin/impl/adview/activity/b/a;

    invoke-static {v0, p1}, Lcom/applovin/impl/adview/activity/b/a;->j(Lcom/applovin/impl/adview/activity/b/a;Landroid/view/View;)V

    return-void
.end method
