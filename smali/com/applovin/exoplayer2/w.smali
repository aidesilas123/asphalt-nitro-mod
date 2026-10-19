###### Class com.applovin.exoplayer2.w (com.applovin.exoplayer2.w)
.class public final Lcom/applovin/exoplayer2/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public dT:Lcom/applovin/exoplayer2/d/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public dU:Lcom/applovin/exoplayer2/v;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/w;->dT:Lcom/applovin/exoplayer2/d/f;

    iput-object v0, p0, Lcom/applovin/exoplayer2/w;->dU:Lcom/applovin/exoplayer2/v;

    return-void
.end method
