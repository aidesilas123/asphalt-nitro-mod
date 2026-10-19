###### Class com.ironsource.sdk.controller.e.k (com.ironsource.sdk.controller.e$k)
.class Lcom/ironsource/sdk/controller/e$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/sdk/controller/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/e;->o()Lcom/ironsource/sdk/controller/k$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/sdk/controller/e;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/e;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/sdk/controller/e$k;->a:Lcom/ironsource/sdk/controller/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/sdk/controller/f$a;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e$k;->a:Lcom/ironsource/sdk/controller/e;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/e;->c(Lcom/ironsource/sdk/controller/e;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/f$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/controller/k$a;

    if-eqz v0, :cond_15

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/controller/k$a;->a(Lcom/ironsource/sdk/controller/f$a;)V

    :cond_15
    return-void
.end method
