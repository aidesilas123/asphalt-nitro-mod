###### Class com.unity3d.scar.adapter.v2000.b.d (com.unity3d.scar.adapter.v2000.b.d)
.class public Lcom/unity3d/scar/adapter/v2000/b/d;
.super Lcom/unity3d/scar/adapter/v2000/b/b;
.source "ScarBannerAdListener.java"


# instance fields
.field private final b:Lcom/unity3d/scar/adapter/common/e;

.field private final c:Lcom/unity3d/scar/adapter/v2000/b/c;

.field private final d:Lcom/google/android/gms/ads/AdListener;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/common/e;Lcom/unity3d/scar/adapter/v2000/b/c;)V
    .registers 4

    invoke-direct {p0}, Lcom/unity3d/scar/adapter/v2000/b/b;-><init>()V

    new-instance v0, Lcom/unity3d/scar/adapter/v2000/b/d$a;

    invoke-direct {v0, p0}, Lcom/unity3d/scar/adapter/v2000/b/d$a;-><init>(Lcom/unity3d/scar/adapter/v2000/b/d;)V

    iput-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/d;->d:Lcom/google/android/gms/ads/AdListener;

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2000/b/d;->b:Lcom/unity3d/scar/adapter/common/e;

    iput-object p2, p0, Lcom/unity3d/scar/adapter/v2000/b/d;->c:Lcom/unity3d/scar/adapter/v2000/b/c;

    return-void
.end method

.method static synthetic b(Lcom/unity3d/scar/adapter/v2000/b/d;)Lcom/unity3d/scar/adapter/common/e;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/scar/adapter/v2000/b/d;->b:Lcom/unity3d/scar/adapter/common/e;

    return-object p0
.end method

.method static synthetic c(Lcom/unity3d/scar/adapter/v2000/b/d;)Lcom/unity3d/scar/adapter/v2000/b/c;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/scar/adapter/v2000/b/d;->c:Lcom/unity3d/scar/adapter/v2000/b/c;

    return-object p0
.end method


# virtual methods
.method public d()Lcom/google/android/gms/ads/AdListener;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/d;->d:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method
