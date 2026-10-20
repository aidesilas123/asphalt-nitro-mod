###### Class com.ironsource.sdk.controller.t.j (com.ironsource.sdk.controller.t$j)
.class Lcom/ironsource/sdk/controller/t$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/nd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/t;->i()Lcom/ironsource/nd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/sdk/controller/t;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/t;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t$j;->a:Lcom/ironsource/sdk/controller/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$j;->a:Lcom/ironsource/sdk/controller/t;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/ironsource/sdk/controller/t;->a0(Lcom/ironsource/sdk/controller/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/ironsource/sdk/controller/t$j;->a:Lcom/ironsource/sdk/controller/t;

    invoke-static {p2, p1}, Lcom/ironsource/sdk/controller/t;->z0(Lcom/ironsource/sdk/controller/t;Ljava/lang/String;)V

    return-void
.end method
