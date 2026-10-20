###### Class com.applovin.impl.adview.activity.b.e.AnonymousClass3 (com.applovin.impl.adview.activity.b.e$3)
.class Lcom/applovin/impl/adview/activity/b/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/adview/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/activity/b/e;->tc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ajH:Lcom/applovin/impl/adview/activity/b/e;

.field final synthetic ajI:Ljava/lang/Integer;

.field final synthetic ajJ:J

.field final synthetic ajK:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/activity/b/e;JLjava/lang/Integer;Ljava/lang/Long;)V
    .registers 6

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/e$3;->ajH:Lcom/applovin/impl/adview/activity/b/e;

    iput-wide p2, p0, Lcom/applovin/impl/adview/activity/b/e$3;->ajJ:J

    iput-object p4, p0, Lcom/applovin/impl/adview/activity/b/e$3;->ajI:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/applovin/impl/adview/activity/b/e$3;->ajK:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rB()V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e$3;->ajH:Lcom/applovin/impl/adview/activity/b/e;

    iget-wide v0, v0, Lcom/applovin/impl/adview/activity/b/a;->aiW:J

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/applovin/impl/adview/activity/b/e$3;->ajJ:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/e$3;->ajI:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/e$3;->ajH:Lcom/applovin/impl/adview/activity/b/e;

    iget-object v1, v1, Lcom/applovin/impl/adview/activity/b/e;->ajy:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e$3;->ajH:Lcom/applovin/impl/adview/activity/b/e;

    iget-wide v1, v0, Lcom/applovin/impl/adview/activity/b/a;->aiW:J

    iget-object v3, p0, Lcom/applovin/impl/adview/activity/b/e$3;->ajK:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/applovin/impl/adview/activity/b/a;->aiW:J

    return-void
.end method

.method public rC()Z
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e$3;->ajH:Lcom/applovin/impl/adview/activity/b/e;

    iget-wide v0, v0, Lcom/applovin/impl/adview/activity/b/a;->aiW:J

    iget-wide v2, p0, Lcom/applovin/impl/adview/activity/b/e$3;->ajJ:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
