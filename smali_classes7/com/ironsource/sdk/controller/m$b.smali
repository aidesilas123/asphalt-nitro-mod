###### Class com.ironsource.sdk.controller.m.b (com.ironsource.sdk.controller.m$b)
.class Lcom/ironsource/sdk/controller/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/m;->a(Lcom/ironsource/j3;Ljava/util/Map;Lcom/ironsource/x2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/x2;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/ironsource/sdk/controller/m;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/m;Lcom/ironsource/x2;Ljava/util/Map;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/sdk/controller/m$b;->c:Lcom/ironsource/sdk/controller/m;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/m$b;->a:Lcom/ironsource/x2;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/m$b;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/sdk/controller/m$b;->a:Lcom/ironsource/x2;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/m$b;->b:Ljava/util/Map;

    const-string v2, "demandSourceName"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/m$b;->c:Lcom/ironsource/sdk/controller/m;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/m;->a(Lcom/ironsource/sdk/controller/m;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ironsource/x2;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
