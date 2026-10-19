###### Class com.applovin.impl.adview.x0 (com.applovin.impl.adview.x0)
.class public final synthetic Lcom/applovin/impl/adview/x0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/adview/q;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/adview/q;Landroid/content/Context;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/adview/x0;->a:Lcom/applovin/impl/adview/q;

    iput-object p2, p0, Lcom/applovin/impl/adview/x0;->b:Landroid/content/Context;

    iput-wide p3, p0, Lcom/applovin/impl/adview/x0;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/x0;->a:Lcom/applovin/impl/adview/q;

    iget-object v1, p0, Lcom/applovin/impl/adview/x0;->b:Landroid/content/Context;

    iget-wide v2, p0, Lcom/applovin/impl/adview/x0;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/adview/q;->g(Lcom/applovin/impl/adview/q;Landroid/content/Context;J)V

    return-void
.end method
