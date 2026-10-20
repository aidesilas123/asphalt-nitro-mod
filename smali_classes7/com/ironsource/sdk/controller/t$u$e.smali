###### Class com.ironsource.sdk.controller.t.u.e (com.ironsource.sdk.controller.t$u$e)
.class Lcom/ironsource/sdk/controller/t$u$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/t$u;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/ironsource/sdk/controller/t$u;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/t$u;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t$u$e;->c:Lcom/ironsource/sdk/controller/t$u;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/t$u$e;->a:Ljava/lang/String;

    iput p3, p0, Lcom/ironsource/sdk/controller/t$u$e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$u$e;->c:Lcom/ironsource/sdk/controller/t$u;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/t$u;->a:Lcom/ironsource/sdk/controller/t;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/t;->k1(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/y2;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t$u$e;->a:Ljava/lang/String;

    iget v2, p0, Lcom/ironsource/sdk/controller/t$u$e;->b:I

    invoke-interface {v0, v1, v2}, Lcom/ironsource/y2;->onInterstitialAdRewarded(Ljava/lang/String;I)V

    return-void
.end method
