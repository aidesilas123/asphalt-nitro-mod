###### Class com.ironsource.sdk.controller.e.x (com.ironsource.sdk.controller.e$x)
.class Lcom/ironsource/sdk/controller/e$x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/e;->a(Ljava/util/Map;Lcom/ironsource/da;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/ironsource/da;

.field final synthetic c:Lcom/ironsource/sdk/controller/e;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/e;Ljava/util/Map;Lcom/ironsource/da;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/sdk/controller/e$x;->c:Lcom/ironsource/sdk/controller/e;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/e$x;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/e$x;->b:Lcom/ironsource/da;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e$x;->c:Lcom/ironsource/sdk/controller/e;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/e;->j(Lcom/ironsource/sdk/controller/e;)Lcom/ironsource/sdk/controller/k;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e$x;->c:Lcom/ironsource/sdk/controller/e;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/e;->j(Lcom/ironsource/sdk/controller/e;)Lcom/ironsource/sdk/controller/k;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/e$x;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/e$x;->b:Lcom/ironsource/da;

    invoke-interface {v0, v1, v2}, Lcom/ironsource/sdk/controller/k;->a(Ljava/util/Map;Lcom/ironsource/da;)V

    :cond_15
    return-void
.end method
