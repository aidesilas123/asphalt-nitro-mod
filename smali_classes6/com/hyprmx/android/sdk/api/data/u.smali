###### Class com.hyprmx.android.sdk.api.data.u (com.hyprmx.android.sdk.api.data.u)
.class public final Lcom/hyprmx/android/sdk/api/data/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/api/data/a;


# instance fields
.field public final a:Lcom/hyprmx/android/sdk/header/a;

.field public final b:Lcom/hyprmx/android/sdk/footer/a;

.field public final synthetic c:Lcom/hyprmx/android/sdk/api/data/a;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/api/data/i;Lcom/hyprmx/android/sdk/header/a;Lcom/hyprmx/android/sdk/footer/a;)V
    .registers 5

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webTrafficHeader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "footer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/hyprmx/android/sdk/api/data/u;->a:Lcom/hyprmx/android/sdk/header/a;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/api/data/u;->b:Lcom/hyprmx/android/sdk/footer/a;

    iput-object p1, p0, Lcom/hyprmx/android/sdk/api/data/u;->c:Lcom/hyprmx/android/sdk/api/data/a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/api/data/u;->c:Lcom/hyprmx/android/sdk/api/data/a;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/api/data/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/hyprmx/android/sdk/api/data/m;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/api/data/u;->c:Lcom/hyprmx/android/sdk/api/data/a;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/api/data/a;->b()Lcom/hyprmx/android/sdk/api/data/m;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/api/data/u;->c:Lcom/hyprmx/android/sdk/api/data/a;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/api/data/a;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/api/data/u;->c:Lcom/hyprmx/android/sdk/api/data/a;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/api/data/a;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
