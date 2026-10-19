###### Class com.applovin.impl.sdk.h0 (com.applovin.impl.sdk.h0)
.class public final synthetic Lcom/applovin/impl/sdk/h0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/ad;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/ad;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/h0;->a:Lcom/applovin/impl/sdk/ad;

    iput-object p2, p0, Lcom/applovin/impl/sdk/h0;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/h0;->a:Lcom/applovin/impl/sdk/ad;

    iget-object v1, p0, Lcom/applovin/impl/sdk/h0;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/ad;->d(Lcom/applovin/impl/sdk/ad;Landroid/view/View;)Z

    move-result v0

    return v0
.end method
