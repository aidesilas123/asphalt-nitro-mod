###### Class com.applovin.impl.adview.activity.b.e.c (com.applovin.impl.adview.activity.b.e$c)
.class Lcom/applovin/impl/adview/activity/b/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/adview/activity/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic ajH:Lcom/applovin/impl/adview/activity/b/e;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/adview/activity/b/e;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/e$c;->ajH:Lcom/applovin/impl/adview/activity/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/adview/activity/b/e;Lcom/applovin/impl/adview/activity/b/e$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/activity/b/e$c;-><init>(Lcom/applovin/impl/adview/activity/b/e;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e$c;->ajH:Lcom/applovin/impl/adview/activity/b/e;

    iget-object v1, v0, Lcom/applovin/impl/adview/activity/b/e;->ajv:Lcom/applovin/impl/adview/n;

    if-ne p1, v1, :cond_a

    invoke-virtual {v0}, Lcom/applovin/impl/adview/activity/b/e;->th()V

    goto :goto_34

    :cond_a
    iget-object v1, v0, Lcom/applovin/impl/adview/activity/b/e;->muteButtonImageView:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_12

    invoke-virtual {v0}, Lcom/applovin/impl/adview/activity/b/e;->tb()V

    goto :goto_34

    :cond_12
    iget-object v0, v0, Lcom/applovin/impl/adview/activity/b/a;->logger:Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/e$c;->ajH:Lcom/applovin/impl/adview/activity/b/e;

    iget-object v0, v0, Lcom/applovin/impl/adview/activity/b/a;->logger:Lcom/applovin/impl/sdk/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled click on widget: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AppLovinFullscreenActivity"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/x;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    :goto_34
    return-void
.end method
