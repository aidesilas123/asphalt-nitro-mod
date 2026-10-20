###### Class com.applovin.exoplayer2.f.o (com.applovin.exoplayer2.f.o)
.class public final synthetic Lcom/applovin/exoplayer2/f/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/common/base/Supplier;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/f/o;->a:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/f/o;->a:I

    invoke-static {v0}, Lcom/applovin/exoplayer2/f/a$a;->d(I)Landroid/os/HandlerThread;

    move-result-object v0

    return-object v0
.end method
