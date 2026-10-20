###### Class com.applovin.impl.adview.activity.a.e (com.applovin.impl.adview.activity.a.e)
.class public final synthetic Lcom/applovin/impl/adview/activity/a/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/adview/w;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/adview/w;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/a/e;->a:Lcom/applovin/impl/adview/w;

    iput-wide p2, p0, Lcom/applovin/impl/adview/activity/a/e;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/a/e;->a:Lcom/applovin/impl/adview/w;

    iget-wide v1, p0, Lcom/applovin/impl/adview/activity/a/e;->b:J

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/adview/activity/a/c;->d(Lcom/applovin/impl/adview/w;J)V

    return-void
.end method
