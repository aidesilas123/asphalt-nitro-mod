###### Class com.bytedance.sdk.openadsdk.h.a.a (com.bytedance.sdk.openadsdk.h.a.a)
.class public Lcom/bytedance/sdk/openadsdk/h/a/a;
.super Lcom/bytedance/sdk/component/a/d;
.source "DoGetAdsFromNetworkAsyncMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/a/d<",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/x;)V
    .registers 3

    invoke-direct {p0}, Lcom/bytedance/sdk/component/a/d;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/component/a/r;Lcom/bytedance/sdk/openadsdk/core/x;)V
    .registers 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/a/a$1;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/h/a/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;)V

    const-string p1, "getNetworkData"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/component/a/r;->a(Ljava/lang/String;Lcom/bytedance/sdk/component/a/d$b;)Lcom/bytedance/sdk/component/a/r;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;Lcom/bytedance/sdk/component/a/f;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/component/a/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/h/a/a;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/a/f;)V

    return-void
.end method

.method protected a(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/a/f;)V
    .registers 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/component/a/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/x;

    if-nez p2, :cond_e

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/a/d;->c()V

    return-void

    :cond_e
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/a/a$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/h/a/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/h/a/a;)V

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/i/c;)V

    return-void
.end method

.method protected d()V
    .registers 1

    return-void
.end method

###### Class com.bytedance.sdk.openadsdk.h.a.a.AnonymousClass1 (com.bytedance.sdk.openadsdk.h.a.a$1)
.class final Lcom/bytedance/sdk/openadsdk/h/a/a$1;
.super Ljava/lang/Object;
.source "DoGetAdsFromNetworkAsyncMethod.java"

# interfaces
.implements Lcom/bytedance/sdk/component/a/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/h/a/a;->a(Lcom/bytedance/sdk/component/a/r;Lcom/bytedance/sdk/openadsdk/core/x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/x;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/x;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/component/a/d;
    .registers 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/a/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/a/a;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;)V

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.h.a.a.AnonymousClass2 (com.bytedance.sdk.openadsdk.h.a.a$2)
.class Lcom/bytedance/sdk/openadsdk/h/a/a$2;
.super Ljava/lang/Object;
.source "DoGetAdsFromNetworkAsyncMethod.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/i/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/h/a/a;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/a/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/h/a/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/h/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a/a$2;->a:Lcom/bytedance/sdk/openadsdk/h/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
