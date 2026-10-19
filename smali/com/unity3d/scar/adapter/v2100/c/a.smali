###### Class com.unity3d.scar.adapter.v2100.c.a (com.unity3d.scar.adapter.v2100.c.a)
.class public abstract Lcom/unity3d/scar/adapter/v2100/c/a;
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

.field protected d:Lcom/unity3d/scar/adapter/v2100/b/a;

.field protected e:Lcom/unity3d/scar/adapter/v2100/c/b;

.field protected f:Lcom/unity3d/scar/adapter/common/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/c;Lcom/unity3d/scar/adapter/v2100/b/a;Lcom/unity3d/scar/adapter/common/b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2100/c/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/unity3d/scar/adapter/v2100/c/a;->c:Lcom/unity3d/scar/adapter/common/scarads/c;

    iput-object p3, p0, Lcom/unity3d/scar/adapter/v2100/c/a;->d:Lcom/unity3d/scar/adapter/v2100/b/a;

    iput-object p4, p0, Lcom/unity3d/scar/adapter/v2100/c/a;->f:Lcom/unity3d/scar/adapter/common/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/unity3d/scar/adapter/common/scarads/b;)V
    .registers 4

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2100/c/a;->d:Lcom/unity3d/scar/adapter/v2100/b/a;

    iget-object v1, p0, Lcom/unity3d/scar/adapter/v2100/c/a;->c:Lcom/unity3d/scar/adapter/common/scarads/c;

    invoke-virtual {v1}, Lcom/unity3d/scar/adapter/common/scarads/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/scar/adapter/v2100/b/a;->b(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    if-eqz p1, :cond_13

    iget-object v1, p0, Lcom/unity3d/scar/adapter/v2100/c/a;->e:Lcom/unity3d/scar/adapter/v2100/c/b;

    invoke-virtual {v1, p1}, Lcom/unity3d/scar/adapter/v2100/c/b;->a(Lcom/unity3d/scar/adapter/common/scarads/b;)V

    :cond_13
    invoke-virtual {p0, v0, p1}, Lcom/unity3d/scar/adapter/v2100/c/a;->b(Lcom/google/android/gms/ads/AdRequest;Lcom/unity3d/scar/adapter/common/scarads/b;)V

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

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2100/c/a;->a:Ljava/lang/Object;

    return-void
.end method
