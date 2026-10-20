###### Class com.applovin.impl.adview.r0 (com.applovin.impl.adview.r0)
.class public final synthetic Lcom/applovin/impl/adview/r0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/adview/m;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/adview/m;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/adview/r0;->a:Lcom/applovin/impl/adview/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/r0;->a:Lcom/applovin/impl/adview/m;

    invoke-static {v0}, Lcom/applovin/impl/adview/m;->c(Lcom/applovin/impl/adview/m;)V

    return-void
.end method
