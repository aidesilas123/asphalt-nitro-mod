###### Class com.ironsource.sdk.controller.m.g (com.ironsource.sdk.controller.m$g)
.class Lcom/ironsource/sdk/controller/m$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/m;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/da;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/da;

.field final synthetic b:Lcom/ironsource/sdk/controller/m;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/m;Lcom/ironsource/da;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/sdk/controller/m$g;->b:Lcom/ironsource/sdk/controller/m;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/m$g;->a:Lcom/ironsource/da;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/sdk/controller/m$g;->a:Lcom/ironsource/da;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/m$g;->b:Lcom/ironsource/sdk/controller/m;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/m;->a(Lcom/ironsource/sdk/controller/m;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/da;->onGetOWCreditsFailed(Ljava/lang/String;)V

    return-void
.end method
