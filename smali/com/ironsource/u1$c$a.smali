###### Class com.ironsource.u1.c.a (com.ironsource.u1$c$a)
.class Lcom/ironsource/u1$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/u1$c;->a(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/ironsource/u1$c;


# direct methods
.method constructor <init>(Lcom/ironsource/u1$c;ZLjava/util/ArrayList;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/u1$c$a;->c:Lcom/ironsource/u1$c;

    iput-boolean p2, p0, Lcom/ironsource/u1$c$a;->a:Z

    iput-object p3, p0, Lcom/ironsource/u1$c$a;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-boolean v0, p0, Lcom/ironsource/u1$c$a;->a:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/ironsource/u1$c$a;->c:Lcom/ironsource/u1$c;

    iget-object v0, v0, Lcom/ironsource/u1$c;->a:Lcom/ironsource/u1;

    invoke-static {v0}, Lcom/ironsource/u1;->M(Lcom/ironsource/u1;)Lcom/ironsource/a3;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/u1$c$a;->c:Lcom/ironsource/u1$c;

    iget-object v1, v1, Lcom/ironsource/u1$c;->a:Lcom/ironsource/u1;

    iget-object v1, v1, Lcom/ironsource/u1;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/a3;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/u1$c$a;->c:Lcom/ironsource/u1$c;

    iget-object v1, v1, Lcom/ironsource/u1$c;->a:Lcom/ironsource/u1;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/ironsource/u1$c$a;->c:Lcom/ironsource/u1$c;

    iget-object v2, v2, Lcom/ironsource/u1$c;->a:Lcom/ironsource/u1;

    invoke-static {v2}, Lcom/ironsource/u1;->z(Lcom/ironsource/u1;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/ironsource/u1;->b(Lcom/ironsource/u1;I)I

    goto :goto_5d

    :cond_2f
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "Failed to send events. Saving them back to storage."

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/u1$c$a;->c:Lcom/ironsource/u1$c;

    iget-object v0, v0, Lcom/ironsource/u1$c;->a:Lcom/ironsource/u1;

    iget-object v1, p0, Lcom/ironsource/u1$c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/ironsource/u1;->j(Ljava/util/ArrayList;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    goto :goto_5d

    :catch_40
    move-exception v0

    iget-object v1, p0, Lcom/ironsource/u1$c$a;->c:Lcom/ironsource/u1$c;

    iget-object v1, v1, Lcom/ironsource/u1$c;->a:Lcom/ironsource/u1;

    invoke-static {v1}, Lcom/ironsource/u1;->V(Lcom/ironsource/u1;)Lcom/ironsource/mediationsdk/events/ISErrorListener;

    move-result-object v1

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lcom/ironsource/u1$c$a;->c:Lcom/ironsource/u1$c;

    iget-object v1, v1, Lcom/ironsource/u1$c;->a:Lcom/ironsource/u1;

    invoke-static {v1}, Lcom/ironsource/u1;->V(Lcom/ironsource/u1;)Lcom/ironsource/mediationsdk/events/ISErrorListener;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Error on sending data "

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/events/ISErrorListener;->onError(Ljava/lang/Throwable;)V

    :cond_5d
    :goto_5d
    iget-object v0, p0, Lcom/ironsource/u1$c$a;->c:Lcom/ironsource/u1$c;

    iget-object v1, p0, Lcom/ironsource/u1$c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/ironsource/u1$c;->a(Ljava/util/ArrayList;)V

    return-void
.end method
