###### Class com.ironsource.x1.a (com.ironsource.x1$a)
.class Lcom/ironsource/x1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/x1;->a()Lcom/ironsource/b2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/t3;

.field final synthetic b:Ljava/util/concurrent/BlockingQueue;

.field final synthetic c:Lcom/ironsource/x1;


# direct methods
.method constructor <init>(Lcom/ironsource/x1;Lcom/ironsource/t3;Ljava/util/concurrent/BlockingQueue;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/x1$a;->c:Lcom/ironsource/x1;

    iput-object p2, p0, Lcom/ironsource/x1$a;->a:Lcom/ironsource/t3;

    iput-object p3, p0, Lcom/ironsource/x1$a;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .registers 10

    new-instance v7, Lcom/ironsource/b2;

    iget-object v0, p0, Lcom/ironsource/x1$a;->c:Lcom/ironsource/x1;

    invoke-virtual {v0}, Lcom/ironsource/x1;->d()I

    move-result v1

    iget-object v0, p0, Lcom/ironsource/x1$a;->c:Lcom/ironsource/x1;

    invoke-virtual {v0}, Lcom/ironsource/x1;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/ironsource/x1$a;->a:Lcom/ironsource/t3;

    invoke-static {v0}, Lcom/ironsource/t3;->a(Lcom/ironsource/t3;)J

    move-result-wide v4

    const/4 v3, 0x0

    move-object v0, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/ironsource/b2;-><init>(ILjava/lang/String;Ljava/util/Map;JLjava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/x1$a;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, v7}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onSuccess(Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v7, Lcom/ironsource/b2;

    iget-object v0, p0, Lcom/ironsource/x1$a;->c:Lcom/ironsource/x1;

    invoke-virtual {v0}, Lcom/ironsource/x1;->d()I

    move-result v1

    iget-object v0, p0, Lcom/ironsource/x1$a;->c:Lcom/ironsource/x1;

    invoke-virtual {v0}, Lcom/ironsource/x1;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/ironsource/x1$a;->a:Lcom/ironsource/t3;

    invoke-static {v0}, Lcom/ironsource/t3;->a(Lcom/ironsource/t3;)J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/ironsource/b2;-><init>(ILjava/lang/String;Ljava/util/Map;JLjava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/x1$a;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, v7}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
