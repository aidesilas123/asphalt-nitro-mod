###### Class com.applovin.impl.adview.a1 (com.applovin.impl.adview.a1)
.class public final synthetic Lcom/applovin/impl/adview/a1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/adview/q;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/adview/q;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/adview/a1;->a:Lcom/applovin/impl/adview/q;

    iput-object p2, p0, Lcom/applovin/impl/adview/a1;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/adview/a1;->a:Lcom/applovin/impl/adview/q;

    iget-object v1, p0, Lcom/applovin/impl/adview/a1;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/applovin/impl/adview/q;->j(Lcom/applovin/impl/adview/q;Landroid/content/Context;)V

    return-void
.end method
