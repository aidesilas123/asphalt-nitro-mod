###### Class com.ironsource.sdk.controller.t.u.k (com.ironsource.sdk.controller.t$u$k)
.class Lcom/ironsource/sdk/controller/t$u$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/t$u;->adClicked(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/w2;

.field final synthetic b:Lcom/ironsource/h6$e;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/ironsource/sdk/controller/t$u;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/t$u;Lcom/ironsource/w2;Lcom/ironsource/h6$e;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t$u$k;->d:Lcom/ironsource/sdk/controller/t$u;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/t$u$k;->a:Lcom/ironsource/w2;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/t$u$k;->b:Lcom/ironsource/h6$e;

    iput-object p4, p0, Lcom/ironsource/sdk/controller/t$u$k;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$u$k;->a:Lcom/ironsource/w2;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t$u$k;->b:Lcom/ironsource/h6$e;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/t$u$k;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ironsource/w2;->c(Lcom/ironsource/h6$e;Ljava/lang/String;)V

    return-void
.end method
