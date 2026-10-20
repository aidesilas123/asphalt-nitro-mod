###### Class com.unity3d.scar.adapter.v2000.b.a (com.unity3d.scar.adapter.v2000.b.a)
.class public abstract Lcom/unity3d/scar/adapter/v2000/b/a;
.super Ljava/lang/Object;
.source "ScarAdBase.java"


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
.field protected a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected b:Landroid/content/Context;

.field protected c:Lcom/unity3d/scar/adapter/common/scarads/c;

.field protected d:Lcom/google/android/gms/ads/query/QueryInfo;

.field protected e:Lcom/unity3d/scar/adapter/v2000/b/b;

.field protected f:Lcom/unity3d/scar/adapter/common/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/c;Lcom/google/android/gms/ads/query/QueryInfo;Lcom/unity3d/scar/adapter/common/b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2000/b/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/unity3d/scar/adapter/v2000/b/a;->c:Lcom/unity3d/scar/adapter/common/scarads/c;

    iput-object p3, p0, Lcom/unity3d/scar/adapter/v2000/b/a;->d:Lcom/google/android/gms/ads/query/QueryInfo;

    iput-object p4, p0, Lcom/unity3d/scar/adapter/v2000/b/a;->f:Lcom/unity3d/scar/adapter/common/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/unity3d/scar/adapter/common/scarads/b;)V
    .registers 5

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/a;->d:Lcom/google/android/gms/ads/query/QueryInfo;

    if-eqz v0, :cond_29

    new-instance v0, Lcom/google/android/gms/ads/query/AdInfo;

    iget-object v1, p0, Lcom/unity3d/scar/adapter/v2000/b/a;->d:Lcom/google/android/gms/ads/query/QueryInfo;

    iget-object v2, p0, Lcom/unity3d/scar/adapter/v2000/b/a;->c:Lcom/unity3d/scar/adapter/common/scarads/c;

    invoke-virtual {v2}, Lcom/unity3d/scar/adapter/common/scarads/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/query/AdInfo;-><init>(Lcom/google/android/gms/ads/query/QueryInfo;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->setAdInfo(Lcom/google/android/gms/ads/query/AdInfo;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    if-eqz p1, :cond_25

    iget-object v1, p0, Lcom/unity3d/scar/adapter/v2000/b/a;->e:Lcom/unity3d/scar/adapter/v2000/b/b;

    invoke-virtual {v1, p1}, Lcom/unity3d/scar/adapter/v2000/b/b;->a(Lcom/unity3d/scar/adapter/common/scarads/b;)V

    :cond_25
    invoke-virtual {p0, v0, p1}, Lcom/unity3d/scar/adapter/v2000/b/a;->b(Lcom/google/android/gms/ads/AdRequest;Lcom/unity3d/scar/adapter/common/scarads/b;)V

    goto :goto_34

    :cond_29
    iget-object p1, p0, Lcom/unity3d/scar/adapter/v2000/b/a;->f:Lcom/unity3d/scar/adapter/common/b;

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/a;->c:Lcom/unity3d/scar/adapter/common/scarads/c;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/common/GMAAdsError;->QueryNotFoundError(Lcom/unity3d/scar/adapter/common/scarads/c;)Lcom/unity3d/scar/adapter/common/GMAAdsError;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/unity3d/scar/adapter/common/b;->handleError(Lcom/unity3d/scar/adapter/common/h;)V

    :goto_34
    return-void
.end method

.method protected abstract b(Lcom/google/android/gms/ads/AdRequest;Lcom/unity3d/scar/adapter/common/scarads/b;)V
.end method

.method public c(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2000/b/a;->a:Ljava/lang/Object;

    return-void
.end method
