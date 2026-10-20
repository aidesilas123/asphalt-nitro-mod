###### Class com.facebook.ads.redexgen.X.C4C (com.facebook.ads.redexgen.X.4C)
.class public final Lcom/facebook/ads/redexgen/X/4C;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/ED;

.field public A04:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .registers 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/4C;->A04:Z

    iput v1, p0, Lcom/facebook/ads/redexgen/X/4C;->A02:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/4C;->A00:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4C;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iput v1, p0, Lcom/facebook/ads/redexgen/X/4C;->A01:I

    return-void
.end method
