###### Class com.applovin.impl.adview.activity.b.b0 (com.applovin.impl.adview.activity.b.b0)
.class public final synthetic Lcom/applovin/impl/adview/activity/b/b0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/adview/activity/b/e;

.field public final synthetic b:Z

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/adview/activity/b/e;ZJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/b0;->a:Lcom/applovin/impl/adview/activity/b/e;

    iput-boolean p2, p0, Lcom/applovin/impl/adview/activity/b/b0;->b:Z

    iput-wide p3, p0, Lcom/applovin/impl/adview/activity/b/b0;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/b0;->a:Lcom/applovin/impl/adview/activity/b/e;

    iget-boolean v1, p0, Lcom/applovin/impl/adview/activity/b/b0;->b:Z

    iget-wide v2, p0, Lcom/applovin/impl/adview/activity/b/b0;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/adview/activity/b/e;->s(Lcom/applovin/impl/adview/activity/b/e;ZJ)V

    return-void
.end method
