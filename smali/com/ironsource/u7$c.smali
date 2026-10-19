###### Class com.ironsource.u7.c (com.ironsource.u7$c)
.class Lcom/ironsource/u7$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/u7;->h(Lcom/ironsource/s7;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/s7;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/ironsource/u7;


# direct methods
.method constructor <init>(Lcom/ironsource/u7;Lcom/ironsource/s7;Ljava/util/Map;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/u7$c;->c:Lcom/ironsource/u7;

    iput-object p2, p0, Lcom/ironsource/u7$c;->a:Lcom/ironsource/s7;

    iput-object p3, p0, Lcom/ironsource/u7$c;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/ironsource/u7$c;->a:Lcom/ironsource/s7;

    invoke-virtual {v0}, Lcom/ironsource/s7;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/ironsource/h6$e;->a:Lcom/ironsource/h6$e;

    goto :goto_d

    :cond_b
    sget-object v0, Lcom/ironsource/h6$e;->c:Lcom/ironsource/h6$e;

    :goto_d
    iget-object v1, p0, Lcom/ironsource/u7$c;->c:Lcom/ironsource/u7;

    invoke-static {v1}, Lcom/ironsource/u7;->o(Lcom/ironsource/u7;)Lcom/ironsource/k3;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/u7$c;->a:Lcom/ironsource/s7;

    invoke-virtual {v1, v0, v2}, Lcom/ironsource/k3;->a(Lcom/ironsource/h6$e;Lcom/ironsource/s7;)Lcom/ironsource/j3;

    move-result-object v1

    new-instance v2, Lcom/ironsource/j6;

    invoke-direct {v2}, Lcom/ironsource/j6;-><init>()V

    iget-object v3, p0, Lcom/ironsource/u7$c;->a:Lcom/ironsource/s7;

    invoke-virtual {v3}, Lcom/ironsource/s7;->h()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isbiddinginstance"

    invoke-virtual {v2, v4, v3}, Lcom/ironsource/j6;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/j6;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/u7$c;->a:Lcom/ironsource/s7;

    invoke-virtual {v4}, Lcom/ironsource/s7;->j()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "isoneflow"

    invoke-virtual {v3, v5, v4}, Lcom/ironsource/j6;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/j6;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/u7$c;->a:Lcom/ironsource/s7;

    invoke-virtual {v4}, Lcom/ironsource/s7;->e()Ljava/lang/String;

    move-result-object v4

    const-string v5, "demandsourcename"

    invoke-virtual {v3, v5, v4}, Lcom/ironsource/j6;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/j6;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/u7$c;->a:Lcom/ironsource/s7;

    invoke-static {v4}, Lcom/ironsource/b8;->a(Lcom/ironsource/s7;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "producttype"

    invoke-virtual {v3, v5, v4}, Lcom/ironsource/j6;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/j6;

    move-result-object v3

    sget-object v4, Lcom/ironsource/j;->a:Lcom/ironsource/j;

    iget-object v5, p0, Lcom/ironsource/u7$c;->a:Lcom/ironsource/s7;

    invoke-virtual {v5}, Lcom/ironsource/s7;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ironsource/j;->b(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "custom_c"

    invoke-virtual {v3, v5, v4}, Lcom/ironsource/j6;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/j6;

    sget-object v3, Lcom/ironsource/gb;->h:Lcom/ironsource/gb$a;

    invoke-virtual {v2}, Lcom/ironsource/j6;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ironsource/o6;->a(Lcom/ironsource/gb$a;Ljava/util/Map;)V

    sget-object v2, Lcom/ironsource/h6$e;->a:Lcom/ironsource/h6$e;

    if-ne v0, v2, :cond_9d

    iget-object v0, p0, Lcom/ironsource/u7$c;->c:Lcom/ironsource/u7;

    invoke-static {v0}, Lcom/ironsource/u7;->b(Lcom/ironsource/u7;)Lcom/ironsource/sdk/controller/e;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/u7$c;->c:Lcom/ironsource/u7;

    invoke-static {v2}, Lcom/ironsource/u7;->g(Lcom/ironsource/u7;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/u7$c;->c:Lcom/ironsource/u7;

    invoke-static {v3}, Lcom/ironsource/u7;->j(Lcom/ironsource/u7;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/u7$c;->c:Lcom/ironsource/u7;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/ironsource/sdk/controller/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/j3;Lcom/ironsource/x2;)V

    iget-object v0, p0, Lcom/ironsource/u7$c;->c:Lcom/ironsource/u7;

    invoke-static {v0}, Lcom/ironsource/u7;->b(Lcom/ironsource/u7;)Lcom/ironsource/sdk/controller/e;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/u7$c;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/ironsource/u7$c;->c:Lcom/ironsource/u7;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/sdk/controller/e;->a(Lcom/ironsource/j3;Ljava/util/Map;Lcom/ironsource/x2;)V

    goto :goto_c1

    :cond_9d
    iget-object v0, p0, Lcom/ironsource/u7$c;->c:Lcom/ironsource/u7;

    invoke-static {v0}, Lcom/ironsource/u7;->b(Lcom/ironsource/u7;)Lcom/ironsource/sdk/controller/e;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/u7$c;->c:Lcom/ironsource/u7;

    invoke-static {v2}, Lcom/ironsource/u7;->g(Lcom/ironsource/u7;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/u7$c;->c:Lcom/ironsource/u7;

    invoke-static {v3}, Lcom/ironsource/u7;->j(Lcom/ironsource/u7;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/u7$c;->c:Lcom/ironsource/u7;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/ironsource/sdk/controller/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/j3;Lcom/ironsource/y2;)V

    iget-object v0, p0, Lcom/ironsource/u7$c;->c:Lcom/ironsource/u7;

    invoke-static {v0}, Lcom/ironsource/u7;->b(Lcom/ironsource/u7;)Lcom/ironsource/sdk/controller/e;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/u7$c;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/ironsource/u7$c;->c:Lcom/ironsource/u7;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/sdk/controller/e;->b(Lcom/ironsource/j3;Ljava/util/Map;Lcom/ironsource/y2;)V

    :goto_c1
    return-void
.end method
