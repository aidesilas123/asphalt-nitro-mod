###### Class com.applovin.exoplayer2.l.ae.a (com.applovin.exoplayer2.l.ae$a)
.class final Lcom/applovin/exoplayer2/l/ae$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/l/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/l/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private acP:Landroid/os/Message;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private acQ:Lcom/applovin/exoplayer2/l/ae;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/l/ae$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/l/ae$a;-><init>()V

    return-void
.end method

.method private recycle()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/l/ae$a;->acP:Landroid/os/Message;

    iput-object v0, p0, Lcom/applovin/exoplayer2/l/ae$a;->acQ:Lcom/applovin/exoplayer2/l/ae;

    invoke-static {p0}, Lcom/applovin/exoplayer2/l/ae;->b(Lcom/applovin/exoplayer2/l/ae$a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;Lcom/applovin/exoplayer2/l/ae;)Lcom/applovin/exoplayer2/l/ae$a;
    .registers 3

    iput-object p1, p0, Lcom/applovin/exoplayer2/l/ae$a;->acP:Landroid/os/Message;

    iput-object p2, p0, Lcom/applovin/exoplayer2/l/ae$a;->acQ:Lcom/applovin/exoplayer2/l/ae;

    return-object p0
.end method

.method public a(Landroid/os/Handler;)Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/ae$a;->acP:Landroid/os/Message;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result p1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/l/ae$a;->recycle()V

    return p1
.end method

.method public oY()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/ae$a;->acP:Landroid/os/Message;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/l/ae$a;->recycle()V

    return-void
.end method
