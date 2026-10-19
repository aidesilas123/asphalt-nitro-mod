###### Class com.applovin.impl.sdk.e.q.d (com.applovin.impl.sdk.e.q$d)
.class Lcom/applovin/impl/sdk/e/q$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/e/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final aUP:Lcom/applovin/impl/sdk/e/d;

.field private final aUQ:Lcom/applovin/impl/sdk/e/q$b;

.field private final logger:Lcom/applovin/impl/sdk/x;

.field private final sdk:Lcom/applovin/impl/sdk/n;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/n;Lcom/applovin/impl/sdk/e/d;Lcom/applovin/impl/sdk/e/q$b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/q$d;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/q$d;->logger:Lcom/applovin/impl/sdk/x;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/e/d;->Kg()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/q$d;->tag:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/sdk/e/q$d;->aUP:Lcom/applovin/impl/sdk/e/d;

    iput-object p3, p0, Lcom/applovin/impl/sdk/e/q$d;->aUQ:Lcom/applovin/impl/sdk/e/q$b;

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/e/q$d;)Lcom/applovin/impl/sdk/e/d;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/e/q$d;->aUP:Lcom/applovin/impl/sdk/e/d;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/e/q$d;)Lcom/applovin/impl/sdk/e/q$b;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/e/q$d;->aUQ:Lcom/applovin/impl/sdk/e/q$b;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, " queue finished task "

    :try_start_2
    invoke-static {}, Lcom/applovin/impl/sdk/utils/h;->KU()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/q$d;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->Bp()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/q$d;->aUP:Lcom/applovin/impl/sdk/e/d;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/e/d;->Kh()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_35

    :cond_16
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/q$d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/q$d;->tag:Ljava/lang/String;

    const-string v3, "Task re-scheduled..."

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/x;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/q$d;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->BO()Lcom/applovin/impl/sdk/e/q;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/q$d;->aUP:Lcom/applovin/impl/sdk/e/d;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/q$d;->aUQ:Lcom/applovin/impl/sdk/e/q$b;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/applovin/impl/sdk/e/q;->a(Lcom/applovin/impl/sdk/e/d;Lcom/applovin/impl/sdk/e/q$b;J)V

    goto :goto_3a

    :cond_35
    :goto_35
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/q$d;->aUP:Lcom/applovin/impl/sdk/e/d;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_3a
    .catchall {:try_start_2 .. :try_end_3a} :catchall_4a

    :goto_3a
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_86

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/q$d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/q$d;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_6e

    :catchall_4a
    move-exception v1

    :try_start_4b
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/q$d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/q$d;->tag:Ljava/lang/String;

    const-string v4, "Task failed execution"

    invoke-virtual {v2, v3, v4, v1}, Lcom/applovin/impl/sdk/x;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5a
    iget-object v2, p0, Lcom/applovin/impl/sdk/e/q$d;->aUP:Lcom/applovin/impl/sdk/e/d;

    invoke-virtual {v2, v1}, Lcom/applovin/impl/sdk/e/d;->q(Ljava/lang/Throwable;)V
    :try_end_5f
    .catchall {:try_start_4b .. :try_end_5f} :catchall_87

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_86

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/q$d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/q$d;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6e
    iget-object v4, p0, Lcom/applovin/impl/sdk/e/q$d;->aUQ:Lcom/applovin/impl/sdk/e/q$b;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/q$d;->aUP:Lcom/applovin/impl/sdk/e/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/e/d;->Kg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/sdk/x;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_86
    return-void

    :catchall_87
    move-exception v1

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v2

    if-eqz v2, :cond_af

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/q$d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/q$d;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/applovin/impl/sdk/e/q$d;->aUQ:Lcom/applovin/impl/sdk/e/q$b;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/q$d;->aUP:Lcom/applovin/impl/sdk/e/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/e/d;->Kg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/applovin/impl/sdk/x;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_af
    throw v1
.end method
