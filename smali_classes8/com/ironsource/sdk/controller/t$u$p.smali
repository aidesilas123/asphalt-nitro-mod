###### Class com.ironsource.sdk.controller.t.u.p (com.ironsource.sdk.controller.t$u$p)
.class Lcom/ironsource/sdk/controller/t$u$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/t$u;->onLoadInterstitialSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ironsource/sdk/controller/t$u;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/t$u;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t$u$p;->b:Lcom/ironsource/sdk/controller/t$u;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/t$u$p;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$u$p;->b:Lcom/ironsource/sdk/controller/t$u;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/t$u;->a:Lcom/ironsource/sdk/controller/t;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/t;->k1(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/y2;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t$u$p;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/y2;->b(Ljava/lang/String;)V

    return-void
.end method
