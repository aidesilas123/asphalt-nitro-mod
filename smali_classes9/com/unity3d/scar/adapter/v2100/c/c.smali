###### Class com.unity3d.scar.adapter.v2100.c.c (com.unity3d.scar.adapter.v2100.c.c)
.class public Lcom/unity3d/scar/adapter/v2100/c/c;
.super Lcom/unity3d/scar/adapter/v2100/c/a;
.source "ScarBannerAd.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unity3d/scar/adapter/v2100/c/a<",
        "Lcom/google/android/gms/ads/AdView;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Landroid/widget/RelativeLayout;

.field private h:I

.field private i:I

.field private j:Lcom/google/android/gms/ads/AdView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/unity3d/scar/adapter/v2100/b/a;Lcom/unity3d/scar/adapter/common/scarads/c;IILcom/unity3d/scar/adapter/common/b;Lcom/unity3d/scar/adapter/common/e;)V
    .registers 9

    invoke-direct {p0, p1, p4, p3, p7}, Lcom/unity3d/scar/adapter/v2100/c/a;-><init>(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/c;Lcom/unity3d/scar/adapter/v2100/b/a;Lcom/unity3d/scar/adapter/common/b;)V

    iput-object p2, p0, Lcom/unity3d/scar/adapter/v2100/c/c;->g:Landroid/widget/RelativeLayout;

    iput p5, p0, Lcom/unity3d/scar/adapter/v2100/c/c;->h:I

    iput p6, p0, Lcom/unity3d/scar/adapter/v2100/c/c;->i:I

    new-instance p1, Lcom/google/android/gms/ads/AdView;

    iget-object p2, p0, Lcom/unity3d/scar/adapter/v2100/c/a;->b:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2100/c/c;->j:Lcom/google/android/gms/ads/AdView;

    new-instance p1, Lcom/unity3d/scar/adapter/v2100/c/d;

    invoke-direct {p1, p8, p0}, Lcom/unity3d/scar/adapter/v2100/c/d;-><init>(Lcom/unity3d/scar/adapter/common/e;Lcom/unity3d/scar/adapter/v2100/c/c;)V

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2100/c/a;->e:Lcom/unity3d/scar/adapter/v2100/c/b;

    return-void
.end method


# virtual methods
.method protected b(Lcom/google/android/gms/ads/AdRequest;Lcom/unity3d/scar/adapter/common/scarads/b;)V
    .registers 6

    iget-object p2, p0, Lcom/unity3d/scar/adapter/v2100/c/c;->g:Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_36

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2100/c/c;->j:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_36

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/unity3d/scar/adapter/v2100/c/c;->j:Lcom/google/android/gms/ads/AdView;

    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    iget v1, p0, Lcom/unity3d/scar/adapter/v2100/c/c;->h:I

    iget v2, p0, Lcom/unity3d/scar/adapter/v2100/c/c;->i:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/BaseAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    iget-object p2, p0, Lcom/unity3d/scar/adapter/v2100/c/c;->j:Lcom/google/android/gms/ads/AdView;

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2100/c/a;->c:Lcom/unity3d/scar/adapter/common/scarads/c;

    invoke-virtual {v0}, Lcom/unity3d/scar/adapter/common/scarads/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/BaseAdView;->setAdUnitId(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/unity3d/scar/adapter/v2100/c/c;->j:Lcom/google/android/gms/ads/AdView;

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2100/c/a;->e:Lcom/unity3d/scar/adapter/v2100/c/b;

    check-cast v0, Lcom/unity3d/scar/adapter/v2100/c/d;

    invoke-virtual {v0}, Lcom/unity3d/scar/adapter/v2100/c/d;->d()Lcom/google/android/gms/ads/AdListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/BaseAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    iget-object p2, p0, Lcom/unity3d/scar/adapter/v2100/c/c;->j:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/BaseAdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    :cond_36
    return-void
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2100/c/c;->g:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/unity3d/scar/adapter/v2100/c/c;->j:Lcom/google/android/gms/ads/AdView;

    if-eqz v1, :cond_b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_b
    return-void
.end method
