###### Class com.unity3d.scar.adapter.v2100.b.a (com.unity3d.scar.adapter.v2100.b.a)
.class public Lcom/unity3d/scar/adapter/v2100/b/a;
.super Ljava/lang/Object;
.source "AdRequestFactory.java"


# instance fields
.field private a:Lcom/unity3d/scar/adapter/common/k/a;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/common/k/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2100/b/a;->a:Lcom/unity3d/scar/adapter/common/k/a;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/ads/AdRequest;
    .registers 2

    invoke-virtual {p0}, Lcom/unity3d/scar/adapter/v2100/b/a;->c()Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest;
    .registers 3

    invoke-virtual {p0}, Lcom/unity3d/scar/adapter/v2100/b/a;->c()Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->setAdString(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    return-object p1
.end method

.method public c()Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 4

    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    iget-object v1, p0, Lcom/unity3d/scar/adapter/v2100/b/a;->a:Lcom/unity3d/scar/adapter/common/k/a;

    invoke-virtual {v1}, Lcom/unity3d/scar/adapter/common/k/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    const-class v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    iget-object v2, p0, Lcom/unity3d/scar/adapter/v2100/b/a;->a:Lcom/unity3d/scar/adapter/common/k/a;

    invoke-virtual {v2}, Lcom/unity3d/scar/adapter/common/k/a;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    return-object v0
.end method
