###### Class com.ironsource.u7.e (com.ironsource.u7$e)
.class Lcom/ironsource/u7$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/u7;->b(Lcom/ironsource/s7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/s7;

.field final synthetic b:Lcom/ironsource/u7;


# direct methods
.method constructor <init>(Lcom/ironsource/u7;Lcom/ironsource/s7;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/u7$e;->b:Lcom/ironsource/u7;

    iput-object p2, p0, Lcom/ironsource/u7$e;->a:Lcom/ironsource/s7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/u7$e;->b:Lcom/ironsource/u7;

    invoke-static {v0}, Lcom/ironsource/u7;->o(Lcom/ironsource/u7;)Lcom/ironsource/k3;

    move-result-object v0

    sget-object v1, Lcom/ironsource/h6$e;->a:Lcom/ironsource/h6$e;

    iget-object v2, p0, Lcom/ironsource/u7$e;->a:Lcom/ironsource/s7;

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/k3;->a(Lcom/ironsource/h6$e;Lcom/ironsource/s7;)Lcom/ironsource/j3;

    move-result-object v0

    new-instance v1, Lcom/ironsource/j6;

    invoke-direct {v1}, Lcom/ironsource/j6;-><init>()V

    iget-object v2, p0, Lcom/ironsource/u7$e;->a:Lcom/ironsource/s7;

    invoke-virtual {v2}, Lcom/ironsource/s7;->h()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isbiddinginstance"

    invoke-virtual {v1, v3, v2}, Lcom/ironsource/j6;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/j6;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/u7$e;->a:Lcom/ironsource/s7;

    invoke-virtual {v3}, Lcom/ironsource/s7;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "demandsourcename"

    invoke-virtual {v2, v4, v3}, Lcom/ironsource/j6;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/j6;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/u7$e;->a:Lcom/ironsource/s7;

    invoke-static {v3}, Lcom/ironsource/b8;->a(Lcom/ironsource/s7;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "producttype"

    invoke-virtual {v2, v4, v3}, Lcom/ironsource/j6;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/j6;

    sget-object v2, Lcom/ironsource/gb;->m:Lcom/ironsource/gb$a;

    invoke-virtual {v1}, Lcom/ironsource/j6;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ironsource/o6;->a(Lcom/ironsource/gb$a;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/ironsource/u7$e;->b:Lcom/ironsource/u7;

    invoke-static {v1}, Lcom/ironsource/u7;->b(Lcom/ironsource/u7;)Lcom/ironsource/sdk/controller/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/sdk/controller/e;->a(Lcom/ironsource/j3;)V

    return-void
.end method
