###### Class com.applovin.exoplayer2.k.w.f (com.applovin.exoplayer2.k.w$f)
.class final Lcom/applovin/exoplayer2/k/w$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/k/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# instance fields
.field private final abk:Lcom/applovin/exoplayer2/k/w$e;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/k/w$e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/w$f;->abk:Lcom/applovin/exoplayer2/k/w$e;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/w$f;->abk:Lcom/applovin/exoplayer2/k/w$e;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/k/w$e;->ld()V

    return-void
.end method
