###### Class com.applovin.exoplayer2.ui.p (com.applovin.exoplayer2.ui.p)
.class public final synthetic Lcom/applovin/exoplayer2/ui/p;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/exoplayer2/ui/f;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/exoplayer2/ui/f;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/p;->a:Lcom/applovin/exoplayer2/ui/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/p;->a:Lcom/applovin/exoplayer2/ui/f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/ui/f;->u(Lcom/applovin/exoplayer2/ui/f;)V

    return-void
.end method
