###### Class com.ironsource.sdk.controller.e.f (com.ironsource.sdk.controller.e$f)
.class Lcom/ironsource/sdk/controller/e$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/e;->b(Lcom/ironsource/j3;Ljava/util/Map;Lcom/ironsource/y2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/j3;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/ironsource/y2;

.field final synthetic d:Lcom/ironsource/sdk/controller/e;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/e;Lcom/ironsource/j3;Ljava/util/Map;Lcom/ironsource/y2;)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/sdk/controller/e$f;->d:Lcom/ironsource/sdk/controller/e;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/e$f;->a:Lcom/ironsource/j3;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/e$f;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/ironsource/sdk/controller/e$f;->c:Lcom/ironsource/y2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    new-instance v0, Lcom/ironsource/j6;

    invoke-direct {v0}, Lcom/ironsource/j6;-><init>()V

    iget-object v1, p0, Lcom/ironsource/sdk/controller/e$f;->a:Lcom/ironsource/j3;

    invoke-virtual {v1}, Lcom/ironsource/j3;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "demandsourcename"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/j6;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/j6;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/e$f;->a:Lcom/ironsource/j3;

    sget-object v2, Lcom/ironsource/h6$e;->c:Lcom/ironsource/h6$e;

    invoke-static {v1, v2}, Lcom/ironsource/p6;->a(Lcom/ironsource/j3;Lcom/ironsource/h6$e;)Lcom/ironsource/h6$e;

    move-result-object v1

    const-string v2, "producttype"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/j6;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/j6;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/e$f;->a:Lcom/ironsource/j3;

    invoke-static {v1}, Lcom/ironsource/p6;->a(Lcom/ironsource/j3;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isbiddinginstance"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/j6;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/j6;

    move-result-object v0

    sget-object v1, Lcom/ironsource/j;->a:Lcom/ironsource/j;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/e$f;->a:Lcom/ironsource/j3;

    invoke-virtual {v2}, Lcom/ironsource/j3;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/j;->b(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "custom_c"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/j6;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/j6;

    move-result-object v0

    sget-object v1, Lcom/ironsource/gb;->j:Lcom/ironsource/gb$a;

    invoke-virtual {v0}, Lcom/ironsource/j6;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/o6;->a(Lcom/ironsource/gb$a;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e$f;->d:Lcom/ironsource/sdk/controller/e;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/e;->j(Lcom/ironsource/sdk/controller/e;)Lcom/ironsource/sdk/controller/k;

    move-result-object v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e$f;->d:Lcom/ironsource/sdk/controller/e;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/e;->j(Lcom/ironsource/sdk/controller/e;)Lcom/ironsource/sdk/controller/k;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/e$f;->a:Lcom/ironsource/j3;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/e$f;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/e$f;->c:Lcom/ironsource/y2;

    invoke-interface {v0, v1, v2, v3}, Lcom/ironsource/sdk/controller/k;->b(Lcom/ironsource/j3;Ljava/util/Map;Lcom/ironsource/y2;)V

    :cond_65
    return-void
.end method
