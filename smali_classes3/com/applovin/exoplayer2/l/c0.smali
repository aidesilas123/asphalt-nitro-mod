###### Class com.applovin.exoplayer2.l.c0 (com.applovin.exoplayer2.l.c0)
.class public final synthetic Lcom/applovin/exoplayer2/l/c0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/l/p;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/l/p;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/l/c0;->a:Lcom/applovin/exoplayer2/l/p;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/c0;->a:Lcom/applovin/exoplayer2/l/p;

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/l/p;->d(Lcom/applovin/exoplayer2/l/p;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
