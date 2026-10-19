###### Class com.applovin.impl.adview.s0 (com.applovin.impl.adview.s0)
.class public final synthetic Lcom/applovin/impl/adview/s0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/adview/m;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/adview/m;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/adview/s0;->a:Lcom/applovin/impl/adview/m;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/adview/s0;->a:Lcom/applovin/impl/adview/m;

    invoke-static {v0, p1}, Lcom/applovin/impl/adview/m;->d(Lcom/applovin/impl/adview/m;Landroid/view/View;)V

    return-void
.end method
