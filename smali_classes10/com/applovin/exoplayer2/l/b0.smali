###### Class com.applovin.exoplayer2.l.b0 (com.applovin.exoplayer2.l.b0)
.class public final synthetic Lcom/applovin/exoplayer2/l/b0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final synthetic b:I

.field public final synthetic c:Lcom/applovin/exoplayer2/l/p$a;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/applovin/exoplayer2/l/p$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/l/b0;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput p2, p0, Lcom/applovin/exoplayer2/l/b0;->b:I

    iput-object p3, p0, Lcom/applovin/exoplayer2/l/b0;->c:Lcom/applovin/exoplayer2/l/p$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/b0;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget v1, p0, Lcom/applovin/exoplayer2/l/b0;->b:I

    iget-object v2, p0, Lcom/applovin/exoplayer2/l/b0;->c:Lcom/applovin/exoplayer2/l/p$a;

    invoke-static {v0, v1, v2}, Lcom/applovin/exoplayer2/l/p;->c(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/applovin/exoplayer2/l/p$a;)V

    return-void
.end method
