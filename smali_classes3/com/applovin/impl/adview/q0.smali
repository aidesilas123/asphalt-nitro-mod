###### Class com.applovin.impl.adview.q0 (com.applovin.impl.adview.q0)
.class public final synthetic Lcom/applovin/impl/adview/q0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/adview/k;

.field public final synthetic b:Lcom/applovin/impl/adview/k$b;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/adview/k;Lcom/applovin/impl/adview/k$b;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/adview/q0;->a:Lcom/applovin/impl/adview/k;

    iput-object p2, p0, Lcom/applovin/impl/adview/q0;->b:Lcom/applovin/impl/adview/k$b;

    iput p3, p0, Lcom/applovin/impl/adview/q0;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/adview/q0;->a:Lcom/applovin/impl/adview/k;

    iget-object v1, p0, Lcom/applovin/impl/adview/q0;->b:Lcom/applovin/impl/adview/k$b;

    iget v2, p0, Lcom/applovin/impl/adview/q0;->c:I

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/adview/k;->c(Lcom/applovin/impl/adview/k;Lcom/applovin/impl/adview/k$b;I)V

    return-void
.end method
