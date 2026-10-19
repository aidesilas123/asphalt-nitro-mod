###### Class com.ironsource.sdk.controller.m.l (com.ironsource.sdk.controller.m$l)
.class Lcom/ironsource/sdk/controller/m$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/m;->b(Lcom/ironsource/j3;Ljava/util/Map;Lcom/ironsource/y2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/y2;

.field final synthetic b:Lcom/ironsource/j3;

.field final synthetic c:Lcom/ironsource/sdk/controller/m;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/m;Lcom/ironsource/y2;Lcom/ironsource/j3;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/sdk/controller/m$l;->c:Lcom/ironsource/sdk/controller/m;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/m$l;->a:Lcom/ironsource/y2;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/m$l;->b:Lcom/ironsource/j3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/sdk/controller/m$l;->a:Lcom/ironsource/y2;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/m$l;->b:Lcom/ironsource/j3;

    invoke-virtual {v1}, Lcom/ironsource/j3;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/m$l;->c:Lcom/ironsource/sdk/controller/m;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/m;->a(Lcom/ironsource/sdk/controller/m;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ironsource/y2;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
