###### Class com.ironsource.sdk.controller.e.q (com.ironsource.sdk.controller.e$q)
.class Lcom/ironsource/sdk/controller/e$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/sdk/controller/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/e;->p()Lcom/ironsource/sdk/controller/k$b;
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

    iput-object p1, p0, Lcom/ironsource/sdk/controller/e$q;->a:Lcom/ironsource/sdk/controller/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/f9;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e$q;->a:Lcom/ironsource/sdk/controller/e;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/e;->h(Lcom/ironsource/sdk/controller/e;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/f9;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/controller/k$b;

    if-eqz v0, :cond_15

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/controller/k$b;->a(Lcom/ironsource/f9;)V

    :cond_15
    return-void
.end method
