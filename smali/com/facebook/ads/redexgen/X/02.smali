###### Class com.facebook.ads.redexgen.X.AnonymousClass02 (com.facebook.ads.redexgen.X.02)
.class public final Lcom/facebook/ads/redexgen/X/02;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final A00:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final A01:Ljava/lang/Throwable;

.field public final A02:Z


# direct methods
.method public constructor <init>(ZLjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/02;->A02:Z

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/02;->A00:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/02;->A01:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/02;->A02:Z

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/02;->A00:Ljava/lang/Object;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/02;->A01:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final A00()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/02;->A00:Ljava/lang/Object;

    return-object v0
.end method

.method public final A01()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/02;->A02:Z

    return v0
.end method
