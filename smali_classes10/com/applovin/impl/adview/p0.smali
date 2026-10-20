###### Class com.applovin.impl.adview.p0 (com.applovin.impl.adview.p0)
.class public final synthetic Lcom/applovin/impl/adview/p0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/adview/d;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/adview/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/adview/p0;->a:Lcom/applovin/impl/adview/d;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/adview/p0;->a:Lcom/applovin/impl/adview/d;

    invoke-static {v0, p1}, Lcom/applovin/impl/adview/d;->f(Lcom/applovin/impl/adview/d;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
