###### Class com.ironsource.sdk.controller.m.k (com.ironsource.sdk.controller.m$k)
.class Lcom/ironsource/sdk/controller/m$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/m;->a(Ljava/lang/String;Lcom/ironsource/y2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/y2;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ironsource/sdk/controller/m;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/m;Lcom/ironsource/y2;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/sdk/controller/m$k;->c:Lcom/ironsource/sdk/controller/m;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/m$k;->a:Lcom/ironsource/y2;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/m$k;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/sdk/controller/m$k;->a:Lcom/ironsource/y2;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/m$k;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/m$k;->c:Lcom/ironsource/sdk/controller/m;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/m;->a(Lcom/ironsource/sdk/controller/m;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ironsource/y2;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
