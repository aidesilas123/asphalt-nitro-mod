###### Class com.unity3d.scar.adapter.v2000.c.a (com.unity3d.scar.adapter.v2000.c.a)
.class public Lcom/unity3d/scar/adapter/v2000/c/a;
.super Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;
.source "QueryInfoCallback.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/unity3d/scar/adapter/common/l/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/unity3d/scar/adapter/common/l/a;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;-><init>()V

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2000/c/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/scar/adapter/v2000/c/a;->b:Lcom/unity3d/scar/adapter/common/l/a;

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/c/a;->b:Lcom/unity3d/scar/adapter/common/l/a;

    invoke-interface {v0, p1}, Lcom/unity3d/scar/adapter/common/l/a;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/google/android/gms/ads/query/QueryInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/c/a;->b:Lcom/unity3d/scar/adapter/common/l/a;

    iget-object v1, p0, Lcom/unity3d/scar/adapter/v2000/c/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/query/QueryInfo;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/unity3d/scar/adapter/common/l/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
